Return-Path: <winfried_mb2@xmsnet.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C77AC433EF
	for <webhook@archiver.kernel.org>; Sat, 22 Jan 2022 13:34:47 +0000 (UTC)
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl
 [195.121.94.169])
 by mx.groups.io with SMTP id smtpd.web08.8226.1642858472191267230
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Jan 2022 05:34:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xmsnet.nl header.s=xmsnet01 header.b=RHy/gRxf;
 spf=pass (domain: xmsnet.nl, ip: 195.121.94.169,
 mailfrom: winfried_mb2@xmsnet.nl)
X-KPN-MessageId: 009ece03-7b88-11ec-bb40-005056abad63
Received: from mta.kpnmail.nl (unknown [10.31.162.62])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id 009ece03-7b88-11ec-bb40-005056abad63;
	Sat, 22 Jan 2022 14:34:19 +0100 (CET)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.138.62])
	by mta.kpnmail.nl (Halon) with ESMTP
	id 05d0fad0-7b88-11ec-9c54-005056ab0606;
	Sat, 22 Jan 2022 14:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xmsnet.nl; s=xmsnet01;
	h=content-type:mime-version:subject:message-id:to:from:date;
	bh=IcoUGPDykIIv+ZzVyOoKInUujHIAJ0V8RPIskPQ6qV8=;
	b=RHy/gRxfXuP0t1Fu+79G4vfn3Z+LvG08NXzs8otnx9blhU/MZhvaGV+GgyGvTSuOZ7hRV1o6gt6zl
	 joKuBhCPoZH9bfcvKrq4MAM/BcBk7TzLTinORnBu1AJzDPgh3oxVTvO8glvc0qgxWqhsCgf0SzNCax
	 bzwQi6eeF6ZNjmXo=
X-KPN-MID: 33|OJgLd48RfV8TkMS7jMJZOker3Cpgfz85EejwCogh9+2tXx2KEI8YlmOF5t2IUIS
 keixpqCE77un9udUN97t/nMLkn8Y02ZPOCs3xq9/aNKM=
X-CMASSUN: 33|/ExJf0iVwxiej5A/I9DRx/BKsYvZkHtU1JrD1gQ4LZnrb2EwZd7ZLbsI2q5FqvY
 UNk19UsBTigwmJRUPDXctzA==
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh106 (unknown [10.128.138.84])
	by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
	id 05b85906-7b88-11ec-9de0-005056aba2e5;
	Sat, 22 Jan 2022 14:34:28 +0100 (CET)
Date: Sat, 22 Jan 2022 14:34:28 +0100 (CET)
From: Winfried <winfried_mb2@xmsnet.nl>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <1454308524.4246541.1642858468337@kpc.webmail.kpnmail.nl>
In-Reply-To: <269281483.4243905.1642857109696@kpc.webmail.kpnmail.nl>
References: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
 <CANNYZj9jP9TRmgGcWmPcgF7TJwLJnPxVAXj6SdykxzFzDRYcaw@mail.gmail.com>
 <1829306086.4198839.1642795259001@kpc.webmail.kpnmail.nl>
 <CANNYZj_F4KBF-rdWAxwNpps-iA7=egh1rar1Gs78ZTfVX7wsuQ@mail.gmail.com>
 <269281483.4243905.1642857109696@kpc.webmail.kpnmail.nl>
Subject: Re: [yocto] non-existent task do_package_write_rpm error
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_Part_4246540_459770446.1642858468324"
X-Priority: 3
Importance: Normal
X-Originating-IP: 217.166.50.194
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Jan 2022 13:34:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55947

------=_Part_4246540_459770446.1642858468324
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Update:

TOOLCHAIN_HOST_TASK_append =3D =E2=80=9C nativesdk-hardening-check=E2=80=9D

does work. The SDK build succeeds and the hardening-check script is install=
ed in the x86_64-pokysdk-linux sysroot.

regards,
Winfried

