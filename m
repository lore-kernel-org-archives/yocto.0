Return-Path: <michael.ho@ieee.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695B7C433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Dec 2021 06:53:37 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
 [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web09.48159.1640760816189430483
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 22:53:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ieee.org header.s=google header.b=B1ho6DAq;
 spf=pass (domain: ieee.org, ip: 209.85.222.42, mailfrom: michael.ho@ieee.org)
Received: by mail-ua1-f42.google.com with SMTP id p1so13760196uap.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 22:53:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zfF5L3Kv99wcyXNxQ1upncJqne7F3QeNPAy6npU0wTg=;
        b=B1ho6DAqcN5ThVwdFMb58tX9Xa82gAt7Krp51GxBx/FYc/pm3m+jN38O4AL2wUU+xY
         pW2WLICZXSrwqZVKSoEey9fMTr6tfoOiNpTC6kzV8G1s+Ys6VE79qFddy6Z6KUYzsmhG
         JBTndyAOfkddQ+RLBdkEEwcZEJfX58t9htQYA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zfF5L3Kv99wcyXNxQ1upncJqne7F3QeNPAy6npU0wTg=;
        b=ifvLHuNbabzceiHygg1c9x8le4T9WyXo4+dwHwKfSyJKrVHsYsRZ+SkkKo2+y5Pb+k
         uDQkL4x6/N694iY54ASlf897kcUxP+xc52iOnNmalMA3EEy/rZBN6XbEorMfLK/8hTZt
         Q+CRFhrDSadd9su9mJq7wh1lwf9s8c/4aZB1jRNVAooqJs9YFBiIzSGZ6muNnA0Npu1u
         RNtMVIxBypBdvVxO+Cn9T07omYAIh14JGryicb04cS8LBk9yRvzwkGseUINPCUwKGR5B
         R4AwpFOzb96K7zTP8biA3qxV9+m082dvOUYlKV3arTjCXCpbVZGuLscvIYpQn6EzMoLf
         OGkg==
X-Gm-Message-State: AOAM530Bd2KgSp8Msh6zi0Raemnf9Z2vHz/eHJ33q6k93EF4EZwYFJ8J
	H2WJIalcrKBtAA4zx0p0ZA5wWsuGbPuv7bWhp8q7lQ==
X-Google-Smtp-Source: 
 ABdhPJz/tPdxD22aKYwsXLij7Cv9VPyr3Sih4J2CoEj2OuYyvhhitZYLeT6VDIScHS9yYxUofJHB7uDWshKcrnTG08k=
X-Received: by 2002:ab0:6882:: with SMTP id t2mr4475384uar.40.1640760815226;
 Tue, 28 Dec 2021 22:53:35 -0800 (PST)
MIME-Version: 1.0
References: <UgWJ.1640715121424616879.MnGk@lists.yoctoproject.org>
In-Reply-To: <UgWJ.1640715121424616879.MnGk@lists.yoctoproject.org>
From: Michael Ho <michael.ho@ieee.org>
Date: Wed, 29 Dec 2021 07:53:24 +0100
Message-ID: 
 <CALpKvHq0AC-sx9xUUiq+heXmc9uLaZVbCiMo6LnVKJ2SDX56cA@mail.gmail.com>
Subject: Re: [yocto] unparsed line #yocto
To: Kevin Kettinger <kkettinger@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008db38805d443658d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Dec 2021 06:53:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55685

--0000000000008db38805d443658d
Content-Type: text/plain; charset="UTF-8"

It looks like you have a dunfell yocto setup which doesn't support that new
recipe syntax. Maybe you need to check out the dunfell branch of those meta
layers to get them to be compatible.

Michael

On Tue, 28 Dec 2021, 7:12 pm Kevin Kettinger, <kkettinger@gmail.com> wrote:

> Hello,
>
> after including the meta-qt5 and meta-boot2qt layer from
> https://code.qt.io/cgit/yocto, and adding them to my bblayers.conf,
> bitbake breaks directly while parsing the recipes:
> ---------------------------------------------
> ERROR: ParseError at
> /home/yocto/projects/faseroptik-dunfell/build/../layers/meta-qt5/classes/cmake_qt5.bbclass:4:
> unparsed line: 'DEPENDS:prepend = "${QTBASEDEPENDS}
> "'
> | ETA:  --:--:--
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> ---------------------------------------------
>
> If i restart bitbake, the offending file changes now and then, but just
> for completion, here is the file:
> ---------------------------------------------
> inherit cmake
> inherit qmake5_paths
>
> DEPENDS:prepend = "${QTBASEDEPENDS} "
> QTBASEDEPENDS = "qtbase qtbase-native"
> QTBASEDEPENDS:class-native = "qtbase-native"
> QTBASEDEPENDS:class-nativesdk = "nativesdk-qtbase qtbase-native"
>
> EXTRA_OECMAKE:prepend = " \
>     -DOE_QMAKE_PATH_PREFIX=${OE_QMAKE_PATH_PREFIX} \
>     -DOE_QMAKE_PATH_HEADERS=${OE_QMAKE_PATH_HEADERS} \
>     -DOE_QMAKE_PATH_LIBS=${OE_QMAKE_PATH_LIBS} \
>     -DOE_QMAKE_PATH_ARCHDATA=${OE_QMAKE_PATH_ARCHDATA} \
>     -DOE_QMAKE_PATH_DATA=${OE_QMAKE_PATH_DATA} \
>     -DOE_QMAKE_PATH_BINS=${OE_QMAKE_PATH_BINS} \
>     -DOE_QMAKE_PATH_LIBEXECS=${OE_QMAKE_PATH_LIBEXECS} \
>     -DOE_QMAKE_PATH_PLUGINS=${OE_QMAKE_PATH_PLUGINS} \
>     -DOE_QMAKE_PATH_QML=${OE_QMAKE_PATH_QML} \
>     -DOE_QMAKE_PATH_TRANSLATIONS=${OE_QMAKE_PATH_TRANSLATIONS} \
>     -DOE_QMAKE_PATH_DOCS=${OE_QMAKE_PATH_DOCS} \
>     -DOE_QMAKE_PATH_SETTINGS=${OE_QMAKE_PATH_SETTINGS} \
>     -DOE_QMAKE_PATH_EXAMPLES=${OE_QMAKE_PATH_EXAMPLES} \
>     -DOE_QMAKE_PATH_TESTS=${OE_QMAKE_PATH_TESTS} \
>     -DOE_QMAKE_PATH_HOST_PREFIX=${OE_QMAKE_PATH_HOST_PREFIX} \
>     -DOE_QMAKE_PATH_HOST_BINS=${OE_QMAKE_PATH_HOST_BINS} \
>     -DOE_QMAKE_PATH_HOST_DATA=${OE_QMAKE_PATH_HOST_DATA} \
>     -DOE_QMAKE_PATH_HOST_LIBS=${OE_QMAKE_PATH_HOST_LIBS} \
>     -DOE_QMAKE_PATH_EXTERNAL_HOST_BINS=${OE_QMAKE_PATH_EXTERNAL_HOST_BINS}
> \
>     -DOE_QMAKE_PATH_QT_HEADERS=${OE_QMAKE_PATH_QT_HEADERS} \
>     -DOE_QMAKE_PATH_QT_ARCHDATA=${OE_QMAKE_PATH_QT_ARCHDATA} \
>     -DOE_QMAKE_PATH_QT_DATA=${OE_QMAKE_PATH_QT_DATA} \
>     -DOE_QMAKE_PATH_QT_BINS=${OE_QMAKE_PATH_QT_BINS} \
>     -DOE_QMAKE_PATH_QT_TRANSLATIONS=${OE_QMAKE_PATH_QT_TRANSLATIONS} \
>     -DOE_QMAKE_PATH_QT_DOCS=${OE_QMAKE_PATH_QT_DOCS} \
>     -DOE_QMAKE_PATH_QT_SETTINGS=${OE_QMAKE_PATH_QT_SETTINGS} \
>     -DOE_QMAKE_PATH_QT_EXAMPLES=${OE_QMAKE_PATH_QT_EXAMPLES} \
>     -DOE_QMAKE_PATH_QT_TESTS=${OE_QMAKE_PATH_QT_TESTS} \
> "
> ---------------------------------------------
>
> The exact same layer with the exact same commit & files is working fine on
> the original boot2qt environment, but not on my environment.
>
> My bblayers.conf looks like this:
> ---------------------------------------------
> LCONF_VERSION = "7"
>
> BBPATH = "${TOPDIR}"
> BBFILES ?= ""
>
> BBLAYERS ?= " \
>   ${TOPDIR}/../layers/meta-toradex-nxp \
>   ${TOPDIR}/../layers/meta-freescale \
>   ${TOPDIR}/../layers/meta-freescale-3rdparty \
>   ${TOPDIR}/../layers/meta-toradex-tegra \
>   ${TOPDIR}/../layers/meta-toradex-bsp-common \
>   ${TOPDIR}/../layers/meta-openembedded/meta-oe \
>   ${TOPDIR}/../layers/meta-openembedded/meta-filesystems \
>   ${TOPDIR}/../layers/meta-openembedded/meta-gnome \
>   ${TOPDIR}/../layers/meta-openembedded/meta-xfce \
>   ${TOPDIR}/../layers/meta-openembedded/meta-initramfs \
>   ${TOPDIR}/../layers/meta-openembedded/meta-networking \
>   ${TOPDIR}/../layers/meta-openembedded/meta-multimedia \
>   ${TOPDIR}/../layers/meta-openembedded/meta-python \
>   ${TOPDIR}/../layers/meta-freescale-distro \
>   ${TOPDIR}/../layers/meta-toradex-demos \
>   ${TOPDIR}/../layers/meta-boot2qt/meta-boot2qt \
>   ${TOPDIR}/../layers/meta-boot2qt/meta-boot2qt-distro \
>   ${TOPDIR}/../layers/meta-qt5 \
>   ${TOPDIR}/../layers/meta-toradex-distro \
>   ${TOPDIR}/../layers/meta-yocto/meta-poky \
>   ${TOPDIR}/../layers/openembedded-core/meta \
>   ${TOPDIR}/../layers/meta-mender/meta-mender-core \
>   ${TOPDIR}/../layers/meta-mender-community/meta-mender-toradex-nxp \
>   ${TOPDIR}/../layers/meta-mender/meta-mender-demo \
>   "
> ---------------------------------------------
>
> On the working boot2qt environment poky 3.1.11 is used, i'm using poky
> 3.1.8.
>
> Is there anything i can do to track this issue down? bitbake -v doesn't
> report more infos.
>
> I appreciate any help here, thank you.
>
> Best regards,
> Kevin
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55675):
> https://lists.yoctoproject.org/g/yocto/message/55675
> Mute This Topic: https://lists.yoctoproject.org/mt/88000093/3618434
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> michael.ho@ieee.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000008db38805d443658d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">It looks like you have a dunfell yocto =
setup which doesn&#39;t support that new recipe syntax. Maybe you need to c=
heck out the dunfell branch of those meta layers to get them to be compatib=
le.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Michael</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 28 Dec 2021, 7:12 pm Kevin Kettinger, &lt;<a href=3D"mailto:kkettinger@gma=
il.com">kkettinger@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">Hello,<br><br>after including the meta-qt5 and meta-boot2qt layer =
from <a href=3D"https://code.qt.io/cgit/yocto" rel=3D"noopener noreferrer" =
target=3D"_blank">https://code.qt.io/cgit/yocto</a>, and adding them to my =
bblayers.conf, bitbake breaks directly while parsing the recipes:<br>------=
---------------------------------------<br>ERROR: ParseError at /home/yocto=
/projects/faseroptik-dunfell/build/../layers/meta-qt5/classes/cmake_qt5.bbc=
lass:4: unparsed line: &#39;DEPENDS:prepend =3D &quot;${QTBASEDEPENDS} &quo=
t;&#39;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:--:--<br><br>=
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>---------------------------------------------<br><br>If i restart bitbake=
, the offending file changes now and then, but just for completion, here is=
 the file:<br>---------------------------------------------<br>inherit cmak=
