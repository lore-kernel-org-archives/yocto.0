Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46CB3C433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Dec 2021 18:23:58 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.41225.1640715837026988887
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 10:23:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IAvWYQKU;
 spf=pass (domain: gmail.com, ip: 209.85.216.54,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id mj19so16543474pjb.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Dec 2021 10:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OCnPNTV8+vNmACqCIMTyPAMFrR4oBuSI2Gs4ALlGaw8=;
        b=IAvWYQKUPAsVZn/UCxYgeQ/a3lF6LXXXcNpeiYFp28SgEamTdDAPHtyHl0XtZ9Ds/K
         R6Tk1SCbUHjYXRz88HpzWzvKPR7l23uBdUS+vI9kw32azmwCb3lyp/KTVV+l6lkh+bs+
         Z0Lx0LuuiUWweHZv1dndXqx340G4Oo0s+7seTkKVnli1nkD1CBtwkVqLkMVxZamYM/mH
         gHfMbo0g3ipY0b8R0WrL23/cCACfIhm/Jda6JmsdMWSS6fKdQPXTPXj1zbuTqr3YhzR5
         dibd87Hx9evZz8iQStwGgzrcIDLqRDCTE6wo/hk2NtZ5/sdgL7jTgI/vaAek9ClWdD7i
         KPXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OCnPNTV8+vNmACqCIMTyPAMFrR4oBuSI2Gs4ALlGaw8=;
        b=59aMMgece2DbDJHwgJm3o+SfAUTiQoEf5EhRlMW8QsnNtB7Kkf4fF98IeTwonfA9zL
         dotl96s0J/TZ2MJm78uwzZg2h7CqKgRnmxKMw19cxVzOA9rkSRn97+nKVFzcdS0iWhqC
         DTQjqR1YT+rVNqXRYXYEj2aV7wwSj+G9OEwY9dXdBzdki2Crth3rDb4HZwQu7dDacezz
         N/B8gMc5mt7rGI7l3Nn+UVdvBLVG36HtaufDlXRx5rdLwBk1pkR+m4VKf1HkqS5KV65D
         uPy8T9PoFjQehDbVJYJNPI1GWYRjbq7fjWjAVoCwNDx6lupnvgdrEyWkw4DrcUQzuS3r
         yVfg==
X-Gm-Message-State: AOAM532212I6CJK/XjYdGGOyCNGG5xf3fIlz3cKyZzDK2eamCfCs4nA1
	dT8EMNATHBlNgp9jr/bjs6LIOnb2gDQo+XnrXRk=
X-Google-Smtp-Source: 
 ABdhPJypZlLkYhU/vSdKM/o3AzdDkJCmUScgZifX5kwgmrjaAh8rpttwBS9bIaJJAfFP3sCLZoOZXwWACc8L822PZJc=
X-Received: by 2002:a17:903:183:b0:149:2b6:65ff with SMTP id
 z3-20020a170903018300b0014902b665ffmr22737076plg.128.1640715836600; Tue, 28
 Dec 2021 10:23:56 -0800 (PST)
MIME-Version: 1.0
References: <UgWJ.1640715121424616879.MnGk@lists.yoctoproject.org>
In-Reply-To: <UgWJ.1640715121424616879.MnGk@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 28 Dec 2021 19:23:45 +0100
Message-ID: 
 <CA+chaQcFwwDzRVuCHJfr7NHngwsZDpKJ42e1BpQ=NYz7t0vjnQ@mail.gmail.com>
Subject: Re: [yocto] unparsed line #yocto
To: Kevin Kettinger <kkettinger@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009e346b05d438ece5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Dec 2021 18:23:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55676

--0000000000009e346b05d438ece5
Content-Type: text/plain; charset="UTF-8"

Upgrade bitbake to support new overrides syntax, see
https://github.com/ros/meta-ros/pull/902

On Tue, Dec 28, 2021 at 7:12 PM Kevin Kettinger <kkettinger@gmail.com>
wrote:

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
> Mute This Topic: https://lists.yoctoproject.org/mt/88000093/3617156
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000009e346b05d438ece5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Upgrade bitbake to support new overrides syntax, see=C2=A0=
<a href=3D"https://github.com/ros/meta-ros/pull/902">https://github.com/ros=
/meta-ros/pull/902</a></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Dec 28, 2021 at 7:12 PM Kevin Kettinger &lt;<=
a href=3D"mailto:kkettinger@gmail.com">kkettinger@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br><br>af=
ter including the meta-qt5 and meta-boot2qt layer from <a href=3D"https://c=
ode.qt.io/cgit/yocto" rel=3D"noopener" target=3D"_blank">https://code.qt.io=
/cgit/yocto</a>, and adding them to my bblayers.conf, bitbake breaks direct=
ly while parsing the recipes:<br>------------------------------------------=
---<br>ERROR: ParseError at /home/yocto/projects/faseroptik-dunfell/build/.=
./layers/meta-qt5/classes/cmake_qt5.bbclass:4: unparsed line: &#39;DEPENDS:=
prepend =3D &quot;${QTBASEDEPENDS} &quot;&#39;=C2=A0=C2=A0=C2=A0=C2=A0=C2=
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
=A0=C2=A0 | ETA:=C2=A0 --:--:--<br><br>Summary: There was 1 ERROR message s=
hown, returning a non-zero exit code.<br>----------------------------------=
-----------<br><br>If i restart bitbake, the offending file changes now and=
 then, but just for completion, here is the file:<br>----------------------=
-----------------------<br>inherit cmake<br>inherit qmake5_paths<br><br>DEP=
ENDS:prepend =3D &quot;${QTBASEDEPENDS} &quot;<br>QTBASEDEPENDS =3D &quot;q=
tbase qtbase-native&quot;<br>QTBASEDEPENDS:class-native =3D &quot;qtbase-na=
tive&quot;<br>QTBASEDEPENDS:class-nativesdk =3D &quot;nativesdk-qtbase qtba=
se-native&quot;<br><br>EXTRA_OECMAKE:prepend =3D &quot; \<br>=C2=A0=C2=A0=
=C2=A0 -DOE_QMAKE_PATH_PREFIX=3D${OE_QMAKE_PATH_PREFIX} \<br>=C2=A0=C2=A0=
=C2=A0 -DOE_QMAKE_PATH_HEADERS=3D${OE_QMAKE_PATH_HEADERS} \<br>=C2=A0=C2=A0=
=C2=A0 -DOE_QMAKE_PATH_LIBS=3D${OE_QMAKE_PATH_LIBS} \<br>=C2=A0=C2=A0=C2=A0=
 -DOE_QMAKE_PATH_ARCHDATA=3D${OE_QMAKE_PATH_ARCHDATA} \<br>=C2=A0=C2=A0=C2=
=A0 -DOE_QMAKE_PATH_DATA=3D${OE_QMAKE_PATH_DATA} \<br>=C2=A0=C2=A0=C2=A0 -D=
OE_QMAKE_PATH_BINS=3D${OE_QMAKE_PATH_BINS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMA=
KE_PATH_LIBEXECS=3D${OE_QMAKE_PATH_LIBEXECS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_Q=
MAKE_PATH_PLUGINS=3D${OE_QMAKE_PATH_PLUGINS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_Q=
MAKE_PATH_QML=3D${OE_QMAKE_PATH_QML} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PAT=
H_TRANSLATIONS=3D${OE_QMAKE_PATH_TRANSLATIONS} \<br>=C2=A0=C2=A0=C2=A0 -DOE=
_QMAKE_PATH_DOCS=3D${OE_QMAKE_PATH_DOCS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE=
_PATH_SETTINGS=3D${OE_QMAKE_PATH_SETTINGS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMA=
KE_PATH_EXAMPLES=3D${OE_QMAKE_PATH_EXAMPLES} \<br>=C2=A0=C2=A0=C2=A0 -DOE_Q=
MAKE_PATH_TESTS=3D${OE_QMAKE_PATH_TESTS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE=
_PATH_HOST_PREFIX=3D${OE_QMAKE_PATH_HOST_PREFIX} \<br>=C2=A0=C2=A0=C2=A0 -D=
OE_QMAKE_PATH_HOST_BINS=3D${OE_QMAKE_PATH_HOST_BINS} \<br>=C2=A0=C2=A0=C2=
=A0 -DOE_QMAKE_PATH_HOST_DATA=3D${OE_QMAKE_PATH_HOST_DATA} \<br>=C2=A0=C2=
=A0=C2=A0 -DOE_QMAKE_PATH_HOST_LIBS=3D${OE_QMAKE_PATH_HOST_LIBS} \<br>=C2=
=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_EXTERNAL_HOST_BINS=3D${OE_QMAKE_PATH_EXTERN=
AL_HOST_BINS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_HEADERS=3D${OE_QMA=
KE_PATH_QT_HEADERS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_ARCHDATA=3D$=
{OE_QMAKE_PATH_QT_ARCHDATA} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_DATA=
=3D${OE_QMAKE_PATH_QT_DATA} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_BINS=
=3D${OE_QMAKE_PATH_QT_BINS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QMAKE_PATH_QT_TRAN=
SLATIONS=3D${OE_QMAKE_PATH_QT_TRANSLATIONS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QM=
AKE_PATH_QT_DOCS=3D${OE_QMAKE_PATH_QT_DOCS} \<br>=C2=A0=C2=A0=C2=A0 -DOE_QM=
AKE_PATH_QT_SETTINGS=3D${OE_QMAKE_PATH_QT_SETTINGS} \<br>=C2=A0=C2=A0=C2=A0=
 -DOE_QMAKE_PATH_QT_EXAMPLES=3D${OE_QMAKE_PATH_QT_EXAMPLES} \<br>=C2=A0=C2=
=A0=C2=A0 -DOE_QMAKE_PATH_QT_TESTS=3D${OE_QMAKE_PATH_QT_TESTS} \<br>&quot;<=
br>---------------------------------------------<br><br>The exact same laye=
r with the exact same commit &amp; files is working fine on the original bo=
ot2qt environment, but not on my environment.<br><br>My bblayers.conf looks=
 like this:<br>---------------------------------------------<br>LCONF_VERSI=
ON =3D &quot;7&quot;<br><br>BBPATH =3D &quot;${TOPDIR}&quot;<br>BBFILES ?=
=3D &quot;&quot;<br><br>BBLAYERS ?=3D &quot; \<br>=C2=A0 ${TOPDIR}/../layer=
s/meta-toradex-nxp \<br>=C2=A0 ${TOPDIR}/../layers/meta-freescale \<br>=C2=
=A0 ${TOPDIR}/../layers/meta-freescale-3rdparty \<br>=C2=A0 ${TOPDIR}/../la=
yers/meta-toradex-tegra \<br>=C2=A0 ${TOPDIR}/../layers/meta-toradex-bsp-co=
mmon \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded/meta-oe \<br>=C2=A0 =
${TOPDIR}/../layers/meta-openembedded/meta-filesystems \<br>=C2=A0 ${TOPDIR=
}/../layers/meta-openembedded/meta-gnome \<br>=C2=A0 ${TOPDIR}/../layers/me=
ta-openembedded/meta-xfce \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded=
/meta-initramfs \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded/meta-netw=
orking \<br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded/meta-multimedia \<=
br>=C2=A0 ${TOPDIR}/../layers/meta-openembedded/meta-python \<br>=C2=A0 ${T=
OPDIR}/../layers/meta-freescale-distro \<br>=C2=A0 ${TOPDIR}/../layers/meta=
-toradex-demos \<br>=C2=A0 ${TOPDIR}/../layers/meta-boot2qt/meta-boot2qt \<=
br>=C2=A0 ${TOPDIR}/../layers/meta-boot2qt/meta-boot2qt-distro \<br>=C2=A0 =
${TOPDIR}/../layers/meta-qt5 \<br>=C2=A0 ${TOPDIR}/../layers/meta-toradex-d=
istro \<br>=C2=A0 ${TOPDIR}/../layers/meta-yocto/meta-poky \<br>=C2=A0 ${TO=
PDIR}/../layers/openembedded-core/meta \<br>=C2=A0 ${TOPDIR}/../layers/meta=
-mender/meta-mender-core \<br>=C2=A0 ${TOPDIR}/../layers/meta-mender-commun=
ity/meta-mender-toradex-nxp \<br>=C2=A0 ${TOPDIR}/../layers/meta-mender/met=
a-mender-demo \<br>=C2=A0 &quot;<br>---------------------------------------=
------<br><br>On the working boot2qt environment poky 3.1.11 is used, i&#39=
;m using poky 3.1.8.<br><br>Is there anything i can do to track this issue =
down? bitbake -v doesn&#39;t report more infos.<br><br>I appreciate any hel=
p here, thank you.<br><br>Best regards,<br>Kevin
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55675): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55675" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55675</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88000093/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88000093/3617156</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000009e346b05d438ece5--

