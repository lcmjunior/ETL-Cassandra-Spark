CREATE KEYSPACE projeto2 projeto2 WITH replication = {'class': 'SimpleStrategy',  'replication_factor': '1'} AND durable_writes = true;;

CREATE TABLE projeto2.tb_consulta1 ( 
	id                   UUID   ,
	total_vendas         DOUBLE   ,
	fonte                TEXT   ,
	PRIMARY KEY( id )
 )   WITH additional_write_policy = '99p' AND bloom_filter_fp_chance = 0.01 AND caching = {'keys': 'ALL',  'rows_per_partition': 'NONE'} AND cdc = false AND AND compaction = {'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy',  'max_threshold': '32',  'min_threshold': '4'} AND compression = {'chunk_length_in_kb': '16',  'class': 'org.apache.cassandra.io.compress.LZ4Compressor'} AND crc_check_chance = 1.0 AND default_time_to_live = 0 AND extensions = {} AND gc_grace_seconds = 864000 AND max_index_interval = 2048 AND memtable_flush_period_in_ms = 0 AND min_index_interval = 128 AND read_repair = 'BLOCKING' AND speculative_retry = '99p';

CREATE TABLE projeto2.tb_consulta2 ( 
	id                   UUID   ,
	estado               TEXT   ,
	total_vendas         DOUBLE   ,
	PRIMARY KEY( id )
 );

CREATE TABLE projeto2.tb_consulta3 ( 
	id                   UUID   ,
	estado               TEXT   ,
	data_pedido          TIMESTAMP   ,
	media_desconto       DOUBLE   ,
	PRIMARY KEY( id )
 );
