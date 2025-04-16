create table if not exists users (
  id uuid primary key default gen_random_uuid(),
  email text unique not null,
  role text check (role in ('admin', 'therapist', 'patient')) not null,
  first_name text,
  last_name text,
  created_at timestamp default now()
);

create table if not exists sessions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  therapist_id uuid references users(id),
  session_time timestamp,
  notes text
);

create table if not exists messages (
  id uuid primary key default gen_random_uuid(),
  sender_id uuid references users(id),
  receiver_id uuid references users(id),
  content text,
  created_at timestamp default now()
);