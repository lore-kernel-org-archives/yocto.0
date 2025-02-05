Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98955C02192
	for <webhook@archiver.kernel.org>; Wed,  5 Feb 2025 18:38:59 +0000 (UTC)
Subject: Unable to boot a raspberry Pi Zero 2 W using the master branch of Yocto #raspberrypi #raspberrypi0-wifi
To: yocto@lists.yoctoproject.org
From: jdowd@slashdevslashnull.org
X-Originating-Location: Ottawa, Ontario, CA (184.175.41.163)
X-Originating-Platform: Linux Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Feb 2025 10:38:55 -0800
Message-ID: <0tqD.1738780735709560111.Ua03@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="BBC44KKgg5AXvqcIIOar"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2025 18:38:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64717

--BBC44KKgg5AXvqcIIOar
Content-Type: multipart/alternative; boundary="GBhRs9UvmBsHsKivpI4H"

--GBhRs9UvmBsHsKivpI4H
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a recently purchased Raspberry Pi Zero 2 W (Jan. 2025) which does wo=
rk with the raspberry Pi environment. I want to use Yocto going forward as =
I develop my application. For now, I would just like to see this board boot=
 using my own built image. I've cloned the latest Yocto repo along with the=
 "meta-raspberrypi".

I've done these modifications:

In local.conf

>=20
> MACHINE ??=3D "raspberrypi0-wifi"
> ...
> INHERIT +=3D "rm_work"
> DL_DIR ?=3D "/home/users/yocto_shared/downloads"
> SSTATE_DIR ?=3D "/home/users/yocto_shared/sstate-cache"
> # for CPU count and how many parallel threads will be used
> BB_NUMBER_THREADS =3D "6"
> MACHINE_FEATURES =3D " bluetooth wifi usbhost"
> PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi"
> IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant dhcpcd"
> ENABLE_UART =3D "1"
> SERIAL_CONSOLE =3D "tty1"
> DISABLE_RPI_BOOT_LOGO =3D "1"
> DISABLE_OVERSCAN =3D "1"
> DISABLE_SPLASH =3D "1"
> BOOT_DELAY =3D "0"
> GPU_MEM =3D "16"
> PACKAGE_CLASSES =3D "package_ipk"
> DISTRO_FEATURES:append =3D " wifi "
> IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
> SDIMG_ROOTFS_TYPE =3D "ext4"
>=20
>=20

In bblayers.conf I've added the layer meta-raspberrypi

My next step is to build using the command "bitbake core-image-minimal". Th=
is gives me my first question, am I building the correct target? It does bu=
ild and I get my rpi-sdimg file and when it is placed on the SD card (using=
 "dd") I can see my image files all laid out as I would expect.

I had to edit the config.txt file that is part of the boot sequence. I've a=
ttached the one I'm using. Essentially the changes I did from the one that =
Yocto generated was to enable the serial output (I also modified bootcode.b=
in as you can see in the output) do aid in debugging. I also made sure that=
 bootcode.bin knew I was loading a 32-bit kernel.

When I boot, I get the desiired output up until the handoff from bootcode.b=
in to the kernel. The output goes silent at that point. I presume that the =
system is dead. The LED on the raspberrypi Zero 2 W board stays solid.

I've attached my output from the console (raspi0-boot.txt).

I've tried to replace the kernel from the raspberry Pi environment with my =
yocto built one but I get the same output. I've also done some changes so t=
hat I was able to see if I could get a 32-bit u-boot to load, I get the sam=
e issues.

I'm looking for some advice as to how to proceed. Have I run into a "wrong =
image format" issue? Is there some kind of arcane format that the raspberry=
 Pi's bootcode.bin requires? Or, am I running into a device tree issue? As =
far as I can tell, the console output from the staged boot loader from Pi i=
s the last line expected before the kernel starts to output it's start up s=
equence. So I presume that the image is unable to be executed.

Thanks in advance for any advice.

Cheers!!

--GBhRs9UvmBsHsKivpI4H
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have a recently purchased Raspberry Pi Zero 2 W (Jan. 2025) which do=
es work with the raspberry Pi environment. I want to use Yocto going forwar=
d as I develop my application. For now, I would just like to see this board=
 boot using my own built image. I've cloned the latest Yocto repo along wit=
