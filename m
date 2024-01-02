Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F05C46CD2
	for <webhook@archiver.kernel.org>; Tue,  2 Jan 2024 18:10:19 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.35465.1704219015973811335
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jan 2024 10:10:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GGNAuVN/;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3374117c79eso1561208f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 10:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704219014; x=1704823814; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KkrDMSohQzjZFD3d4gHdqGgdzpcWkmI09vl6UsRmQ3M=;
        b=GGNAuVN/llCGJgKl1OYBu9qldc0JekbbPRZ3ySdAjctL4ab7aKy+f/zIk6dMRfvKmw
         9KMXdn5xg89xO61A3nUAzIiRWArd3d/RoEzGowVyL2EZfw/+ueef62JiFsWL4p7hXeyU
         QB3xYXq2uURve25flLK3ggyZUxh+oP8Cnd6psTrDxEYSanFVMsm37eB/7xXme9vbx3ez
         kDf6olM/trB/8XEi0sD31MqZtiTzguZ0jKo4Fx3iKtAlljTg8/KSQOttaEROo2eXjx6p
         uhW6UkDJQSVkNrpyJ7juM92U3iAxeNZwvJR1tFJux5rHFWFgLAys2XulAVejdTgZjJ8m
         SjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704219014; x=1704823814;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KkrDMSohQzjZFD3d4gHdqGgdzpcWkmI09vl6UsRmQ3M=;
        b=qREHACs0BFEBKpB6xN/GzJIa7GTSIIS1XEFnT4oiR7DCA3NOxt2RpfgsASGyhGp1k0
         jhqsy1UR5Gw0I8HH7yfAKIlcHjXTyDyD8q9JtNbsVbZgTsOWaBchL7+D4/f53xYRXh22
         9UL48T9Xxz81ea5tXj0qyEyMDEE+YOHULanQHzk8acA5ozMcddWEaYo6V1H8HPJoPTdD
         /n6a4FgQxfOumctkOVpsTQ3sssmkggliuEca++cqMHhj3ViXomCagh+LYNmVYB35MCIB
         omaJe5lLpi6YWhFawXjcxjLY3WC5AFoj52JPj0Ccv6N66SkSCsSHbkbCViKGiGRHYfJi
         uRMA==
X-Gm-Message-State: AOJu0Ywo0C6VOkjlmttOtI973pwI2wf/8nLbikpZpLOyGAhtJCg6hl1k
	/Yk5mMLyLBFfiHDC2p0JoZdsiaSvaGrMGlKCrmX5iGXT3aA=
X-Google-Smtp-Source: AGHT+IF9oceRJ17lUyDWyalj00JCdewvUYtZQmxwJGjQia7sRbUX3vOt2qPpPl4SXkG9lMcFNbeujZXygA4MX6T2sgs=
X-Received: by 2002:adf:f0c4:0:b0:336:7a51:5fac with SMTP id
 x4-20020adff0c4000000b003367a515facmr10391681wro.71.1704219014152; Tue, 02
 Jan 2024 10:10:14 -0800 (PST)
MIME-Version: 1.0
References: <20240102180706.41264-1-yoann.congal@smile.fr>
In-Reply-To: <20240102180706.41264-1-yoann.congal@smile.fr>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 2 Jan 2024 19:10:00 +0100
Message-ID: <CA+chaQdbD+zjYtjh9sRmC1ukA93o9wkKN2bTjd5eAfisN8fe-w@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][dunfell][PATCH] config.json:
 Make meta-oe source mirror config wider coverage
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000f54550060dfa6820"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jan 2024 18:10:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62067

--000000000000f54550060dfa6820
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Backport: new->old override syntax

FWIW: dunfell is forward compatible with new syntax, so this shouldn't be
needed (other than the consistency with other metadata).

On Tue, Jan 2, 2024 at 7:07=E2=80=AFPM Yoann Congal <yoann.congal@smile.fr>=
 wrote:

> Some recipes depend on DISTRO_FEATURES, commercial licensing or compiler
> config like fortran. Set these things so that we get wider soruce mirror
> coverage and fewer warnings.
>
> 'commercial' license usage is ok here since we're not building and then
> shipping any binaries or using it, only mirroring the source code.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit 93d47af8abbc6558f9a098a0c7fa6c0e901424a9)
> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
> Backport: new->old override syntax
> ---
> This should fix the warnings of the AB meta-oe-mirror/dunfell builds
> ---
>  config.json | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/config.json b/config.json
> index 3520e9a..1a92c80 100644
> --- a/config.json
> +++ b/config.json
> @@ -1100,7 +1100,11 @@
>              ],
>              "extravars" : [
>                  "PNBLACKLIST[dvb-apps] =3D '1'",
> -                "PNBLACKLIST[tvheadend] =3D '1'"
> +                "PNBLACKLIST[tvheadend] =3D '1'",
> +                "LICENSE_FLAGS_ACCEPTED =3D 'commercial'",
> +                "DISTRO_FEATURES_append =3D ' pam systemd usrmerge'",
> +                "FORTRAN_forcevariable =3D ',fortran'",
> +                "RUNTIMETARGET_append_pn-gcc-runtime =3D ' libquadmath'"
>              ],
>              "step1" : {
>                  "shortname" : "Sources pre-fetching",
> --
> 2.39.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62066):
> https://lists.yoctoproject.org/g/yocto/message/62066
> Mute This Topic: https://lists.yoctoproject.org/mt/103486578/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000f54550060dfa6820
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; Backport: new-&gt;old override syntax<div><br></div><=
div>FWIW: dunfell is forward compatible with new syntax, so this shouldn&#3=
9;t be needed (other than the consistency with other metadata).</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Jan 2, 2024 at 7:07=E2=80=AFPM Yoann Congal &lt;<a href=3D"mailto:yoann.c=
ongal@smile.fr">yoann.congal@smile.fr</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Some recipes depend on DISTRO_FEATURES=
, commercial licensing or compiler<br>
config like fortran. Set these things so that we get wider soruce mirror<br=
>
coverage and fewer warnings.<br>
<br>
&#39;commercial&#39; license usage is ok here since we&#39;re not building =
and then<br>
shipping any binaries or using it, only mirroring the source code.<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<b=
r>
(cherry picked from commit 93d47af8abbc6558f9a098a0c7fa6c0e901424a9)<br>
Signed-off-by: Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" ta=
rget=3D"_blank">yoann.congal@smile.fr</a>&gt;<br>
Backport: new-&gt;old override syntax<br>
---<br>
This should fix the warnings of the AB meta-oe-mirror/dunfell builds<br>
---<br>
=C2=A0config.json | 6 +++++-<br>
=C2=A01 file changed, 5 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/config.json b/config.json<br>
index 3520e9a..1a92c80 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -1100,7 +1100,11 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;extravars&quot; : [ <=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;PNBLACK=
LIST[dvb-apps] =3D &#39;1&#39;&quot;,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PNBLACKLIST[=
tvheadend] =3D &#39;1&#39;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PNBLACKLIST[=
tvheadend] =3D &#39;1&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;LICENSE_FLAG=
S_ACCEPTED =3D &#39;commercial&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;DISTRO_FEATU=
RES_append =3D &#39; pam systemd usrmerge&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;FORTRAN_forc=
evariable =3D &#39;,fortran&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;RUNTIMETARGE=
T_append_pn-gcc-runtime =3D &#39; libquadmath&#39;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step1&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;shortna=
me&quot; : &quot;Sources pre-fetching&quot;,<br>
-- <br>
2.39.2<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62066): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62066" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62066</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103486578/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103486578/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin=
.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000f54550060dfa6820--

