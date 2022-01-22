Return-Path: <winfried_mb2@xmsnet.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A0BC433F5
	for <webhook@archiver.kernel.org>; Sat, 22 Jan 2022 13:12:02 +0000 (UTC)
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl
 [195.121.94.168])
 by mx.groups.io with SMTP id smtpd.web10.8001.1642857114822611706
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Jan 2022 05:12:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xmsnet.nl header.s=xmsnet01 header.b=PKxwosQn;
 spf=pass (domain: xmsnet.nl, ip: 195.121.94.168,
 mailfrom: winfried_mb2@xmsnet.nl)
X-KPN-MessageId: dbbc0762-7b84-11ec-8f9a-005056aba152
Received: from mta.kpnmail.nl (unknown [10.31.162.60])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id dbbc0762-7b84-11ec-8f9a-005056aba152;
	Sat, 22 Jan 2022 14:11:49 +0100 (CET)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.138.61])
	by mta.kpnmail.nl (Halon) with ESMTP
	id dc026542-7b84-11ec-ad3b-005056abbc9f;
	Sat, 22 Jan 2022 14:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xmsnet.nl; s=xmsnet01;
	h=content-type:mime-version:subject:message-id:to:from:date;
	bh=7JuOx+Y0LlbFRJvLBI/G8ph5gS6D6c1zLfPciXZjJ+4=;
	b=PKxwosQnhsroLfcTQOjfynNfox/A4ZBJw6lDfoq5ILUCUX4JaKS2ztOnwZP9K8Ra5QX1/AuITfPoh
	 FWbc6dkFXRkh2e3y7dnxxxxludYIz4C+GG1HzVwv+rwBirocqor1ponvpKfpeYe4EHvr0/8aOw2HU7
	 M1iZRYIw6FawiOjA=
X-KPN-MID: 33|QpD1Ia+TV/fynTYx+NkPWzmgAHjvisj/7sZv2X42zXOCFLSmjy0YiGoGuRN/NjE
 y0ag/mFU5vD26CTzTwAGwXj3rms2fCAQBw6dXq/DhST4=
X-CMASSUN: 33|lC7xNgF/LDzeyTtLoUbXRmulZgVNh3a6ooPRP6+KPe2U3RZatKLooYWPHZD5KBp
 aYjcHjdMuAiaaBFHOi/zyYMEChp/dB27G6lKDgYG6OFw=
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh106 (unknown [10.128.138.84])
	by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
	id dbe843a3-7b84-11ec-be57-005056ab135f;
	Sat, 22 Jan 2022 14:11:49 +0100 (CET)
Date: Sat, 22 Jan 2022 14:11:49 +0100 (CET)
From: Winfried <winfried_mb2@xmsnet.nl>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <269281483.4243905.1642857109696@kpc.webmail.kpnmail.nl>
In-Reply-To: 
 <CANNYZj_F4KBF-rdWAxwNpps-iA7=egh1rar1Gs78ZTfVX7wsuQ@mail.gmail.com>
References: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
 <CANNYZj9jP9TRmgGcWmPcgF7TJwLJnPxVAXj6SdykxzFzDRYcaw@mail.gmail.com>
 <1829306086.4198839.1642795259001@kpc.webmail.kpnmail.nl>
 <CANNYZj_F4KBF-rdWAxwNpps-iA7=egh1rar1Gs78ZTfVX7wsuQ@mail.gmail.com>
Subject: Re: [yocto] non-existent task do_package_write_rpm error
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_Part_4243904_2112463491.1642857109683"
X-Priority: 3
Importance: Normal
X-Originating-IP: 217.166.50.194
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Jan 2022 13:12:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55946

------=_Part_4243904_2112463491.1642857109683
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks.
With TOOLCHAIN_HOST_TASK_append =3D =E2=80=9C hardening-check=E2=80=9D the =
sdk build progresses a bit further but then stops with error:

ERROR: dynniq-image-flownode-acu-default-1.0-r0 do_populate_sdk: Could not =
invoke dnf. Command '/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tm=
p/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-f
lownode-acu-default/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverbos=
ity=3Dinfo -y -c /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/wo=
rk/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownod
e-acu-default/1.0-r0/sdk/image/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home=
/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu=
-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/sdk
/image/etc/yum.repos.d --installroot=3D/home/wdobbe/yocto/flownode_zeus/bui=
ld-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-imag=
e-flownode-acu-default/1.0-r0/sdk/image --setopt=3Dlogdir=3D/home/
wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu-=
poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/temp --repofrom=
path=3Doe-repo,/home/wdobbe/yocto/flownode_zeus/build-flownode
-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-=
acu-default/1.0-r0/oe-sdk-repo --nogpgcheck install hardening-check natives=
dk-cmake nativesdk-packagegroup-qt5-toolchain-host nativesdk
-packagegroup-sdk-host nativesdk-perl-modules nativesdk-rpm packagegroup-cr=
oss-canadian-dynniq-flownode-acu' returned 1:                              =
                                                            =20
DNF version: 4.2.2                                                         =
              =20
cachedir: /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynn=
iq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0=
/sdk/image/var/cache/dnf                                    =20
Added oe-repo repo from /home/wdobbe/yocto/flownode_zeus/build-flownode-acu=
/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-=
default/1.0-r0/oe-sdk-repo                                  =20
repo: using cache for: oe-repo                                             =
                                                                           =
  (...)                                                                    =
                                                                    =20
Error:                                                                     =
                                           =20
Problem: conflicting requests                                              =
             =20
 - package hardening-check-2.6-r0.cortexa9hf_neon does not have a compatibl=
e architecture
 - nothing provides /usr/bin/perl needed by hardening-check-2.6-r0.cortexa9=
hf_neon      =20
(try to add '--skip-broken' to skip uninstallable packages or '--nobest' to=
 use not only best candidate packages)=20
=20
ERROR: Logfile of failure stored in: /home/wdobbe/yocto/flownode_zeus/build=
-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-=
flownode-acu-default/1.0-r0/temp/log.do_populate_sdk.5994
ERROR: Task (/home/wdobbe/yocto/flownode_zeus/sources/meta-dynniq-flownode-=
acu/recipes-dynniq/images/dynniq-image-flownode-acu-default.bb:do_populate_=
sdk) failed with exit code '1'


Bitbake builds package hardening-check for the target architecture (cortexa=
9hf_neon) i.s.o for x86_64 (or noarch).

Any ideas how to fix that ?

regards,
Winfried


> Op 21-01-2022 23:26 schreef Alexander Kanavin <alex.kanavin@gmail.com>:
>=20
>=20
> Use TOOLCHAIN_HOST_TASK:append =3D " ..." in your image recipe.
>=20
> Alex
>=20
> On Fri, 21 Jan 2022 at 21:00, Winfried <winfried_mb2@xmsnet.nl mailto:win=
fried_mb2@xmsnet.nl > wrote:
>=20
> > Hi Alex,
> >=20
> > Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the bui=
ld does indeed succeed.
> > But then the script is installed in the target sysroot of the SDK. I wo=
uld like to have it in the native (x86_64-pokysdk-linux) sysroot as it is a=
 tool to use on the build server.
> >=20
> > Any idea how to achieve that ?
> >=20
> > Thanks,
> > Winfried
> >=20
> > > Op 21-01-2022 20:09 schreef Alexander Kanavin <alex.kanavin@gmail.com=
 mailto:alex.kanavin@gmail.com >:
> > >=20
> > >=20
> > > You need to drop the -native suffix when installing to target image o=
r SDK. -native is only for the bitbake build itself.
> > >=20
> > > Alex
> > >=20
> > > On Fri, 21 Jan 2022 at 20:07, W. Dobbe <winfried_mb2@xmsnet.nl mailto=
:winfried_mb2@xmsnet.nl > wrote:
> > >=20
> > > > Hi,
> > > >=20
> > > > I'm writing a recipe for package hardening-check http://deb.debian.=
org/debian/pool/main/h/hardening-wrapper/ .
> > > > This package builds with only a simple Makefile (that has no instal=
l target). The recipe only installs a script hardening-check in /usr/bin.
> > > >=20
> > > > I would like to include this script in our SDK.
> > > > The recipe itself builds fine (bitbake hardening-check-native).
> > > >=20
> > > > But when I add hardening-check-native to IMAGE_INSTALL in my image =
the build fails with:
> > > >=20
> > > > Task do_populate_sdk in http://myimage.bb rdepends upon non-existen=
t task do_package_write_rpm in virtual:native:(...)/recipes-devtools/harden=
ing-check/http://hardening-check_2.6.bb
> > > >=20
> > > > Same error when I append the package to TOOLCHAIN_HOST_TASK instead=
.
> > > >=20
> > > > Any idea how to solve this? Do I need to inherit my recipe from som=
ething?
> > > > Recipe included below.
> > > >=20
> > > > Thanks in advance for the help!
> > > >=20
> > > > regards,
> > > > Winfried
> > > >=20
> > > >=20
> > > > SUMMARY =3D "Script to check an executable for certain security wea=
knesses."
> > > > LICENSE =3D "GPLv2"
> > > > LIC_FILES_CHKSUM =3D "file://debian/copyright;md5=3D06ff97d53f05a9b=
8ce2a416b30f496b9"
> > > >=20
> > > > SRC_URI =3D "http://ftp.debian.org/debian/pool/main/h/hardening-wra=
pper/hardening-wrapper_${PV}.tar.xz http://ftp.debian.org/debian/pool/main/=
h/hardening-wrapper/hardening-wrapper_$%7BPV%7D.tar.xz \
> > > >           file://0001-perl_regex.patch \
> > > >          "
> > > > SRC_URI[md5sum] =3D "47c93c05b4d0199be8df0d35dbd68192"
> > > > SRC_URI[sha256sum] =3D "c5fc46439646d0929a0605e4f3db67e57eefbbf5cee=
c5a2888440dbdf4450224"
> > > >=20
> > > > RDEPENDS_${PN} =3D "perl"
> > > >=20
> > > > S =3D "${WORKDIR}/hardening-wrapper"
> > > >=20
> > > > do_patch () {
> > > >    cd ${S}
> > > >    patch -p1 -u -i ${WORKDIR}/0001-perl_regex.patch
> > > > }
> > > >=20
> > > > do_configure () {
> > > >        # Specify any needed configure commands here
> > > >        :
> > > > }
> > > >=20
> > > > do_compile () {
> > > >        export DEB_HOST_ARCH=3D`uname -m`
> > > >        export DEB_HOST_ARCH_OS=3D`uname -s`
> > > >        oe_runmake
> > > > }
> > > >=20
> > > > do_install () {
> > > >    install -d ${D}/${bindir}
> > > >    install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir}
> > > > }
> > > >=20
> > > > BBCLASSEXTEND =3D "native nativesdk"
> > > >=20
> > > >=20
> > > >=20
> > > >=20
> > >=20
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#55941): https://lists.yoctoproject.org/g/yocto/me=
ssage/55941
> > > Mute This Topic: https://lists.yoctoproject.org/mt/88590330/3617711
> > > Group Owner: yocto+owner@lists.yoctoproject.org mailto:yocto%2Bowner@=
lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [winfried_m=
b2@xmsnet.nl mailto:winfried_mb2@xmsnet.nl ]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >=20
> > >=20
> >=20
>=20

------=_Part_4243904_2112463491.1642857109683
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
   Thanks.=20
   <br>With <span style=3D"font-family: monospace;"><span style=3D"color: #=
000000; background-color: #ffffff;">TOOLCHAIN_HOST_TASK_append =3D =E2=80=
=9C hardening-check=E2=80=9D </span></span>the sdk build progresses a bit f=
urther but then stops with error:
   <br>
  </div>
  <div class=3D"default-style">
   <br>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: monospace;"><span style=3D"font-weight: bold=
; color: #ff5454; background-color: #ffffff;">ERROR</span><span style=3D"co=
lor: #000000; background-color: #ffffff;">: </span><span style=3D"color: #b=
21818; background-color: #ffffff;">dynniq-image-flownode-acu-default-1.0-r0=
 do_populate_sdk: Could not invoke dnf. Command '/home/wdobbe/yocto/flownod=
