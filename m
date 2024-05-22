Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F79C25B78
	for <webhook@archiver.kernel.org>; Wed, 22 May 2024 16:31:40 +0000 (UTC)
Subject: [Basic]: bitbake menuconfig not reflected changes from custom defconfig 
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.209.253)
X-Originating-Platform: Linux Firefox 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 22 May 2024 09:31:34 -0700
Message-ID: <lh9y.1716395494266320027.qJhp@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6clYPoAfFMuwfcwL3u13"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 16:31:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63167

--6clYPoAfFMuwfcwL3u13
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,

I am trying basic kernel config change using qemuarm64.
I have modified the config using bitbake -c menuconfig virtual/kernel & and=
 copied it to my custom layer

After doing an cleansstate when i launch bitbake menuconfig i dont see my c=
hanges.
COMMAND: bitbake -c cleansstate virtual/kernel
COMMAND: bitbake -c menuconfig virtual/kernel

Below is my debug info:

vmmachine@testuser:~/yocto-nanbield/meta-test/recipes-kernel$ tree
bash: warning: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)
.
=E2=94=94=E2=94=80=E2=94=80 linux
=E2=94=9C=E2=94=80=E2=94=80 linux-yocto
=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 testdefconfig
=E2=94=94=E2=94=80=E2=94=80 linux-yocto_%.bbappend

vmmachine@testuser:~/yocto-nanbield/meta-test/recipes-kernel$ cat linux/lin=
ux-yocto_%.bbappend
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
SRC_URI +=3D "file://testdefconfig"

vmmachine@testuser:~/yocto-nanbield/meta-test/recipes-kernel$ cat linux/lin=
ux-yocto/testdefconfig | grep LOCAL
CONFIG_LOCALVERSION=3D"TESTING-HERE"
# CONFIG_LOCALVERSION_AUTO is not set

I even see my file being pulled by bitbake by looking log of " bitbake -e -=
c menuconfig virtual/kernel > test"
vmmachine@testuser:~/yocto-nanbield/qemu-build$ cat test | grep "testdefcon=
fig"
# =C2=A0 =C2=A0 "file://testdefconfig"
# =C2=A0 "git://git.yoctoproject.org/linux-yocto.git;name=3Dmachine;branch=
=3D${KBRANCH};protocol=3Dhttps =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git=
://git.yoctoproject.org/yocto-kernel-cache;type=3Dkmeta;name=3Dmeta;branch=
=3Dyocto-6.5;destsuffix=3D${KMETA};protocol=3Dhttps file://testdefconfig"
SRC_URI=3D"git://git.yoctoproject.org/linux-yocto.git;name=3Dmachine;branch=
=3Dv6.5/standard/qemuarm64;protocol=3Dhttps =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0git://git.yoctoproject.org/yocto-kernel-cache;type=3Dkmeta;name=
=3Dmeta;branch=3Dyocto-6.5;destsuffix=3Dkernel-meta;protocol=3Dhttps file:/=
/testdefconfig"
sccs_from_src_uri=3D"/home/vmmachine/yocto-nanbield/meta-test/recipes-kerne=
l/linux/linux-yocto/testdefconfig"

Can members please share any pointer on this why the defconfig is not being=
 pulled from cutom layer.

Thanks ,
Ashish

--6clYPoAfFMuwfcwL3u13
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All , <br /><br />I am trying basic kernel config change using qemuarm64=
.<br />I have modified the config using bitbake -c menuconfig virtual/kerne=
l &amp; and copied it to my custom layer <br /><br />After doing an cleanss=
tate when i launch bitbake menuconfig i dont see my changes. <br />COMMAND:=
 bitbake -c cleansstate virtual/kernel<br />COMMAND: bitbake -c menuconfig =
virtual/kernel<br /><br />Below is my debug info:<br />&nbsp;<br />vmmachin=
e@testuser:~/yocto-nanbield/meta-test/recipes-kernel$ tree<br />bash: warni=
ng: setlocale: LC_ALL: cannot change locale (en_US.UTF-8)<br />.<br />=E2=
=94=94=E2=94=80=E2=94=80 linux<br />&nbsp; &nbsp; =E2=94=9C=E2=94=80=E2=94=
=80 linux-yocto<br />&nbsp; &nbsp; =E2=94=82 &nbsp; =E2=94=94=E2=94=80=E2=
=94=80 testdefconfig<br />&nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=80 linux-y=
octo_%.bbappend<br /><br /><br />vmmachine@testuser:~/yocto-nanbield/meta-t=
est/recipes-kernel$ cat linux/linux-yocto_%.bbappend&nbsp;<br />FILESEXTRAP=
ATHS:prepend :=3D "${THISDIR}/${PN}:"<br />SRC_URI +=3D "file://testdefconf=
ig"<br /><br /><br />vmmachine@testuser:~/yocto-nanbield/meta-test/recipes-=
kernel$ cat linux/linux-yocto/testdefconfig | grep LOCAL<br />CONFIG_LOCALV=
ERSION=3D"TESTING-HERE"<br /># CONFIG_LOCALVERSION_AUTO is not set<br /><br=
 /><br />I even see my file being pulled by bitbake by looking log of " bit=
bake -e -c menuconfig virtual/kernel &gt; test"<br />vmmachine@testuser:~/y=
octo-nanbield/qemu-build$ cat test | grep "testdefconfig"<br /># &nbsp; &nb=
sp; "file://testdefconfig"<br /># &nbsp; "git://git.yoctoproject.org/linux-=
yocto.git;name=3Dmachine;branch=3D${KBRANCH};protocol=3Dhttps &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;git://git.yoctoproject.org/yocto-kernel-cache;t=
ype=3Dkmeta;name=3Dmeta;branch=3Dyocto-6.5;destsuffix=3D${KMETA};protocol=
=3Dhttps file://testdefconfig"<br />SRC_URI=3D"git://git.yoctoproject.org/l=
inux-yocto.git;name=3Dmachine;branch=3Dv6.5/standard/qemuarm64;protocol=3Dh=
ttps &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://git.yoctoproject.org/yo=
cto-kernel-cache;type=3Dkmeta;name=3Dmeta;branch=3Dyocto-6.5;destsuffix=3Dk=
ernel-meta;protocol=3Dhttps file://testdefconfig"<br />&nbsp; &nbsp; &nbsp;=
 &nbsp; sccs_from_src_uri=3D"/home/vmmachine/yocto-nanbield/meta-test/recip=
es-kernel/linux/linux-yocto/testdefconfig"<br /><br />Can members please sh=
are any pointer on this why the defconfig is not being pulled from cutom la=
yer.<br /><br />Thanks ,<br />Ashish <br /><br /><br /><br />

--6clYPoAfFMuwfcwL3u13--

