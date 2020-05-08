Subject: #raspberrypi #yocto No such device "wlan0" on raspberrypi3
To: yocto@lists.yoctoproject.org
From: kbeaugrand@gmail.com
X-Originating-Location: London, England, GB (185.125.226.42)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 May 2020 08:57:01 -0700
Message-ID: <7s7Z.1588953421685963805.5D5u@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Q3hW1LYk4AzmE6kgw4VH"

--Q3hW1LYk4AzmE6kgw4VH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm pretty new on yocto project/tools and I'm trying to build a simple ima=
ge for running a raspberry PI 3.
The raspberry starts well and works well with eth0 network interface. Howe=
ver wlan0 interface seems to not be working.

When trying to start manually the interface I get these messages

ifup wlan0
Successfully initialized wpa_supplicant
rfkill: Cannot get wiphy information
Could not read interface wlan0 flags: No such device
WEXT: Could not set interface 'wlan0' UP
wlan0: Failed to initialize driver interface
ip: SIOCGIFFLAGS: No such device
Here is my local.conf excerp for installing wlan for my image :
ENABLE_UART =3D "1"

DISTRO_FEATURES_append +=3D " bluetooth wifi bluez5"
IMAGE_INSTALL_append +=3D " linux-firmware bluez5 wpa-supplicant"
I'm pretty sure that someone has already=C2=A0done this before me ;)
Could you tell me if I miss something ?

Regards,

--Q3hW1LYk4AzmE6kgw4VH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,&nbsp;<br /><br />I'm pretty new on yocto project/tools and I'm trying t=
o build a simple image for running a raspberry PI 3.<br />The raspberry sta=
rts well and works well with eth0 network interface. However wlan0 interfac=
e seems to not be working.<br /><br />When trying to start manually the int=
erface I get these messages&nbsp;<br /><br />
<pre>ifup wlan0
Successfully initialized wpa_supplicant
rfkill: Cannot get wiphy information
Could not read interface wlan0 flags: No such device
WEXT: Could not set interface 'wlan0' UP
wlan0: Failed to initialize driver interface
ip: SIOCGIFFLAGS: No such device</pre>
<br />Here is my local.conf excerp for installing wlan for my image :&nbsp=
;<br />
<pre>ENABLE_UART =3D "1"

DISTRO_FEATURES_append +=3D " bluetooth wifi bluez5"
IMAGE_INSTALL_append +=3D " linux-firmware bluez5 wpa-supplicant"</pre>
<br />I'm pretty sure that someone has already&nbsp;done this before me ;)=
&nbsp;&nbsp;<br />Could you tell me if I miss something ?&nbsp;<br /><br />=
Regards,&nbsp;

--Q3hW1LYk4AzmE6kgw4VH--
