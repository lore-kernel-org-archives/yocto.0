Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 377CCCDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 23:23:06 +0000 (UTC)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web10.15697.1697671376337534297
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 16:22:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FExvK0vL;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-7b5fafed01aso2670029241.0
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 16:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697671375; x=1698276175; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dWoiUlsUG3vn8XV3mXdZ9WMG8pj0cW3f3gYBDS02Bng=;
        b=FExvK0vLMzXtFfk4UvDHWogN+TtvDjYCYpD6eFv7Ez5+szB38veXV3O5jQLIOtDD/i
         7S4qt8j8wCCbYFViB7iB/xPGK46tgtgDYphvwMQ+TiPYyVmebKfoyuXlLww1uFTZHt+g
         lc2GtF+K60zlWkCIDrCtYUk1QBkNOJVx213vJv2/+c4BTH7gHoGYrpsMb3132/AVUqcQ
         mENI7M2XFcgwDJFgZirwx0QCjwny9lVI8eGQwtI8CW2Fq5Ml3v6AtoIWjhQw9PSZK9kX
         tV+BNhNGUZUgAznBy0oL3LEscT9p1iVkJ2y5F2OKoSes3jfweOhu2uGd016wXGNOQ5v1
         rYlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697671375; x=1698276175;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dWoiUlsUG3vn8XV3mXdZ9WMG8pj0cW3f3gYBDS02Bng=;
        b=PEzxA7jaUf3qyxEL1PpvRsikgBsdhHhPyjQRc7AssCJOScqgrCYP5YRsd/njUmCvGw
         galA0jO3XgioGN9GFrpVdK0SW9nUHvKf+dEcDdg/HfSTnIcIYb1j2wn2aQuHgCqnCDIo
         fqZ/pVtI4VYGOrnCxcg6drCQBJvA3B0SC0lhl/g7IIil38gqXrr21UugsYigd1QQd5pu
         rcznbqqd7W6YJlCelgekqnGjDhwymgT0w61pbNuOFs2FxGJjQseCiJCe27PK5uEx2d9D
         0Wg/4fzv3wo4d/NX0gG/IWGciMfpA+RyekAHox9Y6HflskkK8M+hRajAM+GDLJqFvm1f
         Ljdg==
X-Gm-Message-State: AOJu0YygYLvY+lIVont9tTDhAGAwv7cz2yGmlnD3nfLXmTplapJx2l1n
	Xw/Op2r6RtK6OAf/tI1/0OZE6s5u1eODWF2VGbW4ASjtoq5Npg==
X-Google-Smtp-Source: AGHT+IHHq3S+Ar7LAhyr9TFlLCWcfdNOVRGhfkKT2m29+ZdkAtN91VSMyBn4of+XEjI9aJD042dL2AokO5RUwyvrHbA=
X-Received: by 2002:a67:c39d:0:b0:452:8717:1fa3 with SMTP id
 s29-20020a67c39d000000b0045287171fa3mr563396vsj.3.1697671375187; Wed, 18 Oct
 2023 16:22:55 -0700 (PDT)
MIME-Version: 1.0
References: <20231018222818.550730-1-yoann.congal@smile.fr>
In-Reply-To: <20231018222818.550730-1-yoann.congal@smile.fr>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 19 Oct 2023 00:22:44 +0100
Message-ID: <CANPvuRnnVYKoXohbV7S19cFhor5Okowm7HDw-NHaWurk7=mY3Q@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: add a
 workaround for the "autobuilderlog.json" error
To: Yoann Congal <yoann.congal@smile.fr>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004376cd060805eb06"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 23:23:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61406

--0000000000004376cd060805eb06
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yoann,

I have found the same for BBLAYERS that was fixed [1] expanding any
relative path that could exist.
Maybe it would be better to also expand BB_LOGCONFIG when
the newbuilddir argument is present.

[1]
https://git.yoctoproject.org/poky/commit/id=3Df5f465ff5777eb99941db3dda84e6=
5d4699d97f7

Jose

Yoann Congal <yoann.congal@smile.fr> escreveu no dia quarta, 18/10/2023
=C3=A0(s) 23:28:

