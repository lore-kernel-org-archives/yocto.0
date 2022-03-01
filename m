Return-Path: <menon.vinayak@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D176C433F5
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 08:52:42 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web09.6222.1646124761083223604
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 00:52:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nmepNXT2;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: menon.vinayak@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id j7so25681191lfu.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 00:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=tyr4PnHDiXU4DW5sIBXDBAYMrY4dfwXQf8cR2xfrTko=;
        b=nmepNXT2oZzOreV7qcvI9UcqgWuVaWhQ12y8ToAcvYGuc7qCnYs/8dnWOROKKrWwrn
         dgfWRELMdTQOfQlDeoefdudUjDl/idpZ/SDj0ORJH3yHG2ekLaZYGp40x2mV3NLC2jkj
         kAfFRrMgI/F0eVmzfpOM+/0AtWs0PJRvTwjdeYV5ZX6YqAO3Z6i9y+xzg5EYGtuIRMPq
         wDXc4Yh96HTIP59uE+41+9G+RBFRkiibc0xza4k45Br9NcbkDEqrv0bTg5PW2ilRNvcu
         pG2LDA4a4nBNYIQ6aaY+nvoExiY0UeKiqqTNEXayzJkLmgGIaD474LPKob96A27y0oFE
         oTvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=tyr4PnHDiXU4DW5sIBXDBAYMrY4dfwXQf8cR2xfrTko=;
        b=EXtkckccuAmvebXIKv4qKQy3tSLA/LJedt1cvLWQNkZwzabua9OyIT5Xp9m0OGnQ+E
         4YaSN3yWkIYcaHZaMHB3swo6H9kxHncMmGaL3Z4HnZ7a8v3z52Mz/hBgJ8OtiQiC75Yv
         J66ucyE8HNslVUc5AYRIxdyoEl2EqgpE/smNE+GzJWMj/jl5dZS+sqfRVqgpREL00GY1
         rRwIQQpDMbE1cuBhyCPD9R12B6GD7J4ZLoi4dfqbCj5fV3DIZ1J3GIp1oKkj4ssrh/jB
         O0hEv6kBpoW/dXvuJT9xq6oV5UqGzxfVDuX+8iOVZfwLjztkczjylW55Ug4O9wv0yLaN
         XkgA==
X-Gm-Message-State: AOAM530H+TSkQcNmH4/az4tj6ap6swPXJ8ttmvNA1RPrVWj/O5aHWn7s
	98kBGA2th2iV9qV8UAzakdv7eMWkxE7CFAn3PKw=
X-Google-Smtp-Source: 
 ABdhPJwh1dMUcQi5qnvoOAOgXdmboaDNLuNSAy5CrvCnxwXw64BMYyw/3oN/4p5F/BFw5miScXRjdUfLhaTHFQWOnf0=
X-Received: by 2002:a05:6512:a92:b0:444:65e:732a with SMTP id
 m18-20020a0565120a9200b00444065e732amr12407872lfu.305.1646124759100; Tue, 01
 Mar 2022 00:52:39 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAH9dsRiArf_9GgQS4hCg5=J_Jk6cd3eiGaOiQd788+iSLTuU+g@mail.gmail.com>
 <19024.1646118271331133648@lists.yoctoproject.org>
In-Reply-To: <19024.1646118271331133648@lists.yoctoproject.org>
From: Vinayak Menon <menon.vinayak@gmail.com>
Date: Tue, 1 Mar 2022 14:22:27 +0530
Message-ID: 
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
Subject: Re: [yocto] On managing debug and production builds
To: tomzy <tomasz.zyjewski@3mdeb.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 08:52:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56333

On Tue, Mar 1, 2022 at 12:34 PM tomzy <tomasz.zyjewski@3mdeb.com> wrote:
>
> Hi Vinayak
>
> I believe that the best way to prepare debug and prod images is to create
> include file (.inc) with base set of packages and features and then add t=
wo
> .bb recipes, one for prod and one for debug - every of this recipes will =
need
> to include the `.inc` file. You could name them `base-image-prod.bb` and
> `base-image-debug.bb`. This way you could run either prod or debug builds
> by running `bitbake base-image-debug` or `bitbake base-image-prod`.
>
> As for the machine, this would need to be set in local.conf every time yo=
u want
> to switch the machine.To simplify this process, for the management of the
> configuration of the entire build (including the selection of debug / pro=
d image
> or machine configuration), I recommend the kas[1] project with the very h=
elpful
> kas-container tool.


Thanks Tomasz. I will check kas.
Yes, for selecting some of the packages I have created prod and debug
image recipes.
But this did not work for the kernel as the kernel recipe is picked as
part of PROVIDER
in machine conf. SoI had to use 2 conf to have the IMAGE_FEATURES (or
any other var)
set differently for prod and debug. This is for building the kernel
recipie differently for prod
and debug. Setting the IMAGE_FEATURES in the image recipe (and not in
conf) causes
2 problems. One is that kernel and other bootloaders recipes are
picked early via PROVIDER
 in conf and not as packages included in image recipe. Secondly,
setting the var in the image
recipe breaks this command for e.g. "bitbake base-image-prod.bb
base-image-debug.bb".
Since the command parses the recipes only once for both image creation.



>
> [1] https://github.com/siemens/kas
>
> Regards,
> Tomasz =C5=BByjewski
> Embedded Systems Engineer
> GPG: 5C495EA3EBEECA59
> https://3mdeb.com | @3mdeb_com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56332): https://lists.yoctoproject.org/g/yocto/messag=
e/56332
> Mute This Topic: https://lists.yoctoproject.org/mt/89469781/6783826
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [menon.vinayak@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
vinayak

