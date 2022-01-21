Return-Path: <winfried_mb2@xmsnet.nl>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2895C433F5
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 20:01:11 +0000 (UTC)
Received: from ewsoutbound.kpnmail.nl (ewsoutbound.kpnmail.nl
 [195.121.94.169])
 by mx.groups.io with SMTP id smtpd.web11.825.1642795262859711579
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 12:01:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@xmsnet.nl header.s=xmsnet01 header.b=jEb3Y2F+;
 spf=pass (domain: xmsnet.nl, ip: 195.121.94.169,
 mailfrom: winfried_mb2@xmsnet.nl)
X-KPN-MessageId: d5fb248d-7af4-11ec-bb40-005056abad63
Received: from mta.kpnmail.nl (unknown [10.31.162.62])
	by ewsoutbound.so.kpn.org (Halon) with ESMTPS
	id d5fb248d-7af4-11ec-bb40-005056abad63;
	Fri, 21 Jan 2022 21:00:52 +0100 (CET)
Received: from mtaoutbound.kpnmail.nl (unknown [10.128.138.62])
	by mta.kpnmail.nl (Halon) with ESMTP
	id da1f5ccb-7af4-11ec-9c54-005056ab0606;
	Fri, 21 Jan 2022 21:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xmsnet.nl; s=xmsnet01;
	h=content-type:mime-version:subject:message-id:to:from:date;
	bh=seNVg0aunwloqv/ZENyGFOhgA6cC5EotTQ5iR2rjJgo=;
	b=jEb3Y2F+zCuO6k2+j2qWl7YZsiNHmyuFrl+YY+veesBJEFm3PK6zpDXANNb1DICIZnNjy7gDLXcAL
	 vyGZUAGNhlhpMQ3j20q/d5hSi/swPGHdIjFryfBSzgMUBO2N6JwR1rxk3055cfFkC5JV1EUaVzlHdH
	 YzDtNkoAA339G7pk=
X-KPN-MID: 33|z39PO9vyv1N15H4aHYnXwQ/vMP/7VmxmA6H3CG4IDqOd+3Q+xAquOYSlWkh6FQe
 ldybh3zyYKd/26eO68JiYcW9eOjOA1Qhq5IWX/CsD4d8=
X-CMASSUN: 33|MUC/Flq+GiwSGqZ1F1MdceUYiwfjKnELVkjRi6nJuT2lzjQrZCBvBHtnWcNG5qb
 rIPsdbAYNo6al4rMEfZvwfQ==
X-KPN-VerifiedSender: Yes
Received: from cpxoxapps-mh106 (unknown [10.128.138.84])
	by mtaoutbound.kpnmail.nl (Halon) with ESMTPSA
	id da04f3cf-7af4-11ec-9de0-005056aba2e5;
	Fri, 21 Jan 2022 21:00:59 +0100 (CET)
Date: Fri, 21 Jan 2022 21:00:58 +0100 (CET)
From: Winfried <winfried_mb2@xmsnet.nl>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <1829306086.4198839.1642795259001@kpc.webmail.kpnmail.nl>
In-Reply-To: 
 <CANNYZj9jP9TRmgGcWmPcgF7TJwLJnPxVAXj6SdykxzFzDRYcaw@mail.gmail.com>
References: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
 <CANNYZj9jP9TRmgGcWmPcgF7TJwLJnPxVAXj6SdykxzFzDRYcaw@mail.gmail.com>
Subject: Re: [yocto] non-existent task do_package_write_rpm error
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_Part_4198838_1361169104.1642795258996"
X-Priority: 3
Importance: Normal
X-Originating-IP: 217.166.50.194
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 20:01:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55942

------=_Part_4198838_1361169104.1642795258996
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Alex,

Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the build does indeed succeed.
But then the script is installed in the target sysroot of the SDK. I would like to have it in the native (x86_64-pokysdk-linux) sysroot as it is a tool to use on the build server.

Any idea how to achieve that ?

Thanks,
Winfried

