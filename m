Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A7A4C433F5
	for <webhook@archiver.kernel.org>; Sat, 22 Jan 2022 19:56:39 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web11.798.1642881398035741161
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Jan 2022 11:56:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bbs4CbEv;
 spf=pass (domain: gmail.com, ip: 209.85.222.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id u6so23488844uaq.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 22 Jan 2022 11:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WJ9kTWV5LDkIDh+8E4tYIOWAYl9sc3A3RhD8/bujewI=;
        b=Bbs4CbEveo4rxIPQlK6asFVjRYWQNXYZsg9W62IR//m7ID+o88zdVeJ6OTxodajp18
         eEztsUflJ0i+RYKcNygi/hjF0V7eUUZJTUlHNM6uvRwcoMOcCrXLet7EZ3h3chtEh91b
         R73/FpERk9VqUkHD6Lem8RGE4LWWSM53SPOZBqhP6S2TTpJLTkonO7R7qwbvlS90cTeT
         GA+WBvlGaneWQUGCuNKTHQWqeLA6TBe9EQmPrFqYnVz1HUsvhOdTvZZvZ70O9Fwk+R1+
         dwthRn3nomJ2RzOPryaWX7/73d9yon2kihdiz7j7xpXB9EFwIBLSxVwZpJxLRAx4sAWQ
         wn8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WJ9kTWV5LDkIDh+8E4tYIOWAYl9sc3A3RhD8/bujewI=;
        b=l+KANu52gnFRZqsoRBU/uFqHCIeZdFcHscfOd9Z4pUwEbDqIUn39H5QMHNzj570/t5
         pPc1EidoFqh8n8pppsTfXodwQPQmWmQ1HwAAPEJMWlJCoWUNfbOytZKLg26UwmtcmHsK
         yhlGAyYF30csOkPqNWj9LyJXlYyTUQaUXRkVy4klkFElWqXy6CIf15y6PocPVEtw3Lga
         xdcqb6XlB2QuurU76ufkWVc6PWKzMozDAkPw/z/TV90DdChSZ1RScQkBugYopOYOfYvK
         TZ6034WNGM8f76IrNdo5g0FiFPlW+/IkKoeEHnx0sEHG8zEGrkTlseQYelr0rv97jwOf
         3HFA==
X-Gm-Message-State: AOAM531aE/CsEi5PZspHGrvdum6ZPhbobZWjyOHWkQp1gzxGP1XlSRMt
	2LNZj84r1gZhOHZZoIg7bEUR1k5kzOcBOFKNj1F3TZyW
X-Google-Smtp-Source: 
 ABdhPJwB9CSoTvJszpkPrIpLorGSUxKMWC8KCyHzNblIVOUz0ChDX1Jep61dODHIpmFA6p0w+4zR03mle4aTszIfXuk=
X-Received: by 2002:a67:c181:: with SMTP id h1mr741423vsj.38.1642881396942;
 Sat, 22 Jan 2022 11:56:36 -0800 (PST)
MIME-Version: 1.0
References: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
 <CANNYZj9jP9TRmgGcWmPcgF7TJwLJnPxVAXj6SdykxzFzDRYcaw@mail.gmail.com>
 <1829306086.4198839.1642795259001@kpc.webmail.kpnmail.nl>
 <CANNYZj_F4KBF-rdWAxwNpps-iA7=egh1rar1Gs78ZTfVX7wsuQ@mail.gmail.com>
 <269281483.4243905.1642857109696@kpc.webmail.kpnmail.nl>
 <1454308524.4246541.1642858468337@kpc.webmail.kpnmail.nl>
In-Reply-To: <1454308524.4246541.1642858468337@kpc.webmail.kpnmail.nl>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 22 Jan 2022 20:56:25 +0100
Message-ID: 
 <CANNYZj9yRiALZa3YsKf46d=5V9KREi-ZGbChqT0o5tdCO0_pDQ@mail.gmail.com>
Subject: Re: [yocto] non-existent task do_package_write_rpm error
To: Winfried <winfried_mb2@xmsnet.nl>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000012a8d705d63122c1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Jan 2022 19:56:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55948

--00000000000012a8d705d63122c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Congratulations, you now know the three major flavors of a recipe, and why
and where they're needed :)

Alex

On Sat, 22 Jan 2022 at 14:34, Winfried <winfried_mb2@xmsnet.nl> wrote:

> Update:
>
> TOOLCHAIN_HOST_TASK_append =3D =E2=80=9C nativesdk-hardening-check=E2=80=
=9D
>
> does work. The SDK build succeeds and the hardening-check script is
> installed in the x86_64-pokysdk-linux sysroot.
>
> regards,
> Winfried
>
> Op 22-01-2022 14:11 schreef Winfried <winfried_mb2@xmsnet.nl>:
>
>
> Thanks.
> With TOOLCHAIN_HOST_TASK_append =3D =E2=80=9C hardening-check=E2=80=9D th=
e sdk build
> progresses a bit further but then stops with error:
>
> ERROR: dynniq-image-flownode-acu-default-1.0-r0 do_populate_sdk: Could
> not invoke dnf. Command
> '/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flow=
node_acu-poky-linux-gnueabi/dynniq-image-f
> lownode-acu-default/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v
> --rpmverbosity=3Dinfo -y -c
> /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flown=
ode_acu-poky-linux-gnueabi/dynniq-image-flownod
> e-acu-default/1.0-r0/sdk/image/etc/dnf/dnf.conf
> --setopt=3Dreposdir=3D/home/wdobbe/yocto/flownode_zeus/build-flownode-acu=
/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-=
default/1.0-r0/sdk
> /image/etc/yum.repos.d
> --installroot=3D/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/w=
ork/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-defaul=
t/1.0-r0/sdk/image
> --setopt=3Dlogdir=3D/home/
> wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_ac=
u-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/temp
> --repofrompath=3Doe-repo,/home/wdobbe/yocto/flownode_zeus/build-flownode
> -acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownod=
e-acu-default/1.0-r0/oe-sdk-repo
> --nogpgcheck install hardening-check nativesdk-cmake
> nativesdk-packagegroup-qt5-toolchain-host nativesdk
> -packagegroup-sdk-host nativesdk-perl-modules nativesdk-rpm
> packagegroup-cross-canadian-dynniq-flownode-acu' returned 1:
>
>
> DNF version:
> 4.2.2
> cachedir:
> /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flown=
ode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/sdk/ima=
ge/var/cache/dnf
>
> Added oe-repo repo from
> /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flown=
ode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/oe-sdk-=
repo
>
> repo: using cache for: oe-repo
>
> (...)
> Error:
>
> Problem: conflicting
> requests
>  - package hardening-check-2.6-r0.cortexa9hf_neon does not have a
> compatible architecture
>  - nothing provides /usr/bin/perl needed by
> hardening-check-2.6-r0.cortexa9hf_neon
> (try to add '--skip-broken' to skip uninstallable packages or '--nobest'
> to use not only best candidate packages)
>
> ERROR: Logfile of failure stored in:
> /home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flown=
ode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/temp/lo=
g.do_populate_sdk.5994
> ERROR: Task
> (/home/wdobbe/yocto/flownode_zeus/sources/meta-dynniq-flownode-acu/recipe=
s-dynniq/images/dynniq-image-flownode-acu-default.bb:do_populate_sdk)
> failed with exit code '1'
>
>
> Bitbake builds package hardening-check for the target architecture (
> cortexa9hf_neon) i.s.o for x86_64 (or noarch).
>
> Any ideas how to fix that ?
>
> regards,
> Winfried
>
> Op 21-01-2022 23:26 schreef Alexander Kanavin <alex.kanavin@gmail.com>:
>
>
> Use TOOLCHAIN_HOST_TASK:append =3D " ..." in your image recipe.
>
> Alex
>
> On Fri, 21 Jan 2022 at 21:00, Winfried <winfried_mb2@xmsnet.nl> wrote:
>
> Hi Alex,
>
> Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the build
> does indeed succeed.
> But then the script is installed in the target sysroot of the SDK. I woul=
d
> like to have it in the native (x86_64-pokysdk-linux) sysroot as it is a
> tool to use on the build server.
>
> Any idea how to achieve that ?
>
> Thanks,
> Winfried
>
> Op 21-01-2022 20:09 schreef Alexander Kanavin <alex.kanavin@gmail.com>:
>
>
> You need to drop the -native suffix when installing to target image or
> SDK. -native is only for the bitbake build itself.
>
> Alex
>
> On Fri, 21 Jan 2022 at 20:07, W. Dobbe <winfried_mb2@xmsnet.nl> wrote:
>
> Hi,
>
> I'm writing a recipe for package hardening-check
> <http://deb.debian.org/debian/pool/main/h/hardening-wrapper/> .
> This package builds with only a simple Makefile (that has no install
> target). The recipe only installs a script hardening-check in /usr/bin.
>
> I would like to include this script in our SDK.
> The recipe itself builds fine (bitbake hardening-check-native).
>
> But when I add hardening-check-native to IMAGE_INSTALL in my image the
> build fails with:
>
> Task do_populate_sdk in myimage.bb rdepends upon non-existent task do_pac=
kage_write_rpm in virtual:native:(...)/recipes-devtools/hardening-check/har=
dening-check_2.6.bb
>
> Same error when I append the package to TOOLCHAIN_HOST_TASK instead.
>
> Any idea how to solve this? Do I need to inherit my recipe from something=
?
> Recipe included below.
>
> Thanks in advance for the help!
>
> regards,
> Winfried
>
>
> SUMMARY =3D "Script to check an executable for certain security weaknesse=
s."
> LICENSE =3D "GPLv2"
> LIC_FILES_CHKSUM =3D
> "file://debian/copyright;md5=3D06ff97d53f05a9b8ce2a416b30f496b9"
>
> SRC_URI =3D "
> http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrap=
per_${PV}.tar.xz
> \
>           file://0001-perl_regex.patch \
>          "
> SRC_URI[md5sum] =3D "47c93c05b4d0199be8df0d35dbd68192"
> SRC_URI[sha256sum] =3D
> "c5fc46439646d0929a0605e4f3db67e57eefbbf5ceec5a2888440dbdf4450224"
>
> RDEPENDS_${PN} =3D "perl"
>
> S =3D "${WORKDIR}/hardening-wrapper"
>
> do_patch () {
>    cd ${S}
>    patch -p1 -u -i ${WORKDIR}/0001-perl_regex.patch
> }
>
> do_configure () {
>        # Specify any needed configure commands here
>        :
> }
>
> do_compile () {
>        export DEB_HOST_ARCH=3D`uname -m`
>        export DEB_HOST_ARCH_OS=3D`uname -s`
>        oe_runmake
> }
>
> do_install () {
>    install -d ${D}/${bindir}
>    install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir}
> }
>
> BBCLASSEXTEND =3D "native nativesdk"
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55941):
> https://lists.yoctoproject.org/g/yocto/message/55941
> Mute This Topic: https://lists.yoctoproject.org/mt/88590330/3617711
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> winfried_mb2@xmsnet.nl]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000012a8d705d63122c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Congratulations, you now know the three major flavors=
 of a recipe, and why and where they&#39;re needed :)</div><div><br></div><=
