-- 1. Create the 'products' storage bucket
insert into storage.buckets (id, name, public)
values ('products', 'products', true);

-- 2. Allow public access to view images
create policy "Public Access"
  on storage.objects for select
  using ( bucket_id = 'products' );

-- 3. Allow authenticated users (admins) to upload images
create policy "Admin Upload"
  on storage.objects for insert
  with check ( bucket_id = 'products' );

-- 4. Allow authenticated users (admins) to update/delete images
create policy "Admin Update"
  on storage.objects for update
  with check ( bucket_id = 'products' );

create policy "Admin Delete"
  on storage.objects for delete
  using ( bucket_id = 'products' );
