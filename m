Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49285C3064D
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 12:41:53 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.6938.1719492112482118270
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 05:41:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YZiKEkCb;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ed5ac077f5so24355861fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 05:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719492111; x=1720096911; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EgGkinPxyh4D5GIoSCnCZ/Ze36bd+Ml+h96Gn8sc9Ag=;
        b=YZiKEkCbzzcp1qoELv5o/foluHhzq8EtV7qQEJeDf3LRCHezfBG/3k/ZEVCx6ukXeV
         wSXQU+NedwLIkreuA/Ke6F15tENuTDjRQs3sx+LiFPcCtjtuUkvz6e8rgDUWViK8xBXm
         XhTkSclPZ3qeQFqDyrhaK6zie5VMBnwGXP3I9Cea6oky9j6BcRdIVXMkfDn6/v9ewBF6
         hg3Mwi6JgxIrzaL3BqsLcJUcFE0ADDulwRFsfFSLVqnSYqn7JlQ+xrNBQq89/MAdE7bt
         NRVwcwXiU6p0x4UtGMu5CHlZ+GJk4L9V5en1PP7ixpJt4DKOCWMjQTdcwmkhbEtZIYok
         OaAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719492111; x=1720096911;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EgGkinPxyh4D5GIoSCnCZ/Ze36bd+Ml+h96Gn8sc9Ag=;
        b=Ho3o3tLcd4dq3LqlfQGMT/Bv6/tLT93LvMLNsXcIe/Eki/rVtoAjytw7SzOEX2zWOy
         /mi7CKReafSSDPch7msiygzNkh2HeaYhseWyrJ+FHlxMuSMFlSAvfBbnz9619hOmjbb7
         wuaRkIuicHKKWesEDyX2lyoAuvn/3GkkoVGaqDE9HoEBtuUBIFU/mG0m/9jleOaAl5JC
         SwHrF5IdufdIxUPb6/zNomJjna8zWKagThsnt1YBuzWrqdgTF9UJOI+rQDkf1Ny26a7f
         xLu6DBO9v0GsBI7yElZDU3INh7jZCO5sCJzlCMTQAcJG1Jwck4H0Iz1RQzcIQHB6/cTp
         P+1w==
X-Gm-Message-State: AOJu0Yxnr09LB9IjA2IfZ5nf2vjpTq1IElLoj5U9HZaOfAHHERVGodTy
	94L4UYRqR/zfdFRRDdQQ9lQ9VZ74hOLQXQbPAiR7NekLTO1yAuL1vcOHC+cArlBjmLikpOV52AF
	rvtuQANN7KI0mNpOYhAE2Seea/NcaYg==
X-Google-Smtp-Source: AGHT+IFeQAPRHDmZwHK0AzusIVsUQvDjVv1vDRduXQBpDwthRZmJCxfECe3kLJ8ZtuJKi1s4IA2VFvT9CviwWA5nrXQ=
X-Received: by 2002:a2e:9998:0:b0:2ec:3d74:88ca with SMTP id
 38308e7fff4ca-2ec59401864mr82082741fa.25.1719492110367; Thu, 27 Jun 2024
 05:41:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAPfD7w=LCH33=5C9=F83pGuwYSJFaaNap-eR48R9Mwzqg=XL-A@mail.gmail.com>
In-Reply-To: <CAPfD7w=LCH33=5C9=F83pGuwYSJFaaNap-eR48R9Mwzqg=XL-A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 27 Jun 2024 14:41:37 +0200
Message-ID: <CANNYZj_0-tYhqVWDRFnsAWfjyPZk_9Oqv=nE1YKoy28qn=t0rg@mail.gmail.com>
Subject: Re: [yocto] Class file priority between meta-rust and oe-core layers
To: yocto@lists.yoctoproject.org, mcorbin@lunarenergy.com
Content-Type: multipart/alternative; boundary="0000000000006ec250061bde7486"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 12:41:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63401

--0000000000006ec250061bde7486
Content-Type: text/plain; charset="UTF-8"

On Thu, 27 Jun 2024 at 14:35, Mark Corbin via lists.yoctoproject.org
<mcorbin=lunarenergy.com@lists.yoctoproject.org> wrote:

> I'm currently updating my project from Kirkstone to Scarthgap and have run
> into an issue with bbclass file priorities.
>
> We are using our own modified 'meta-rust' layer, but rust recipes are
> inheriting the 'cargo.bbclass' file from
> 'openembedded-core/meta/classes-recipe' directory even though the
> 'meta-rust' layer has a higher priority. This wasn't an issue under
> Kirkstone.
>
> Is there any way to ensure that my 'meta-rust' classes are used by default?
>

Yes; rename them to not clash with the core classes. I don't think anyone
ever promised that class inherit statements would follow layer priority.
Not to mention that it's an endlessly confusing concept to begin with, and
is being seriously considered for removal.

Alex

--0000000000006ec250061bde7486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, 27 Jun 2024 at 14:35, Mark Corbin via <a href=3D"http://list=
s.yoctoproject.org">lists.yoctoproject.org</a> &lt;mcorbin=3D<a href=3D"mai=
lto:lunarenergy.com@lists.yoctoproject.org">lunarenergy.com@lists.yoctoproj=
ect.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">I&#39;m currently updating my project from Kirkston=
e to Scarthgap and have run into an issue with bbclass file priorities.<br>=
<br>We are using our own modified &#39;meta-rust&#39; layer, but rust recip=
es are inheriting the &#39;cargo.bbclass&#39; file from &#39;openembedded-c=
ore/meta/classes-recipe&#39; directory even though the &#39;meta-rust&#39; =
layer has a higher priority. This wasn&#39;t an issue under Kirkstone.<br><=
br>Is there any way to ensure that my &#39;meta-rust&#39; classes are used =
by default?<br></div></blockquote></div><div class=3D"gmail_quote"><br></di=
v><div class=3D"gmail_quote">Yes; rename them to not clash with the core cl=
asses. I don&#39;t think anyone ever promised that class inherit statements=
 would follow layer priority. Not to mention that it&#39;s an endlessly con=
fusing concept to begin with, and is being seriously considered for removal=
.</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Alex=
<br></div></div>

--0000000000006ec250061bde7486--

