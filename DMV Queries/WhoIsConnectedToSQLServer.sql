SELECT
    database_id,    -- SQL Server 2012 and after only
    session_id,
    status,
    login_time,
    cpu_time,
    memory_usage,
    reads,
    writes,
    logical_reads,
    host_name,
    program_name,
    host_process_id,
    client_interface_name,
    login_name as database_login_name,
    last_request_start_time
FROM sys.dm_exec_sessions
WHERE is_user_process = 1
ORDER BY cpu_time DESC;