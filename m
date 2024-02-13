Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D0FC4829A
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 12:24:24 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.10426.1707827061150734926
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Feb 2024 04:24:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=google header.b=l7Fngc3l;
 spf=pass (domain: gherzan.ro, ip: 209.85.216.54, mailfrom: andrei@gherzan.ro)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-298ae92a7bbso313678a91.1
        for <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 04:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.com; s=google; t=1707827060; x=1708431860; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uccCkl8ejpWlZILBvprWsaQWl0MQHbHycWMd/rcG5eM=;
        b=l7Fngc3lb/AtIyxQbITVH8uTuORnOKyyCaRia+ezg8Wci2jR20jB90m9NcBfGNP7CV
         BfoVHmCV2bHVyD5fKu4g6KgHKInsoikMR9vmJYcu5jCeox4cfi0Ti2owc4vE0PJ0DStg
         hIiqju9YjyqDqzaPxPaWx/lxJJWsqE7P+teZa/Qldhk/CLDC+8BCssLTGs4/h8sq9Bhf
         sW5TXU6LkS0c9rRmkmtLimJNNw7eXsGjb0A6QbtjLJvzOIOpBHEFhDr5bQIPL7nY0oz+
         n6hxq00mUk+HRll0BgBIH2zC+4VL0wVIcwN8aPLpnwiHdBSafQjm2g0202N78ewNipr3
         chOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707827060; x=1708431860;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uccCkl8ejpWlZILBvprWsaQWl0MQHbHycWMd/rcG5eM=;
        b=hdny9UxU+J1tdZUZS0r5zRQElwQ2KK6Yy2QxnHa5ljBRUTtZzNF4tzTiq0+EGxbQta
         49vFVAAFRNGdC4YTvOlMY2ijZfIfsgPT451wGqOTlQSbn+eqdB+7rIKpml3nr7It/Ce3
         EjRXyRSDm4K/mBQTLZWoDTj6r/mc5QrX1XpTABu/9L/QphmvAfjr9JYszATGCFHPhM62
         3ECYRAcAJPCF5FhAXn32dSs5zGZnGg3wWxOkqnF558rbaBqdsk8NzxlUldykRu5u61ED
         nTS4DaK/krtJRa9JpRDR0UV67SFtrA2+6ATkCrks4jtKtvr3N0qdyhePLFmRcLNgDItB
         giDA==
X-Gm-Message-State: AOJu0Yw9kMsbv8u8LDkkVoIFTb8uyZkX949JdcS8Ah4/lUi2itItjB0z
	w8YvRJSAsIC/1my4f0+qx6rAAhCwOyVdfgl1f3W5vakI0Jpdx0nJPKTixAV7+okeUXQNbh2MTqT
	ep8WXJqY+BNntjsaE0nDNuajwG56+cJJ4DsOlqQ==
X-Google-Smtp-Source: AGHT+IFqD1lUzJJ+jYXtk47JWkeAB3lWCnt0nq0Mq7BKRQzjgUr2UeSIKmZO7BUDPQQn8FHXk5aWOBrIO4Yc/98/Z0k=
X-Received: by 2002:a17:90a:4a8d:b0:297:2315:de0b with SMTP id
 f13-20020a17090a4a8d00b002972315de0bmr3271157pjh.11.1707827060300; Tue, 13
 Feb 2024 04:24:20 -0800 (PST)
MIME-Version: 1.0
References: <20240205102910.3778516-1-kexin.hao@windriver.com>
In-Reply-To: <20240205102910.3778516-1-kexin.hao@windriver.com>
From: Andrei Gherzan <andrei@gherzan.com>
Date: Tue, 13 Feb 2024 12:23:43 +0000
Message-ID: <CAK18fxHRasqG=RjbFDTtHYhpiVt5zMav8qehi_p2nU6_xEh9Qw@mail.gmail.com>
Subject: Re: [meta-raspberrypi][PATCH] rpidistro-ffmpeg: Fix old override syntax
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Yocto Project <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000447352061142793d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 12:24:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62476

--000000000000447352061142793d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for this, Kevin. Could you push your patch as a GitHub merge
request? That would help take advantage of the existing CI infrastructure.
--=20
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640


On Mon, Feb 5, 2024 at 10:29=E2=80=AFAM Kevin Hao <kexin.hao@windriver.com>=
 wrote:

> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb              | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.b=
b
> b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb
> index a4a7f90edfc3..5a8ff8fa9c96 100644
> --- a/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb
> +++ b/recipes-multimedia/rpidistro-ffmpeg/rpidistro-ffmpeg_4.3.4.bb
> @@ -23,9 +23,9 @@ LIC_FILES_CHKSUM =3D
> "file://COPYING.GPLv2;md5=3Db234ee4d69f5fce4486a80fdaf4a4263 \
>
>  file://COPYING.LGPLv3;md5=3De6a600fd5e1d9cbde2d983680233ad02"
>
>  # Build fails when thumb is enabled:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7717
> -ARM_INSTRUCTION_SET_armv4
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7717-ARM_INSTRUCTION=
_SET_armv4>
> =3D "arm"
> -ARM_INSTRUCTION_SET_armv5 =3D "arm"
> -ARM_INSTRUCTION_SET_armv6 =3D "arm"
> +ARM_INSTRUCTION_SET:armv4 =3D "arm"
> +ARM_INSTRUCTION_SET:armv5 =3D "arm"
> +ARM_INSTRUCTION_SET:armv6 =3D "arm"
>  # Should be API compatible with libav (which was a fork of ffmpeg)
>  # libpostproc was previously packaged from a separate recipe
>  PROVIDES =3D "ffmpeg libav libpostproc"
> --
> 2.40.1
>
>

--000000000000447352061142793d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for this, Kevin. Could you push your patch as a Git=
Hub merge request? That would help take advantage of the existing CI infras=
tructure.<br clear=3D"all"><div><div><div dir=3D"ltr" class=3D"gmail_signat=
ure" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div>--=C2=A0=
<br></div><div>Andrei Gherzan=C2=A0<br></div><div>gpg: rsa4096/D4D94F67AD0E=
9640<br></div></div></div></div></div><br></div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 5, 2024 at 10:2=
9=E2=80=AFAM Kevin Hao &lt;<a href=3D"mailto:kexin.hao@windriver.com">kexin=
.hao@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Signed-off-by: Kevin Hao &lt;<a href=3D"mailto:kexin.hao@=
windriver.com" target=3D"_blank">kexin.hao@windriver.com</a>&gt;<br>
---<br>
=C2=A0.../rpidistro-ffmpeg/<a href=3D"http://rpidistro-ffmpeg_4.3.4.bb" rel=
=3D"noreferrer" target=3D"_blank">rpidistro-ffmpeg_4.3.4.bb</a>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 6 +++---<br>
=C2=A01 file changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/recipes-multimedia/rpidistro-ffmpeg/<a href=3D"http://rpidistr=
o-ffmpeg_4.3.4.bb" rel=3D"noreferrer" target=3D"_blank">rpidistro-ffmpeg_4.=
3.4.bb</a> b/recipes-multimedia/rpidistro-ffmpeg/<a href=3D"http://rpidistr=
o-ffmpeg_4.3.4.bb" rel=3D"noreferrer" target=3D"_blank">rpidistro-ffmpeg_4.=
3.4.bb</a><br>
index a4a7f90edfc3..5a8ff8fa9c96 100644<br>
--- a/recipes-multimedia/rpidistro-ffmpeg/<a href=3D"http://rpidistro-ffmpe=
g_4.3.4.bb" rel=3D"noreferrer" target=3D"_blank">rpidistro-ffmpeg_4.3.4.bb<=
/a><br>
+++ b/recipes-multimedia/rpidistro-ffmpeg/<a href=3D"http://rpidistro-ffmpe=
g_4.3.4.bb" rel=3D"noreferrer" target=3D"_blank">rpidistro-ffmpeg_4.3.4.bb<=
/a><br>
@@ -23,9 +23,9 @@ LIC_FILES_CHKSUM =3D &quot;file://COPYING.GPLv2;md5=3Db23=
4ee4d69f5fce4486a80fdaf4a4263 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://COPYING.LGPLv3;md5=3De6a600fd5e1d9cbde2d983680233ad02&quot;<br>
<br>
=C2=A0# Build fails when thumb is enabled: <a href=3D"https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D7717-ARM_INSTRUCTION_SET_armv4" rel=3D"noref=
errer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=
=3D7717<br>
-ARM_INSTRUCTION_SET_armv4</a> =3D &quot;arm&quot;<br>
-ARM_INSTRUCTION_SET_armv5 =3D &quot;arm&quot;<br>
-ARM_INSTRUCTION_SET_armv6 =3D &quot;arm&quot;<br>
+ARM_INSTRUCTION_SET:armv4 =3D &quot;arm&quot;<br>
+ARM_INSTRUCTION_SET:armv5 =3D &quot;arm&quot;<br>
+ARM_INSTRUCTION_SET:armv6 =3D &quot;arm&quot;<br>
=C2=A0# Should be API compatible with libav (which was a fork of ffmpeg)<br=
>
=C2=A0# libpostproc was previously packaged from a separate recipe<br>
=C2=A0PROVIDES =3D &quot;ffmpeg libav libpostproc&quot;<br>
-- <br>
2.40.1<br>
<br>
</blockquote></div>

--000000000000447352061142793d--