h the "meta-raspberrypi".</div>
<div>&nbsp;</div>
<div>I've done these modifications:</div>
<div>&nbsp;</div>
<div>In local.conf</div>
<blockquote>
<div>MACHINE ??=3D "raspberrypi0-wifi"</div>
<div>...</div>
<div>
<div>INHERIT +=3D "rm_work"</div>
<div>DL_DIR ?=3D "/home/users/yocto_shared/downloads"<br />SSTATE_DIR ?=3D =
"/home/users/yocto_shared/sstate-cache"</div>
<div># for CPU count and how many parallel threads will be used<br />BB_NUM=
BER_THREADS =3D "6"<br />MACHINE_FEATURES =3D " bluetooth wifi usbhost"</di=
v>
<div>PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi"<br />IMAGE_I=
NSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant dhcpcd"<br />ENA=
BLE_UART =3D "1"<br />SERIAL_CONSOLE =3D "tty1"<br />DISABLE_RPI_BOOT_LOGO =
=3D "1"<br />DISABLE_OVERSCAN =3D "1"<br />DISABLE_SPLASH =3D "1"<br />BOOT=
_DELAY =3D "0"<br />GPU_MEM =3D "16"<br />PACKAGE_CLASSES =3D "package_ipk"=
<br />DISTRO_FEATURES:append =3D " wifi "<br />IMAGE_FSTYPES =3D "tar.bz2 e=
xt4 rpi-sdimg"<br />SDIMG_ROOTFS_TYPE =3D "ext4"</div>
<div>&nbsp;</div>
</div>
</blockquote>
<div>In bblayers.conf I've added the layer meta-raspberrypi</div>
<div>&nbsp;</div>
<div>My next step is to build using the command "bitbake core-image-minimal=
". This gives me my first question, am I building the correct target? It do=
es build and I get my rpi-sdimg file and when it is placed on the SD card (=
using "dd") I can see my image files all laid out as I would expect.</div>
<div>&nbsp;</div>
<div>I had to edit the config.txt file that is part of the boot sequence. I=
've attached the one I'm using. Essentially the changes I did from the one =
that Yocto generated was to enable the serial output (I also modified bootc=
ode.bin as you can see in the output) do aid in debugging. I also made sure=
 that bootcode.bin knew I was loading a 32-bit kernel.</div>
<div>&nbsp;</div>
<div>When I boot, I get the desiired output up until the handoff from bootc=
ode.bin to the kernel. The output goes silent at that point. I presume that=
 the system is dead. The LED on the raspberrypi Zero 2 W board stays solid.=
</div>
<div>&nbsp;</div>
<div>I've attached my output from the console (raspi0-boot.txt).</div>
<div>&nbsp;</div>
<div>I've tried to replace the kernel from the raspberry Pi environment wit=
h my yocto built one but I get the same output. I've also done some changes=
 so that I was able to see if I could get a 32-bit u-boot to load, I get th=
e same issues.</div>
<div>&nbsp;</div>
<div>I'm looking for some advice as to how to proceed. Have I run into a "w=
rong image format" issue? Is there some kind of arcane format that the rasp=
berry Pi's bootcode.bin requires? Or, am I running into a device tree issue=
? As far as I can tell, the console output from the staged boot loader from=
 Pi is the last line expected before the kernel starts to output it's start=
 up sequence. So I presume that the image is unable to be executed.</div>
<div>&nbsp;</div>
<div>Thanks in advance for any advice.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--GBhRs9UvmBsHsKivpI4H--

--BBC44KKgg5AXvqcIIOar
Content-Type: text/plain; name="config.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="config.txt"