> Op 22-01-2022 14:11 schreef Winfried <winfried_mb2@xmsnet.nl>:
>=20
>=20
> Thanks.
> With TOOLCHAIN_HOST_TASK_append =3D =E2=80=9C hardening-check=E2=80=9D th=
e sdk build progresses a bit further but then stops with error:
>=20
> ERROR: dynniq-image-flownode-acu-default-1.0-r0 do_populate_sdk: Could no=
t invoke dnf. Command '/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/=
tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-f
> lownode-acu-default/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverb=
osity=3Dinfo -y -c /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/=
work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownod
> e-acu-default/1.0-r0/sdk/image/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/ho=
me/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_a=
cu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/sdk
> /image/etc/yum.repos.d --installroot=3D/home/wdobbe/yocto/flownode_zeus/b=
uild-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-im=
age-flownode-acu-default/1.0-r0/sdk/image --setopt=3Dlogdir=3D/home/
> wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_ac=
u-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/temp --repofr=
ompath=3Doe-repo,/home/wdobbe/yocto/flownode_zeus/build-flownode
> -acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownod=
e-acu-default/1.0-r0/oe-sdk-repo --nogpgcheck install hardening-check nativ=
esdk-cmake nativesdk-packagegroup-qt5-toolchain-host nativesdk
> -packagegroup-sdk-host nativesdk-perl-modules nativesdk-rpm packagegroup-=
cross-canadian-dynniq-flownode-acu' returned 1:                            =
                                                              =20
> DNF version: 4.2.2                                                       =
                =20
> cachedir: /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dy=
nniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-=
r0/sdk/image/var/cache/dnf                                    =20
> Added oe-repo repo from /home/wdobbe/yocto/flownode_zeus/build-flownode-a=
cu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-ac=
u-default/1.0-r0/oe-sdk-repo                                  =20
> repo: using cache for: oe-repo                                           =
                                                                           =
    (...)                                                                  =
                                                                      =20
> Error:                                                                   =
                                             =20
> Problem: conflicting requests                                            =
               =20
>  - package hardening-check-2.6-r0.cortexa9hf_neon does not have a compati=
ble architecture
>  - nothing provides /usr/bin/perl needed by hardening-check-2.6-r0.cortex=
a9hf_neon      =20
> (try to add '--skip-broken' to skip uninstallable packages or '--nobest' =
to use not only best candidate packages)=20
> =20
> ERROR: Logfile of failure stored in: /home/wdobbe/yocto/flownode_zeus/bui=
ld-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-imag=
e-flownode-acu-default/1.0-r0/temp/log.do_populate_sdk.5994
> ERROR: Task (/home/wdobbe/yocto/flownode_zeus/sources/meta-dynniq-flownod=
e-acu/recipes-dynniq/images/dynniq-image-flownode-acu-default.bb:do_populat=
e_sdk) failed with exit code '1'
>=20
>=20
> Bitbake builds package hardening-check for the target architecture (corte=
xa9hf_neon) i.s.o for x86_64 (or noarch).
>=20
> Any ideas how to fix that ?
>=20
> regards,
> Winfried
>=20
>=20
> > Op 21-01-2022 23:26 schreef Alexander Kanavin <alex.kanavin@gmail.com>:
> >=20
> >=20
> > Use TOOLCHAIN_HOST_TASK:append =3D " ..." in your image recipe.
> >=20
> > Alex
> >=20
> > On Fri, 21 Jan 2022 at 21:00, Winfried <winfried_mb2@xmsnet.nl mailto:w=
infried_mb2@xmsnet.nl > wrote:
> >=20
> > > Hi Alex,
> > >=20
> > > Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the b=
uild does indeed succeed.
> > > But then the script is installed in the target sysroot of the SDK. I =
would like to have it in the native (x86_64-pokysdk-linux) sysroot as it is=
 a tool to use on the build server.
