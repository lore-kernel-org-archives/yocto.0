Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E076C77B7C
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 09:11:35 +0000 (UTC)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com [209.85.222.52])
 by mx.groups.io with SMTP id smtpd.web11.54505.1683796294444510879
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 02:11:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=PkrXDrFe;
 spf=pass (domain: gmail.com, ip: 209.85.222.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-77d483c486aso2314875241.3
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 02:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683796293; x=1686388293;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4c+HxyTbb2LIKnlA0s6LTf886e6lio2cJg77hqr6kDo=;
        b=PkrXDrFeoLRJxmBuoLe/vijmYp2jCH2pt5EUEh3il3BVQHNvhDQhjroZm3AVanNfWj
         9Drn7z+HmJ9/BiXxuug5+W062MuEIMKkUtMluNRQxJP5LxwfW8R5m+PoG5Y5aptBMDio
         5yLgVyCjbvsmjfxU3lF4GTj40vdKWdoAkVnlvwRsVwQForVByTJW9sWvGpNYLDHObkqM
         qQ0AlFKccEoTkYUEi//Boc1qfFt+WLvC8kTngwJPFNc7uFFcx/eNoALRm22dGHqU7lFB
         cfD+UxoAOiQG+lNkNjs2eMUSef/45aqIcrCP1Orsg62RKa2aJSqJAW77sU/D+covxVou
         fiJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683796293; x=1686388293;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4c+HxyTbb2LIKnlA0s6LTf886e6lio2cJg77hqr6kDo=;
        b=eJQqNhJqpWnZ3wRwyuGWXy7+g0377Us5OE3x7y/s4f2GgbCNMC0yqwBWCSvG4geii7
         CfdCTtQfGtgjXSCEoC6ywUuLv4a+bag0S2fTyAqzW63612+Hjbcf+lFVw+DU9WrUDuT/
         3zfjHlQ7TQ6MNETvMy5Hdj6EJSmDhcJuS4OXtYMv7DXRScf4fMUM2REl3LA2SlX3C6n6
         AMiWxrW5pmunui4w9BEplE7NSfpWSPWZfZTaCBseMSKoUFI3qZ/rVHeNIjw9OixdSwLr
         /izuBuib36A8ziDntz9FmyiMdtcMV+zyEwUAs1jCq4hCFpRLPCnU2cK83WbqoyeBgKdC
         glsA==
X-Gm-Message-State: AC+VfDypj5yjw8Mqsw6yD2UDImfxIwB325rN+8Mci4ZDmXKSEKfVyOb2
	VJDwzZE3ceRZzTkmrSpkwMWDf9bcybd4Pz4dDR4=
X-Google-Smtp-Source: ACHHUZ4LjU6qC64fZFpX3dIhGpwB18d5fR8XLqrMsDelmGA39D43aLZmt+1BdXNJLUrF9jp9GRItj4CGHY5ZPCFy5wk=
X-Received: by 2002:a67:e98b:0:b0:436:25b2:fba with SMTP id
 b11-20020a67e98b000000b0043625b20fbamr1754399vso.32.1683796293138; Thu, 11
 May 2023 02:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <20230511085319.4147-1-tomasz.dziendzielski@gmail.com>
In-Reply-To: <20230511085319.4147-1-tomasz.dziendzielski@gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 11 May 2023 10:11:15 +0100
Message-ID: <CANPvuRkzNbE+q6Tg4ope=8xGRMkenfe5LErqdZrTnRUBoKAhbA@mail.gmail.com>
Subject: Re: [yocto] [meta-tensorflow][PATCH] bazel-native: Allow build from sstate-cache
To: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ed3e2005fb675fcd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 09:11:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59982

--000000000000ed3e2005fb675fcd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tomasz,

Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com> escreveu no dia
quinta, 11/05/2023 =C3=A0(s) 09:53:

> Using TOPDIR variable breaks the sstate-cache every time build directory
> changes totally breaking build from sstate-cache among different
> workspaces.
>
> Changing that to TMPDIR that is included in BB_HASHEXCLUDE_COMMON.
>
> Another thing is disabling the UNINATIVE_LOADER, causing sstate-cache
> artifacts not working in different workspaces. On
> populate_sysroot_setscene patchelf-uninative --set-interpreter with
> empty argument is ran which does not change the interpreter path and
> then bazel binary ends up with path to the interpreter that might not
> exist, since the bazel was taken from sstate-cache.
>
> Removing the UNINATIVE_LOADER =3D "" so that uninative.bbclass can
> correctly replace the interpreter path and make bazel binary usable.
> One could think that it will reintroduce the original issue behind
> disabling uninative, which was some java file corrupted (see commit
> dd7642b), but I think we don't have this problem anymore and also I
> don't think it was the correct solution - since the loader is anyway
> included in the binary, so it wasn't really disabling it, just disabling
> the yocto functionality around uninative. If the error re-occurs I think
> different solution should be found.
>
> Signed-off-by: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
> ---
>  recipes-devtools/bazel/bazel-native_5.3.2.bb | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/recipes-devtools/bazel/bazel-native_5.3.2.bb
> b/recipes-devtools/bazel/bazel-native_5.3.2.bb
> index da13a53..c9e4343 100644
> --- a/recipes-devtools/bazel/bazel-native_5.3.2.bb
> +++ b/recipes-devtools/bazel/bazel-native_5.3.2.bb
> @@ -38,7 +38,7 @@ EXTRA_BAZEL_ARGS =3D " \
>
>  do_compile[network] =3D "1"
>  do_compile () {
> -    TMPDIR=3D"${TOPDIR}/bazel" \
> +    TMPDIR=3D"${TMPDIR}/../bazel" \
>

Why not use the something inside the bitbake TMPDIR, if it is temporary the
correct place will be in TMPDIR.

so TMPDIR=3D"${TMPDIR}/bazel" looks better IMO.

Jose


>      VERBOSE=3Dyes \
>      EXTRA_BAZEL_ARGS=3D"${EXTRA_BAZEL_ARGS}" \
>      ./compile.sh
> @@ -49,7 +49,4 @@ do_install () {
>      install -m 0755 ${S}/output/bazel ${D}${bindir}
>  }
>
> -# Explicitly disable uninative
> -UNINATIVE_LOADER =3D ""
> -
>  inherit native
> --
> 2.40.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59981):
> https://lists.yoctoproject.org/g/yocto/message/59981
> Mute This Topic: https://lists.yoctoproject.org/mt/98823739/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000ed3e2005fb675fcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Tomasz,</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">Tomasz Dziendzielski &lt;<a href=3D"mailto:=
tomasz.dziendzielski@gmail.com">tomasz.dziendzielski@gmail.com</a>&gt; escr=
eveu no dia quinta, 11/05/2023 =C3=A0(s) 09:53:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Using TOPDIR variable breaks the sstate-ca=
che every time build directory<br>
changes totally breaking build from sstate-cache among different workspaces=
.<br>
<br>
Changing that to TMPDIR that is included in BB_HASHEXCLUDE_COMMON.<br>
<br>
Another thing is disabling the UNINATIVE_LOADER, causing sstate-cache<br>
artifacts not working in different workspaces. On<br>
populate_sysroot_setscene patchelf-uninative --set-interpreter with<br>
empty argument is ran which does not change the interpreter path and<br>
then bazel binary ends up with path to the interpreter that might not<br>
exist, since the bazel was taken from sstate-cache.<br>
<br>
Removing the UNINATIVE_LOADER =3D &quot;&quot; so that uninative.bbclass ca=
n<br>
correctly replace the interpreter path and make bazel binary usable.<br>
One could think that it will reintroduce the original issue behind<br>
disabling uninative, which was some java file corrupted (see commit<br>
dd7642b), but I think we don&#39;t have this problem anymore and also I<br>
don&#39;t think it was the correct solution - since the loader is anyway<br=
>
included in the binary, so it wasn&#39;t really disabling it, just disablin=
g<br>
the yocto functionality around uninative. If the error re-occurs I think<br=
>
different solution should be found.<br>
<br>
Signed-off-by: Tomasz Dziendzielski &lt;<a href=3D"mailto:tomasz.dziendziel=
ski@gmail.com" target=3D"_blank">tomasz.dziendzielski@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/bazel/<a href=3D"http://bazel-native_5.3.2.bb" rel=
=3D"noreferrer" target=3D"_blank">bazel-native_5.3.2.bb</a> | 5 +----<br>
=C2=A01 file changed, 1 insertion(+), 4 deletions(-)<br>
<br>
diff --git a/recipes-devtools/bazel/<a href=3D"http://bazel-native_5.3.2.bb=
" rel=3D"noreferrer" target=3D"_blank">bazel-native_5.3.2.bb</a> b/recipes-=
devtools/bazel/<a href=3D"http://bazel-native_5.3.2.bb" rel=3D"noreferrer" =
target=3D"_blank">bazel-native_5.3.2.bb</a><br>
index da13a53..c9e4343 100644<br>
--- a/recipes-devtools/bazel/<a href=3D"http://bazel-native_5.3.2.bb" rel=
=3D"noreferrer" target=3D"_blank">bazel-native_5.3.2.bb</a><br>
+++ b/recipes-devtools/bazel/<a href=3D"http://bazel-native_5.3.2.bb" rel=
=3D"noreferrer" target=3D"_blank">bazel-native_5.3.2.bb</a><br>
@@ -38,7 +38,7 @@ EXTRA_BAZEL_ARGS =3D &quot; \<br>
<br>
=C2=A0do_compile[network] =3D &quot;1&quot;<br>
=C2=A0do_compile () {<br>
-=C2=A0 =C2=A0 TMPDIR=3D&quot;${TOPDIR}/bazel&quot; \<br>
+=C2=A0 =C2=A0 TMPDIR=3D&quot;${TMPDIR}/../bazel&quot; \<br></blockquote><d=
iv><br></div><div>Why not use the something inside the bitbake TMPDIR, if i=
t is temporary the correct place will be in TMPDIR.</div><div><br>so TMPDIR=
=3D&quot;${TMPDIR}/bazel&quot; looks better IMO.<br><br></div><div>Jose</di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
=C2=A0 =C2=A0 =C2=A0VERBOSE=3Dyes \<br>
=C2=A0 =C2=A0 =C2=A0EXTRA_BAZEL_ARGS=3D&quot;${EXTRA_BAZEL_ARGS}&quot; \<br=
>
=C2=A0 =C2=A0 =C2=A0./compile.sh<br>
@@ -49,7 +49,4 @@ do_install () {<br>
=C2=A0 =C2=A0 =C2=A0install -m 0755 ${S}/output/bazel ${D}${bindir}<br>
=C2=A0}<br>
<br>
-# Explicitly disable uninative<br>
-UNINATIVE_LOADER =3D &quot;&quot;<br>
-<br>
=C2=A0inherit native<br>
-- <br>
2.40.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59981): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59981" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59981</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98823739/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98823739/5052612</a><br>
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
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000ed3e2005fb675fcd--

