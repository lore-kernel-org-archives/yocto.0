Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4B90C5478C
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 15:26:10 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web11.101580.1709565962790426520
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 07:26:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mUGmtOXG;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6098bf69909so22934297b3.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 07:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709565962; x=1710170762; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C0o6vBRLXZBhjT8R3DBj4gO0T8crgvSLE5TS0ouxyb8=;
        b=mUGmtOXGNCq6VTnD9kshWSYpAZjK4cMeIRgJftkTXZRYiK+pNH06PUbmqOj8zRspz0
         gbhlz1Sy2q4d4vbbn536qTs4kaUHhnUBE3pebVZpyIl7LHPBOSAv3Aq6d/zd/jKVFpOI
         fFFG1Bs4xJ0Jvc6G5zpz0cDxLFo1evlrEX9izH2dNvs604k9sKGkQoKRHDnoQY07wh/t
         iYRsBZ9wD+aNC96ogIiw3J4HfRFLW/75aljke9Jtg2Vf1+5md6HOBcCwNzFNCpcIRRdz
         asVpDL1ij9oeDkfYHddNWnbBOh01F8sFxZz0JuG6KXRJ+fJwJXgCEnYtchjxW2Ls6ESF
         NPGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709565962; x=1710170762;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C0o6vBRLXZBhjT8R3DBj4gO0T8crgvSLE5TS0ouxyb8=;
        b=hPF6ohD1XgWYi6mO+p6WMVTo+S8T818OFLaWtT8xukHl9CZ7A5FtB70XPTP/NU48AU
         jyy/+HksCDPFEg1v2tKt3aa/17TcJwcQP2FoXpuBSpciwS0loTniNPmOq3gZ2+hJeytw
         eN5wUd2lZf7MO7HMie2sE6Y5/jaxVW6q7NLwSmgzdOawEcF5A34S3BGMm6PxgsP8UzAe
         e4PKzdWT3inKy81Rh56CIJ8doC8BOVLKjLxVCALB4PwemTSM8XbSCHuNiiuQZm/2VuW3
         dViC1aTE9OCKEKLdSHGuBFVFWP1FmzhdMP/rfsiZ5dsTSO/WqJsPhj8rqb8yT8bN0Swo
         h6fA==
X-Forwarded-Encrypted: i=1; AJvYcCV3KXBS2Mva3A2/+WSlkdPfsyYL7q3y5Ai/WLMnqFYtVoKbfv6TRWjOOR+u/JOodJRaHSljSsu8B1KxN1vjYJL3AswcLboudljPHmT3
X-Gm-Message-State: AOJu0YzFRgjmpSDgRbOxhJmiBAJKY4/SLjO4BYQoQXRLQk+yygLN/yV0
	tTPAGttvCIxC7wDIoczlC+EdU8nCghsTQZ7BDAj5fkfN3JsA4Ry3l50+qhIbM75yDWkMnJTtvIm
	nPsBQcdvB/t78nEcWZD3sw7+Ih6gOBrrO
X-Google-Smtp-Source: AGHT+IHBTTHr7WBvnQJVnCxtR5qUgJMl1kQnn1ZwcNsbGksDlpuSeXoH/PkpWx8zNyxr05auiH5K7M1HxOuDWjyrByw=
X-Received: by 2002:a81:e302:0:b0:608:dc4f:3c60 with SMTP id
 q2-20020a81e302000000b00608dc4f3c60mr6540324ywl.12.1709565961858; Mon, 04 Mar
 2024 07:26:01 -0800 (PST)
MIME-Version: 1.0
References: <20240304151405.2093292-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20240304151405.2093292-1-richard.purdie@linuxfoundation.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Mon, 4 Mar 2024 07:25:50 -0800
Message-ID: <CANx9H-CN4uC-pCv_sqehGXdibsd3A--2dTLErAKUH7E+Sxh6Sw@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Switch
 poky-altcfg to use ipk as the package backend
To: richard.purdie@linuxfoundation.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e073a00612d75771"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 15:26:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62669

--000000000000e073a00612d75771
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 4, 2024 at 7:14=E2=80=AFAM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> Since we plan to have better "binary distro" testing on the autobuilder
> and we plan to primarily use ipk for this, having ipk based images
> available
> as part of our builds is desireable.
>

Definitely agree.

>
> Since we want systemd based images with ipk, it makes sense to leave
> standard
> poky using rpm images but switch poky-altcfg to use ipk.
>

Good idea!