> > >=20
> > > Any idea how to achieve that ?
> > >=20
> > > Thanks,
> > > Winfried
> > >=20
> > > > Op 21-01-2022 20:09 schreef Alexander Kanavin <alex.kanavin@gmail.c=
om mailto:alex.kanavin@gmail.com >:
> > > >=20
> > > >=20
> > > > You need to drop the -native suffix when installing to target image=
 or SDK. -native is only for the bitbake build itself.
> > > >=20
> > > > Alex
> > > >=20
> > > > On Fri, 21 Jan 2022 at 20:07, W. Dobbe <winfried_mb2@xmsnet.nl mail=
to:winfried_mb2@xmsnet.nl > wrote:
> > > >=20
> > > > > Hi,
> > > > >=20
> > > > > I'm writing a recipe for package hardening-check http://deb.debia=
n.org/debian/pool/main/h/hardening-wrapper/ .
> > > > > This package builds with only a simple Makefile (that has no inst=
all target). The recipe only installs a script hardening-check in /usr/bin.
> > > > >=20
> > > > > I would like to include this script in our SDK.
> > > > > The recipe itself builds fine (bitbake hardening-check-native).
> > > > >=20
> > > > > But when I add hardening-check-native to IMAGE_INSTALL in my imag=
e the build fails with:
> > > > >=20
> > > > > Task do_populate_sdk in http://myimage.bb rdepends upon non-exist=
ent task do_package_write_rpm in virtual:native:(...)/recipes-devtools/hard=
ening-check/http://hardening-check_2.6.bb
> > > > >=20
> > > > > Same error when I append the package to TOOLCHAIN_HOST_TASK inste=
ad.
> > > > >=20
> > > > > Any idea how to solve this? Do I need to inherit my recipe from s=
omething?
> > > > > Recipe included below.
> > > > >=20
> > > > > Thanks in advance for the help!
> > > > >=20
> > > > > regards,
> > > > > Winfried
> > > > >=20
> > > > >=20
> > > > > SUMMARY =3D "Script to check an executable for certain security w=
eaknesses."
> > > > > LICENSE =3D "GPLv2"
> > > > > LIC_FILES_CHKSUM =3D "file://debian/copyright;md5=3D06ff97d53f05a=
9b8ce2a416b30f496b9"
> > > > >=20
> > > > > SRC_URI =3D "http://ftp.debian.org/debian/pool/main/h/hardening-w=
rapper/hardening-wrapper_${PV}.tar.xz http://ftp.debian.org/debian/pool/mai=
n/h/hardening-wrapper/hardening-wrapper_$%7BPV%7D.tar.xz \
> > > > >           file://0001-perl_regex.patch \
> > > > >          "
> > > > > SRC_URI[md5sum] =3D "47c93c05b4d0199be8df0d35dbd68192"
> > > > > SRC_URI[sha256sum] =3D "c5fc46439646d0929a0605e4f3db67e57eefbbf5c=
eec5a2888440dbdf4450224"
> > > > >=20
> > > > > RDEPENDS_${PN} =3D "perl"
> > > > >=20
> > > > > S =3D "${WORKDIR}/hardening-wrapper"
> > > > >=20
> > > > > do_patch () {
> > > > >    cd ${S}
> > > > >    patch -p1 -u -i ${WORKDIR}/0001-perl_regex.patch
> > > > > }
> > > > >=20
> > > > > do_configure () {
> > > > >        # Specify any needed configure commands here
> > > > >        :
> > > > > }
> > > > >=20
> > > > > do_compile () {
> > > > >        export DEB_HOST_ARCH=3D`uname -m`
> > > > >        export DEB_HOST_ARCH_OS=3D`uname -s`
> > > > >        oe_runmake
> > > > > }
> > > > >=20
> > > > > do_install () {
> > > > >    install -d ${D}/${bindir}
> > > > >    install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir}
> > > > > }
> > > > >=20
> > > > > BBCLASSEXTEND =3D "native nativesdk"
> > > > >=20
> > > > >=20
> > > > >=20
> > > > >=20
> > > >=20
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#55941): https://lists.yoctoproject.org/g/yocto/=
message/55941
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/88590330/3617711
> > > > Group Owner: yocto+owner@lists.yoctoproject.org mailto:yocto%2Bowne=
r@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [winfried=
_mb2@xmsnet.nl mailto:winfried_mb2@xmsnet.nl ]
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > >=20
> > > >=20
> > >=20
> >=20
>=20

