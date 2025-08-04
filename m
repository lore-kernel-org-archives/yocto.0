Return-Path: <felix.beck@karevo.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E470C87FCB
	for <webhook@archiver.kernel.org>; Mon,  4 Aug 2025 11:04:34 +0000 (UTC)
Subject: Re: [yocto] User login fails despite successful creation with useradd class on NVIDIA Jetson AGX Orin #yocto #nvidia-jetson-ags-orin
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: felix.beck@karevo.de
X-Originating-Location: Munich, Bavaria, DE (138.246.3.123)
X-Originating-Platform: Linux Firefox 141
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 04 Aug 2025 04:04:29 -0700
References: <82477f52-5602-438f-9bf3-403920a79ea0@gmail.com>
In-Reply-To: <82477f52-5602-438f-9bf3-403920a79ea0@gmail.com>
Message-ID: <15453.1754305469032491670@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RMn90KtFbR5pKI7o0bt9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Aug 2025 11:04:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65729

--RMn90KtFbR5pKI7o0bt9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I managed to solve the login issue. I used your distro for that.

However, the issue was not connected to Yocto but to the way I flash the im=
age. My situation was that I was able to build, flash and boot. But everyti=
me I saw a ubuntu-gnome-like GUI with a user "jetson" that I had not create=
d. The problem was that I had a M.2/nvme harddisk on my jetson. This caused=
 issues during the flashing and booting that did not result in any error me=
ssages. When I removed the M.2/nvme device from the AGX Orin and flashed th=
e yocto files onto the emmc chip, it worked. I was able to login with the u=
ser "root" without any password.

Unfortunately, I still do not manage to create a custom user. Now I'm hitti=
ng an issue with EXTRA_USERS_PARAMS on my Jetson AGX Orin build. My user se=
tup works fine for the main image but bombs out on the minimal Tegra images=
:
My config ( from yoe-distro ( https://github.com/YoeDistro/yoe-distro/blob/=
master/conf/projects/jetson-agx-orin-devkit/config.conf ) ):

# Setting a user/password in system
INHERIT +=3D "extrausers"
EXTRA_USERS_PARAMS +=3D "\
useradd admin; \
usermod -p '$(openssl passwd -6 myrootpassword)' admin; \
usermod -p '$(openssl passwd -6 myrootpassword)' root; \
usermod -a -G adm admin; \
usermod -a -G video admin; \
usermod -a -G audio admin; \
usermod -a -G systemd-journal admin; \
"
# Remove features that allow empty passwords - this MUST be uncommented to =
work
EXTRA_IMAGE_FEATURES:remove =3D "allow-empty-password empty-root-password"

Error during build:
usermod: group 'systemd-journal' does not exist
ERROR: tegra-espimage: usermod command did not succeed.

The problem is that tegra-espimage and tegra-minimal-initramfs don't includ=
e systemd, so no systemd-journal group gets created. But my main yoe-simple=
-image has systemd and needs this group assignment.
Same machine config builds multiple image types - some with systemd, some w=
ithout. EXTRA_USERS_PARAMS gets applied to all of them.

What's the cleanest way to handle this? Conditional logic in the user param=
s? Per-image overrides? Or am I missing something obvious? Currently just r=
emoving the systemd-journal line to get builds working, but then my admin u=
ser can't read journals in the full image.

Thanks!

--RMn90KtFbR5pKI7o0bt9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I managed to solve the login issue. I used your distro for that.</div>
<div>&nbsp;</div>
<div>However, the issue was not connected to Yocto but to the way I flash t=
he image. My situation was that I was able to build, flash and boot. But ev=
erytime I saw a ubuntu-gnome-like GUI with a user "jetson" that I had not c=
reated. The problem was that I had a M.2/nvme harddisk on my jetson. This c=
aused issues during the flashing and booting that did not result in any err=
or messages. When I removed the M.2/nvme device from the AGX Orin and flash=
ed the yocto files onto the emmc chip, it worked. I was able to login with =
the user "root" without any password.</div>
<div>&nbsp;</div>
<div>Unfortunately, I still do not manage to create a custom user. Now I'm =
hitting an issue with EXTRA_USERS_PARAMS on my Jetson AGX Orin build. My us=
er setup works fine for the main image but bombs out on the minimal Tegra i=
mages:<br />My config (<a href=3D"https://github.com/YoeDistro/yoe-distro/b=
lob/master/conf/projects/jetson-agx-orin-devkit/config.conf" target=3D"_bla=
nk" rel=3D"noopener">from yoe-distro</a>):</div>
<div>
<div>&nbsp;</div>
<div># Setting a user/password in system<br />INHERIT +=3D "extrausers"<br =
/>EXTRA_USERS_PARAMS +=3D "\<br />&nbsp; &nbsp;useradd admin; \<br />&nbsp;=
 &nbsp;usermod -p '$(openssl passwd -6 myrootpassword)' admin; \<br />&nbsp=
; &nbsp;usermod -p '$(openssl passwd -6 myrootpassword)' root; \<br />&nbsp=
; &nbsp;usermod -a -G adm admin; \<br />&nbsp; &nbsp;usermod -a -G video ad=
min; \<br />&nbsp; &nbsp;usermod -a -G audio admin; \<br />&nbsp; &nbsp;use=
rmod -a -G systemd-journal admin; \<br />"</div>
<div># Remove features that allow empty passwords - this MUST be uncommente=
d to work<br />EXTRA_IMAGE_FEATURES:remove =3D "allow-empty-password empty-=
root-password"</div>
<div>&nbsp;</div>
<div>Error during build:</div>
<div>usermod: group 'systemd-journal' does not exist<br />ERROR: tegra-espi=
mage: usermod command did not succeed.</div>
</div>
<div><br />The problem is that tegra-espimage and tegra-minimal-initramfs d=
on't include systemd, so no systemd-journal group gets created. But my main=
 yoe-simple-image has systemd and needs this group assignment.<br />Same ma=
chine config builds multiple image types - some with systemd, some without.=
 EXTRA_USERS_PARAMS gets applied to all of them.</div>
<div><br />What's the cleanest way to handle this? Conditional logic in the=
 user params? Per-image overrides? Or am I missing something obvious? Curre=
ntly just removing the systemd-journal line to get builds working, but then=
 my admin user can't read journals in the full image.</div>
<div><br />Thanks!</div>

--RMn90KtFbR5pKI7o0bt9--

