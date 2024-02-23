Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71079C5478C
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 11:25:06 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.8504.1708687496579284462
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 03:24:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NjM/mRuo;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d2305589a2so10153881fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 03:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708687494; x=1709292294; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6PJE2V+4elbWxPtLtV/NB8IWWZiW40b2EKBVRaBU128=;
        b=NjM/mRuosp30LFEBwOGr2Rm123ZE8iDIbK+mF80nAuAWykX28qJOdNzQjvmRETpNAj
         1gXZgxkaliNHxhwDbT0YFji+33IwUWljhlZhVQehXwcAJnpQKcF/5r1G/Anj1R/VR0QY
         X7fCYMv8WnK8LAnOJ6yZccLQ9GZklVqVAHRM51KffbCy47JjfR+Nq4UJEnWvy20neUss
         dy6cwuicaz2BidAdIi9RWF+XuV8WQ33fChKBTIdkDbk+kuU9zSMEhydFw1ni1ED5ZbnL
         jqcA0PIDGTqkTr7J6X87u3FlARGEw3d9PC0b7PNe03Re1Y8v3NKzEffQ7NY9DfYMuZ/y
         V3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708687494; x=1709292294;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6PJE2V+4elbWxPtLtV/NB8IWWZiW40b2EKBVRaBU128=;
        b=oCP4O5YSq6BppX+38r5RwRkceF5S9v0etrdrCU56jGXWX9XbMh3+0XRfSpQ2TCbjez
         evgvIhRS1yTnwgf6d9J1GFA8vmAQe2VyCadDMWBsP//k1r+JWeUKnmY+Ycsv0dp04f2p
         ECf6ApjpBEVWrV0Maeen0mGsavleaMLvS/W6N7gPksD823qj99ineut0vMtBqqVCsW7V
         JAPavK5r87Olf5B9eg8c1jdXggGlAiM+z5YTRKo7R4AAfSZH81RG57UN2YTQD71k/zZT
         PjDGoPGi8dAwd7J3+opJncx8YSD3K/ClY9O37Lt/WWWxKCiRlz62lE0ZlPlK09+qO2lZ
         UhIA==
X-Gm-Message-State: AOJu0YwEc9iKH5Pw6chsqIPEWXpIvQLxNIILmfNLaioUXFDYYRGDjkBR
	KYZvmm7dEfEDcXcYb1fGHsxsBoZFGpwzAfYyfOL0cgarrIXGavQu1AEFSqnkooGUQRVUa0ovg6D
	adnSAv4wjDaTaHFkeQAR5t2sPSdLRIjRA
X-Google-Smtp-Source: AGHT+IFKk22+G+Nc/w7HNZ9jJaNXGJZI9MsT7XI/O99sAJhHDuEqF3z7faTNBA0JRs+L0X349fTU1OiPAy8lVpXzWLg=
X-Received: by 2002:a2e:9784:0:b0:2d2:366c:b219 with SMTP id
 y4-20020a2e9784000000b002d2366cb219mr1000800lji.51.1708687494275; Fri, 23 Feb
 2024 03:24:54 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
In-Reply-To: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 23 Feb 2024 12:24:42 +0100
Message-ID: <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: yocto@lists.yoctoproject.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 11:25:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62576

It's probably just a simple oversight. If the problematic code path is
not taken in automated tests, no one will see the issue when it's
introduced by the commit.

Alex

On Thu, 22 Feb 2024 at 16:11, Konstantin Aladyshev
<aladyshev22@gmail.com> wrote:
>
> Hello!
> I was investigating some problems with the `devtool modify linux`
> command and have discovered that part of the problems is generated
> from the commit
> https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=923a9de418b3ca8592c3fd0a0d0b1e4b29533891
> This commit is very simple and just adds the `--no-verify` flag to the
> `git am` command. The problem is that this flag was added pretty
> recently  (Jan 5 2023 -
> https://github.com/git/git/commit/566902f2db3bdad9be7fb083c713f0d21acf111e)
> and my host git doesn't have it.
> Is it normal that yocto relies on such modern git? Because the yocto
> documentation just says `Git 1.8.3.1 or greater`
> (https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html#compatible-linux-distribution).
> And `git am --no-verify` works from something like `v2.31.6`
> apparently.
>
> Best regards,
> Konstantin Aladyshev
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62567): https://lists.yoctoproject.org/g/yocto/message/62567
> Mute This Topic: https://lists.yoctoproject.org/mt/104509876/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