div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Sat, 22 Jan 2022 at 14:34, Winfried &lt;<a href=3D"mai=
lto:winfried_mb2@xmsnet.nl">winfried_mb2@xmsnet.nl</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
  =20
=20
 <div>
  <div>
   Update:=20
   <br>
   <br><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)">TOOLCHAIN_HOST_TASK_append =3D </span>=
<span style=3D"color:rgb(255,84,255);background-color:rgb(255,255,255)">=E2=
=80=9C nativesdk-hardening-check=E2=80=9D</span><br></span>
   <br>
  </div>
  <div>
   does work. The SDK build succeeds and the hardening-check script is inst=
alled in the <span style=3D"font-family:monospace"><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">x86_64-pokysdk-linux</span></spa=
n> sysroot.
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   regards,
   <br>
  </div>
  <div>
   Winfried
   <br>
  </div>
  <blockquote type=3D"cite">
   <div>
    Op 22-01-2022 14:11 schreef Winfried &lt;<a href=3D"mailto:winfried_mb2=
@xmsnet.nl" target=3D"_blank">winfried_mb2@xmsnet.nl</a>&gt;:
   </div>
   <div>
    <br>
   </div>
   <div>
    <br>
   </div>
   <div>
    Thanks.=20
    <br>With <span style=3D"font-family:monospace"><span style=3D"color:rgb=