e_zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/d=
ynniq-image-f</span><br>lownode-acu-default/1.0-r0/recipe-sysroot-native/us=
r/bin/dnf -v --rpmverbosity=3Dinfo -y -c /home/wdobbe/yocto/flownode_zeus/b=
uild-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-im=
age-flownod<br>e-acu-default/1.0-r0/sdk/image/etc/dnf/dnf.conf --setopt=3Dr=
eposdir=3D/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynn=
iq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0=
/sdk<br>/image/etc/yum.repos.d --installroot=3D/home/wdobbe/yocto/flownode_=
zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dyn=
niq-image-flownode-acu-default/1.0-r0/sdk/image --setopt=3Dlogdir=3D/home/<=
br>wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_a=
cu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/temp --repof=
rompath=3Doe-repo,/home/wdobbe/yocto/flownode_zeus/build-flownode<br>-acu/t=
mp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-de=
fault/1.0-r0/oe-sdk-repo --nogpgcheck install hardening-check nativesdk-cma=
ke nativesdk-packagegroup-qt5-toolchain-host nativesdk<br>-packagegroup-sdk=
-host nativesdk-perl-modules nativesdk-rpm packagegroup-cross-canadian-dynn=
iq-flownode-acu' returned 1: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=3D"color: #000000; backgr=
ound-color: #ffffff;">&nbsp;</span><br><span style=3D"color: #b21818; backg=
round-color: #ffffff;">DNF version: 4.2.2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;</span><span style=3D"color: #000000; background-col=
or: #ffffff;"> </span><br><span style=3D"color: #b21818; background-color: =
#ffffff;">cachedir: /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp=
/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-defa=
ult/1.0-r0/sdk/image/var/cache/dnf &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;</span><span style=3D"color: #000000; background-color:=
 #ffffff;">&nbsp;</span><br><span style=3D"color: #b21818; background-color=
: #ffffff;">Added oe-repo repo from /home/wdobbe/yocto/flownode_zeus/build-=
flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-f=
lownode-acu-default/1.0-r0/oe-sdk-repo &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;</span><span style=3D"color: #000000; background-color: #ffffff=
;">&nbsp;</span><br><span style=3D"color: #b21818; background-color: #fffff=
f;">repo: using cache for: oe-repo &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;</span><span style=3D"color: #b21818; background-color: #ffffff;"> </s=
pan><span style=3D"color: #b21818; background-color: #ffffff;">(...)&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><sp=
an style=3D"color: #000000; background-color: #ffffff;"> </span><br><span s=
tyle=3D"color: #b21818; background-color: #ffffff;">Error:&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><br><s=
pan style=3D"color: #b21818; background-color: #ffffff;"> Problem: conflict=
ing requests&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</s=
pan><span style=3D"color: #000000; background-color: #ffffff;"> </span><br>=
<span style=3D"color: #b21818; background-color: #ffffff;"> &nbsp;- package=
 hardening-check-2.6-r0.cortexa9hf_neon does not have a compatible architec=
ture </span><br><span style=3D"color: #b21818; background-color: #ffffff;">=
 &nbsp;- nothing provides /usr/bin/perl needed by hardening-check-2.6-r0.co=
rtexa9hf_neon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=
=3D"color: #000000; background-color: #ffffff;"> </span><br><span style=3D"=
color: #b21818; background-color: #ffffff;">(try to add '--skip-broken' to =
skip uninstallable packages or '--nobest' to use not only best candidate pa=
ckages)&nbsp; </span><br><span style=3D"color: #000000; background-color: #=
ffffff;">&nbsp;</span><br><span style=3D"font-weight: bold; color: #ff5454;=
 background-color: #ffffff;">ERROR</span><span style=3D"color: #000000; bac=
kground-color: #ffffff;">: </span><span style=3D"color: #b21818; background=
-color: #ffffff;">Logfile of failure stored in: /home/wdobbe/yocto/flownode=
_zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dy=
nniq-image-flownode-acu-default/1.0-r0/temp/log.do_populate_sdk.5994</span>=
 <br><span style=3D"font-weight: bold; color: #ff5454; background-color: #f=
