# dotfiles

Obligatory dotfiles for casual usage.

# Audio/Video fix
(sourced from here:)
https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/Troubleshooting#stuttering-audio-in-virtual-machine

## Stuttering Audio (in Virtual Machine)

Normally this should not happen but is usually caused by jittery drivers. In a VM
this is most common because the device is emulated.
you can usually fix this problem by giving more headroom in the alsa device
ringbuffer.
You need to edit the WirePlumber configuration as follows (since 0.5, the older 0.4 version
uses lua scripts for configuration):

```sh
mkdir -p ~/.config/wireplumber/wireplumber.conf.d/
cd ~/.config/wireplumber/wireplumber.conf.d
```


Then make ~/.config/wireplumber/wireplumber.conf.d/50-alsa-config.conf in an editor and
add:

```sh
vim ~/.config/wireplumber/wireplumber.conf.d/50-alsa-config.conf
```

```sh
monitor.alsa.rules = [
  {
    matches = [
      # This matches the value of the 'node.name' property of the node.
      {
        node.name = "~alsa_output.*"
      }
    ]
    actions = {
      # Apply all the desired node specific settings here.
      update-props = {
        api.alsa.period-size   = 1024
        api.alsa.headroom      = 8192
      }
    }
  }
]
```

Afterwards, restart everything via:
```sh
systemctl --user restart wireplumber pipewire pipewire-pulse
```

When running inside a VM, also disable the Firefox speech dispatch as
explained here.
