Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56578C88CB2
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 01:52:12 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web11.4953.1692928325447053082
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Aug 2023 18:52:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=NV4rxomo;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-590685a3be5so5712947b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Aug 2023 18:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692928324; x=1693533124;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=an0J0Jz4sDNXIAhR9cBDqWh2mBvHL5g9sLcsjpz77YU=;
        b=NV4rxomoHGZ6hcxFm/xn5GH4D2qWqvYm5tSc0l1hVh2u3VstYCcMvlo/mUGpWPA6Xm
         jxI+5ct5awBpwgc9uJplA3ueqM2Rrmq2yPPebB3lSa7c5zKfatOgaHYY9eo2nDA+aGly
         fxwJd5nqe8cGAQKGM9ABxojZk1DeMPBTxEvveyGnrLVheV0pXOdg8TdHj5wXkvLv9eaI
         UF7EkDO7N2m+pPjGr1HUbFIv7nEMvFoEpiZiTR0RlqnfELXcCbkmqKzfJo/a5FcqmotE
         AR3BRApk4IzjFw5stPuMY9VwlAQWfPT/Uexuv7kp4eSrzEntqDiQwxND+RQGPA0JMEqL
         rCzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692928324; x=1693533124;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=an0J0Jz4sDNXIAhR9cBDqWh2mBvHL5g9sLcsjpz77YU=;
        b=c3Hl1hMUeQWo2Zr1UBsl1dYC3zabw+J2iRWy8tYUd6wfR4cwlPrxqhGuWVB2yfSIgt
         7NT6SiKz2PKXuihhchAHlIIofBExnn6MQGxSxwDpcZ3l0ZOUbD0PGTt3wVH00WYwJSyq
         n2EYiQuYSLOSelyxva7R3P4p0U8rH/y0YI0OUtHGDtQ7i0eQBwBN5/c/n4fJnrqR5X0r
         3C+IAsc4SWUfU0sv5xHYKbdxYCIagBm68Fg73luP2uOYNMnEL95vZ3jZzx0s0hC63Ry8
         jhZkDeTgiwFNuJ1AvPhcdZEhpEd45sMAUxcpJ9QZHlD8lVrTXLEug+BJ2c9EcS3fiUIz
         sg6g==
X-Gm-Message-State: AOJu0YyVrUKYgHFsy+t4EPtIg1EtPk3SecAqhFHvQp1MGFseSzsQHkTT
	R5cOCRDPaaHsqHG255JBeaJzuz6hwuSl54RDJJeYH3dJmI0=
X-Google-Smtp-Source: AGHT+IEsbCcIuwNDBUTFYd8vcOw6L1Us4wI5VzNlfyAIwbNHdyCzozkTR6tnO9CijLvHWKoIsbCc7Qm+JQbmx8c7AH8=
X-Received: by 2002:a0d:d655:0:b0:58b:cea5:947a with SMTP id
 y82-20020a0dd655000000b0058bcea5947amr16847927ywd.40.1692928323996; Thu, 24
 Aug 2023 18:52:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230825014209.1817874-1-tim.orling@konsulko.com> <20230825014209.1817874-2-tim.orling@konsulko.com>
In-Reply-To: <20230825014209.1817874-2-tim.orling@konsulko.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 24 Aug 2023 18:51:53 -0700
Message-ID: <CANx9H-AhK0+8yu9zcTADn8iFH1_wHGMyYuPmPwO4DKDOKFWe7g@mail.gmail.com>
Subject: Re: [layerindex-web][PATCH 2/2] build(deps): bump gitpython from
 3.1.30 to 3.1.32
To: yocto@lists.yoctoproject.org
Cc: Tim Orling <tim.orling@konsulko.com>
Content-Type: multipart/alternative; boundary="00000000000061d1e90603b5973e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 01:52:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60886

--00000000000061d1e90603b5973e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Staging on top of the 3.1.30 bump by Chee Yang Lee
https://patchwork.yoctoproject.org/project/yocto/patch/20230112060706.27009=
68-1-chee.yang.lee@intel.com/

On Thu, Aug 24, 2023 at 6:42=E2=80=AFPM Tim Orling <ticotimo@gmail.com> wro=
te:

> From: "dependabot[bot]" <49699333+dependabot[bot]@users.noreply.github.co=
m
> >
>
> Bumps [gitpython](https://github.com/gitpython-developers/GitPython) from
> 3.1.30 to 3.1.32.
> - [Release notes](
> https://github.com/gitpython-developers/GitPython/releases)
> - [Changelog](
> https://github.com/gitpython-developers/GitPython/blob/main/CHANGES)
> - [Commits](
> https://github.com/gitpython-developers/GitPython/compare/3.1.30...3.1.32=
)
>
> ---
> updated-dependencies:
> - dependency-name: gitpython
>   dependency-type: direct:production
> ...
>
> Signed-off-by: dependabot[bot] <support@github.com>
> Signed-off-by: Tim Orling <tim.orling@konsulko.com>
> ---
>  requirements.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/requirements.txt b/requirements.txt
> index 85f6520..b86ac6e 100644
> --- a/requirements.txt
> +++ b/requirements.txt
> @@ -16,7 +16,7 @@ django-reversion-compare=3D=3D0.14.1
>  django-simple-captcha=3D=3D0.5.14
>  djangorestframework=3D=3D3.13.1
>  gitdb=3D=3D4.0.9
> -GitPython=3D=3D3.1.30
> +GitPython=3D=3D3.1.32
>  kombu=3D=3D5.2.3
>  mysqlclient=3D=3D2.1.0
>  Pillow=3D=3D9.3.0
> --
> 2.34.1
>
>

--00000000000061d1e90603b5973e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Staging on top of the 3.1.30 bump by Chee Yang Lee</d=
iv><div><a href=3D"https://patchwork.yoctoproject.org/project/yocto/patch/2=
0230112060706.2700968-1-chee.yang.lee@intel.com/">https://patchwork.yoctopr=
oject.org/project/yocto/patch/20230112060706.2700968-1-chee.yang.lee@intel.=
com/</a><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Aug 24, 2023 at 6:42=E2=80=AFPM Tim Orling &lt;<a href=
=3D"mailto:ticotimo@gmail.com">ticotimo@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">From: &quot;dependabot[bot=
]&quot; &lt;49699333+dependabot[bot]@<a href=3D"http://users.noreply.github=
.com" rel=3D"noreferrer" target=3D"_blank">users.noreply.github.com</a>&gt;=
<br>
<br>
Bumps [gitpython](<a href=3D"https://github.com/gitpython-developers/GitPyt=
hon" rel=3D"noreferrer" target=3D"_blank">https://github.com/gitpython-deve=
lopers/GitPython</a>) from 3.1.30 to 3.1.32.<br>
- [Release notes](<a href=3D"https://github.com/gitpython-developers/GitPyt=
hon/releases" rel=3D"noreferrer" target=3D"_blank">https://github.com/gitpy=
thon-developers/GitPython/releases</a>)<br>
- [Changelog](<a href=3D"https://github.com/gitpython-developers/GitPython/=
blob/main/CHANGES" rel=3D"noreferrer" target=3D"_blank">https://github.com/=
gitpython-developers/GitPython/blob/main/CHANGES</a>)<br>
- [Commits](<a href=3D"https://github.com/gitpython-developers/GitPython/co=
mpare/3.1.30...3.1.32" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/gitpython-developers/GitPython/compare/3.1.30...3.1.32</a>)<br>
<br>
---<br>
updated-dependencies:<br>
- dependency-name: gitpython<br>
=C2=A0 dependency-type: direct:production<br>
...<br>
<br>
Signed-off-by: dependabot[bot] &lt;<a href=3D"mailto:support@github.com" ta=
rget=3D"_blank">support@github.com</a>&gt;<br>
Signed-off-by: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" ta=
rget=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
---<br>
=C2=A0requirements.txt | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/requirements.txt b/requirements.txt<br>
index 85f6520..b86ac6e 100644<br>
--- a/requirements.txt<br>
+++ b/requirements.txt<br>
@@ -16,7 +16,7 @@ django-reversion-compare=3D=3D0.14.1<br>
=C2=A0django-simple-captcha=3D=3D0.5.14<br>
=C2=A0djangorestframework=3D=3D3.13.1<br>
=C2=A0gitdb=3D=3D4.0.9<br>
-GitPython=3D=3D3.1.30<br>
+GitPython=3D=3D3.1.32<br>
=C2=A0kombu=3D=3D5.2.3<br>
=C2=A0mysqlclient=3D=3D2.1.0<br>
=C2=A0Pillow=3D=3D9.3.0<br>
-- <br>
2.34.1<br>
<br>
</blockquote></div></div>

--00000000000061d1e90603b5973e--

