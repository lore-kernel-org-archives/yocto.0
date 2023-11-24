Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A50CC636BD
	for <webhook@archiver.kernel.org>; Fri, 24 Nov 2023 16:53:49 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.web10.144012.1700844824734040981
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Nov 2023 08:53:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LJp6CER+;
 spf=pass (domain: gmail.com, ip: 209.85.210.49, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-6d7e51638e7so1240608a34.1
        for <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 08:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700844824; x=1701449624; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NT2hD+R/C0kaMMvbgKfAEJE4NVkzMYeUl764nfNmzJk=;
        b=LJp6CER+QXXKoRj8NChKUyuv3H1oXcmdJ8oHMnIH67LPcSniDC4hIBkN0XXotImt15
         NtqrwmGUii5yhfG+bXxGyqm0BFMQ0NEztZNhhNXqn4TNJON9aZpT1xRCNI8In7yaDjgB
         /lnAdQhHzem7tXQxj0jcUwFUAp1sIXFMIsOFz/dQ7SEPsRbJ7AIj7ia+QrnLByNBOBRj
         G2aCkQTcD/1A/dHOEsbT98+m3sBLYythvzGZk5qE2tDM/OWRLk1gdBlTXmLgS8r75PM8
         /hk5Y7YuqMlCyOBWPGBkOx9IkTjJqvU7CvHqUruL2THu87t7KOh6cAuDOaosdZaJ0GWF
         JwnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700844824; x=1701449624;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NT2hD+R/C0kaMMvbgKfAEJE4NVkzMYeUl764nfNmzJk=;
        b=kMu+1L2h5jfHwI9NH/FIKMioX0QH3g42oOfCCU8q5hcBd4heMCsc+FK8S/kmjiYquM
         LGvQq/KudkJX5eRbt0MoBwu+wWofwtWFYdKt+67qKf92l33YyM9U1bTZT4soSjs7Cqvo
         egvg7G5jI0Ri5wgWUdlavHxV3Z20cNjNC1Mynd2Vb0bpl39jE7R9W/eVDuv93rpUa4rB
         vClb2NH6tRUQLx0iD+IVmTCu/ZUnYeXJdMvZzwjV/13p7a2in/tjHVKRfeGfsQ5C3fi1
         eHKEkJ6R0PCmnIcLr1pz30z+/uxnfg1DYL+/XQl7hPmcdJEmzHZrsMJIcRlengjC2q/W
         eyjw==
X-Gm-Message-State: AOJu0YyVzou+FuxtukVAJjesHGpiQK8pmzuCAbqzmzACqpSZwWYWR6h6
	z7MD/kWc7N7sLOV6zbLqm/tZtFU59WONQZwYqq4=
X-Google-Smtp-Source: AGHT+IFz9tvfubwFIbjaW3EVBZAFIw/FitT/e5mue7OYgXMsESakACtJ6QUi8T+9nGCkLmTtSB6OufEw4rBdklZrXek=
X-Received: by 2002:a05:6870:c154:b0:1ea:38:8e34 with SMTP id
 g20-20020a056870c15400b001ea00388e34mr3726530oad.17.1700844823651; Fri, 24
 Nov 2023 08:53:43 -0800 (PST)
MIME-Version: 1.0
References: <20231122014822.3871458-1-raj.khem@gmail.com> <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CAMKF1spmQVfXj6TMMgDRrneUeFBKjGfvfN5JT2USC3CkyvVB5g@mail.gmail.com> <750E6423-8371-46C6-96A0-DB901787BEC7@arm.com>
In-Reply-To: <750E6423-8371-46C6-96A0-DB901787BEC7@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Nov 2023 08:53:32 -0800
Message-ID: <CAMKF1src_2+T=OOr2G2B+P=HmwXjTJGU+BGCn=bmrvHjaoCmAA@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
To: Ross Burton <ross.burton@arm.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000088292f060ae8cb53"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 16:53:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61753

--00000000000088292f060ae8cb53
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 24, 2023 at 4:09=E2=80=AFAM Ross Burton <Ross.Burton@arm.com> w=
rote:

> On 23 Nov 2023, at 16:38, Khem Raj <raj.khem@gmail.com> wrote:
> >
> > it pulls in lib32-vte which pulls in lib32-gtk4
>
> So the trigger is bad packaging, as surely the vte recipe should split th=
e
> libraries up so that installing a gtk*3* based terminal doesn=E2=80=99t p=
ull in
> gtk4 for no reason.
>

New vte enables both gtk3 and gtk4 support I don=E2=80=99t think it=E2=80=
=99s bad
packaging. Multiple versions of gtk can live together in a rootfs without
conflict


> Ross

--00000000000088292f060ae8cb53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Nov 24, 2023 at 4:09=E2=80=AFAM Ross Burton &lt;<a =
href=3D"mailto:Ross.Burton@arm.com">Ross.Burton@arm.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">On 23 Nov 2023, at 16:38, Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com<=
/a>&gt; wrote:<br>
&gt; <br>
&gt; it pulls in lib32-vte which pulls in lib32-gtk4<br>
<br>
So the trigger is bad packaging, as surely the vte recipe should split the =
libraries up so that installing a gtk*3* based terminal doesn=E2=80=99t pul=
l in gtk4 for no reason.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">New vte enables =
both gtk3 and gtk4 support I don=E2=80=99t think it=E2=80=99s bad packaging=
. Multiple versions of gtk can live together in a rootfs without conflict=
=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
Ross </blockquote></div></div>

--00000000000088292f060ae8cb53--

