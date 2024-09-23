Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AD07CF9C6E
	for <webhook@archiver.kernel.org>; Mon, 23 Sep 2024 04:03:30 +0000 (UTC)
Subject: Issue with 
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: IN (152.58.210.45)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 22 Sep 2024 21:03:29 -0700
Message-ID: <SbHz.1727064209194627940.DtRb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="arGlm1VAa1id3PUP6Uvv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Sep 2024 04:03:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63876

--arGlm1VAa1id3PUP6Uvv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am facing issue as mentioned below. its very important to me can anyone r=
espond immediate basis to solve issue as mentioned below.

WARNING: sota-image-1.0-r0 do_rootfs: Postinstall for package tx-init faile=
d with 1:
ln -s /lib/systemd/system/tx-init.service /home/z0254762/transics/sota/oe/b=
uild-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-li=
nux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.target.w=
ants/tx-init.service
ln -s /lib/systemd/system/tx-appfs-setup.service /home/z0254762/transics/so=
ta/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-=
ostl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.t=
arget.wants/tx-appfs-setup.service
ln -s /lib/systemd/system/tx-usb-pwr.service /home/z0254762/transics/sota/o=
e/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl=
-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.targe=
t.wants/tx-usb-pwr.service
ln -s /lib/systemd/system/tx-hostname.service /home/z0254762/transics/sota/=
oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ost=
l-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.targ=
et.wants/tx-hostname.service
ln -s /lib/systemd/system/tx-comport.service /home/z0254762/transics/sota/o=
e/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl=
-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.targe=
t.wants/tx-comport.service
ln -s /lib/systemd/system/tx-app.service /home/z0254762/transics/sota/oe/bu=
ild-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-lin=
ux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.target.wa=
nts/tx-app.service
Traceback (most recent call last):
File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-sot=
a/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/recipe=
-sysroot-native/usr/bin/systemctl", line 348, in <module>
main()
File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-sot=
a/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/recipe=
-sysroot-native/usr/bin/systemctl", line 334, in main
SystemdUnit(root, service).enable()
File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-sot=
a/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/recipe=
-sysroot-native/usr/bin/systemctl", line 219, in enable
config =3D SystemdFile(self.root, path, instance_unit_name)
File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-sot=
a/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/recipe=
-sysroot-native/usr/bin/systemctl", line 31, in __init__
self._parse(root, path)
File "/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-sot=
a/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/recipe=
-sysroot-native/usr/bin/systemctl", line 81, in _parse
if k not in section:
TypeError: argument of type 'NoneType' is not iterable
ERROR: sota-image-1.0-r0 do_rootfs: Postinstall scriptlets of ['tx-init'] h=
ave failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget:${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in /home/z0254762/transics/sota/oe/build-openstl=
inuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/=
sota-image/1.0-r0/temp/log.do_rootfs.
ERROR: Logfile of failure stored in: /home/z0254762/transics/sota/oe/build-=
openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-g=
nueabi/sota-image/1.0-r0/temp/log.do_rootfs.2043283
ERROR: Task (/home/z0254762/transics/sota/oe/layers/meta-tx-sota/recipes-co=
re/sota/sota-image.bb:do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4961 tasks of which 4947 didn't need to be r=
erun and 1 failed.

Regards,
Sateesh

--arGlm1VAa1id3PUP6Uvv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,</div>
<div>&nbsp;</div>
<div>I am facing issue as mentioned below. its very important to me can any=
one respond immediate basis to solve issue as mentioned below.</div>
<div>&nbsp;</div>
<div>
<div>WARNING: sota-image-1.0-r0 do_rootfs: Postinstall for package tx-init =
failed with 1:<br />ln -s /lib/systemd/system/tx-init.service /home/z025476=
2/transics/sota/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/st=
m32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system=
/multi-user.target.wants/tx-init.service<br />ln -s /lib/systemd/system/tx-=
appfs-setup.service /home/z0254762/transics/sota/oe/build-openstlinuxweston=
-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image=
/1.0-r0/rootfs/etc/systemd/system/multi-user.target.wants/tx-appfs-setup.se=
rvice<br />ln -s /lib/systemd/system/tx-usb-pwr.service /home/z0254762/tran=
sics/sota/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp1=
3_sota-ostl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi=
-user.target.wants/tx-usb-pwr.service<br />ln -s /lib/systemd/system/tx-hos=
tname.service /home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32=
mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r=
0/rootfs/etc/systemd/system/multi-user.target.wants/tx-hostname.service<br =
/>ln -s /lib/systemd/system/tx-comport.service /home/z0254762/transics/sota=
/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-os=
tl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/systemd/system/multi-user.tar=
get.wants/tx-comport.service<br />ln -s /lib/systemd/system/tx-app.service =
/home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-sota/tmp-=
glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/rootfs/etc/s=
ystemd/system/multi-user.target.wants/tx-app.service<br />Traceback (most r=
ecent call last):<br />&nbsp; File "/home/z0254762/transics/sota/oe/build-o=
penstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gn=
ueabi/sota-image/1.0-r0/recipe-sysroot-native/usr/bin/systemctl", line 348,=
 in &lt;module&gt;<br />&nbsp; &nbsp; main()<br />&nbsp; File "/home/z02547=
62/transics/sota/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/s=
tm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/recipe-sysroot-native/us=
r/bin/systemctl", line 334, in main<br />&nbsp; &nbsp; SystemdUnit(root, se=
rvice).enable()<br />&nbsp; File "/home/z0254762/transics/sota/oe/build-ope=
nstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnue=
abi/sota-image/1.0-r0/recipe-sysroot-native/usr/bin/systemctl", line 219, i=
n enable<br />&nbsp; &nbsp; config =3D SystemdFile(self.root, path, instanc=
e_unit_name)<br />&nbsp; File "/home/z0254762/transics/sota/oe/build-openst=
linuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi=
/sota-image/1.0-r0/recipe-sysroot-native/usr/bin/systemctl", line 31, in __=
init__<br />&nbsp; &nbsp; self._parse(root, path)<br />&nbsp; File "/home/z=
0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/w=
ork/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/recipe-sysroot-nati=
ve/usr/bin/systemctl", line 81, in _parse<br />&nbsp; &nbsp; if k not in se=
ction:<br />TypeError: argument of type 'NoneType' is not iterable</div>
<div>ERROR: sota-image-1.0-r0 do_rootfs: Postinstall scriptlets of ['tx-ini=
t'] have failed. If the intention is to defer them to first boot,<br />then=
 please place them into pkg_postinst_ontarget:${PN} ().<br />Deferring to f=
irst boot via 'exit 1' is no longer supported.<br />Details of the failure =
are in /home/z0254762/transics/sota/oe/build-openstlinuxweston-stm32mp13-so=
ta/tmp-glibc/work/stm32mp13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/temp/=
log.do_rootfs.<br />ERROR: Logfile of failure stored in: /home/z0254762/tra=
nsics/sota/oe/build-openstlinuxweston-stm32mp13-sota/tmp-glibc/work/stm32mp=
13_sota-ostl-linux-gnueabi/sota-image/1.0-r0/temp/log.do_rootfs.2043283<br =
/>ERROR: Task (/home/z0254762/transics/sota/oe/layers/meta-tx-sota/recipes-=
core/sota/sota-image.bb:do_rootfs) failed with exit code '1'<br />NOTE: Tas=
ks Summary: Attempted 4961 tasks of which 4947 didn't need to be rerun and =
1 failed.</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>
</div>

--arGlm1VAa1id3PUP6Uvv--