> Op 21-01-2022 20:09 schreef Alexander Kanavin <alex.kanavin@gmail.com>:
> 
> 
> You need to drop the -native suffix when installing to target image or SDK. -native is only for the bitbake build itself.
> 
> Alex
> 
> On Fri, 21 Jan 2022 at 20:07, W. Dobbe <winfried_mb2@xmsnet.nl mailto:winfried_mb2@xmsnet.nl > wrote:
> 
> > Hi,
> > 
> > I'm writing a recipe for package hardening-check http://deb.debian.org/debian/pool/main/h/hardening-wrapper/ .
> > This package builds with only a simple Makefile (that has no install target). The recipe only installs a script hardening-check in /usr/bin.
> > 
> > I would like to include this script in our SDK.
> > The recipe itself builds fine (bitbake hardening-check-native).
> > 
> > But when I add hardening-check-native to IMAGE_INSTALL in my image the build fails with:
> > 
> > Task do_populate_sdk in http://myimage.bb rdepends upon non-existent task do_package_write_rpm in virtual:native:(...)/recipes-devtools/hardening-check/http://hardening-check_2.6.bb
> > 
> > Same error when I append the package to TOOLCHAIN_HOST_TASK instead.
> > 
> > Any idea how to solve this? Do I need to inherit my recipe from something?
> > Recipe included below.
> > 
> > Thanks in advance for the help!
> > 
> > regards,
> > Winfried
> > 
> > 
> > SUMMARY = "Script to check an executable for certain security weaknesses."
> > LICENSE = "GPLv2"
> > LIC_FILES_CHKSUM = "file://debian/copyright;md5=06ff97d53f05a9b8ce2a416b30f496b9"
> > 
> > SRC_URI = "http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_${PV}.tar.xz http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_$%7BPV%7D.tar.xz \
> >           file://0001-perl_regex.patch \
> >          "
> > SRC_URI[md5sum] = "47c93c05b4d0199be8df0d35dbd68192"
> > SRC_URI[sha256sum] = "c5fc46439646d0929a0605e4f3db67e57eefbbf5ceec5a2888440dbdf4450224"
> > 
> > RDEPENDS_${PN} = "perl"
> > 
> > S = "${WORKDIR}/hardening-wrapper"
> > 
> > do_patch () {
> >    cd ${S}
> >    patch -p1 -u -i ${WORKDIR}/0001-perl_regex.patch
> > }
> > 
> > do_configure () {
> >        # Specify any needed configure commands here
> >        :
> > }
> > 
> > do_compile () {
> >        export DEB_HOST_ARCH=`uname -m`
> >        export DEB_HOST_ARCH_OS=`uname -s`
> >        oe_runmake
> > }
> > 
> > do_install () {
> >    install -d ${D}/${bindir}
> >    install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir}
> > }
> > 
> > BBCLASSEXTEND = "native nativesdk"
> > 
> > 
> > 
> > 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55941): https://lists.yoctoproject.org/g/yocto/message/55941
> Mute This Topic: https://lists.yoctoproject.org/mt/88590330/3617711
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [winfried_mb2@xmsnet.nl]
> -=-=-=-=-=-=-=-=-=-=-=-
> 
> 

------=_Part_4198838_1361169104.1642795258996
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
   Hi Alex,
   <br>
  </div>
  <div class=3D"default-style">
   <br>
  </div>
  <div class=3D"default-style">
   Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the buil=
d does indeed succeed.
   <br>
  </div>
  <div class=3D"default-style">
   But then the script is installed in the target sysroot of the SDK. I wou=
ld like to have it in the native (x86_64-pokysdk-linux) sysroot as it is a =
tool to use on the build server.
   <br>
  </div>
  <div class=3D"default-style">
   <br>
  </div>
  <div class=3D"default-style">
   Any idea how to achieve that ?
   <br>
  </div>
  <div class=3D"default-style">
   <br>
  </div>
  <div class=3D"default-style">
   Thanks,
   <br>
  </div>
  <div class=3D"default-style">
   Winfried
   <br>
  </div>
  <blockquote type=3D"cite">
   <div>
    Op 21-01-2022 20:09 schreef Alexander Kanavin &lt;alex.kanavin@gmail.co=
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
     You need to drop the -native suffix when installing to target image or=
 SDK. -native is only for the bitbake build itself.
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
    <div dir=3D"ltr" class=3D"gmail_attr">
     On Fri, 21 Jan 2022 at 20:07, W. Dobbe &lt;<a href=3D"mailto:winfried_=
mb2@xmsnet.nl">winfried_mb2@xmsnet.nl</a>&gt; wrote:
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
       I'm writing a recipe for package <a href=3D"http://deb.debian.org/de=