IyBGb3IgbW9yZSBvcHRpb25zIGFuZCBpbmZvcm1hdGlvbiBzZWUKIyBodHRwOi8vcnBmLmlvL2Nv
bmZpZ3R4dAojIFNvbWUgc2V0dGluZ3MgbWF5IGltcGFjdCBkZXZpY2UgZnVuY3Rpb25hbGl0eS4g
U2VlIGxpbmsgYWJvdmUgZm9yIGRldGFpbHMKCiMgdW5jb21tZW50IGlmIHlvdSBnZXQgbm8gcGlj
dHVyZSBvbiBIRE1JIGZvciBhIGRlZmF1bHQgInNhZmUiIG1vZGUKI2hkbWlfc2FmZT0xCgojIHVu
Y29tbWVudCB0aGUgZm9sbG93aW5nIHRvIGFkanVzdCBvdmVyc2Nhbi4gVXNlIHBvc2l0aXZlIG51
bWJlcnMgaWYgY29uc29sZQojIGdvZXMgb2ZmIHNjcmVlbiwgYW5kIG5lZ2F0aXZlIGlmIHRoZXJl
IGlzIHRvbyBtdWNoIGJvcmRlcgojb3ZlcnNjYW5fbGVmdD0xNgojb3ZlcnNjYW5fcmlnaHQ9MTYK
I292ZXJzY2FuX3RvcD0xNgojb3ZlcnNjYW5fYm90dG9tPTE2CgojIHVuY29tbWVudCB0byBmb3Jj
ZSBhIGNvbnNvbGUgc2l6ZS4gQnkgZGVmYXVsdCBpdCB3aWxsIGJlIGRpc3BsYXkncyBzaXplIG1p
bnVzCiMgb3ZlcnNjYW4uCiNmcmFtZWJ1ZmZlcl93aWR0aD0xMjgwCiNmcmFtZWJ1ZmZlcl9oZWln
aHQ9NzIwCgojIHVuY29tbWVudCBpZiBoZG1pIGRpc3BsYXkgaXMgbm90IGRldGVjdGVkIGFuZCBj
b21wb3NpdGUgaXMgYmVpbmcgb3V0cHV0CiNoZG1pX2ZvcmNlX2hvdHBsdWc9MQoKIyB1bmNvbW1l
bnQgdG8gZm9yY2UgYSBzcGVjaWZpYyBIRE1JIG1vZGUgKHRoaXMgd2lsbCBmb3JjZSBWR0EpCiNo
ZG1pX2dyb3VwPTEKI2hkbWlfbW9kZT0xCgojIHVuY29tbWVudCB0byBmb3JjZSBhIEhETUkgbW9k
ZSByYXRoZXIgdGhhbiBEVkkuIFRoaXMgY2FuIG1ha2UgYXVkaW8gd29yayBpbgojIERNVCAoY29t
cHV0ZXIgbW9uaXRvcikgbW9kZXMKI2hkbWlfZHJpdmU9MgoKIyB1bmNvbW1lbnQgdG8gaW5jcmVh
c2Ugc2lnbmFsIHRvIEhETUksIGlmIHlvdSBoYXZlIGludGVyZmVyZW5jZSwgYmxhbmtpbmcsIG9y
CiMgbm8gZGlzcGxheQojY29uZmlnX2hkbWlfYm9vc3Q9NAoKIyB1bmNvbW1lbnQgZm9yIGNvbXBv
c2l0ZSBQQUwKI3NkdHZfbW9kZT0yCgojdW5jb21tZW50IHRvIG92ZXJjbG9jayB0aGUgYXJtLiA3
MDAgTUh6IGlzIHRoZSBkZWZhdWx0LgojYXJtX2ZyZXE9ODAwCgojIFVuY29tbWVudCBzb21lIG9y
IGFsbCBvZiB0aGVzZSB0byBlbmFibGUgdGhlIG9wdGlvbmFsIGhhcmR3YXJlIGludGVyZmFjZXMK
I2R0cGFyYW09aTJjX2FybT1vbgojZHRwYXJhbT1pMnM9b24KI2R0cGFyYW09c3BpPW9uCgojIFVu
Y29tbWVudCB0aGlzIHRvIGVuYWJsZSBpbmZyYXJlZCBjb21tdW5pY2F0aW9uLgojZHRvdmVybGF5
PWdwaW8taXIsZ3Bpb19waW49MTcKI2R0b3ZlcmxheT1ncGlvLWlyLXR4LGdwaW9fcGluPTE4Cgoj
IEFkZGl0aW9uYWwgb3ZlcmxheXMgYW5kIHBhcmFtZXRlcnMgYXJlIGRvY3VtZW50ZWQgL2Jvb3Qv
b3ZlcmxheXMvUkVBRE1FCgojIEVuYWJsZSBhdWRpbyAobG9hZHMgc25kX2JjbTI4MzUpCmR0cGFy
YW09YXVkaW89b24KCiMgQXV0b21hdGljYWxseSBsb2FkIG92ZXJsYXlzIGZvciBkZXRlY3RlZCBj
YW1lcmFzCmNhbWVyYV9hdXRvX2RldGVjdD0xCgojIEF1dG9tYXRpY2FsbHkgbG9hZCBvdmVybGF5
cyBmb3IgZGV0ZWN0ZWQgRFNJIGRpc3BsYXlzCmRpc3BsYXlfYXV0b19kZXRlY3Q9MQoKIyBFbmFi
bGUgRFJNIFZDNCBWM0QgZHJpdmVyCmR0b3ZlcmxheT12YzQta21zLXYzZAptYXhfZnJhbWVidWZm
ZXJzPTIKCiMgUnVuIGluIDY0LWJpdCBtb2RlCmFybV82NGJpdD0wCgojIERpc2FibGUgY29tcGVu
c2F0aW9uIGZvciBkaXNwbGF5cyB3aXRoIG92ZXJzY2FuCmRpc2FibGVfb3ZlcnNjYW49MQoKW2Nt
NF0KIyBFbmFibGUgaG9zdCBtb2RlIG9uIHRoZSAyNzExIGJ1aWx0LWluIFhIQ0kgVVNCIGNvbnRy
b2xsZXIuCiMgVGhpcyBsaW5lIHNob3VsZCBiZSByZW1vdmVkIGlmIHRoZSBsZWdhY3kgRFdDMiBj
b250cm9sbGVyIGlzIHJlcXVpcmVkCiMgKGUuZy4gZm9yIFVTQiBkZXZpY2UgbW9kZSkgb3IgaWYg
VVNCIHN1cHBvcnQgaXMgbm90IHJlcXVpcmVkLgpvdGdfbW9kZT0xCgpbYWxsXQoKW3BpNF0KIyBS
dW4gYXMgZmFzdCBhcyBmaXJtd2FyZSAvIGJvYXJkIGFsbG93cwphcm1fYm9vc3Q9MQoKW2FsbF0K
ZW5hYmxlX3JwMV91YXJ0PTEKdWFydF8ybmRzdGFnZT0xCmVuYWJsZV91YXJ0PTEKI2tlcm5lbD11
LWJvb3QuYmVpbmcK

