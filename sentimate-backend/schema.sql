
-- Supabase Schema for Sentimate AI Support System

-- Users table (both patients and therapists)
create table if not exists users (
  id uuid primary key default gen_random_uuid(),
  role text check (role in ('patient', 'therapist', 'admin')) not null,
  email text unique not null,
  full_name text,
  created_at timestamp with time zone default timezone('utc', now())
);

-- AI Models table
create table if not exists ai_models (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  description text,
  is_active boolean default true,
  created_at timestamp with time zone default timezone('utc', now())
);

-- Journal entries
create table if not exists journals (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references users(id),
  entry text,
  mood int,
  created_at timestamp with time zone default timezone('utc', now())
);
