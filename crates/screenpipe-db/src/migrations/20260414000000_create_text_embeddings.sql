-- Text embeddings for semantic search
CREATE TABLE IF NOT EXISTS frame_text_embeddings (
    frame_id INTEGER PRIMARY KEY REFERENCES frames(id) ON DELETE CASCADE,
    embedding BLOB NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS audio_text_embeddings (
    audio_transcription_id INTEGER PRIMARY KEY,
    audio_chunk_id INTEGER NOT NULL,
    embedding BLOB NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS embedding_backfill_progress (
    id INTEGER PRIMARY KEY CHECK(id = 1),
    last_frame_id INTEGER DEFAULT 0,
    last_audio_id INTEGER DEFAULT 0,
    status TEXT DEFAULT 'pending',
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT OR IGNORE INTO embedding_backfill_progress (id) VALUES (1);
