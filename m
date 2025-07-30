Return-Path: <felix.beck@karevo.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F21FDC87FCB
	for <webhook@archiver.kernel.org>; Wed, 30 Jul 2025 16:50:52 +0000 (UTC)
Subject: User login fails despite successful creation with useradd class on NVIDIA Jetson AGX Orin #yocto #nvidia-jetson-ags-orin
To: yocto@lists.yoctoproject.org
From: felix.beck@karevo.de
X-Originating-Location: Freising, Bavaria, DE (84.181.239.37)
X-Originating-Platform: Linux Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Jul 2025 09:50:49 -0700
Message-ID: <AO6h.1753894249819535793.o594@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KQ5QwFczrhRBK12BHn05"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Jul 2025 16:50:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65724

--KQ5QwFczrhRBK12BHn05
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto community,
I'm experiencing a persistent login issue with a custom Yocto image for **N=
VIDIA Jetson AGX Orin (64GB)** (MACHINE =3D "p3737-0000-p3701-0005", in met=
a-tegra/conf/machine). The build, flashing, and booting all work correctly,=
 but I cannot login with the created user account through either the GUI lo=
gin screen or tty2 console. I can only see a user "jetson".
**Setup:**
- Custom distro based on Poky
- Target: NVIDIA Jetson AGX Orin (64GB)
- Base image: core-image-base
- User creation via useradd class following official documentation
**User creation recipe implementation:**
```bash
inherit useradd
USERADD_PACKAGES =3D "${PN}"
USERADD_PARAM:${PN} =3D "-u 1200 -d /home/myuser -m -s /bin/bash -p '\$6\$.=
..(SHA-512 hash)...' myuser"
GROUPADD_PARAM:${PN} =3D "-g 999 docker"
GROUPMEMS_PARAM:${PN} =3D "-g docker -a myuser"
pkg_postinst_ontarget:${PN}() {
cp ${datadir}/${PN}/myuser-sudoers /etc/sudoers.d/myuser
chmod 0440 /etc/sudoers.d/myuser
chown root:root /etc/sudoers.d/myuser
echo 'root:$6$...(same hash)...' | chpasswd -e
}
```
**Verification by mounting rootfs.ext4:**
- User exists in /etc/passwd: `myuser:x:1200:1200::/home/myuser:/bin/bash`
- Password hash exists in /etc/shadow: `myuser:$6$...:...:...`
- Home directory /home/myuser exists with correct ownership
- User is member of docker group in /etc/group
- local.conf has `EXTRA_IMAGE_FEATURES:remove =3D "debug-tweaks"`
**What I've tried:**
- Both MD5 and SHA-512 password hashes (generated with Python crypt.crypt)
- Following meta-skeleton/recipes-skeleton/useradd/useradd-example.bb patte=
rn
- Verified against useradd class documentation
- Simplified sudoers configuration: `myuser ALL=3D(ALL) NOPASSWD: ALL`
The user account appears correctly created in the filesystem, but authentic=
ation consistently fails at runtime. Are there additional dependencies or r=
untime configurations needed for password authentication on NVIDIA Jetson p=
latforms that differ from the standard useradd approach?
Any insights would be greatly appreciated.
Best regards,
Felix