------=_Part_4246540_459770446.1642858468324
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html>
 <head>=20
  <meta charset=3D"UTF-8">=20
 </head>
 <body>
  <div>
   Update:=20
   <br>
   <br><span style=3D"font-family: monospace;"><span style=3D"color: #00000=
0; background-color: #ffffff;">TOOLCHAIN_HOST_TASK_append =3D </span><span =
style=3D"color: #ff54ff; background-color: #ffffff;">=E2=80=9C nativesdk-ha=
rdening-check=E2=80=9D</span><br></span>
   <br>
  </div>
  <div class=3D"default-style">
   does work. The SDK build succeeds and the hardening-check script is inst=
alled in the <span style=3D"font-family: monospace;"><span style=3D"color: =
#000000; background-color: #ffffff;">x86_64-pokysdk-linux</span></span> sys=
root.
   <br>
  </div>
  <div class=3D"default-style">
   <br>
  </div>
  <div class=3D"default-style">
   regards,
   <br>
  </div>
  <div class=3D"default-style">
   Winfried
   <br>
  </div>
  <blockquote type=3D"cite">
   <div>
    Op 22-01-2022 14:11 schreef Winfried &lt;winfried_mb2@xmsnet.nl&gt;:
   </div>
   <div>
    <br>
   </div>
   <div>
    <br>
   </div>
   <div>
    Thanks.=20
    <br>With <span style=3D"font-family: monospace;"><span style=3D"color: =
#000000; background-color: #ffffff;">TOOLCHAIN_HOST_TASK_append =3D =E2=80=
=9C hardening-check=E2=80=9D </span></span>the sdk build progresses a bit f=
urther but then stops with error:=20
    <br>
   </div>
   <div class=3D"default-style">
    <br>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: monospace;"><span style=3D"font-weight: bol=
