Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0E7EC48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 14:04:40 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.19499.1708092274193574197
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 06:04:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=S7fZJWT8;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d0d799b55cso24432421fa.0
        for <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 06:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708092272; x=1708697072; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=k445R96OPFqA2+SzmcQX92zHgElMB7+W1gXgKSjZGGE=;
        b=S7fZJWT8mu8/nJFc/gZqkbzZbR12gpylg7qvxLPR285BpRByXeT5+TfqYiDOJM1XlW
         YVi4KiTb0O2vXzB5yQAN1pFTHpkgFp5QheV1RnHCUlaW8f0czH85UwiTchhIaI8TJ/Np
         M0VAMTVsF2RxJ4Hk/mtQ9cqUyzZmrPSzdD7F52NAbfxNXoTZH+xcaa4lfkZ9LfVi/B4u
         9VA7eWQZsjwb84MWU+fR3o0q6aAhYOEub4/kvx5ZDxPbkegpZG1QcIaINIowjhz9zeDM
         sJmzDI3F5lRJ1274dIoyX4NGuC8yDPG/MlXdhWSZPUszKeOgWROmLPVBaa4GfgK0ZY/L
         zTHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708092272; x=1708697072;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k445R96OPFqA2+SzmcQX92zHgElMB7+W1gXgKSjZGGE=;
        b=Ab+AweJMVpdJQG4UWiSPFXuyqbsvtTd/TkUVjNV4B3DdQvh01Yy6fLb5qAJafTHleP
         13tLiJWSclOndcuREBEYlUT5LrtNiwn6vJBCQxz7OLlfZAk7KyJccrq/0SatzNAfwqnY
         dJ157kEjinVf7PNY3TW79wJ9ir6xoOsmXO4nLjjUi/37TVDy5ciuZlTbDL6ysPZfVert
         o935iHZ7dKa5987O7MCvD/7G0pmYSHWWHUs4DPjANurp9k6eVPLwo4oe7qbYd46TD327
         n+a1LAZrvXNYBvT0dy7tlNmSHd1BY552V3enGWJ6FLHAoVH8ynKrIGlJH7OmNAm6K14l
         tasw==
X-Forwarded-Encrypted: i=1; AJvYcCU6W88dPgkstlUFapBeY87tFAp3lcqFKpJdr3aeYCTn7x43EKIvgHXzFv8YhdeS5r5E8s+FpLVGkGF8JNbDORRmGHDpiuRpaWeNuk14
X-Gm-Message-State: AOJu0YxKGUUDcH8ukTlCTIUCqTWyNXrWR3kBPOnNAkMdj0iuEktVmxvB
	eRkKsN0wpYGng1iUJzp8xaBxr1WI+f0UN+rD9g3mGYdI4q2vcROAq0ZsBVXOkCk85v9Rc6OqCsR
	Hl6wRWLFqJODYv3gVopp5Pv3C7bo=
X-Google-Smtp-Source: AGHT+IEwNgQI6g6Zn4DdFlaAk5KwT8n8OuCdDLfh3yoTazy1Z7xAndOVsHpfE/FvE3KsRumPe/NzUD5/1hwuYN5eo4w=
X-Received: by 2002:a2e:9cd5:0:b0:2d0:e36a:6424 with SMTP id
 g21-20020a2e9cd5000000b002d0e36a6424mr3569514ljj.35.1708092272136; Fri, 16
 Feb 2024 06:04:32 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8YQoMdR=qKDHPYVUo7jKhRDEjS3Ah6EDccsbdwgmm+Vw@mail.gmail.com>
 <007c20be5b61da1d7752835a3f4775368a76bd97.camel@linuxfoundation.org>
 <CANPvuRmpF1m_TCQPotoNLUQUoW6FHJxEJsDnvBGr4docaCgK3A@mail.gmail.com> <b8e60d2febe6c9369da2f5b9923b4afc6f69e47d.camel@linuxfoundation.org>
In-Reply-To: <b8e60d2febe6c9369da2f5b9923b4afc6f69e47d.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 16 Feb 2024 15:04:20 +0100
Message-ID: <CANNYZj-PyrNwg=MDKuHFr0Og8k8nbboOqmAVeJSANeVe5Ku99w@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 13 February 2024 (WW07)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Jose Quaresma <quaresma.jose@gmail.com>, Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 14:04:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62523

On Fri, 16 Feb 2024 at 14:33, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> Whilst I agree that would be nice, I have no knowledge in that area, no
> available time and nobody else seems to have that either. Not sure what
> we can do in that case :(

I'd hope pressure on product-making users to do this update can happen
'naturally' as outdated version becomes a blocker to shipping products
:) The tricky part is to not fall too far behind though.

Alex

