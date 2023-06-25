Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EB0BEB64DC
	for <webhook@archiver.kernel.org>; Sun, 25 Jun 2023 09:58:24 +0000 (UTC)
Subject: Re: [meta-raspberrypi] vc4-fkms-v3d vs. vc4-kms-v3d
To: yocto@lists.yoctoproject.org
From: "Electronic Consult" <electronicconsult1@gmail.com>
X-Originating-Location: Dublin, Leinster, IE (188.141.96.236)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 25 Jun 2023 02:58:20 -0700
References: <Z6ASWR.R5G5DV4V5AS73@t-online.de>
In-Reply-To: <Z6ASWR.R5G5DV4V5AS73@t-online.de>
Message-ID: <9581.1687687100979603745@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="6BA9IIZnbjsk2lwnDQzZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 Jun 2023 09:58:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60432

--6BA9IIZnbjsk2lwnDQzZ
Content-Type: multipart/alternative; boundary="1r340N35ielk5QkDLuRl"

--1r340N35ielk5QkDLuRl
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello folks,

I'm in the same situation as Manuel (RPi4, official touchscreen) & have com=
e to a similar conclusion. I had issues getting a graphics output on the sc=
reen until I used:

VC4DTBO =3D "vc4-fkms-v3d-pi4"

With this I can get both console output & graphics.