> For the reproducible-meta-oe builder, workaround the bug #15241 [1], by
> passing BB_LOGCONFIG through "readlink -f" to avoid relative reference
> to the main build dir.
>
> Also, switch from BBPATH to BUILDDIR to reference the main build dir.
>
> [1]: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15241
>
> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  config.json | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/config.json b/config.json
> index c01a453..84da67b 100644
> --- a/config.json
> +++ b/config.json
> @@ -303,7 +303,7 @@
>              ],
>              "step1" : {
>                  "shortname" : "Repro meta-oe/meta-filesystems",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-filesystems/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-filesystems =
-r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-filesystems/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-filesystems -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-python",
> @@ -323,7 +323,7 @@
>              },
>              "step2" : {
>                  "shortname" : "Repro meta-oe/meta-gnome",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-gnome/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-gnome -r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-gnome/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-gnome -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-python",
> @@ -343,14 +343,14 @@
>              },
>              "step3" : {
>                  "shortname" : "Repro meta-oe/meta-initramfs",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-initramfs/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-initramfs -r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-initramfs/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-initramfs -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-initramfs"
>                  ]
>              },
>              "step4" : {
>                  "shortname" : "Repro meta-oe/meta-multimedia",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-multimedia/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-multimedia -=
r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-multimedia/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-multimedia -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-python",
> @@ -367,7 +367,7 @@
>              },
>              "step5" : {
>                  "shortname" : "Repro meta-oe/meta-networking",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-networking/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-networking -=
r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-networking/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-networking -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-networking"
> @@ -382,7 +382,7 @@
>              },
>              "step6" : {
>                  "shortname" : "Repro meta-oe/meta-oe",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-oe/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-oe -r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-oe/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-oe -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe"
>                  ],
> @@ -393,7 +393,7 @@
>              },
>              "step7" : {
>                  "shortname" : "Repro meta-oe/meta-perl",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-perl/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-perl -r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-perl/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-perl -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-perl"
> @@ -408,7 +408,7 @@
>              },
>              "step8" : {
>                  "shortname" : "Repro meta-oe/meta-python",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-python/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-python -r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-python/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-python -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-python"
> @@ -419,7 +419,7 @@
>              },
>              "step9" : {
>                  "shortname" : "Repro meta-oe/meta-webserver",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-webserver/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-webserver -r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-webserver/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-webserver -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-webserver"
> @@ -433,7 +433,7 @@
>              },
>              "step10" : {
>                  "shortname" : "Repro meta-oe/meta-xfce",
> -                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-xfce/
> DISPLAY=3D:1 oe-selftest --newbuilddir $BBPATH/build-st-meta-xfce -r
> reproducible"],
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc;
> OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_SHAREDDIR}/pub/repro-fail-openembedd=
ed/meta-xfce/
> DISPLAY=3D:1 BB_LOGCONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest
> --newbuilddir $BUILDDIR/build-st-meta-xfce -r reproducible"],
>                  "ADDLAYER" : [
>                      "${BUILDDIR}/../meta-openembedded/meta-oe",
>                      "${BUILDDIR}/../meta-openembedded/meta-python",
> --
> 2.30.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61405):
> https://lists.yoctoproject.org/g/yocto/message/61405
> Mute This Topic: https://lists.yoctoproject.org/mt/102049703/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000004376cd060805eb06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Yoann,<br><br>I have found the same for BBLAYERS that w=
as fixed [1] expanding any relative path that could exist.<br>Maybe it woul=
d be better to also expand BB_LOGCONFIG when the=C2=A0newbuilddir=C2=A0argu=
ment is present.<div><br>[1] <a href=3D"https://git.yoctoproject.org/poky/c=
ommit/id=3Df5f465ff5777eb99941db3dda84e65d4699d97f7">https://git.yoctoproje=
ct.org/poky/commit/id=3Df5f465ff5777eb99941db3dda84e65d4699d97f7</a><br><br=
>Jose</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr">yoann.=
congal@smile.fr</a>&gt; escreveu no dia quarta, 18/10/2023 =C3=A0(s) 23:28:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">For the reprodu=
cible-meta-oe builder, workaround the bug #15241 [1], by<br>
passing BB_LOGCONFIG through &quot;readlink -f&quot; to avoid relative refe=
rence<br>
to the main build dir.<br>
<br>
Also, switch from BBPATH to BUILDDIR to reference the main build dir.<br>
<br>
[1]: <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15241" =
rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D15241</a><br>
<br>
Signed-off-by: Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" ta=
rget=3D"_blank">yoann.congal@smile.fr</a>&gt;<br>
---<br>
=C2=A0config.json | 20 ++++++++++----------<br>
=C2=A01 file changed, 10 insertions(+), 10 deletions(-)<br>
<br>
diff --git a/config.json b/config.json<br>
index c01a453..84da67b 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -303,7 +303,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step1&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-filesystems&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-filesystems/ DISPLAY=3D:1 oe-sel=
ftest --newbuilddir $BBPATH/build-st-meta-filesystems -r reproducible&quot;=
],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-filesystems/ DISPLAY=3D:1 BB_LOG=
CONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/b=
uild-st-meta-filesystems -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-python&quot;,<br>
@@ -323,7 +323,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step2&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-gnome&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DISPLAY=3D:1 oe-selftest =
--newbuilddir $BBPATH/build-st-meta-gnome -r reproducible&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-gnome/ DISPLAY=3D:1 BB_LOGCONFIG=
=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-s=
t-meta-gnome -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-python&quot;,<br>
@@ -343,14 +343,14 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step3&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-initramfs&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=3D:1 oe-selft=
est --newbuilddir $BBPATH/build-st-meta-initramfs -r reproducible&quot;],<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=3D:1 BB_LOGCO=
NFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/bui=
ld-st-meta-initramfs -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-initramfs&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step4&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-multimedia&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-multimedia/ DISPLAY=3D:1 oe-self=
test --newbuilddir $BBPATH/build-st-meta-multimedia -r reproducible&quot;],=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-multimedia/ DISPLAY=3D:1 BB_LOGC=
ONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/bu=
ild-st-meta-multimedia -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-python&quot;,<br>
@@ -367,7 +367,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step5&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-networking&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=3D:1 oe-self=
test --newbuilddir $BBPATH/build-st-meta-networking -r reproducible&quot;],=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-networking/ DISPLAY=3D:1 BB_LOGC=
ONFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/bu=
ild-st-meta-networking -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-networking&quot;<br>
@@ -382,7 +382,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step6&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-oe&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLAY=3D:1 oe-selftest --n=
ewbuilddir $BBPATH/build-st-meta-oe -r reproducible&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-oe/ DISPLAY=3D:1 BB_LOGCONFIG=3D=
$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-m=
eta-oe -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
@@ -393,7 +393,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step7&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-perl&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISPLAY=3D:1 oe-selftest -=
-newbuilddir $BBPATH/build-st-meta-perl -r reproducible&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-perl/ DISPLAY=3D:1 BB_LOGCONFIG=
=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-s=
t-meta-perl -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-perl&quot;<br>
@@ -408,7 +408,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step8&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-python&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-python/ DISPLAY=3D:1 oe-selftest=
 --newbuilddir $BBPATH/build-st-meta-python -r reproducible&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-python/ DISPLAY=3D:1 BB_LOGCONFI=
G=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-=
st-meta-python -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-python&quot;<br>
@@ -419,7 +419,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step9&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-webserver&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-webserver/ DISPLAY=3D:1 oe-selft=
est --newbuilddir $BBPATH/build-st-meta-webserver -r reproducible&quot;],<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-webserver/ DISPLAY=3D:1 BB_LOGCO=
NFIG=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/bui=
ld-st-meta-webserver -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-webserver&quot;<br>
@@ -433,7 +433,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0},<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step10&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Repro meta-oe/meta-xfce&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISPLAY=3D:1 oe-selftest -=
-newbuilddir $BBPATH/build-st-meta-xfce -r reproducible&quot;],<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&qu=
ot; : [&quot;${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=3D${BASE_S=
HAREDDIR}/pub/repro-fail-openembedded/meta-xfce/ DISPLAY=3D:1 BB_LOGCONFIG=
=3D$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-s=
t-meta-xfce -r reproducible&quot;],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;ADDLAYE=
R&quot; : [<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-oe&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0&quot;${BUILDDIR}/../meta-openembedded/meta-python&quot;,<br>
-- <br>
2.30.2<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61405): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61405" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61405</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102049703/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102049703/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--0000000000004376cd060805eb06--