>
> Whilst late in the release cycle, doing this now for scarthgap gives us a
> good
> platform to build off in the long term too.
>

Seems like a good idea to me!

>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  config.json | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/config.json b/config.json
> index fd8335f..4d0f258 100644
> --- a/config.json
> +++ b/config.json
> @@ -127,6 +127,7 @@
>              "BUILDINFO" : true,
>              "BUILDHISTORY" : true,
>              "extravars" : [
> +                "PACKAGE_CLASSES =3D 'package_ipk package_rpm package_de=
b'",
>                  "IMAGE_INSTALL:append =3D ' ssh-pregen-hostkeys'"
>              ],
>              "extratools" : "${EXTRATOOLS_URL}",
> @@ -140,6 +141,7 @@
>              "BUILDINFO" : true,
>              "BUILDHISTORY" : true,
>              "extravars" : [
> +                "PACKAGE_CLASSES =3D 'package_ipk package_rpm package_de=
b'",
>                  "IMAGE_INSTALL:append =3D ' ssh-pregen-hostkeys'"
>              ],
>              "extratools" : "${EXTRATOOLS_URL}",
> @@ -198,6 +200,9 @@
>          "altcfg-hw" : {
>              "DISTRO" : "poky-altcfg",
>              "BUILDINFO" : true,
> +            "extravars" : [
> +                "PACKAGE_CLASSES =3D 'package_ipk package_rpm package_de=
b'"
> +            ],
>              "step1" : {
>                  "BBTARGETS" : "core-image-full-cmdline core-image-sato
> core-image-sato-sdk"
>              }
> --
> 2.40.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62665):
> https://lists.yoctoproject.org/g/yocto/message/62665
> Mute This Topic: https://lists.yoctoproject.org/mt/104723845/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000e073a00612d75771
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Mar 4, 2024 at 7:14=E2=80=AFAM Richard Purdie &lt;<=
a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfo=
undation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;padding-left:1ex;border-left-color:rgb(204,204,204)">Since we plan to have=
 better &quot;binary distro&quot; testing on the autobuilder<br>
and we plan to primarily use ipk for this, having ipk based images availabl=
e<br>
as part of our builds is desireable.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Definitely agree=
.</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)"><br>
Since we want systemd based images with ipk, it makes sense to leave standa=
rd<br>
poky using rpm images but switch poky-altcfg to use ipk.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Good idea!</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:r=
gb(204,204,204)"><br>
Whilst late in the release cycle, doing this now for scarthgap gives us a g=
ood<br>
platform to build off in the long term too.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Seems like a goo=
d idea to me!</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;=
border-left-color:rgb(204,204,204)"><br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<b=
r>
---<br>
=C2=A0config.json | 5 +++++<br>
=C2=A01 file changed, 5 insertions(+)<br>
<br>
diff --git a/config.json b/config.json<br>
index fd8335f..4d0f258 100644<br>
--- a/config.json<br>
+++ b/config.json<br>
@@ -127,6 +127,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BUILDINFO&quot; : tru=
e,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BUILDHISTORY&quot; : =
true,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;extravars&quot; : [<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PACKAGE_CLAS=
SES =3D &#39;package_ipk package_rpm package_deb&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;IMAGE_I=
NSTALL:append =3D &#39; ssh-pregen-hostkeys&#39;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;extratools&quot; : &q=
uot;${EXTRATOOLS_URL}&quot;,<br>
@@ -140,6 +141,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BUILDINFO&quot; : tru=
e,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BUILDHISTORY&quot; : =
true,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;extravars&quot; : [<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PACKAGE_CLAS=
SES =3D &#39;package_ipk package_rpm package_deb&#39;&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;IMAGE_I=
NSTALL:append =3D &#39; ssh-pregen-hostkeys&#39;&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;extratools&quot; : &q=
uot;${EXTRATOOLS_URL}&quot;,<br>
@@ -198,6 +200,9 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;altcfg-hw&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;DISTRO&quot; : &quot;=
poky-altcfg&quot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BUILDINFO&quot; : tru=
e,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;extravars&quot; : [<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;PACKAGE_CLAS=
SES =3D &#39;package_ipk package_rpm package_deb&#39;&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;step1&quot; : {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;BBTARGE=
TS&quot; : &quot;core-image-full-cmdline core-image-sato core-image-sato-sd=
k&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-- <br>
2.40.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62665): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62665" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62665</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104723845/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/104723845/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000e073a00612d75771--

