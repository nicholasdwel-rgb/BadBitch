-- 1. Create policies for the existing bucket
-- We use "do nothing" or checks to avoid errors if they already exist

-- Allow Public Read Access
drop policy if exists "Public Access" on storage.objects;
create policy "Public Access"
on storage.objects for select
using ( bucket_id = 'product-images' );

-- Allow Authenticated Uploads
drop policy if exists "Authenticated Upload" on storage.objects;
create policy "Authenticated Upload"
on storage.objects for insert
with check ( bucket_id = 'product-images' and auth.role() = 'authenticated' );

-- Allow Authenticated Updates (optional, but good for replacing images)
drop policy if exists "Authenticated Update" on storage.objects;
create policy "Authenticated Update"
on storage.objects for update
using ( bucket_id = 'product-images' and auth.role() = 'authenticated' );

-- Allow Authenticated Deletes (optional)
drop policy if exists "Authenticated Delete" on storage.objects;
create policy "Authenticated Delete"
on storage.objects for delete
using ( bucket_id = 'product-images' and auth.role() = 'authenticated' );