fffff;">ERROR</span><span style=3D"color: #000000; background-color: #fffff=
f;">: </span><span style=3D"color: #b21818; background-color: #ffffff;">Tas=
k (/home/wdobbe/yocto/flownode_zeus/sources/meta-dynniq-flownode-acu/recipe=
s-dynniq/images/dynniq-image-flownode-acu-default.bb:do_populate_sdk) faile=
d with exit code '1'</span><br></span>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: monospace;"><br></span>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: monospace;"><br></span>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetica=
, sans-serif;">Bitbake builds package hardening-check for the target archit=
ecture (<span style=3D"color: rgb(0, 0, 0); background-color: rgb(255, 255,=
 255);">cortexa9hf_neon</span>) i.s.o for x86_64 (or noarch).<br><br></span=
>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetica=
, sans-serif;">Any ideas how to fix that ?<br></span>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: monospace;"><br></span>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetica=
, sans-serif;">regards,<br></span>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: -apple-system, BlinkMacSystemFont, helvetica=
, sans-serif;">Winfried<br></span>
  </div>
  <div class=3D"default-style">
   <span style=3D"font-family: monospace;"><span style=3D"color: #000000; b=
ackground-color: #ffffff;"><br></span></span>
  </div>
  <blockquote type=3D"cite">
   <div>
    Op 21-01-2022 23:26 schreef Alexander Kanavin &lt;alex.kanavin@gmail.co=
m&gt;:
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
     Alex
     <br>
    </div>
   </div>
   <br>
   <div class=3D"gmail_quote">
    <div class=3D"gmail_attr" dir=3D"ltr">
     On Fri, 21 Jan 2022 at 21:00, Winfried &lt;<a href=3D"mailto:winfried_=
mb2@xmsnet.nl">winfried_mb2@xmsnet.nl</a>&gt; wrote:
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
       Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the =
build does indeed succeed.=20
       <br>
      </div>
      <div>
       But then the script is installed in the target sysroot of the SDK. I=
 would like to have it in the native (x86_64-pokysdk-linux) sysroot as it i=
s a tool to use on the build server.=20
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
        Op 21-01-2022 20:09 schreef Alexander Kanavin &lt;<a target=3D"_bla=
nk" href=3D"mailto:alex.kanavin@gmail.com" rel=3D"noopener">alex.kanavin@gm=
ail.com</a>&gt;:
       </div>
       <div>
        <br>
       </div>
       <div>
        <br>
       </div>
       <div dir=3D"ltr">
        <div>
         You need to drop the -native suffix when installing to target imag=
e or SDK. -native is only for the bitbake build itself.
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
        <div class=3D"gmail_attr" dir=3D"ltr">
         On Fri, 21 Jan 2022 at 20:07, W. Dobbe &lt;<a target=3D"_blank" hr=
ef=3D"mailto:winfried_mb2@xmsnet.nl" rel=3D"noopener">winfried_mb2@xmsnet.n=
l</a>&gt; wrote:=20
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
           I'm writing a recipe for package <a target=3D"_blank" href=3D"ht=
tp://deb.debian.org/debian/pool/main/h/hardening-wrapper/" rel=3D"noopener"=
>hardening-check</a> .=20
           <br>
          </div>
          <div>
           This package builds with only a simple Makefile (that has no ins=
tall target). The recipe only installs a script hardening-check in /usr/bin=
.=20
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
           But when I add hardening-check-native to IMAGE_INSTALL in my ima=
ge the build fails with:
          </div>
          <pre><span style=3D"font-family: monospace;"><span style=3D"color=
: #000000;"><span style=3D"background-color: #ffffff;">Task do_populate_sdk=
 in <a target=3D"_blank" href=3D"http://myimage.bb" rel=3D"noopener">myimag=
e.bb</a> rdepends upon non-existent task do_package_write_rpm i</span>n vir=
tual:native:(...)/recipes-devtools/hardening-check/<a target=3D"_blank" hre=
f=3D"http://hardening-check_2.6.bb" rel=3D"noopener">hardening-check_2.6.bb=
</a></span><br></span></pre>
          <div>
           Same error when I append the package to <span style=3D"font-fami=
