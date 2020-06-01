Subject: #yocto #raspberrypi SND_BCM2835 doesn't load if vc4-kms-v3d-overlay set #yocto #raspberrypi
To: yocto@lists.yoctoproject.org
From: "Bastien0530" <bastien.gallet-pesenti@pi.esisar.grenoble-inp.fr>
X-Originating-Location: Bourg-les-Valence, Auvergne-Rhone-Alpes, FR (77.146.40.152)
X-Originating-Platform: Linux Firefox 76
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 01 Jun 2020 00:49:29 -0700
Message-ID: <AqBs.1590997769607629949.zYOb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j6q3BMIaoMRcOWAtyJKL"

--j6q3BMIaoMRcOWAtyJKL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I was struggling for days about playing a simple wav file with aplay on a =
raspberry 3b+ jack 3.5mm output.

I had built-in snd_bcm2835 and all the required modules and when booting t=
he raspberry, I couldn't play any song :
------------------------------------------------------------------

root@raspberrypi3:~# aplay /usr/share/sounds/alsa/Noise.wav
aplay: main:828: audio open error: No such file or directory
------------------------------------------------------------------

Also, there was only VC4 HDMI playback devices :
------------------------------------------------------------------
root@raspberrypi3:~# aplay -l
**** List of PLAYBACK Hardware Devices ****
card 1: vc4hdmi [vc4-hdmi], device 0: MAI PCM vc4-hdmi-hifi-0 [MAI PCM vc4=
-hdmi-hifi-0]
Subdevices: 1/1
Subdevice #0: subdevice #0
------------------------------------------------------------------

And can't find SND_BCM2835 with the command "lsmod | grep snd_bcm2835".

However, I finally figured out that this error was brought by the vc4-kms-=
v3d-overlay. (Thanks to this topic : https://github.com/raspberrypi/linux/i=
ssues/3181 ).
If I comment the "dtoverlay=3Dvc4-kms-v3d" line in config.txt, then all is=
 fine and I can see the SND_BCM2835 as Alsa playback device :
------------------------------------------------------------------
root@raspberrypi3:~# aplay -l
**** List of PLAYBACK Hardware Devices ****
card 0: ALSA [bcm2835 ALSA], device 0: bcm2835 ALSA [bcm2835 ALSA]
Subdevices: 7/7
Subdevice #0: subdevice #0
Subdevice #1: subdevice #1
Subdevice #2: subdevice #2
Subdevice #3: subdevice #3
Subdevice #4: subdevice #4
Subdevice #5: subdevice #5
Subdevice #6: subdevice #6
card 0: ALSA [bcm2835 ALSA], device 1: bcm2835 IEC958/HDMI [bcm2835 IEC958=
/HDMI]
Subdevices: 1/1
Subdevice #0: subdevice #0
card 0: ALSA [bcm2835 ALSA], device 2: bcm2835 IEC958/HDMI1 [bcm2835 IEC95=
8/HDMI1]
Subdevices: 1/1
Subdevice #0: subdevice #0
------------------------------------------------------------------

So, I would like to know if there is any recipe or image config to disable=
 vc4-kms-v3d-overlay?

As it is set in the meta-raspberry/conf/machine/include/rpi-base.inc, I ca=
nnot make any bbappend recipe to modify this behavior.

What would be the better solution?

Best regards,
Bastien

--j6q3BMIaoMRcOWAtyJKL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,<br />I was struggling for days about playing a simple wav file with =
aplay on a raspberry 3b+ jack 3.5mm output.</p>
<p>I had built-in snd_bcm2835 and all the required modules and when bootin=
g the raspberry, I couldn't play any song :<br />--------------------------=
----------------------------------------</p>
<p><span style=3D"background-color: #333333; color: #ffffff;">root@raspber=
rypi3:~# aplay /usr/share/sounds/alsa/Noise.wav </span><br /><span style=3D=
"background-color: #333333; color: #ffffff;">aplay: main:828: audio open er=
ror: No such file or directory</span><br />--------------------------------=
----------------------------------<br /><br />Also, there was only VC4 HDMI=
 playback devices :<br />--------------------------------------------------=