e<br>inherit qmake5_paths<br><br>DEPENDS:prepend =3D &quot;${QTBASEDEPENDS}=
 &quot;<br>QTBASEDEPENDS =3D &quot;qtbase qtbase-native&quot;<br>QTBASEDEPE=
NDS:class-native =3D &quot;qtbase-native&quot;<br>QTBASEDEPENDS:class-nativ=
esdk =3D &quot;nativesdk-qtbase qtbase-native&quot;<br><br>EXTRA_OECMAKE:pr=
epend =3D &quot; \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_PREFIX=3D${OE_QMAK=
E_PATH_PREFIX} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_HEADERS=3D${OE_QMAKE=
_PATH_HEADERS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_LIBS=3D${OE_QMAKE_PA=
TH_LIBS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_ARCHDATA=3D${OE_QMAKE_PATH=
_ARCHDATA} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_DATA=3D${OE_QMAKE_PATH_D=
ATA} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_BINS=3D${OE_QMAKE_PATH_BINS} \=
<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_LIBEXECS=3D${OE_QMAKE_PATH_LIBEXECS}=
 \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_PLUGINS=3D${OE_QMAKE_PATH_PLUGINS}=
 \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QML=3D${OE_QMAKE_PATH_QML} \<br>=
=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_TRANSLATIONS=3D${OE_QMAKE_PATH_TRANSLATI=
ONS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_DOCS=3D${OE_QMAKE_PATH_DOCS} \=
<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_SETTINGS=3D${OE_QMAKE_PATH_SETTINGS}=
 \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_EXAMPLES=3D${OE_QMAKE_PATH_EXAMPLE=
S} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_TESTS=3D${OE_QMAKE_PATH_TESTS} \=
<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_HOST_PREFIX=3D${OE_QMAKE_PATH_HOST_P=
REFIX} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_HOST_BINS=3D${OE_QMAKE_PATH_=
HOST_BINS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_HOST_DATA=3D${OE_QMAKE_P=
ATH_HOST_DATA} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_HOST_LIBS=3D${OE_QMA=
KE_PATH_HOST_LIBS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_EXTERNAL_HOST_BI=
NS=3D${OE_QMAKE_PATH_EXTERNAL_HOST_BINS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE=
_PATH_QT_HEADERS=3D${OE_QMAKE_PATH_QT_HEADERS} \<br>=C2=A0=C2=A0=C2=A0 -DOE=
_QMAKE_PATH_QT_ARCHDATA=3D${OE_QMAKE_PATH_QT_ARCHDATA} \<br>=C2=A0=C2=A0=C2=
=A0 -DOE_QMAKE_PATH_QT_DATA=3D${OE_QMAKE_PATH_QT_DATA} \<br>=C2=A0=C2=A0=C2=
=A0 -DOE_QMAKE_PATH_QT_BINS=3D${OE_QMAKE_PATH_QT_BINS} \<br>=C2=A0=C2=A0=C2=
=A0 -DOE_QMAKE_PATH_QT_TRANSLATIONS=3D${OE_QMAKE_PATH_QT_TRANSLATIONS} \<br=
>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_DOCS=3D${OE_QMAKE_PATH_QT_DOCS} \<br=
>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_SETTINGS=3D${OE_QMAKE_PATH_QT_SETTIN=
GS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_EXAMPLES=3D${OE_QMAKE_PATH_Q=
T_EXAMPLES} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_TESTS=3D${OE_QMAKE_P=
ATH_QT_TESTS} \<br>&quot;<br>---------------------------------------------<=
br><br>The exact same layer with the exact same commit &amp; files is worki=
ng fine on the original boot2qt environment, but not on my environment.<br>=
<br>My bblayers.conf looks like this:<br>----------------------------------=
-----------<br>LCONF_VERSION =3D &quot;7&quot;<br><br>BBPATH =3D &quot;${TO=
PDIR}&quot;<br>BBFILES ?=3D &quot;&quot;<br><br>BBLAYERS ?=3D &quot; \<br>=
=C2=A0 ${TOPDIR}/../layers/meta-toradex-nxp \<br>=C2=A0 ${TOPDIR}/../layers=
/meta-freescale \<br>=C2=A0 ${TOPDIR}/../layers/meta-freescale-3rdparty \<b=
r>=C2=A0 ${TOPDIR}/../layers/meta-toradex-tegra \<br>=C2=A0 ${TOPDIR}/../la=
yers/meta-toradex-bsp-common \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembed=
ded/meta-oe \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded/meta-filesyst=
ems \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded/meta-gnome \<br>=C2=
=A0 ${TOPDIR}/../layers/meta-openembedded/meta-xfce \<br>=C2=A0 ${TOPDIR}/.=
./layers/meta-openembedded/meta-initramfs \<br>=C2=A0 ${TOPDIR}/../layers/m=
eta-openembedded/meta-networking \<br>=C2=A0 ${TOPDIR}/../layers/meta-opene=
mbedded/meta-multimedia \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded/m=
eta-python \<br>=C2=A0 ${TOPDIR}/../layers/meta-freescale-distro \<br>=C2=
=A0 ${TOPDIR}/../layers/meta-toradex-demos \<br>=C2=A0 ${TOPDIR}/../layers/=
meta-boot2qt/meta-boot2qt \<br>=C2=A0 ${TOPDIR}/../layers/meta-boot2qt/meta=
-boot2qt-distro \<br>=C2=A0 ${TOPDIR}/../layers/meta-qt5 \<br>=C2=A0 ${TOPD=
IR}/../layers/meta-toradex-distro \<br>=C2=A0 ${TOPDIR}/../layers/meta-yoct=
o/meta-poky \<br>=C2=A0 ${TOPDIR}/../layers/openembedded-core/meta \<br>=C2=
=A0 ${TOPDIR}/../layers/meta-mender/meta-mender-core \<br>=C2=A0 ${TOPDIR}/=
../layers/meta-mender-community/meta-mender-toradex-nxp \<br>=C2=A0 ${TOPDI=
R}/../layers/meta-mender/meta-mender-demo \<br>=C2=A0 &quot;<br>-----------=
----------------------------------<br><br>On the working boot2qt environmen=
t poky 3.1.11 is used, i&#39;m using poky 3.1.8.<br><br>Is there anything i=
 can do to track this issue down? bitbake -v doesn&#39;t report more infos.=
<br><br>I appreciate any help here, thank you.<br><br>Best regards,<br>Kevi=
n
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55675): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55675" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/55675</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88000093/3618=
434" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/88000093/3618434</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:michael.ho@ieee.org" target=3D"_blank=
" rel=3D"noreferrer">michael.ho@ieee.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000008db38805d443658d--