bian/pool/main/h/hardening-wrapper/" target=3D"_blank" rel=3D"noopener">har=
dening-check</a> .=20
       <br>
      </div>
      <div>
       This package builds with only a simple Makefile (that has no install=
 target). The recipe only installs a script hardening-check in /usr/bin.=20
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
       The recipe itself builds fine (bitbake hardening-check-native).=20
       <br>
      </div>
      <div>
       <br>
      </div>
      <div>
       But when I add hardening-check-native to IMAGE_INSTALL in my image t=
he build fails with:
      </div>
      <pre><span style=3D"font-family: monospace;"><span style=3D"color: #0=
00000;"><span style=3D"background-color: #ffffff;">Task do_populate_sdk in =
<a href=3D"http://myimage.bb" target=3D"_blank" rel=3D"noopener">myimage.bb=
</a> rdepends upon non-existent task do_package_write_rpm i</span>n virtual=
:native:(...)/recipes-devtools/hardening-check/<a href=3D"http://hardening-=
check_2.6.bb" target=3D"_blank" rel=3D"noopener">hardening-check_2.6.bb</a>=
</span><br></span></pre>
      <div>
       Same error when I append the package to <span style=3D"font-family: =
monospace;"><span style=3D"color: #000000; background-color: #ffffff;">TOOL=
CHAIN_HOST_TASK <span style=3D"font-family: -apple-system,BlinkMacSystemFon=
t,helvetica,sans-serif;">instead</span></span></span>.=20
       <br>
      </div>
      <div>
       <br>
      </div>
      <div>
       Any idea how to solve this? Do I need to inherit my recipe from some=
thing?
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
       <span style=3D"font-family: monospace;"><span style=3D"color: #00000=
0; background-color: #ffffff;">SUMMARY =3D "Script to check an executable f=
or certain security weaknesses." </span><br>LICENSE =3D "GPLv2" <br>LIC_FIL=
ES_CHKSUM =3D "file://debian/copyright;md5=3D06ff97d53f05a9b8ce2a416b30f496=
b9" <br><br>SRC_URI =3D "<a href=3D"http://ftp.debian.org/debian/pool/main/=
h/hardening-wrapper/hardening-wrapper_$%7BPV%7D.tar.xz" target=3D"_blank" r=
el=3D"noopener">http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/=
hardening-wrapper_${PV}.tar.xz</a> \ <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;file://0001-perl_regex.patch \ <br>&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" <br>SRC_URI[md5sum] =3D "47c93c05=
b4d0199be8df0d35dbd68192" <br>SRC_URI[sha256sum] =3D "c5fc46439646d0929a060=
5e4f3db67e57eefbbf5ceec5a2888440dbdf4450224" <br><br>RDEPENDS_${PN} =3D "pe=
rl" <br><br>S =3D "${WORKDIR}/hardening-wrapper"<br><br>do_patch () { <br>&=
nbsp;&nbsp;&nbsp;cd ${S} <br>&nbsp;&nbsp;&nbsp;patch -p1 -u -i ${WORKDIR}/0=
001-perl_regex.patch <br>} <br><br>do_configure () { <br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;# Specify any needed configure commands here <br>&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <br>} <br><br>do_compile () <span=
 style=3D"color: #000000; background-color: #18b2b2;">{</span> <br>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH=3D`uname -m` <br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;export DEB_HOST_ARCH_OS=3D`uname -s`=
 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;oe_runmake <br><span style=
=3D"color: #000000; background-color: #18b2b2;">}</span> <br><br>do_install=
 () { <br>&nbsp;&nbsp;&nbsp;install -d ${D}/${bindir} <br>&nbsp;&nbsp;&nbsp=
;install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir} <br>} <br><b=
r>BBCLASSEXTEND =3D "native nativesdk"<br></span>
      </div>
     </div>
     <br>
     <br>
     <br>
    </blockquote>
   </div>
   <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
   <br>Links: You receive all messages sent to this group.
   <br>View/Reply Online (#55941): https://lists.yoctoproject.org/g/yocto/m=
essage/55941
   <br>Mute This Topic: https://lists.yoctoproject.org/mt/88590330/3617711
   <br>Group Owner: yocto+owner@lists.yoctoproject.org
   <br>Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [winfried_=
mb2@xmsnet.nl]
   <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
   <br>
   <br>
  </blockquote>
 </body>
</html>
------=_Part_4198838_1361169104.1642795258996--

