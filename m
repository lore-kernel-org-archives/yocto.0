Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46C6FC47077
	for <webhook@archiver.kernel.org>; Sun,  7 Jan 2024 03:53:49 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.9595.1704599624960239791
 for <yocto@lists.yoctoproject.org>;
 Sat, 06 Jan 2024 19:53:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KIY5AmBr;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: twoerner@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-680cb09a819so8531966d6.2
        for <yocto@lists.yoctoproject.org>; Sat, 06 Jan 2024 19:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704599623; x=1705204423; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k/pyFVDCpK5JwXXg2mcRy/7ZZ+XfeYjje1mo9CMr61A=;
        b=KIY5AmBrVlRDVB7wjc6Fh7vo56l7PTtdPdlnbTjabacRjUTBGBkq2lub8RU2CcCFxn
         hLDgA8azTqCxFOOZQ8QN+GyIWv5Vss5KxeskiF1z9m91vM1GsZMm+fEKFPzf1aiGwNNx
         Sb5otsuKzjaHuk1nTm8tc5xjOOoYps4bgVN24ZlC45CXXoykRO0IcAkjQoquJjDDShfi
         Yoc+z95BIU/hOoG2bmvMUz7hecnV1zP0aopfejkaHLHahlkvGZ4bWyc9Nnn6YOgm+H54
         0bw1kArCD9gbIAnp5ATKn8M3BUIrbjNSTyma7VINdybWu7eL1dbJ1eLbA+omQD/CLHha
         O61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704599623; x=1705204423;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k/pyFVDCpK5JwXXg2mcRy/7ZZ+XfeYjje1mo9CMr61A=;
        b=mCGubMkCW9wVx9PO52uSqM4M1jYFrI7ANSvNpCkdNCv661S6fnwhVGVWDsRkfdzkrA
         jpr4oE3aPnRMT8/ZU5/KVC70TVrv0Nj/0W+rdAf2/Yav4a0+Gk76CH76k6HgaR2+sQ9C
         uuuhTgoV8hv5eLJCWX6Yf6zF03h4jH6DX+FrYQJb5pAI4e9Oy3aJ0u1H1m3k+0jQ2Xwt
         gCqrMoWhM4seAirzhNlummUGBnnxRRJmYPOxRIHdKhEmHpzkMutnM+NndwF1EJdb7cQo
         i4QPfOU9YIuLRdY6F+mF/UdbUOkBKdA1ZxhvjJDaNVf/az552Z+6jXIz5uS9FHffzg9Q
         TqsA==
X-Gm-Message-State: AOJu0YykxpsmVWnJnNKfcwsZH0/4HnTNJ2j6fwobqmRSJdNbhDEnU3H0
	eIw4ITsYwYkO2gmb8rA29oc1U53Uuao=
X-Google-Smtp-Source: AGHT+IF3HLrcBkE5cWu9W7GXnM6MD7aM376WzOCvYXs2Ler1obLhvyhTAQnh92L198eLK4uI5ZtQuQ==
X-Received: by 2002:a05:6214:2588:b0:67f:d169:c69 with SMTP id fq8-20020a056214258800b0067fd1690c69mr2241936qvb.112.1704599622967;
        Sat, 06 Jan 2024 19:53:42 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id y14-20020ad4530e000000b0067ab9aaaedcsm1812413qvr.9.2024.01.06.19.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 19:53:41 -0800 (PST)
Date: Sat, 6 Jan 2024 22:53:39 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org, stephen@radxa.com
Cc: Khem Raj <raj.khem@gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH] use
 MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS to add kernel-modules
Message-ID: <20240107035339.GA29784@localhost>
References: <CAMKF1sqdmD+E+QjRkHGjv2_+r++gPZUGpvf3xpy=YD2wd0U9fQ@mail.gmail.com>
 <19798.1704350715538435548@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <19798.1704350715538435548@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 07 Jan 2024 03:53:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62098

I have been running little experiments on various builds with
meta-rockchip and with just oe-core and qemu machines. The more
I think about it, the more I wonder why a BSP layer is including
kernel modules via MACHINE_EXTRA_RRECOMMENDS at all, never mind
with MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS.

If a specific module were required for something to work (like wifi) or
perhaps some firmware blob, then it would be understandable. But a blanket
pulling in of all kernel modules by the BSP layer seems fishy.

This feels more like a distro setting, or local.conf at the very least.

I'm going to remove these from meta-rockchip. We can see if any are truly
required for a board to work.

