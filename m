Return-Path: <felix.beck@karevo.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F16BCC83F26
	for <webhook@archiver.kernel.org>; Wed, 30 Jul 2025 16:45:02 +0000 (UTC)
Subject: User login fails despite successful creation with useradd class on NVIDIA Jetson AGX Orin #nvidia-jetson-agx-orin #yocto
To: yocto@lists.yoctoproject.org
From: felix.beck@karevo.de
X-Originating-Location: Freising, Bavaria, DE (84.181.239.37)
X-Originating-Platform: Linux Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 30 Jul 2025 09:44:54 -0700
Message-ID: <ANWW.1753893894898680818.ORHP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WQvstjCsfEXQiyXve6lb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Jul 2025 16:45:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65723

--WQvstjCsfEXQiyXve6lb
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

--WQvstjCsfEXQiyXve6lb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hello Yocto community,</div>
<div>I'm experiencing a persistent login issue with a custom Yocto image fo=
r **NVIDIA Jetson AGX Orin (64GB)** (MACHINE =3D "p3737-0000-p3701-0005", i=
n meta-tegra/conf/machine). The build, flashing, and booting all work corre=
ctly, but I cannot login with the created user account through either the G=
UI login screen or tty2 console. I can only see a user "jetson".</div>
<div>**Setup:**<br />- Custom distro based on Poky<br />- Target: NVIDIA Je=
tson AGX Orin (64GB)&nbsp;<br />- Base image: core-image-base<br />- User c=
reation via useradd class following official documentation</div>
<div>**User creation recipe implementation:**<br />```bash<br />inherit use=
radd</div>
<div>USERADD_PACKAGES =3D "${PN}"<br />USERADD_PARAM:${PN} =3D "-u 1200 -d =
/home/myuser -m -s /bin/bash -p '\$6\$...(SHA-512 hash)...' myuser"<br />GR=
OUPADD_PARAM:${PN} =3D "-g 999 docker"<br />GROUPMEMS_PARAM:${PN} =3D "-g d=
ocker -a myuser"</div>
<div>pkg_postinst_ontarget:${PN}() {<br />&nbsp; &nbsp; cp ${datadir}/${PN}=
/myuser-sudoers /etc/sudoers.d/myuser<br />&nbsp; &nbsp; chmod 0440 /etc/su=
doers.d/myuser<br />&nbsp; &nbsp; chown root:root /etc/sudoers.d/myuser<br =
/>&nbsp; &nbsp; echo 'root:$6$...(same hash)...' | chpasswd -e<br />}<br />=
```</div>
<div>**Verification by mounting rootfs.ext4:**<br />- User exists in /etc/p=
asswd: `myuser:x:1200:1200::/home/myuser:/bin/bash`<br />- Password hash ex=
ists in /etc/shadow: `myuser:$6$...:...:...`<br />- Home directory /home/my=
user exists with correct ownership<br />- User is member of docker group in=
 /etc/group<br />- local.conf has `EXTRA_IMAGE_FEATURES:remove =3D "debug-t=
weaks"`</div>
<div>**What I've tried:**<br />- Both MD5 and SHA-512 password hashes (gene=
rated with Python crypt.crypt)<br />- Following meta-skeleton/recipes-skele=
ton/useradd/useradd-example.bb pattern<br />- Verified against useradd clas=
s documentation<br />- Simplified sudoers configuration: `myuser ALL=3D(ALL=
) NOPASSWD: ALL`</div>
<div>The user account appears correctly created in the filesystem, but auth=
entication consistently fails at runtime. Are there additional dependencies=
 or runtime configurations needed for password authentication on NVIDIA Jet=
son platforms that differ from the standard useradd approach?</div>
<div>Any insights would be greatly appreciated.</div>
<div>Best regards,<br />Felix</div>
</div>

--WQvstjCsfEXQiyXve6lb--

