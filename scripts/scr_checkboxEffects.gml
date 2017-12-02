switch argument0 {
    case 1:
        obj_storage.music = active;
            if (obj_storage.music) {
                if (!audio_is_playing(snd_mfx_background) && obj_storage.music = true) 
                    audio_play_sound(snd_mfx_background, 70, true);
            } else {
                audio_stop_sound(snd_mfx_background);
            }
    case 2:
        with (obj_storage) sound = other.active;
        break
}
