Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43DC0C433EF
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 22:26:53 +0000 (UTC)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com
 [209.85.221.180])
 by mx.groups.io with SMTP id smtpd.web11.1208.1642804012590218079
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 14:26:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=no2RA98R;
 spf=pass (domain: gmail.com, ip: 209.85.221.180,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f180.google.com with SMTP id 19so6419106vkl.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 14:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mtWea557dV/3m61Yd5e72bJuu+i/wwAabQ2d9IFSkuc=;
        b=no2RA98Ru0TxU4jVv8iHQTE7ya1g/YAR0O3IPgNKoKKLrjoKsj7NB4GB1vMJH1yr1y
         miSq/BG2bSgfQ8zDtG8kI0gko6YJPS/FVd1oyYLEQ2O9XTWsqld5xN+bHutrqK5o/xR7
         molfdJhdR4Gwo2mUgPXTj5tMhhIYcUHX/L9P78hwEKAwOSVMEX2hKhZLuE1CBpBDOtnm
         z7tlktcTZEF9AoZz48yoVmQOKKlrIEFQtJsQITvwRJopaQhRkyC72847ZVlO0+dsATxn
         qVVPwxcqBJnPOAT9vfrefw48SQ8iv+vj2QeTZtR1C2pocnSUWpBZO+wK6tAv2V6hsJo1
         m5UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mtWea557dV/3m61Yd5e72bJuu+i/wwAabQ2d9IFSkuc=;
        b=zOiD+QCOtlkvFTZ6k+JUqwx+Rvt2qkS84MBWKrFyZmUd3rGwiwGtNfM3ZAbMRG0MMa
         a3P/GjIrE22FqrFpJCs3K7OiI7sDCJxzlVsQmygla/8DW6QEjZOQuCWgBqFyaWvfw8Tz
         cJ+hbK/5qhtbvW2dEce0xmjqJL/ydOJB/A/Arxx74PnQSM0DHMgSsx5zNragYLVMget0
         bXZIih24MTSREHoao2ikk7I55IYChJaJS6mBX+XrKy/DKTLwt5aLPaxx8/30zUo1aapM
         stqbFKtZfDWj2Wxu1xoXVxWX/ma0tWFF45la4b/z8Hr2NNhoYzk/Nz3PbrNnRuz2DXKI
         erbQ==
X-Gm-Message-State: AOAM532yGhDM2rSF1wEVMY5I2/P8eacp8/p9F/D0Ch8oLMTRtBKpJqJm
	54I5oBtAsxuwodeAjX6UYUiOIhCFYhq1Wj1xFNY=
X-Google-Smtp-Source: 
 ABdhPJyjbRj9laR4pl6VLKUyaS6nUctyweyAlbrbIB/rg3On5wvOsUzyej2ZvIxBxS26yCdKHViINeoiSvpHffKftZU=
X-Received: by 2002:a05:6122:d93:: with SMTP id
 bc19mr2619990vkb.21.1642804011664;
 Fri, 21 Jan 2022 14:26:51 -0800 (PST)
MIME-Version: 1.0
References: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
 <CANNYZj9jP9TRmgGcWmPcgF7TJwLJnPxVAXj6SdykxzFzDRYcaw@mail.gmail.com>
 <1829306086.4198839.1642795259001@kpc.webmail.kpnmail.nl>
In-Reply-To: <1829306086.4198839.1642795259001@kpc.webmail.kpnmail.nl>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 21 Jan 2022 23:26:40 +0100
Message-ID: 
 <CANNYZj_F4KBF-rdWAxwNpps-iA7=egh1rar1Gs78ZTfVX7wsuQ@mail.gmail.com>
Subject: Re: [yocto] non-existent task do_package_write_rpm error
To: Winfried <winfried_mb2@xmsnet.nl>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008d07c005d61f1d33"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 22:26:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55943

--0000000000008d07c005d61f1d33
Content-Type: text/plain; charset="UTF-8"

Use TOOLCHAIN_HOST_TASK:append = " ..." in your image recipe.

Alex

On Fri, 21 Jan 2022 at 21:00, Winfried <winfried_mb2@xmsnet.nl> wrote:

> Hi Alex,
>
> Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the build
> does indeed succeed.
> But then the script is installed in the target sysroot of the SDK. I would
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
> Task do_populate_sdk in myimage.bb rdepends upon non-existent task do_package_write_rpm in virtual:native:(...)/recipes-devtools/hardening-check/hardening-check_2.6.bb
>
> Same error when I append the package to TOOLCHAIN_HOST_TASK instead.
>
> Any idea how to solve this? Do I need to inherit my recipe from something?
> Recipe included below.
>
> Thanks in advance for the help!
>
> regards,
> Winfried
>
>
> SUMMARY = "Script to check an executable for certain security weaknesses."
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://debian/copyright;md5=06ff97d53f05a9b8ce2a416b30f496b9"
>
> SRC_URI = "
> http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_${PV}.tar.xz
> \
>           file://0001-perl_regex.patch \
>          "
> SRC_URI[md5sum] = "47c93c05b4d0199be8df0d35dbd68192"
> SRC_URI[sha256sum] =
> "c5fc46439646d0929a0605e4f3db67e57eefbbf5ceec5a2888440dbdf4450224"
>
> RDEPENDS_${PN} = "perl"
>
> S = "${WORKDIR}/hardening-wrapper"
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
>        export DEB_HOST_ARCH=`uname -m`
>        export DEB_HOST_ARCH_OS=`uname -s`
>        oe_runmake
> }
>
> do_install () {
>    install -d ${D}/${bindir}
>    install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir}
> }
>
> BBCLASSEXTEND = "native nativesdk"
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55941):
> https://lists.yoctoproject.org/g/yocto/message/55941
> Mute This Topic: https://lists.yoctoproject.org/mt/88590330/3617711
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> winfried_mb2@xmsnet.nl]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000008d07c005d61f1d33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Use TOOLCHAIN_HOST_TASK:append =3D &quot; ...&quot; i=
n your image recipe.</div><div><br></div><div>Alex<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 21 Jan =
2022 at 21:00, Winfried &lt;<a href=3D"mailto:winfried_mb2@xmsnet.nl">winfr=
ied_mb2@xmsnet.nl</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><u></u>

 =20
  =20