ly: monospace;"><span style=3D"color: #000000; background-color: #ffffff;">=
TOOLCHAIN_HOST_TASK <span style=3D"font-family: -apple-system,BlinkMacSyste=
mFont,helvetica,sans-serif;">instead</span></span></span>.=20
           <br>
          </div>
          <div>
           <br>
          </div>
          <div>
           Any idea how to solve this? Do I need to inherit my recipe from =
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
           <span style=3D"font-family: monospace;"><span style=3D"color: #0=
00000; background-color: #ffffff;">SUMMARY =3D "Script to check an executab=
le for certain security weaknesses." </span><br>LICENSE =3D "GPLv2" <br>LIC=
_FILES_CHKSUM =3D "file://debian/copyright;md5=3D06ff97d53f05a9b8ce2a416b30=
f496b9" <br><br>SRC_URI =3D "<a target=3D"_blank" href=3D"http://ftp.debian=
.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_$%7BPV%7D.tar.x=
z" rel=3D"noopener">http://ftp.debian.org/debian/pool/main/h/hardening-wrap=
per/hardening-wrapper_${PV}.tar.xz</a> \ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;file://0001-perl_regex.patch \ <br>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" <br>SRC_URI[md5sum] =3D "47c9=
3c05b4d0199be8df0d35dbd68192" <br>SRC_URI[sha256sum] =3D "c5fc46439646d0929=
a0605e4f3db67e57eefbbf5ceec5a2888440dbdf4450224" <br><br>RDEPENDS_${PN} =3D=
 "perl" <br><br>S =3D "${WORKDIR}/hardening-wrapper"<br><br>do_patch () { <=
br>&nbsp;&nbsp;&nbsp;cd ${S} <br>&nbsp;&nbsp;&nbsp;patch -p1 -u -i ${WORKDI=
R}/0001-perl_regex.patch <br>} <br><br>do_configure () { <br>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;# Specify any needed configure commands here <b=
r>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <br>} <br><br>do_compile () <=
span style=3D"color: #000000; background-color: #18b2b2;">{</span> <br>&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH=3D`uname -m` <br=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH_OS=3D`uname=
 -s` <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oe_runmake <br><span sty=
le=3D"color: #000000; background-color: #18b2b2;">}</span> <br><br>do_insta=
ll () { <br>&nbsp;&nbsp;&nbsp;install -d ${D}/${bindir} <br>&nbsp;&nbsp;&nb=
sp;install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir} <br>} <br>=
<br>BBCLASSEXTEND =3D "native nativesdk"<br></span>
          </div>
         </div>
         <br>
         <br>
         <br>
        </blockquote>
       </div>
       <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=20
       <br>Links: You receive all messages sent to this group.=20
       <br>View/Reply Online (#55941): <a target=3D"_blank" href=3D"https:/=
/lists.yoctoproject.org/g/yocto/message/55941" rel=3D"noopener">https://lis=
ts.yoctoproject.org/g/yocto/message/55941</a>=20
       <br>Mute This Topic: <a target=3D"_blank" href=3D"https://lists.yoct=
oproject.org/mt/88590330/3617711" rel=3D"noopener">https://lists.yoctoproje=
ct.org/mt/88590330/3617711</a>=20
       <br>Group Owner: <a target=3D"_blank" href=3D"mailto:yocto%2Bowner@l=
ists.yoctoproject.org" rel=3D"noopener">yocto+owner@lists.yoctoproject.org<=
/a>=20
       <br>Unsubscribe: <a target=3D"_blank" href=3D"https://lists.yoctopro=
ject.org/g/yocto/unsub" rel=3D"noopener">https://lists.yoctoproject.org/g/y=
octo/unsub</a> [<a target=3D"_blank" href=3D"mailto:winfried_mb2@xmsnet.nl"=
 rel=3D"noopener">winfried_mb2@xmsnet.nl</a>]=20
       <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=20
       <br>
       <br>
      </blockquote>
     </div>
    </blockquote>
   </div>
  </blockquote>
 </body>
</html>
------=_Part_4243904_2112463491.1642857109683--