I used the attached kas file to generate an image. I didn't try with Waylan=
d as it wasn't required, I was incorporating meta-qt6 which requires EGLFS =
for the RPi4 (http://doc.qt.io/qt-6/configure-linux-device.html).

I may be grasping for coincidences but on another project using meta-atmel =
I had issues with the 5.15 kernel, seems there was significant changes ( ht=
tps://www.phoronix.com/news/DRM-Misc-Next-First-5.15 ) to the DRM. I recent=
ly updated to 6.1 & the issues were resolved.

Hope this is of some assistance,

Owen

--1r340N35ielk5QkDLuRl
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello folks,<br /><br />I'm in the same situation as Manuel (RPi4, official=
 touchscreen) &amp; have come to a similar conclusion. I had issues getting=
 a graphics output on the screen until I used:<br /><br />VC4DTBO =3D "vc4-=
fkms-v3d-pi4"<br /><br />With this I can get both console output &amp; grap=
hics. <br /><br />I used the attached kas file to generate an image. I didn=
't try with Wayland as it wasn't required, I was incorporating meta-qt6 whi=
ch requires EGLFS for the RPi4 (http://doc.qt.io/qt-6/configure-linux-devic=
e.html).<br /><br />I may be grasping for coincidences but on another proje=
ct using meta-atmel I had issues with the 5.15 kernel, seems there was <a h=
ref=3D"https://www.phoronix.com/news/DRM-Misc-Next-First-5.15" target=3D"_b=
lank" rel=3D"noopener">significant changes </a>to the DRM. I recently updat=
ed to 6.1 &amp; the issues were resolved.<br /><br />Hope this is of some a=
ssistance,<br /><br />Owen

--1r340N35ielk5QkDLuRl--

--6BA9IIZnbjsk2lwnDQzZ
Content-Type: application/x-yaml; name="poky-rpi-qt-custom.yml"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="poky-rpi-qt-custom.yml"

aGVhZGVyOgogIHZlcnNpb246IDgKCm1hY2hpbmU6IHJhc3BiZXJyeXBpNApkaXN0cm86IHBva3kK
dGFyZ2V0OgogIC0gY29yZS1pbWFnZS1iYXNlCgpyZXBvczoKICBtZXRhLXJhc3BiZXJyeXBpOgog
ICAgdXJsOiBodHRwczovL2dpdGh1Yi5jb20vYWdoZXJ6YW4vbWV0YS1yYXNwYmVycnlwaQogICAg
cGF0aDogbGF5ZXJzL21ldGEtcmFzcGJlcnJ5cGkKICAgIHJlZnNwZWM6IGtpcmtzdG9uZQoKICBw
b2t5OgogICAgdXJsOiBodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL2dpdC9wb2t5CiAgICBw
YXRoOiBsYXllcnMvcG9reQogICAgcmVmc3BlYzoga2lya3N0b25lCiAgICBsYXllcnM6CiAgICAg
IG1ldGE6CiAgICAgIG1ldGEtcG9reToKICAgICAgbWV0YS15b2N0by1ic3A6CgogIG1ldGEtb3Bl
bmVtYmVkZGVkOgogICAgdXJsOiBodHRwOi8vZ2l0Lm9wZW5lbWJlZGRlZC5vcmcvbWV0YS1vcGVu
ZW1iZWRkZWQKICAgIHBhdGg6IGxheWVycy9tZXRhLW9wZW5lbWJlZGRlZAogICAgcmVmc3BlYzog
a2lya3N0b25lCiAgICBsYXllcnM6CiAgICAgIG1ldGEtb2U6CiAgICAgIG1ldGEtcHl0aG9uOgog
ICAgICBtZXRhLW5ldHdvcmtpbmc6CiAgICAgIG1ldGEtcGVybDoKCiAgbWV0YS1xdDY6CiAgICB1
cmw6IGh0dHBzOi8vY29kZS5xdC5pby95b2N0by9tZXRhLXF0Ni5naXQKICAgIHBhdGg6IGxheWVy
cy9tZXRhLXF0NiAgICAKICAgIHJlZnNwZWM6IG9yaWdpbi82LjUuMAoKICBtZXRhLXRlc3Q6CiAg
ICAjIFdhcm5pbmcsIGRvZXNuJ3QgdXBkYXRlIQogICAgdXJsOiBodHRwczovL2dpdGh1Yi5jb20v
T09IZWhpci9tZXRhLXRlc3QuZ2l0CiAgICBwYXRoOiBsYXllcnMvbWV0YS10ZXN0CiAgICByZWZz
cGVjOiBtYWluCgpiYmxheWVyc19jb25mX2hlYWRlcjoKICBzdGFuZGFyZDogfAogICAgUE9LWV9C
QkxBWUVSU19DT05GX1ZFUlNJT04gPSAiMiIKICAgIEJCUEFUSCA9ICIke1RPUERJUn0iCiAgICBC
QkZJTEVTID89ICIiCmxvY2FsX2NvbmZfaGVhZGVyOgogIHJlZHVjZV9kaXNrc3BhY2U6IHwKICAg
IElOSEVSSVQgKz0gInJtX3dvcmtfYW5kX2Rvd25sb2FkcyIKICBzdGFuZGFyZDogfAogICAgQ09O
Rl9WRVJTSU9OID0gIjIiCiAgICBQQUNLQUdFX0NMQVNTRVMgPSAicGFja2FnZV9ycG0iCiAgICBT
REtNQUNISU5FID0gIng4Nl82NCIKICAgIFVTRVJfQ0xBU1NFUyA9ICJidWlsZHN0YXRzIgogICAg
UEFUQ0hSRVNPTFZFID0gIm5vb3AiCgogICAgIyBJbWFnZSB0eXBlcyAocXVpY2tlciB0byBmbGFz
aCB3aXRoKQogICAgSU1BR0VfRlNUWVBFUyA9ICJ3aWMgd2ljLmd6IgoKICAgICMgQWRkZWQgLSB5
b3UgcHJvYmFibHkgd2FudCB0byBjaGFuZ2VzIHRoZXNlIG5leHQgdHdvIGxpbmVzIQogICAgRExf
RElSID0gIi9ob21lL3Byb2plY3RzL3lvY3RvL2xvY2FsQ2FjaGUvZG93bmxvYWRzIgogICAgU1NU
QVRFX0RJUiA9ICIvaG9tZS9wcm9qZWN0cy95b2N0by9sb2NhbENhY2hlL3NzdGF0ZS1jYWNoZSIK
ICAgIAogICAgQkJfU0lHTkFUVVJFX0hBTkRMRVIgPSAiT0VFcXVpdkhhc2giCiAgICBCQl9IQVNI
U0VSVkUgPSAiYXV0byIKICAgIEJCX0hBU0hTRVJWRV9VUFNUUkVBTSA9ICJoYXNoc2Vydi55b2N0
by5pbzo4Njg3IgogICAgU1NUQVRFX01JUlJPUlMgPz0gImZpbGU6Ly8uKiBodHRwczovL3NzdGF0
ZS55b2N0b3Byb2plY3Qub3JnL2FsbC9QQVRIO2Rvd25sb2FkZmlsZW5hbWU9UEFUSCIKCiAgICAj
IFRlc3QgYXBwcwogICAgSU1BR0VfSU5TVEFMTDphcHBlbmQgPSAiICAgIHF0LXRlc3QgXAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHFtbC1kZW1vIFwKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBoZWxsb3dvcmxkIFwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBxdWljay1jb250cm9scyBcCiAgICAgICAgICAgICAgICAgICAgICAgICAgICIKCiAgICAjIE9u
bHkgcmVxdWlyZWQgZm9yIHRlc3RpbmcKICAgIERJU1RST19GRUFUVVJFUzpyZW1vdmUgPSAicHRl
c3QiCgogICAgIyBJbmNsdWRlIFF0NiB0b29sY2hhaW4gd2hlbiBtYWtpbmcgU0RLICAgCiAgICBU
T09MQ0hBSU5fSE9TVF9UQVNLICs9ICIgbmF0aXZlc2RrLXBhY2thZ2Vncm91cC1xdDYtdG9vbGNo
YWluLWhvc3QgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAgIgogIHJwaS1zcGVjaWZpYzog
fAogICAgICBFTkFCTEVfSTJDID0gIjEiCiAgICAgIERJU1RST19GRUFUVVJFUzphcHBlbmQgPSAi
IHdpZmkiCiAgICAgIFZJREVPX0NBTUVSQSA9ICIwIgogICAgICBESVNBQkxFX1JQSV9CT09UX0xP
R08gPSAiMSIKICAgICAgCiAgICAgICMgRm9yIFJQSTQgdGhpcyBlbmFibGVzIGJvdGggY29uc29s
ZSB0ZXh0IGRpc3BsYXkgJiBncmFwaGljcyAoZm9yIEVHTEZTKQogICAgICBWQzREVEJPID0gInZj
NC1ma21zLXYzZC1waTQiCiAgICAgICMgZnJhbWVidWZmZXJfd2lkdGg9ODAwCiAgICAgICMgZnJh
bWVidWZmZXJfaGVpZ2h0PTQ4MAoKICBxdC1zcGVjaWZpYzogfAogICAgICAjIFVzZSBWQzQgZHJp
dmVyIEVHTEZTCiAgICAgIElNQUdFX0lOU1RBTEw6cmVtb3ZlID0gIndheWxhbmQgd2VzdG9uIHdl
c3Rvbi1pbml0IgogICAgICBESVNUUk9fRkVBVFVSRVM6cmVtb3ZlID0gIngxMSIKCiAgICAgICMg
RG9lc24ndCByZXNvbHZlIHRoZSBtZXNzYWdlOiAnUXQgZGVwZW5kcyBvbiBhIFVURi04IGxvY2Fs
ZSwgYnV0IGhhcyBmYWlsZWQgdG8gc3dpdGNoIHRvIG9uZS4nCiAgICAgIEdMSUJDX0dFTkVSQVRF
X0xPQ0FMRVMgPSAiZW5fR0IgZW5fVVMgZW5fR0IuVVRGLTggZW5fVVMuVVRGLTgiCiAgICAgIElN
QUdFX0xJTkdVQVMgPSAiZW4tZ2IgZW4tdXMiCgogICAgICAjIE5vIGZvbnRzIGF2YWlsYWJsZSBv
biBRTUwgYXBwcyB3aXRob3V0IGFkZGluZyB0aGlzIAogICAgICBJTUFHRV9JTlNUQUxMOmFwcGVu
ZCA9ICJcCiAgICAgICAgICAgIHR0Zi1kZWphdnUtc2FucyBcCiAgICAgICAgICAgIHR0Zi1kZWph
dnUtc2Fucy1tb25vIFwKICAgICAgICAgICAgdHRmLWRlamF2dS1zYW5zLWNvbmRlbnNlZCBcCiAg
ICAgICAgICAgIHR0Zi1kZWphdnUtc2VyaWYgXAogICAgICAgICAgICB0dGYtZGVqYXZ1LXNlcmlm
LWNvbmRlbnNlZCBcCiAgICAgICAgICAgIHR0Zi1kZWphdnUtY29tbW9uIFwKICAgICAgICAgICAg
IgoKICBkZWJ1Zy10d2Vha3M6IHwKICAgIEVYVFJBX0lNQUdFX0ZFQVRVUkVTID0gImRlYnVnLXR3
ZWFrcyBzc2gtc2VydmVyLW9wZW5zc2giCgogIGRpc2ttb246IHwKICAgIEJCX0RJU0tNT05fRElS
UyA9ICJcCiAgICAgICAgU1RPUFRBU0tTLCR7VE1QRElSfSwxRywxMDBLIFwKICAgICAgICBTVE9Q
VEFTS1MsJHtETF9ESVJ9LDFHLDEwMEsgXAogICAgICAgIFNUT1BUQVNLUywke1NTVEFURV9ESVJ9
LDFHLDEwMEsgXAogICAgICAgIFNUT1BUQVNLUywvdG1wLDEwME0sMTAwSyBcCiAgICAgICAgSEFM
VCwke1RNUERJUn0sMTAwTSwxSyBcCiAgICAgICAgSEFMVCwke0RMX0RJUn0sMTAwTSwxSyBcCiAg
ICAgICAgSEFMVCwke1NTVEFURV9ESVJ9LDEwME0sMUsgXAogICAgICAgIEhBTFQsL3RtcCwxME0s
MUsiCgoK

--6BA9IIZnbjsk2lwnDQzZ--

