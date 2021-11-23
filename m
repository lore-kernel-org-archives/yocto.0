Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59887C433F5
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 17:11:25 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web11.14175.1637687483876011927
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 09:11:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FAs34CeC;
 spf=pass (domain: gmail.com, ip: 209.85.222.50,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id n6so45252276uak.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 09:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jdje6R1FSAlzWu4boj7aMxTHi3kLRuvEWg37SA78ab8=;
        b=FAs34CeCylTUzL3MsV6/piOSwuHXUGGN1f5P4pffbOU3Izy9izni7ZBKFH7bPjrpYh
         AE0iU9aIRBmmVE+arbKUlo4iiGTFvbfKrz47HZNfVEJ5eUGFqs+q/HFhxZ23NnlAN+RS
         4Ta5VR6/C6ZNp45oXGBcOSIQdGtM0ancmHKtZIPpReHCc0ARhVdy8vRomOVndqGsJr6k
         wUz1PrJxBfmfpuv1hA+GrycxpNRlgaBVoOdysi8F1g1nnOqy4A4DZzMCp8C4llmrQab+
         JKM5Y96uIU/NkaCnIPWRGWMRAKfJEyWOJr5WQVem03+ROC9nFFJKSKHy1SGjFM0mt2Cv
         xjWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jdje6R1FSAlzWu4boj7aMxTHi3kLRuvEWg37SA78ab8=;
        b=5f1YQ+tMD0Z8x66Do+flitCZTzn0DCJHA8GqNL72GGlJUo0Hjn7LFsb243kdCGxGYR
         TZuIgbOzzGz8FoKUmWaeYDGbCxKnpWJwW/sVx0/GXkb9NPY0Eef3wnEno5xRSglITWOz
         MNLisy1a8CfiOjMn8g7DoXitvb8AgbKtDTq0dz6CLX+zOUJwNZjvn1TV8rPxnb0KL4zd
         mRi1mWCSBtLxMrhxivhh8/7+vj4kjD9G474l67R9J6PqDXFAwAY43sE8S2oGPnm5hNQ3
         iMrV3rga0q+YCZnzxBs+HQ4YtFUNPSIiRdi2DPxR+48ScidTPw9t+sDZcsolyl3v9K/T
         XYog==
X-Gm-Message-State: AOAM533euACIBlUT6m48odoKOCFlOYS6oUZTqPPJcMocZ2qvlSDjPatE
	qd/+3K74Ea34C1EC2zeZzSLTUn4ijqfiP52aMTo=
X-Google-Smtp-Source: 
 ABdhPJxlgrButpD1K7R3NwB14VQ48heaD91ERAfn2tTaKrglDXqyEtPa/4talviTp+9W+UlL6krtDxW2UBGhP3D+j0Q=
X-Received: by 2002:a67:c511:: with SMTP id e17mr11445889vsk.40.1637687483014;
 Tue, 23 Nov 2021 09:11:23 -0800 (PST)
MIME-Version: 1.0
References: <20211123150331.2431516-1-ross.burton@arm.com>
In-Reply-To: <20211123150331.2431516-1-ross.burton@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 23 Nov 2021 18:11:11 +0100
Message-ID: 
 <CANNYZj8WZgGfNjF3pf2i5Fg1yJ0BEJVX3jhjDyTa+0Bs-H5ZAg@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: set
 ZSTD_THREADS like XZ_THREADS
To: Ross Burton <ross@burtonini.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ada0c005d177d48b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 17:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55398

--000000000000ada0c005d177d48b
Content-Type: text/plain; charset="UTF-8"

Is there a particular reason?

Alex

On Tue, 23 Nov 2021 at 16:03, Ross Burton <ross@burtonini.com> wrote:

> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  config.json | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/config.json b/config.json
> index 7203783..c0543d9 100644
> --- a/config.json
> +++ b/config.json
> @@ -47,6 +47,7 @@
>              "PARALLEL_MAKE = '-j 16 -l 52'",
>              "XZ_MEMLIMIT = '5%'",
>              "XZ_THREADS = '8'",
> +            "ZSTD_THREADS = '8'",
>              "BB_TASK_NICE_LEVEL = '5'",
>              "BB_TASK_NICE_LEVEL:task-testimage = '0'",
>              "BB_TASK_IONICE_LEVEL = '2.7'",
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55396):
> https://lists.yoctoproject.org/g/yocto/message/55396
> Mute This Topic: https://lists.yoctoproject.org/mt/87260143/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000ada0c005d177d48b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Is there a particular reason?</div><div><br></div><di=
v>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 23 Nov 2021 at 16:03, Ross Burton &lt;<a href=3D"ma=
ilto:ross@burtonini.com">ross@burtonini.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Signed-off-by: Ross Burton &lt;<=
a href=3D"mailto:ross.burton@arm.com" target=3D"_blank">ross.burton@arm.com=
</a>&gt;<br>
---<br>
=C2=A0config.json | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/config.json b/config.json<br>
index 7203783..c0543d9 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -47,6 +47,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;PARALLEL_MAKE =3D &#3=
9;-j 16 -l 52&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;XZ_MEMLIMIT =3D &#39;=
5%&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;XZ_THREADS =3D &#39;8=
&#39;&quot;,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;ZSTD_THREADS =3D &#39;8&#3=
9;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_TASK_NICE_LEVEL =
=3D &#39;5&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_TASK_NICE_LEVEL:ta=
sk-testimage =3D &#39;0&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BB_TASK_IONICE_LEVEL =
=3D &#39;2.7&#39;&quot;,<br>
-- <br>
2.25.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55396): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55396" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55396</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87260143/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87260143/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ada0c005d177d48b--