(0,0,0);background-color:rgb(255,255,255)">TOOLCHAIN_HOST_TASK_append =3D =
=E2=80=9C hardening-check=E2=80=9D </span></span>the sdk build progresses a=
 bit further but then stops with error:=20
    <br>
   </div>
   <div>
    <br>
   </div>
   <div>
    <span style=3D"font-family:monospace"><span style=3D"font-weight:bold;c=
olor:rgb(255,84,84);background-color:rgb(255,255,255)">ERROR</span><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">: </span><span s=
tyle=3D"color:rgb(178,24,24);background-color:rgb(255,255,255)">dynniq-imag=
e-flownode-acu-default-1.0-r0 do_populate_sdk: Could not invoke dnf. Comman=
d &#39;/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_=
flownode_acu-poky-linux-gnueabi/dynniq-image-f</span><br>lownode-acu-defaul=
t/1.0-r0/recipe-sysroot-native/usr/bin/dnf -v --rpmverbosity=3Dinfo -y -c /=
home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode=
_acu-poky-linux-gnueabi/dynniq-image-flownod<br>e-acu-default/1.0-r0/sdk/im=
age/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/wdobbe/yocto/flownode_zeus=
/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-=
image-flownode-acu-default/1.0-r0/sdk<br>/image/etc/yum.repos.d --installro=
ot=3D/home/wdobbe/yocto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_fl=
ownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/sdk/=
image --setopt=3Dlogdir=3D/home/<br>wdobbe/yocto/flownode_zeus/build-flowno=
de-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownod=
e-acu-default/1.0-r0/temp --repofrompath=3Doe-repo,/home/wdobbe/yocto/flown=
ode_zeus/build-flownode<br>-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnu=
eabi/dynniq-image-flownode-acu-default/1.0-r0/oe-sdk-repo --nogpgcheck inst=
all hardening-check nativesdk-cmake nativesdk-packagegroup-qt5-toolchain-ho=
st nativesdk<br>-packagegroup-sdk-host nativesdk-perl-modules nativesdk-rpm=
 packagegroup-cross-canadian-dynniq-flownode-acu&#39; returned 1: =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">=C2=A0</=
