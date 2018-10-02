switch argument0 {
    case 1:
        with (obj_storage) {
            music = other.active;
            //Save Changes
            scr_save()
        }
        
            if (obj_storage.music) {
                if (!audio_is_playing(snd_mfx_background) && obj_storage.music = true) 
                    audio_play_sound(snd_mfx_background, 70, true);
            } else {
                audio_stop_sound(snd_mfx_background);
            }
            break
    case 2:
        with (obj_storage) {
            sound = other.active;
            //Save Chnges
            scr_save();
        }
        break
}
