Subject: meta-intel stuck on bootup #yocto
To: yocto@lists.yoctoproject.org
From: "eph_pendragon" <leocorp96@gmail.com>
X-Originating-Location: DE (129.233.10.102)
X-Originating-Platform: Android Phone Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 11 Dec 2019 05:16:17 -0800
Message-ID: <3uWx.1576070177005275968.UQCr@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0ruVCjrc3sLD4E4JSWzu"

--0ruVCjrc3sLD4E4JSWzu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,
So I am relatively new to the project and I have successfully been a able =
to make a few builds following the really well crafted documentation.

I however have a few issues regarding my target system, an IPC (Simatic Na=
nobox) with a quad-core Intel celeron processor. Since there's no Bsp that =
I am aware of, building an image with "genericx86-64" everything boots up a=
lright but I am unable to reboot or shutdown the target system successfully=
.

I later on added the "meta-intel" layer but up to no avail. The image gets=
 stuck indefinitely on boot-up at: "listing ALSA devices ...".

1. Since I am not really interested in sound for my project, could someone=
 point me to how to remove, fix or skip this step in the boot process altog=
ether?

2. Also, what configuration should I make to my kernel or Bsp layer in ord=
er to achieve a successful reboot and shutdown on my target machine when us=
ing the bare yocto core-image-minimal?

Thanks.

--0ruVCjrc3sLD4E4JSWzu
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br />So I am relatively new to the project and I have successf=
ully been a able to make a few builds following the really well crafted doc=
umentation.<br /><br />I however have a few issues regarding my target syst=
em, an IPC (Simatic Nanobox) with a quad-core Intel celeron processor. Sinc=
e there's no Bsp that I am aware of, building an image with "genericx86-64"=
 everything boots up alright but I am unable to reboot or shutdown the targ=
et system successfully.&nbsp;<br /><br />I later on added the "meta-intel" =
layer but up to no avail. The image gets stuck indefinitely on boot-up at: =
"listing ALSA devices ...".<br /><br />1. Since I am not really interested =
in sound for my project, could someone point me to how to remove, fix or sk=
ip this step in the boot process altogether?<br /><br />2. Also, what confi=
guration should I make to my kernel or Bsp layer in order to achieve a succ=
essful reboot and shutdown on my target machine when using the bare yocto c=
ore-image-minimal?<br /><br />Thanks.

--0ruVCjrc3sLD4E4JSWzu--