span><br><span style=3D"color:rgb(178,24,24);background-color:rgb(255,255,2=
55)">DNF version: 4.2.2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0</span> <br><span style=3D"color:rgb(178,24,24);background-color:rgb(=
255,255,255)">cachedir: /home/wdobbe/yocto/flownode_zeus/build-flownode-acu=
/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flownode-acu-=
default/1.0-r0/sdk/image/var/cache/dnf =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"color:rgb(0,0,0);background-c=
olor:rgb(255,255,255)">=C2=A0</span><br><span style=3D"color:rgb(178,24,24)=
;background-color:rgb(255,255,255)">Added oe-repo repo from /home/wdobbe/yo=
cto/flownode_zeus/build-flownode-acu/tmp/work/dynniq_flownode_acu-poky-linu=
x-gnueabi/dynniq-image-flownode-acu-default/1.0-r0/oe-sdk-repo =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"color:rgb(0,0,0);=
background-color:rgb(255,255,255)">=C2=A0</span><br><span style=3D"color:rg=
b(178,24,24);background-color:rgb(255,255,255)">repo: using cache for: oe-r=
epo =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span> <span style=3D"c=
olor:rgb(178,24,24);background-color:rgb(255,255,255)">(...)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span> <br><span =
style=3D"color:rgb(178,24,24);background-color:rgb(255,255,255)">Error:=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 </span><br><span style=3D"color:rgb(178,24,24);background-color:rgb(255,25=
5,255)"> Problem: conflicting requests=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0</span> <br><span style=3D"color:rgb(178,24,24);bac=
kground-color:rgb(255,255,255)"> =C2=A0- package hardening-check-2.6-r0.cor=
texa9hf_neon does not have a compatible architecture </span><br><span style=
=3D"color:rgb(178,24,24);background-color:rgb(255,255,255)"> =C2=A0- nothin=
g provides /usr/bin/perl needed by hardening-check-2.6-r0.cortexa9hf_neon=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span> <br><span style=3D"color:=
rgb(178,24,24);background-color:rgb(255,255,255)">(try to add &#39;--skip-b=
roken&#39; to skip uninstallable packages or &#39;--nobest&#39; to use not =
only best candidate packages)=C2=A0 </span><br><span style=3D"color:rgb(0,0=
,0);background-color:rgb(255,255,255)">=C2=A0</span><br><span style=3D"font=
-weight:bold;color:rgb(255,84,84);background-color:rgb(255,255,255)">ERROR<=
/span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">: =
</span><span style=3D"color:rgb(178,24,24);background-color:rgb(255,255,255=
)">Logfile of failure stored in: /home/wdobbe/yocto/flownode_zeus/build-flo=
wnode-acu/tmp/work/dynniq_flownode_acu-poky-linux-gnueabi/dynniq-image-flow=
node-acu-default/1.0-r0/temp/log.do_populate_sdk.5994</span> <br><span styl=
e=3D"font-weight:bold;color:rgb(255,84,84);background-color:rgb(255,255,255=
)">ERROR</span><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">: </span><span style=3D"color:rgb(178,24,24);background-color:rgb(25=
5,255,255)">Task (/home/wdobbe/yocto/flownode_zeus/sources/meta-dynniq-flow=
node-acu/recipes-dynniq/images/dynniq-image-flownode-acu-default.bb:do_popu=
late_sdk) failed with exit code &#39;1&#39;</span><br></span>
   </div>
   <div>
    <span style=3D"font-family:monospace"><br></span>
   </div>
   <div>
    <span style=3D"font-family:monospace"><br></span>
   </div>
   <div>
    <span style=3D"font-family:-apple-system,BlinkMacSystemFont,helvetica,s=