d; color: #ff5454; background-color: #ffffff;">ERROR</span><span style=3D"c=
olor: #000000; background-color: #ffffff;">: </span><span style=3D"color: #=
b21818; background-color: #ffffff;">dynniq-image-flownode-acu-default-1.0-r=
0 do_populate_sdk: Could not invoke dnf. Command '/home/wdobbe/yocto/flowno=
de_zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/=
dynniq-image-f</span><br>lownode-acu-default/1.0-r0/recipe-sysroot-native/u=
sr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/wdobbe/yocto/flownode_zeus/=
build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-i=
mage-flownod<br>e-acu-default/1.0-r0/sdk/image/etc/dnf/dnf.conf --setopt=3D=
reposdir=3D/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dyn=
niq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r=
0/sdk<br>/image/etc/yum.repos.d --installroot=3D/home/wdobbe/yocto/flownode=
_zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dy=
nniq-image-flownode-acu-default/1.0-r0/sdk/image --setopt=3Dlogdir=3D/home/=
<br>wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_=
acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/temp --repo=
frompath=3Doe-repo,/home/wdobbe/yocto/flownode_zeus/build-flownode<br>-acu/=
tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-d=
efault/1.0-r0/oe-sdk-repo --nogpgcheck install hardening-check nativesdk-cm=
ake nativesdk-packagegroup-qt5-toolchain-host nativesdk<br>-packagegroup-sd=
k-host nativesdk-perl-modules nativesdk-rpm packagegroup-cross-canadian-dyn=
niq-flownode-acu' returned 1: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=3D"color: #000000; backg=
round-color: #ffffff;">&nbsp;</span><br><span style=3D"color: #b21818; back=
ground-color: #ffffff;">DNF version: 4.2.2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;</span> <br><span style=3D"color: #b21818; backgrou=
nd-color: #ffffff;">cachedir: /home/wdobbe/yocto/flownode_zeus/build-flowno=
de-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownod=
e-acu-default/1.0-r0/sdk/image/var/cache/dnf &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"color: #000000; backgro=
und-color: #ffffff;">&nbsp;</span><br><span style=3D"color: #b21818; backgr=
ound-color: #ffffff;">Added oe-repo repo from /home/wdobbe/yocto/flownode_z=
eus/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynn=
iq-image-flownode-acu-default/1.0-r0/oe-sdk-repo &nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"color: #000000; background-colo=
r: #ffffff;">&nbsp;</span><br><span style=3D"color: #b21818; background-col=
or: #ffffff;">repo: using cache for: oe-repo &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;</span> <span style=3D"color: #b21818; background-color: #ff=
ffff;">(...)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;</span> <br><span style=3D"color: #b21818; background-color: #ffff=
ff;">Error:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; </span><br><span style=3D"color: #b21818; background-color: =
#ffffff;"> Problem: conflicting requests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;</span> <br><span style=3D"color: #b21818; backgro=
und-color: #ffffff;"> &nbsp;- package hardening-check-2.6-r0.cortexa9hf_neo=
n does not have a compatible architecture </span><br><span style=3D"color: =
#b21818; background-color: #ffffff;"> &nbsp;- nothing provides /usr/bin/per=
l needed by hardening-check-2.6-r0.cortexa9hf_neon&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;</span> <br><span style=3D"color: #b21818; background-colo=
r: #ffffff;">(try to add '--skip-broken' to skip uninstallable packages or =
'--nobest' to use not only best candidate packages)&nbsp; </span><br><span =
style=3D"color: #000000; background-color: #ffffff;">&nbsp;</span><br><span=
 style=3D"font-weight: bold; color: #ff5454; background-color: #ffffff;">ER=
ROR</span><span style=3D"color: #000000; background-color: #ffffff;">: </sp=
an><span style=3D"color: #b21818; background-color: #ffffff;">Logfile of fa=
ilure stored in: /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/wo=
rk/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default=
/1.0-r0/temp/log.do_populate_sdk.5994</span> <br><span style=3D"font-weight=
: bold; color: #ff5454; background-color: #ffffff;">ERROR</span><span style=
=3D"color: #000000; background-color: #ffffff;">: </span><span style=3D"col=
or: #b21818; background-color: #ffffff;">Task (/home/wdobbe/yocto/flownode_=
zeus/sources/meta-dynniq-flownode-acu/recipes-dynniq/images/dynniq-image-fl=
ownode-acu-default.bb:do_populate_sdk) failed with exit code '1'</span><br>=
</span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: monospace;"><br></span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: monospace;"><br></span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetic=
a, sans-serif;">Bitbake builds package hardening-check for the target archi=
tecture (<span style=3D"color: #000000; background-color: #ffffff;">cortexa=
9hf_neon</span>) i.s.o for x86_64 (or noarch).<br><br></span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetic=
a, sans-serif;">Any ideas how to fix that ?<br></span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: monospace;"><br></span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetic=
a, sans-serif;">regards,<br></span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetic=
a, sans-serif;">Winfried<br></span>
   </div>
   <div class=3D"default-style">
    <span style=3D"font-family: monospace;"><span style=3D"color: #000000; =
background-color: #ffffff;"><br></span></span>
   </div>
   <blockquote type=3D"cite">
    <div>
     Op 21-01-2022 23:26 schreef Alexander Kanavin &lt;alex.kanavin@gmail.c=