=20
 <div>
  <div>
   Hi Alex,
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   Thanks for the tip. When I add hardening-check to IMAGE_INSTALL the buil=
d does indeed succeed.
   <br>
  </div>
  <div>
   But then the script is installed in the target sysroot of the SDK. I wou=
ld like to have it in the native (x86_64-pokysdk-linux) sysroot as it is a =
tool to use on the build server.
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   Any idea how to achieve that ?
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   Thanks,
   <br>
  </div>
  <div>
   Winfried
   <br>
  </div>
  <blockquote type=3D"cite">
   <div>
    Op 21-01-2022 20:09 schreef Alexander Kanavin &lt;<a href=3D"mailto:ale=
x.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;:
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
mb2@xmsnet.nl" target=3D"_blank">winfried_mb2@xmsnet.nl</a>&gt; wrote:
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
       I&#39;m writing a recipe for package <a href=3D"http://deb.debian.or=
g/debian/pool/main/h/hardening-wrapper/" rel=3D"noopener" target=3D"_blank"=
>hardening-check</a> .=20
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
      <pre><span style=3D"font-family:monospace"><span style=3D"color:rgb(0=
,0,0)"><span style=3D"background-color:rgb(255,255,255)">Task do_populate_s=
dk in <a href=3D"http://myimage.bb" rel=3D"noopener" target=3D"_blank">myim=
age.bb</a> rdepends upon non-existent task do_package_write_rpm i</span>n v=
irtual:native:(...)/recipes-devtools/hardening-check/<a href=3D"http://hard=
ening-check_2.6.bb" rel=3D"noopener" target=3D"_blank">hardening-check_2.6.=
bb</a></span><br></span></pre>
      <div>
       Same error when I append the package to <span style=3D"font-family:m=
onospace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)=
">TOOLCHAIN_HOST_TASK <span style=3D"font-family:-apple-system,BlinkMacSyst=
emFont,helvetica,sans-serif">instead</span></span></span>.=20
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
       <span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0=
);background-color:rgb(255,255,255)">SUMMARY =3D &quot;Script to check an e=
xecutable for certain security weaknesses.&quot; </span><br>LICENSE =3D &qu=
ot;GPLv2&quot; <br>LIC_FILES_CHKSUM =3D &quot;file://debian/copyright;md5=
=3D06ff97d53f05a9b8ce2a416b30f496b9&quot; <br><br>SRC_URI =3D &quot;<a href=
=3D"http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wr=
apper_$%7BPV%7D.tar.xz" rel=3D"noopener" target=3D"_blank">http://ftp.debia=
n.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_${PV}.tar.xz</=
a> \ <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0file:/=
/0001-perl_regex.patch \ <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0&quot; <br>SRC_URI[md5sum] =3D &quot;47c93c05b4d0199be8df0d35dbd68=
192&quot; <br>SRC_URI[sha256sum] =3D &quot;c5fc46439646d0929a0605e4f3db67e5=
7eefbbf5ceec5a2888440dbdf4450224&quot; <br><br>RDEPENDS_${PN} =3D &quot;per=
l&quot; <br><br>S =3D &quot;${WORKDIR}/hardening-wrapper&quot;<br><br>do_pa=
tch () { <br>=C2=A0=C2=A0=C2=A0cd ${S} <br>=C2=A0=C2=A0=C2=A0patch -p1 -u -=
i ${WORKDIR}/0001-perl_regex.patch <br>} <br><br>do_configure () { <br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0# Specify any needed configure comma=
nds here <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0: <br>} <br><br>do_c=
ompile () <span style=3D"color:rgb(0,0,0);background-color:rgb(24,178,178)"=
>{</span> <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0export DEB_HOST_ARC=
H=3D`uname -m` <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0export DEB_HOS=
T_ARCH_OS=3D`uname -s` <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0oe_run=
make <br><span style=3D"color:rgb(0,0,0);background-color:rgb(24,178,178)">=
}</span> <br><br>do_install () { <br>=C2=A0=C2=A0=C2=A0install -d ${D}/${bi=
ndir} <br>=C2=A0=C2=A0=C2=A0install -m 755 ${S}/build-tree/hardening-check =
${D}/${bindir} <br>} <br><br>BBCLASSEXTEND =3D &quot;native nativesdk&quot;=
<br></span>
      </div>
     </div>
     <br>
     <br>
     <br>
    </blockquote>
   </div>
   <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
   <br>Links: You receive all messages sent to this group.
   <br>View/Reply Online (#55941): <a href=3D"https://lists.yoctoproject.or=
g/g/yocto/message/55941" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/message/55941</a>
   <br>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/885903=
30/3617711" target=3D"_blank">https://lists.yoctoproject.org/mt/88590330/36=
17711</a>
   <br>Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org"=
 target=3D"_blank">yocto+owner@lists.yoctoproject.org</a>
   <br>Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub=
" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a hr=
ef=3D"mailto:winfried_mb2@xmsnet.nl" target=3D"_blank">winfried_mb2@xmsnet.=
nl</a>]
   <br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
   <br>
   <br>
  </blockquote>
 </div>
</blockquote></div>

--0000000000008d07c005d61f1d33--