--BBC44KKgg5AXvqcIIOar
Content-Type: text/plain; name="raspi0-boot.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="raspi0-boot.txt"

UmFzcGJlcnJ5IFBpIEJvb3Rjb2RlCgpGb3VuZCBTRCBjYXJkLCBjb25maWcudHh0ID0gMSwgc3Rh
cnQuZWxmID0gMSwgcmVjb3ZlcnkuZWxmID0gMCwgdGltZW91dCA9IDAKUmVhZCBGaWxlOiBjb25m
aWcudHh0LCAyMTc4IChieXRlcykKCgoKClJhc3BiZXJyeSBQaSBCb290Y29kZQpSZWFkIEZpbGU6
IGNvbmZpZy50eHQsIDIxNzgKUmVhZCBGaWxlOiBzdGFydC5lbGYsIDI5ODA1NDQgKGJ5dGVzKQpS
ZWFkIEZpbGU6IGZpeHVwLmRhdCwgNzMwMyAoYnl0ZXMpCk1FU1M6MDA6MDA6MDEuMDA5OTMxOjA6
IGJyZnM6IEZpbGUgcmVhZDogL21mcy9zZC9jb25maWcudHh0Ck1FU1M6MDA6MDA6MDEuMDE1MDk1
OjA6IGJyZnM6IEZpbGUgcmVhZDogMjE3OCBieXRlcwpNRVNTOjAwOjAwOjAxLjA1MDkyODowOiBI
RE1JMDpFRElEIGVycm9yIHJlYWRpbmcgRURJRCBibG9jayAwIGF0dGVtcHQgMApNRVNTOjAwOjAw
OjAxLjA1NzA5MjowOiBIRE1JMDpFRElEIGVycm9yIHJlYWRpbmcgRURJRCBibG9jayAwIGF0dGVt
cHQgMQpNRVNTOjAwOjAwOjAxLjA2MzQyODowOiBIRE1JMDpFRElEIGVycm9yIHJlYWRpbmcgRURJ
RCBibG9jayAwIGF0dGVtcHQgMgpNRVNTOjAwOjAwOjAxLjA2OTc2NTowOiBIRE1JMDpFRElEIGVy
cm9yIHJlYWRpbmcgRURJRCBibG9jayAwIGF0dGVtcHQgMwpNRVNTOjAwOjAwOjAxLjA3NjEwMjow
OiBIRE1JMDpFRElEIGVycm9yIHJlYWRpbmcgRURJRCBibG9jayAwIGF0dGVtcHQgNApNRVNTOjAw
OjAwOjAxLjA4MjQzODowOiBIRE1JMDpFRElEIGVycm9yIHJlYWRpbmcgRURJRCBibG9jayAwIGF0
dGVtcHQgNQpNRVNTOjAwOjAwOjAxLjA4ODc3NjowOiBIRE1JMDpFRElEIGVycm9yIHJlYWRpbmcg
RURJRCBibG9jayAwIGF0dGVtcHQgNgpNRVNTOjAwOjAwOjAxLjA5NTExMjowOiBIRE1JMDpFRElE
IGVycm9yIHJlYWRpbmcgRURJRCBibG9jayAwIGF0dGVtcHQgNwpNRVNTOjAwOjAwOjAxLjEwMTQ0
OTowOiBIRE1JMDpFRElEIGVycm9yIHJlYWRpbmcgRURJRCBibG9jayAwIGF0dGVtcHQgOApNRVNT
OjAwOjAwOjAxLjEwNzc4NjowOiBIRE1JMDpFRElEIGVycm9yIHJlYWRpbmcgRURJRCBibG9jayAw
IGF0dGVtcHQgOQpNRVNTOjAwOjAwOjAxLjExMzg4MTowOiBIRE1JMDpFRElEIGdpdmluZyB1cCBv
biByZWFkaW5nIEVESUQgYmxvY2sgMApNRVNTOjAwOjAwOjAxLjEyMTIyNjowOiBicmZzOiBGaWxl
IHJlYWQ6IC9tZnMvc2QvY29uZmlnLnR4dApNRVNTOjAwOjAwOjAxLjEyNjQzOTowOiBncGlvbWFu
OiBncGlvbWFuX2dldF9waW5fbnVtOiBwaW4gTEVEU19QV1JfT0sgbm90IGRlZmluZWQKTUVTUzow
MDowMDowMS42MzM3MzI6MDogZ3Bpb21hbjogZ3Bpb21hbl9nZXRfcGluX251bTogcGluIExFRFNf
UFdSX09LIG5vdCBkZWZpbmVkCk1FU1M6MDA6MDA6MDEuNjM5NTU2OjA6ICoqKiBSZXN0YXJ0IGxv
Z2dpbmcKTUVTUzowMDowMDowMS42NDM0Mjg6MDogYnJmczogRmlsZSByZWFkOiAyMTc4IGJ5dGVz
Ck1FU1M6MDA6MDA6MDEuNjQ4ODAwOjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBF
RElEIGJsb2NrIDAgYXR0ZW1wdCAwCk1FU1M6MDA6MDA6MDEuNjU2MTMwOjA6IGhkbWk6IEhETUkw
OkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCAxCk1FU1M6MDA6MDA6MDEu
NjYyOTg5OjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0
ZW1wdCAyCk1FU1M6MDA6MDA6MDEuNjY5ODQ2OjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVh
ZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCAzCk1FU1M6MDA6MDA6MDEuNjc2NzA0OjA6IGhkbWk6
IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA0Ck1FU1M6MDA6
MDA6MDEuNjgzNTYxOjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2Nr
IDAgYXR0ZW1wdCA1Ck1FU1M6MDA6MDA6MDEuNjkwNDE5OjA6IGhkbWk6IEhETUkwOkVESUQgZXJy
b3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA2Ck1FU1M6MDA6MDA6MDEuNjk3Mjc3OjA6
IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA3Ck1F
U1M6MDA6MDA6MDEuNzA0MTM0OjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElE
IGJsb2NrIDAgYXR0ZW1wdCA4Ck1FU1M6MDA6MDA6MDEuNzEwOTkyOjA6IGhkbWk6IEhETUkwOkVE
SUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA5Ck1FU1M6MDA6MDA6MDEuNzE3
NjA4OjA6IGhkbWk6IEhETUkwOkVESUQgZ2l2aW5nIHVwIG9uIHJlYWRpbmcgRURJRCBibG9jayAw
Ck1FU1M6MDA6MDA6MDEuNzIzNTExOjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBF
RElEIGJsb2NrIDAgYXR0ZW1wdCAwCk1FU1M6MDA6MDA6MDEuNzMxMzA0OjA6IGhkbWk6IEhETUkw
OkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCAxCk1FU1M6MDA6MDA6MDEu
NzM4MTYyOjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0
ZW1wdCAyCk1FU1M6MDA6MDA6MDEuNzQ1MDE5OjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVh
ZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCAzCk1FU1M6MDA6MDA6MDEuNzUxODc4OjA6IGhkbWk6
IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA0Ck1FU1M6MDA6
MDA6MDEuNzU4NzM2OjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2Nr
IDAgYXR0ZW1wdCA1Ck1FU1M6MDA6MDA6MDEuNzY1NTkyOjA6IGhkbWk6IEhETUkwOkVESUQgZXJy
b3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA2Ck1FU1M6MDA6MDA6MDEuNzcyNDUwOjA6
IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA3Ck1F
U1M6MDA6MDA6MDEuNzc5MzA4OjA6IGhkbWk6IEhETUkwOkVESUQgZXJyb3IgcmVhZGluZyBFRElE
IGJsb2NrIDAgYXR0ZW1wdCA4Ck1FU1M6MDA6MDA6MDEuNzg2MTY1OjA6IGhkbWk6IEhETUkwOkVE
SUQgZXJyb3IgcmVhZGluZyBFRElEIGJsb2NrIDAgYXR0ZW1wdCA5Ck1FU1M6MDA6MDA6MDEuNzky
NzgxOjA6IGhkbWk6IEhETUkwOkVESUQgZ2l2aW5nIHVwIG9uIHJlYWRpbmcgRURJRCBibG9jayAw
Ck1FU1M6MDA6MDA6MDEuNzk4Mzk2OjA6IGhkbWk6IEhETUk6aGRtaV9nZXRfc3RhdGUgaXMgZGVw
cmVjYXRlZCwgdXNlIGhkbWlfZ2V0X2Rpc3BsYXlfc3RhdGUgaW5zdGVhZApNRVNTOjAwOjAwOjAx
LjgwNzE0MTowOiBIRE1JMDogaGRtaV9waXhlbF9lbmNvZGluZzogMTYyMDAwMDAwCk1FU1M6MDA6
MDA6MDEuODEyODU3OjA6IHZlYzogdmVjX21pZGRsZXdhcmVfcG93ZXJfb246IHZlY19iYXNlOiAw
eDdlODA2MDAwIHJldi1pZCAweDAwMDAyNzA4IEAgdmVjOiAweDdlODA2MTAwIEAgMHgwMDAwMDQy
MCBlbmM6IDB4N2U4MDYwNjAgQCAweDAwMDAwMjIwIGNnbXNhZTogMHg3ZTgwNjA1YyBAIDB4MDAw
MDAwMDAKTUVTUzowMDowMDowMS44NDIxNDU6MDogZHRiX2ZpbGUgJ2JjbTI3MTAtcnBpLXplcm8t
Mi13LmR0YicKTUVTUzowMDowMDowMS44NDY0OTQ6MDogZHRiX2ZpbGUgJ2JjbTI3MTAtcnBpLXpl
cm8tMi5kdGInCk1FU1M6MDA6MDA6MDEuODU1MjQ5OjA6IGJyZnM6IEZpbGUgcmVhZDogL21mcy9z
ZC9iY20yNzEwLXJwaS16ZXJvLTIuZHRiCk1FU1M6MDA6MDA6MDEuODYwMTcyOjA6IExvYWRlZCAn
YmNtMjcxMC1ycGktemVyby0yLmR0YicgdG8gMHgxMDAgc2l6ZSAweDgzOTgKTUVTUzowMDowMDow
MS44ODE4NTY6MDogYnJmczogRmlsZSByZWFkOiAzMzY4OCBieXRlcwpNRVNTOjAwOjAwOjAxLjg4
NjY5MTowOiBicmZzOiBGaWxlIHJlYWQ6IC9tZnMvc2Qvb3ZlcmxheXMvb3ZlcmxheV9tYXAuZHRi
Ck1FU1M6MDA6MDA6MDEuOTI1MTgzOjA6IGJyZnM6IEZpbGUgcmVhZDogNTQ1MSBieXRlcwpNRVNT
OjAwOjAwOjAxLjkzMDAzMzowOiBicmZzOiBGaWxlIHJlYWQ6IC9tZnMvc2QvY29uZmlnLnR4dApN
RVNTOjAwOjAwOjAxLjkzNDUxOTowOiBkdHBhcmFtOiBhdWRpbz1vbgpNRVNTOjAwOjAwOjAxLjk0
NDU1MTowOiBicmZzOiBGaWxlIHJlYWQ6IDIxNzggYnl0ZXMKTUVTUzowMDowMDowMS45NTA4NjE6
MDogYnJmczogRmlsZSByZWFkOiAvbWZzL3NkL292ZXJsYXlzL3ZjNC1rbXMtdjNkLmR0Ym8KTUVT
UzowMDowMDowMi4wMDE3MTk6MDogTG9hZGVkIG92ZXJsYXkgJ3ZjNC1rbXMtdjNkJwpNRVNTOjAw
OjAwOjAyLjEwNTk0MDowOiBicmZzOiBGaWxlIHJlYWQ6IDI3NjAgYnl0ZXMKTUVTUzowMDowMDow
Mi4xMDk4MDM6MDogYnJmczogRmlsZSByZWFkOiAvbWZzL3NkL2NtZGxpbmUudHh0Ck1FU1M6MDA6
MDA6MDIuMTE0NTM0OjA6IFJlYWQgY29tbWFuZCBsaW5lIGZyb20gZmlsZSAnY21kbGluZS50eHQn
OgpNRVNTOjAwOjAwOjAyLjEyMDQwNDowOiAnZHdjX290Zy5scG1fZW5hYmxlPTAgY29uc29sZT1z
ZXJpYWwwLDExNTIwMCByb290PS9kZXYvbW1jYmxrMHAyIHJvb3Rmc3R5cGU9ZXh0NCByb290d2Fp
dCAgbG9nby5ub2xvZ28gbmV0LmlmbmFtZXM9MCcKTUVTUzowMDowMDowMi4xNDkyNjg6MDogZ3Bp
b21hbjogZ3Bpb21hbl9nZXRfcGluX251bTogcGluIEVNTUNfRU5BQkxFIG5vdCBkZWZpbmVkCk1F
U1M6MDA6MDA6MDIuNTY3MDk3OjA6IGJyZnM6IEZpbGUgcmVhZDogMTE2IGJ5dGVzCk1FU1M6MDA6
MDA6MDIuNjA0NzUyOjA6IGJyZnM6IEZpbGUgcmVhZDogL21mcy9zZC9rZXJuZWwuaW1nCk1FU1M6
MDA6MDA6MDIuNjA4NjA0OjA6IExvYWRlZCAna2VybmVsLmltZycgdG8gMHg4MDAwIHNpemUgMHg4
Mjc2YwpNRVNTOjAwOjAwOjAyLjYxNDUxNjowOiBEZXZpY2UgdHJlZSBsb2FkZWQgdG8gMHgxYmZl
NzcwMCAoc2l6ZSAweDg4NWIpCk1FU1M6MDA6MDA6MDIuNjIxNjMwOjA6IHVhcnQ6IFNldCBQTDAx
MSBiYXVkIHJhdGUgdG8gMTAzNDQ4LjMwMDAwMCBIegpNRVNTOjAwOjAwOjAyLjYyODQ0MjowOiB1
YXJ0OiBCYXVkIHJhdGUgY2hhbmdlIGRvbmUuLi4KTUVTUzowMDowMDowMi42MzE4NTc6MDogdWFy
dDogQmF1ZCByYXRlCgo=

--BBC44KKgg5AXvqcIIOar--