----------------<br /><span style=3D"background-color: #333333; color: #fff=
fff;">root@raspberrypi3:~# aplay -l</span><br /><span style=3D"background-c=
olor: #333333; color: #ffffff;">**** List of PLAYBACK Hardware Devices ****=
</span><br /><span style=3D"background-color: #333333; color: #ffffff;">car=
d 1: vc4hdmi [vc4-hdmi], device 0: MAI PCM vc4-hdmi-hifi-0 [MAI PCM vc4-hdm=
i-hifi-0]</span><br /><span style=3D"background-color: #333333; color: #fff=
fff;">&nbsp; Subdevices: 1/1</span><br /><span style=3D"background-color: #=
333333; color: #ffffff;">&nbsp; Subdevice #0: subdevice #0</span><br />----=
--------------------------------------------------------------<br /><br />A=
nd can't find SND_BCM2835 with the command "lsmod | grep snd_bcm2835".<br /=
><br />However, I finally figured out that this error was brought by the vc=
4-kms-v3d-overlay. (Thanks to this topic : <a href=3D"https://github.com/ra=
spberrypi/linux/issues/3181" target=3D"_blank" rel=3D"noopener">https://git=
hub.com/raspberrypi/linux/issues/3181</a>).<br />If I comment the "dtoverla=
y=3Dvc4-kms-v3d" line in config.txt, then all is fine and I can see the SND=
_BCM2835 as Alsa playback device :<br />-----------------------------------=
-------------------------------<br /><span style=3D"background-color: #3333=
33; color: #ffffff;">root@raspberrypi3:~# aplay -l</span><br /><span style=
=3D"background-color: #333333; color: #ffffff;">**** List of PLAYBACK Hard=
ware Devices ****</span><br /><span style=3D"background-color: #333333; col=
or: #ffffff;">card 0: ALSA [bcm2835 ALSA], device 0: bcm2835 ALSA [bcm2835 =
ALSA]</span><br /><span style=3D"background-color: #333333; color: #ffffff;=
">&nbsp; Subdevices: 7/7</span><br /><span style=3D"background-color: #3333=
33; color: #ffffff;">&nbsp; Subdevice #0: subdevice #0</span><br /><span st=
yle=3D"background-color: #333333; color: #ffffff;">&nbsp; Subdevice #1: sub=
device #1</span><br /><span style=3D"background-color: #333333; color: #fff=
fff;">&nbsp; Subdevice #2: subdevice #2</span><br /><span style=3D"backgrou=
nd-color: #333333; color: #ffffff;">&nbsp; Subdevice #3: subdevice #3</span=
><br /><span style=3D"background-color: #333333; color: #ffffff;">&nbsp; Su=
bdevice #4: subdevice #4</span><br /><span style=3D"background-color: #3333=
33; color: #ffffff;">&nbsp; Subdevice #5: subdevice #5</span><br /><span st=
yle=3D"background-color: #333333; color: #ffffff;">&nbsp; Subdevice #6: sub=
device #6</span><br /><span style=3D"background-color: #333333; color: #fff=
fff;">card 0: ALSA [bcm2835 ALSA], device 1: bcm2835 IEC958/HDMI [bcm2835 I=
EC958/HDMI]</span><br /><span style=3D"background-color: #333333; color: #f=
fffff;">&nbsp; Subdevices: 1/1</span><br /><span style=3D"background-color:=
 #333333; color: #ffffff;">&nbsp; Subdevice #0: subdevice #0</span><br /><s=
pan style=3D"background-color: #333333; color: #ffffff;">card 0: ALSA [bcm2=
835 ALSA], device 2: bcm2835 IEC958/HDMI1 [bcm2835 IEC958/HDMI1]</span><br =
/><span style=3D"background-color: #333333; color: #ffffff;">&nbsp; Subdevi=
ces: 1/1</span><br /><span style=3D"background-color: #333333; color: #ffff=
ff;">&nbsp; Subdevice #0: subdevice #0</span><br />------------------------=
------------------------------------------<br /><br />So, I would like to k=
now if there is any recipe or image config to disable vc4-kms-v3d-overlay?<=
/p>
<p>As it is set in the meta-raspberry/conf/machine/include/rpi-base.inc, I=
 cannot make any bbappend recipe to modify this behavior.</p>
What would be the better solution?<br /><br />Best regards,<br />Bastien

--j6q3BMIaoMRcOWAtyJKL--
