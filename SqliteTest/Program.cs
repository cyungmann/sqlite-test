Console.WriteLine("Hello, World!");
SQLitePCL.Batteries_V2.Init();
Console.WriteLine($"SQLite lib version: {SQLitePCL.raw.sqlite3_libversion_number()}");