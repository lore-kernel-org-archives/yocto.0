Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CE4DC61D97
	for <webhook@archiver.kernel.org>; Fri, 24 Nov 2023 17:09:59 +0000 (UTC)
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
 by mx.groups.io with SMTP id smtpd.web11.144567.1700845791589675171
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Nov 2023 09:09:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AQKNiL/C;
 spf=pass (domain: gmail.com, ip: 209.85.160.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-1f9efd5303cso546035fac.0
        for <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 09:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700845791; x=1701450591; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xoyVn70VCjSEMUhbb1keLW1XRur0AJtX4scKB/13Rlk=;
        b=AQKNiL/Ce/bazTnP5TeVLfHLzwDRrOSW8Psw4hIYJptca/M5EarBOBFy6Z6NPM5K8S
         qhXj+aScGmQ2Jcg5QWPT6BHVr5+RndBmwzuB86/zos47yzD6h2mpK8QsbNWv9DfUiyL4
         2nLyT53ulmHRrb7gWYCcFsyyhIrJdarCYzpAwOz6gZXSQ/xoAj/0+1kl2YK2I04Ujmrr
         8pfMZwxd3r5TkLlKQ9uetwjr4IShpoqMPgrKMMxcG4iydrJ3EAurL3OZAAhxdVwD4Bpm
         0MsPxP+aAYQ+LxQOzRRctVJmoOTDIsrUM0GuAagF2ZW2Dq7ZQr8NUKO+u9vjZ2+sx4e3
         O/gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700845791; x=1701450591;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xoyVn70VCjSEMUhbb1keLW1XRur0AJtX4scKB/13Rlk=;
        b=GbRydhU/Cx/o1yhEwZi3RA9ZRca5EGNrbNsGJMNIQzvkb1YZVRdrH8rbzMb7q1KNzV
         /lJdJaRPw2S13Vpxv2wx0oK5VkE4KLVaKdW3scD/dsD/h/m0HKjM9aCBvR/IBUtjAiea
         AawSfAoPKscS+lV3hGDT+rl8eHpQtJEXyOx7ytWUw5iFimPDIVE/8Wd+fM2xPQd04vMU
         2y1vWHIX9/ar0WLH30zgHeg7M2sEGuocBP/flDBPycz1mraE+/XEv7Myb1BOtl4YpufT
         Xgcdl0IRXG/wJVxNZDJnrwF1DZUOfQExGeRwT8p+Y7fZn7OZ1MWASyAuQ9/G750j1y3V
         LC4A==
X-Gm-Message-State: AOJu0Yyez8lS8ThXj6YfWtxBTt/5aUC9pQlz5JkDZn6yYSeeh6NZva1o
	ImEcbK/8M1PGDE9Pr1xZ2wwDyASvNLgEzjXvS+g=
X-Google-Smtp-Source: AGHT+IFa3h93lQ468zfMtzVNfQ5R5jN7L0fSM5NofpSRiOEt7OwG4wccAYV/0+95R54KotZXC3gLwWgawZtH7jFscbw=
X-Received: by 2002:a05:6870:5588:b0:1f4:e209:a7ea with SMTP id
 qj8-20020a056870558800b001f4e209a7eamr4184561oac.42.1700845790774; Fri, 24
 Nov 2023 09:09:50 -0800 (PST)
MIME-Version: 1.0
References: <20231122014822.3871458-1-raj.khem@gmail.com> <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CAMKF1spmQVfXj6TMMgDRrneUeFBKjGfvfN5JT2USC3CkyvVB5g@mail.gmail.com>
 <750E6423-8371-46C6-96A0-DB901787BEC7@arm.com> <CAMKF1src_2+T=OOr2G2B+P=HmwXjTJGU+BGCn=bmrvHjaoCmAA@mail.gmail.com>
 <B9666CC9-7A53-49E3-98F3-631F1C3595E2@arm.com>
In-Reply-To: <B9666CC9-7A53-49E3-98F3-631F1C3595E2@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Nov 2023 09:09:39 -0800
Message-ID: <CAMKF1srpxe7n4fKyfb8T9kaU=RAUf7AoNjQQjR-FT25tpHnQ9Q@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
To: Ross Burton <ross.burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002d4e8d060ae905ba"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 17:09:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61755

--0000000000002d4e8d060ae905ba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 24, 2023 at 9:04=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> w=
rote:

>
>
> > On 24 Nov 2023, at 16:53, Khem Raj <raj.khem@gmail.com> wrote:
> > So the trigger is bad packaging, as surely the vte recipe should split
> the libraries up so that installing a gtk*3* based terminal doesn=E2=80=
=99t pull in
> gtk4 for no reason.
> >
> > New vte enables both gtk3 and gtk4 support I don=E2=80=99t think it=E2=
=80=99s bad
> packaging. Multiple versions of gtk can live together in a rootfs without
> conflict
>
> Sure they _can_ but it=E2=80=99s a terrible idea to pull in both if they=
=E2=80=99re not
> needed.


Ok so do we think should gtk4 be a distro feature which conflicts with gtk3
?


>
> Ross

--0000000000002d4e8d060ae905ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Nov 24, 2023 at 9:04=E2=80=AFAM Ross Burton &lt;<a =
href=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><br>
<br>
&gt; On 24 Nov 2023, at 16:53, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; So the trigger is bad packaging, as surely the vte recipe should split=
 the libraries up so that installing a gtk*3* based terminal doesn=E2=80=99=
t pull in gtk4 for no reason.<br>
&gt; <br>
&gt; New vte enables both gtk3 and gtk4 support I don=E2=80=99t think it=E2=
=80=99s bad packaging. Multiple versions of gtk can live together in a root=
fs without conflict <br>
<br>
Sure they _can_ but it=E2=80=99s a terrible idea to pull in both if they=E2=
=80=99re not needed.</blockquote><div dir=3D"auto"><br></div><div dir=3D"au=
to">Ok so do we think should gtk4 be a distro feature which conflicts with =
gtk3 ?</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex" dir=
=3D"auto"><br>
<br>
Ross</blockquote></div></div>

--0000000000002d4e8d060ae905ba--

