-- 1. Create the Storage Bucket for Product Images
insert into storage.buckets (id, name, public)
values ('product-images', 'product-images', true)
on conflict (id) do nothing;

-- 2. Enable RLS on objects (it usually is by default, but good to ensure)
alter table storage.objects enable row level security;

-- 3. Policy: Allow Public Read Access (Anyone can view images)
create policy "Public Access"
on storage.objects for select
using ( bucket_id = 'product-images' );

-- 4. Policy: Allow Authenticated Uploads (Only logged-in admins can upload)
create policy "Authenticated Upload"
on storage.objects for insert
with check ( bucket_id = 'product-images' and auth.role() = 'authenticated' );

-- 5. Policy: Allow Authenticated Updates/Deletes
create policy "Authenticated Update"
on storage.objects for update
using ( bucket_id = 'product-images' and auth.role() = 'authenticated' );

create policy "Authenticated Delete"
on storage.objects for delete
using ( bucket_id = 'product-images' and auth.role() = 'authenticated' );