--KQ5QwFczrhRBK12BHn05
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Hello Yocto community,</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">I'm experiencing a persistent login issue with =
a custom Yocto image for **NVIDIA Jetson AGX Orin (64GB)** (MACHINE =3D "p3=
737-0000-p3701-0005", in meta-tegra/conf/machine). The build, flashing, and=
 booting all work correctly, but I cannot login with the created user accou=
nt through either the GUI login screen or tty2 console. I can only see a us=
er "jetson".</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">**Setup:**<br style=3D"box-sizing: border-box; =
overflow-wrap: break-word !important;" />- Custom distro based on Poky<br s=
tyle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />- =
Target: NVIDIA Jetson AGX Orin (64GB)&nbsp;<br style=3D"box-sizing: border-=
box; overflow-wrap: break-word !important;" />- Base image: core-image-base=
<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important;"=
 />- User creation via useradd class following official documentation</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">**User creation recipe implementation:**<br sty=
le=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />```b=
ash<br style=3D"box-sizing: border-box; overflow-wrap: break-word !importan=
t;" />inherit useradd</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">USERADD_PACKAGES =3D "${PN}"<br style=3D"box-si=
zing: border-box; overflow-wrap: break-word !important;" />USERADD_PARAM:${=
PN} =3D "-u 1200 -d /home/myuser -m -s /bin/bash -p '\$6\$...(SHA-512 hash)=
...' myuser"<br style=3D"box-sizing: border-box; overflow-wrap: break-word =
!important;" />GROUPADD_PARAM:${PN} =3D "-g 999 docker"<br style=3D"box-siz=
ing: border-box; overflow-wrap: break-word !important;" />GROUPMEMS_PARAM:$=
{PN} =3D "-g docker -a myuser"</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">pkg_postinst_ontarget:${PN}() {<br style=3D"box=
-sizing: border-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp;=
 cp ${datadir}/${PN}/myuser-sudoers /etc/sudoers.d/myuser<br style=3D"box-s=
izing: border-box; overflow-wrap: break-word !important;" />&nbsp; &nbsp; c=
hmod 0440 /etc/sudoers.d/myuser<br style=3D"box-sizing: border-box; overflo=
w-wrap: break-word !important;" />&nbsp; &nbsp; chown root:root /etc/sudoer=
s.d/myuser<br style=3D"box-sizing: border-box; overflow-wrap: break-word !i=
mportant;" />&nbsp; &nbsp; echo 'root:$6$...(same hash)...' | chpasswd -e<b=
r style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" /=
>}<br style=3D"box-sizing: border-box; overflow-wrap: break-word !important=
;" />```</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">**Verification by mounting rootfs.ext4:**<br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />- U=
ser exists in /etc/passwd: `myuser:x:1200:1200::/home/myuser:/bin/bash`<br =
style=3D"box-sizing: border-box; overflow-wrap: break-word !important;" />-=
 Password hash exists in /etc/shadow: `myuser:$6$...:...:...`<br style=3D"b=
ox-sizing: border-box; overflow-wrap: break-word !important;" />- Home dire=
ctory /home/myuser exists with correct ownership<br style=3D"box-sizing: bo=
rder-box; overflow-wrap: break-word !important;" />- User is member of dock=
er group in /etc/group<br style=3D"box-sizing: border-box; overflow-wrap: b=
reak-word !important;" />- local.conf has `EXTRA_IMAGE_FEATURES:remove =3D =
"debug-tweaks"`</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">**What I've tried:**<br style=3D"box-sizing: bo=
rder-box; overflow-wrap: break-word !important;" />- Both MD5 and SHA-512 p=
assword hashes (generated with Python crypt.crypt)<br style=3D"box-sizing: =
border-box; overflow-wrap: break-word !important;" />- Following meta-skele=
ton/recipes-skeleton/useradd/useradd-example.bb pattern<br style=3D"box-siz=
ing: border-box; overflow-wrap: break-word !important;" />- Verified agains=
t useradd class documentation<br style=3D"box-sizing: border-box; overflow-=
wrap: break-word !important;" />- Simplified sudoers configuration: `myuser=
 ALL=3D(ALL) NOPASSWD: ALL`</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">The user account appears correctly created in t=
he filesystem, but authentication consistently fails at runtime. Are there =
additional dependencies or runtime configurations needed for password authe=
ntication on NVIDIA Jetson platforms that differ from the standard useradd =
approach?</div>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Any insights would be greatly appreciated.</div=
>
<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #dbdde1; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #252728=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Best regards,<br style=3D"box-sizing: border-bo=
x; overflow-wrap: break-word !important;" />Felix</div>
</div>

--KQ5QwFczrhRBK12BHn05--

