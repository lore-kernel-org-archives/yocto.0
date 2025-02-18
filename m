Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9897AC021A9
	for <webhook@archiver.kernel.org>; Tue, 18 Feb 2025 08:29:19 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.15149.1739867350673671159
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2025 00:29:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fxZDf6Ci;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6e66a7e2754so26186486d6.3
        for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 00:29:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739867350; x=1740472150; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aM+Eks+0dGGe+HqJivH2stDwZd6eujlhmcojnKxYnDY=;
        b=fxZDf6CiUdC2jWGO2WrH19ShjH/liBAdPzLgT83D0frE5G3ideGS3ZUKATRKPccMFh
         mfeRyvMpBuTFgRPaM0CuAL5cMbmkPBo5qegjrypKAAjihI9n/izpFDE/QiUEQ2eF1dTr
         igYrFApYog8ECP6YNF9RFwTtifV3tCcv+Kv0PnzCWG+pDFK1RLtI++u2PlSBnHz9XMQh
         egVwXVqMoCN+/MIkOL1AtJGmDDkgYVvpeG8nMtJFwD+p+tcsQry5VdkLAgZ9G528DEJW
         KyeZFlsUan2NGN0gCwMTm4OGq6+UbbMa+Imf71lkHm87+FQLPCTnr3H9RopwFbSE7trD
         Q7Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739867350; x=1740472150;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aM+Eks+0dGGe+HqJivH2stDwZd6eujlhmcojnKxYnDY=;
        b=oXIxnqH4oFIMHF00OXefERCTb3WwAPWhVP02S3Vg3Rd2z4SRT3cI3XoL3sTnuNG0AM
         iuJFw7nJFSZyeGAkL7BNnaiasBr7nSy8P4rtP/OGDKBZYZArgDfrDf2120s+7HjkSKpl
         j3/v8ioHDn5WEJeX9PGUX9KlTGkJCeZyk5a5j+xp+EB1anpuBb9WAF0sQ8J3Cl+QMCAh
         GYOStlL2BaWmcX2XQYKaRMXAOXjlc29TPjnZYS6hlsgRV6prvDlbu/HppjaJOaP7Ozjd
         XqPk4zTGjw69faIhWdrGFo/NkGeZzm6do/5c8YtKyl0aCMsndGgfUu4PZUGRUm7WFSgU
         nnBQ==
X-Gm-Message-State: AOJu0YyNpmlMDNhZKQ/hUixSTyi7w6FEkt/FOcrIX2mrDLOoBw/7H0FI
	ASmSbUoDHBOH7YhDizqOXEG42C2zEUV2z8c+OvNiT6iWyn7va4p7sJN5sU6Svt4yYM62zy6JVVl
	q1jNdlUZ3MHuiXWjypYnabEJy++R60A==
X-Gm-Gg: ASbGnctmkcOsM+bEiCqTFu0dgQdzzTtAzNw/HlCsaevjZFl08zwLdU/RWoTUeTs1qLB
	T5H+j3+sVCGzMKl6pmpIxTRRJ3u5rontvRaWwwPOBNwf1rr5LpqpRtyfqc3fIsnyH0w2w8qafxD
	MTC5F6JdCBZGQrwDLtRxeRlF1mHWW6A0k=
X-Google-Smtp-Source: AGHT+IHL42p6K8KswqgVqXmNws6WHIkqEo7mWzTm4qV3hDte1kaQlb9Fx5WdEwZO3wnW99kS45CMmrJIYv7ypjDQu/w=
X-Received: by 2002:a05:6214:ac8:b0:6e6:684f:7f6b with SMTP id
 6a1803df08f44-6e66cd23992mr199888906d6.33.1739867349725; Tue, 18 Feb 2025
 00:29:09 -0800 (PST)
MIME-Version: 1.0
References: <G6nL.1739859144253797070.NrZ2@lists.yoctoproject.org>
In-Reply-To: <G6nL.1739859144253797070.NrZ2@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Feb 2025 09:28:57 +0100
X-Gm-Features: AWEUYZmvr7_Rk2kGn7Imz1rg4nZSW-9tqHKpgoTUsOqbVOCJvsZL5ldeXwetKak
Message-ID: <CANNYZj_q0O9VOJk_x=qs-qkSM5CmTBRpdFOdQhj1EvgYKxg5ag@mail.gmail.com>
Subject: Re: [yocto] Any pointers to reduce samba-python3 package in Yocto
 scarthgap (300% more than samba )
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 08:29:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64833

On Tue, 18 Feb 2025 at 07:12, emailaddress.ashish via
lists.yoctoproject.org
<emailaddress.ashish=gmail.com@lists.yoctoproject.org> wrote:
>
> Hi Members ,
>
> I am trying to reduce the RFS size for Yocto Scarthgap
> We have added samba package in RFS .
>
> The RDEPENDS of samba is   samba-python3 which is taking around 300% more space than samba itself
> 21231   KiB    samba-python3
> 6468     KiB    samba
>
> samba-python-3 as RDEPENDS of samba :
> https://git.openembedded.org/meta-openembedded/tree/meta-networking/recipes-connectivity/samba/samba_4.19.8.bb?h=scarthgap#n213
>
> Can members please point to some pointers as to how can we reduce the size of samba-python3.
> Since its an RDEPENDS ,  IMAGE_INSTALL:remove = " samba-python3 " , package is not effective.

It's a bit strange that a package with python modules is this big. You
need to check what's in it, and if something makes it bigger by
packaging mistake.

Otherwise, don't install samba, which is a catch-all package for
everything. Install specific packages only.

Alex

