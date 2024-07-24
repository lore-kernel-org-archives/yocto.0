Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22C5CC3DA61
	for <webhook@archiver.kernel.org>; Wed, 24 Jul 2024 16:17:01 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.15019.1721837810904446514
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jul 2024 09:16:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BBS6Kgwx;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: rybczynska@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2cb576db1c5so19884a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 09:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721837810; x=1722442610; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7qCgwOIrRkd9ilpKrE2i4IinkLuJFT6LYnCZ8Uot3iI=;
        b=BBS6KgwxjhWQBjfsqqt7AEW7A+iudgiD7iXNflC00JwmyWT4bxEOxBDNk6uzjshJur
         E+HjBiLukwV2K2T4aF0SvstcZCwGZ51PZPVFZ8lRjvzExu9h62nbVw0FlCZrGDjLzsAD
         YU5ERkO4uZjXzyJBCZAvFLkoRyIXAZTW2RV2FEvx/maDexG3N+awx1ZesSH/JPgY0Tcm
         pHdd2SLZHmENjbsb2wdH54kWoLVxcJR08CWbqlqm7eR1W5OAksmxyFcnM61/cUCwaPLx
         w2JJVYh6a7h64u+EZ6chM4sT1daihkVZ7T99jFhvYoQRadvpv/YuJRAUBueE+95ot4/c
         K4hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721837810; x=1722442610;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7qCgwOIrRkd9ilpKrE2i4IinkLuJFT6LYnCZ8Uot3iI=;
        b=CZQLUtwYj2nCNK5C6nzr213w9Mtmo59fYYllDHDjSjOo377GwIkWpuNFiu5x/u1MVw
         drn7QJjs8lIXsg+NrRbSmzJ0Ov3RjG98pLdIIVI5teo6rqK9Cq4Sw/Hef1WoxWNy5gpu
         vEBM4vdSzcgQcbj2Q6c+f/7AorMM4YiSVMOJPZWmK2IOIX0lNEgaB5OkmEU5TfAuvV8X
         +QoAGwWE8Bz4wffF8kG9952VcGc0G7k8o4x32o/0PWNj9aZff5H5UL19t8OBCLPD+uc/
         fXle+6RBV1nlh2ucShoM7SPDDE0QgAeqEk81QKmEptlJxpioqoxidv/ZTB7HmuosdeMq
         q4IA==
X-Gm-Message-State: AOJu0YwbGM2dagfCdgZUsm0brdo7tLeJca73vbQhwzHZMCUjMwxEZlPN
	mIeauNt5Or9qoKLZUDRdKhAwxj2gt8bC+H8OcJXs/09n7fMqT4T8V3u0QI2E7fqkf6ScsXLvkwz
	ZOmosvLFToNUXS4EKPHsa7/1zcxDnyA==
X-Google-Smtp-Source: AGHT+IGUdSVcfuwp/BmjOAG9AHc56PFus/uxTRFxPvAVQqR0THdaZNlzZfKhEq1HFWVGjKNEdOhR6/OkYkT53FgAfEs=
X-Received: by 2002:a17:90b:1e41:b0:2c9:69cc:3a6a with SMTP id
 98e67ed59e1d1-2cd273ec826mr10420031a91.3.1721837809732; Wed, 24 Jul 2024
 09:16:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAMp_5HaLZnjOEyajTmbiqEM2khxu0NpYjpRWTSabs462L=Z7=w@mail.gmail.com>
In-Reply-To: <CAMp_5HaLZnjOEyajTmbiqEM2khxu0NpYjpRWTSabs462L=Z7=w@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 24 Jul 2024 18:16:38 +0200
Message-ID: <CAApg2=R5=dE2gXvOW6cR4a5pu4rvRpf1AR85j-QQRH30SPqwqw@mail.gmail.com>
Subject: Re: [yocto] SPDX for dependency checks
To: yocto@lists.yoctoproject.org, thomas.isaacson@motorolasolutions.com
Content-Type: multipart/alternative; boundary="000000000000029768061e009b40"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 16:17:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63566

--000000000000029768061e009b40
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 24, 2024 at 7:08=E2=80=AFAM Tom Isaacson via lists.yoctoproject=
.org
<thomas.isaacson=3Dmotorolasolutions.com@lists.yoctoproject.org> wrote:

> We're using Kirkstone and wanted to take advantage of the SPDX support
> to use for dependency checking. The two apps we have access to are:
> 1. Github Dependabot
> (
> https://docs.github.com/en/code-security/getting-started/dependabot-quick=
start-guide
> )
> 2. Mend (https://www.mend.io/)
>
> We generate the SPDX in a Github Action then tried uploading it using:
> * https://github.com/marketplace/actions/spdx-dependency-submission-actio=
n
> * https://pypi.org/project/mend-import-sbom/
> but so far we haven't been able to get it to work. Has anyone else tried
> this?
>
>
It will work if you submit individual SPDX files for packages (in most
cases).

The aggregation done by the YP is non-standard and tools have difficulties
parsing it.

Should be also better with SPDX3, but it looks like (from the
documentation) that those two tools do not support 3.0 yet.

Kind regards,
Marta

--000000000000029768061e009b40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 24, 2024 at 7:08=E2=80=AF=
AM Tom Isaacson via <a href=3D"http://lists.yoctoproject.org">lists.yoctopr=
oject.org</a> &lt;thomas.isaacson=3D<a href=3D"mailto:motorolasolutions.com=
@lists.yoctoproject.org">motorolasolutions.com@lists.yoctoproject.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">We&#39=
;re using Kirkstone and wanted to take advantage of the SPDX support<br>
to use for dependency checking. The two apps we have access to are:<br>
1. Github Dependabot<br>
(<a href=3D"https://docs.github.com/en/code-security/getting-started/depend=
abot-quickstart-guide" rel=3D"noreferrer" target=3D"_blank">https://docs.gi=
thub.com/en/code-security/getting-started/dependabot-quickstart-guide</a>)<=
br>
2. Mend (<a href=3D"https://www.mend.io/" rel=3D"noreferrer" target=3D"_bla=
nk">https://www.mend.io/</a>)<br>
<br>
We generate the SPDX in a Github Action then tried uploading it using:<br>
* <a href=3D"https://github.com/marketplace/actions/spdx-dependency-submiss=
ion-action" rel=3D"noreferrer" target=3D"_blank">https://github.com/marketp=
lace/actions/spdx-dependency-submission-action</a><br>
* <a href=3D"https://pypi.org/project/mend-import-sbom/" rel=3D"noreferrer"=
 target=3D"_blank">https://pypi.org/project/mend-import-sbom/</a><br>
but so far we haven&#39;t been able to get it to work. Has anyone else trie=
d this?<br>
<br></blockquote><div><br></div><div>It will work if you submit individual =
SPDX files for packages (in most cases). <br></div><div><br></div><div>The =
aggregation done by the YP is non-standard and tools have difficulties pars=
ing it.</div><div><br></div><div>Should be also better with SPDX3, but it l=
ooks like (from the documentation) that those two tools do not support 3.0 =
yet.<br></div><div><br></div><div>Kind regards,</div><div>Marta<br></div></=
div></div>

--000000000000029768061e009b40--