om&gt;:
    </div>
    <div>
     <br>
    </div>
    <div>
     <br>
    </div>
    <div dir=3D"ltr">
     <div>
      Use TOOLCHAIN_HOST_TASK:append =3D " ..." in your image recipe.
     </div>
     <div>
      <br>
     </div>
     <div>
      Alex=20
      <br>
     </div>
    </div>
    <br>
    <div class=3D"gmail_quote">
     <div dir=3D"ltr" class=3D"gmail_attr">
      On Fri, 21 Jan 2022 at 21:00, Winfried &lt;<a href=3D"mailto:winfried=
_mb2@xmsnet.nl">winfried_mb2@xmsnet.nl</a>&gt; wrote:=20
      <br>
     </div>
     <blockquote>
      <u></u>
      <div>
       <div>
        Hi Alex,=20
        <br>
       </div>
       <div>
        <br>
       </div>
       <div>
        Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the=
 build does indeed succeed.=20
        <br>
       </div>
       <div>
        But then the script is installed in the target sysroot of the SDK. =
I would like to have it in the native (x86_64-pokysdk-linux) sysroot as it =
is a tool to use on the build server.=20
        <br>
       </div>
       <div>
        <br>
       </div>
       <div>
        Any idea how to achieve that ?=20
        <br>
       </div>
       <div>
        <br>
       </div>
       <div>
        Thanks,=20
        <br>
       </div>
       <div>
        Winfried=20
        <br>
       </div>
       <blockquote type=3D"cite">
        <div>
         Op 21-01-2022 20:09 schreef Alexander Kanavin &lt;<a href=3D"mailt=
o:alex.kanavin@gmail.com" target=3D"_blank" rel=3D"noopener">alex.kanavin@g=
mail.com</a>&gt;:
        </div>
        <div>
         <br>
        </div>
        <div>
         <br>
        </div>
        <div dir=3D"ltr">
         <div>
          You need to drop the -native suffix when installing to target ima=
ge or SDK. -native is only for the bitbake build itself.
         </div>
         <div>
          <br>
         </div>
         <div>
          Alex=20
          <br>
         </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
         <div dir=3D"ltr" class=3D"gmail_attr">
          On Fri, 21 Jan 2022 at 20:07, W. Dobbe &lt;<a href=3D"mailto:winf=
ried_mb2@xmsnet.nl" target=3D"_blank" rel=3D"noopener">winfried_mb2@xmsnet.=
nl</a>&gt; wrote:=20
          <br>
         </div>
         <blockquote>
          <u></u>
          <div>
           <div>
            Hi,=20
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            I'm writing a recipe for package <a href=3D"http://deb.debian.o=
rg/debian/pool/main/h/hardening-wrapper/" target=3D"_blank" rel=3D"noopener=
">hardening-check</a> .=20
            <br>
           </div>
           <div>
            This package builds with only a simple Makefile (that has no in=
stall target). The recipe only installs a script hardening-check in /usr/bi=
n.=20
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            I would like to include this script in our SDK.=20
            <br>
           </div>
           <div>
            The recipe itself builds fine (bitbake hardening-check-native).=
=20
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            But when I add hardening-check-native to IMAGE_INSTALL in my im=
age the build fails with:
           </div>
           <pre><span style=3D"font-family: monospace;"><span style=3D"colo=
r: #000000;"><span style=3D"background-color: #ffffff;">Task do_populate_sd=
k in <a href=3D"http://myimage.bb" target=3D"_blank" rel=3D"noopener">myima=
ge.bb</a> rdepends upon non-existent task do_package_write_rpm i</span>n vi=
rtual:native:(...)/recipes-devtools/hardening-check/<a href=3D"http://harde=
ning-check_2.6.bb" target=3D"_blank" rel=3D"noopener">hardening-check_2.6.b=
b</a></span><br></span></pre>
           <div>
            Same error when I append the package to <span style=3D"font-fam=