ans-serif">Bitbake builds package hardening-check for the target architectu=
re (<span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">cort=
exa9hf_neon</span>) i.s.o for x86_64 (or noarch).<br><br></span>
   </div>
   <div>
    <span style=3D"font-family:-apple-system,BlinkMacSystemFont,helvetica,s=
ans-serif">Any ideas how to fix that ?<br></span>
   </div>
   <div>
    <span style=3D"font-family:monospace"><br></span>
   </div>
   <div>
    <span style=3D"font-family:-apple-system,BlinkMacSystemFont,helvetica,s=
ans-serif">regards,<br></span>
   </div>
   <div>
    <span style=3D"font-family:-apple-system,BlinkMacSystemFont,helvetica,s=
ans-serif">Winfried<br></span>
   </div>
   <div>
    <span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);b=
ackground-color:rgb(255,255,255)"><br></span></span>
   </div>
   <blockquote type=3D"cite">
    <div>
     Op 21-01-2022 23:26 schreef Alexander Kanavin &lt;<a href=3D"mailto:al=
ex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;:
    </div>
    <div>
     <br>
    </div>
    <div>
     <br>
    </div>
    <div dir=3D"ltr">
     <div>
      Use TOOLCHAIN_HOST_TASK:append =3D &quot; ...&quot; in your image rec=
ipe.
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
_mb2@xmsnet.nl" target=3D"_blank">winfried_mb2@xmsnet.nl</a>&gt; wrote:=20
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
o:alex.kanavin@gmail.com" rel=3D"noopener" target=3D"_blank">alex.kanavin@g=
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
ried_mb2@xmsnet.nl" rel=3D"noopener" target=3D"_blank">winfried_mb2@xmsnet.=
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
            I&#39;m writing a recipe for package <a href=3D"http://deb.debi=
an.org/debian/pool/main/h/hardening-wrapper/" rel=3D"noopener" target=3D"_b=
lank">hardening-check</a> .=20
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
           <pre><span style=3D"font-family:monospace"><span style=3D"color:=
