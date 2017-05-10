import os

def run():
    command = 'silent new_attr bool my_not_first_autostart'
    exitcode = os.system('herbstclient ' + command)

    if exitcode == 0:
      # non windowed app
        os.system("compton &")
        os.system("dunst &")
        os.system("parcellite &")
        os.system("nitrogen --restore &")
        os.system("mpd &")

      # windowed app
        os.system("xfce4-terminal &")
        os.system("sleep 1 && firefox &")
        os.system("sleep 2 && geany &")
        os.system("sleep 2 && thunar &")