ily: monospace;"><span style=3D"color: #000000; background-color: #ffffff;"=
>TOOLCHAIN_HOST_TASK <span style=3D"font-family: -apple-system,BlinkMacSyst=
emFont,helvetica,sans-serif;">instead</span></span></span>.=20
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            Any idea how to solve this? Do I need to inherit my recipe from=
 something?
           </div>
           <div>
            Recipe included below.=20
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            Thanks in advance for the help!=20
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            regards,=20
            <br>
           </div>
           <div>
            Winfried=20
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            <br>
           </div>
           <div>
            <span style=3D"font-family: monospace;"><span style=3D"color: #=
000000; background-color: #ffffff;">SUMMARY =3D "Script to check an executa=
ble for certain security weaknesses." </span><br>LICENSE =3D "GPLv2" <br>LI=
C_FILES_CHKSUM =3D "file://debian/copyright;md5=3D06ff97d53f05a9b8ce2a416b3=
0f496b9" <br><br>SRC_URI =3D "<a href=3D"http://ftp.debian.org/debian/pool/=
main/h/hardening-wrapper/hardening-wrapper_$%7BPV%7D.tar.xz" target=3D"_bla=
nk" rel=3D"noopener">http://ftp.debian.org/debian/pool/main/h/hardening-wra=
pper/hardening-wrapper_${PV}.tar.xz</a> \ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file://0001-perl_regex.patch \ <br>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" <br>SRC_URI[md5sum] =3D "47c=
93c05b4d0199be8df0d35dbd68192" <br>SRC_URI[sha256sum] =3D "c5fc46439646d092=
9a0605e4f3db67e57eefbbf5ceec5a2888440dbdf4450224" <br><br>RDEPENDS_${PN} =
=3D "perl" <br><br>S =3D "${WORKDIR}/hardening-wrapper"<br><br>do_patch () =
{ <br>&nbsp;&nbsp;&nbsp;cd ${S} <br>&nbsp;&nbsp;&nbsp;patch -p1 -u -i ${WOR=
KDIR}/0001-perl_regex.patch <br>} <br><br>do_configure () { <br>&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# Specify any needed configure commands here=
 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <br>} <br><br>do_compile (=
) <span style=3D"color: #000000; background-color: #18b2b2;">{</span> <br>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH=3D`uname -m` =
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH_OS=3D`un=
ame -s` <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oe_runmake <br><span =
style=3D"color: #000000; background-color: #18b2b2;">}</span> <br><br>do_in=
stall () { <br>&nbsp;&nbsp;&nbsp;install -d ${D}/${bindir} <br>&nbsp;&nbsp;=
&nbsp;install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir} <br>} <=
br><br>BBCLASSEXTEND =3D "native nativesdk"<br></span>
           </div>
          </div>
          <br>
          <br>
          <br>
         </blockquote>
        </div>
        <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=20
        <br>Links: You receive all messages sent to this group.=20
        <br>View/Reply Online (#55941): <a href=3D"https://lists.yoctoproje=
ct.org/g/yocto/message/55941" target=3D"_blank" rel=3D"noopener">https://li=
sts.yoctoproject.org/g/yocto/message/55941</a>=20
        <br>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/8=
8590330/3617711" target=3D"_blank" rel=3D"noopener">https://lists.yoctoproj=
ect.org/mt/88590330/3617711</a>=20
        <br>Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject=
.org" target=3D"_blank" rel=3D"noopener">yocto+owner@lists.yoctoproject.org=
</a>=20
        <br>Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/=
unsub" target=3D"_blank" rel=3D"noopener">https://lists.yoctoproject.org/g/=
yocto/unsub</a> [<a href=3D"mailto:winfried_mb2@xmsnet.nl" target=3D"_blank=
" rel=3D"noopener">winfried_mb2@xmsnet.nl</a>]=20
        <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=20
        <br>
        <br>
       </blockquote>
      </div>
     </blockquote>
    </div>
   </blockquote>
  </blockquote>
 </body>
</html>
------=_Part_4246540_459770446.1642858468324--

