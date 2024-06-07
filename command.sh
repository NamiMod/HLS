ffmpeg -i open-close.mp4 \
  -vf "scale=w=1920:h=1080:force_original_aspect_ratio=decrease" \
  -c:a aac -ar 48000 -c:v h264 -profile:v main -crf 20 -sc_threshold 0 \
  -g 48 -keyint_min 48 -hls_time 4 -hls_playlist_type vod \
  -b:a 128k -hls_segment_filename "1080p_%03d.ts" \
  1080p.m3u8

ffmpeg -i open-close.mp4 \
  -vf "scale=w=1280:h=720:force_original_aspect_ratio=decrease" \
  -c:a aac -ar 48000 -c:v h264 -profile:v main -crf 20 -sc_threshold 0 \
  -g 48 -keyint_min 48 -hls_time 4 -hls_playlist_type vod \
  -b:a 128k -hls_segment_filename "720p_%03d.ts" \
  720p.m3u8

ffmpeg -i open-close.mp4 \
  -vf "scale=w=640:h=360:force_original_aspect_ratio=decrease" \
  -c:a aac -ar 48000 -c:v h264 -profile:v main -crf 20 -sc_threshold 0 \
  -g 48 -keyint_min 48 -hls_time 4 -hls_playlist_type vod \
  -b:a 128k -hls_segment_filename "360p_%03d.ts" \
  360p.m3u8