rgb(0,0,0)"><span style=3D"background-color:rgb(255,255,255)">Task do_popul=
ate_sdk in <a href=3D"http://myimage.bb" rel=3D"noopener" target=3D"_blank"=
>myimage.bb</a> rdepends upon non-existent task do_package_write_rpm i</spa=
n>n virtual:native:(...)/recipes-devtools/hardening-check/<a href=3D"http:/=
/hardening-check_2.6.bb" rel=3D"noopener" target=3D"_blank">hardening-check=
_2.6.bb</a></span><br></span></pre>
           <div>
            Same error when I append the package to <span style=3D"font-fam=
ily:monospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255=
,255)">TOOLCHAIN_HOST_TASK <span style=3D"font-family:-apple-system,BlinkMa=
cSystemFont,helvetica,sans-serif">instead</span></span></span>.=20
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
            <span style=3D"font-family:monospace"><span style=3D"color:rgb(=
0,0,0);background-color:rgb(255,255,255)">SUMMARY =3D &quot;Script to check=
 an executable for certain security weaknesses.&quot; </span><br>LICENSE =
=3D &quot;GPLv2&quot; <br>LIC_FILES_CHKSUM =3D &quot;file://debian/copyrigh=
t;md5=3D06ff97d53f05a9b8ce2a416b30f496b9&quot; <br><br>SRC_URI =3D &quot;<a=
 href=3D"http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardeni=
ng-wrapper_$%7BPV%7D.tar.xz" rel=3D"noopener" target=3D"_blank">http://ftp.=
debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_${PV}.tar=
.xz</a> \ <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0f=
ile://0001-perl_regex.patch \ <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0&quot; <br>SRC_URI[md5sum] =3D &quot;47c93c05b4d0199be8df0d3=
5dbd68192&quot; <br>SRC_URI[sha256sum] =3D &quot;c5fc46439646d0929a0605e4f3=
db67e57eefbbf5ceec5a2888440dbdf4450224&quot; <br><br>RDEPENDS_${PN} =3D &qu=
ot;perl&quot; <br><br>S =3D &quot;${WORKDIR}/hardening-wrapper&quot;<br><br=
>do_patch () { <br>=C2=A0=C2=A0=C2=A0cd ${S} <br>=C2=A0=C2=A0=C2=A0patch -p=
1 -u -i ${WORKDIR}/0001-perl_regex.patch <br>} <br><br>do_configure () { <b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# Specify any needed configure =
commands here <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0: <br>} <br><br=
>do_compile () <span style=3D"color:rgb(0,0,0);background-color:rgb(24,178,=
178)">{</span> <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0export DEB_HOS=
T_ARCH=3D`uname -m` <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0export DE=
B_HOST_ARCH_OS=3D`uname -s` <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0o=
e_runmake <br><span style=3D"color:rgb(0,0,0);background-color:rgb(24,178,1=
78)">}</span> <br><br>do_install () { <br>=C2=A0=C2=A0=C2=A0install -d ${D}=
/${bindir} <br>=C2=A0=C2=A0=C2=A0install -m 755 ${S}/build-tree/hardening-c=
heck ${D}/${bindir} <br>} <br><br>BBCLASSEXTEND =3D &quot;native nativesdk&=
quot;<br></span>
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
ct.org/g/yocto/message/55941" rel=3D"noopener" target=3D"_blank">https://li=
sts.yoctoproject.org/g/yocto/message/55941</a>=20
        <br>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/8=
8590330/3617711" rel=3D"noopener" target=3D"_blank">https://lists.yoctoproj=
ect.org/mt/88590330/3617711</a>=20
        <br>Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject=
.org" rel=3D"noopener" target=3D"_blank">yocto+owner@lists.yoctoproject.org=
</a>=20
        <br>Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/=
unsub" rel=3D"noopener" target=3D"_blank">https://lists.yoctoproject.org/g/=
yocto/unsub</a> [<a href=3D"mailto:winfried_mb2@xmsnet.nl" rel=3D"noopener"=
 target=3D"_blank">winfried_mb2@xmsnet.nl</a>]=20
        <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=20
        <br>
        <br>
       </blockquote>
      </div>
     </blockquote>
    </div>
   </blockquote>
  </blockquote>
 </div>
</blockquote></div>

--00000000000012a8d705d63122c1--

