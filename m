Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5386.1620818055717395632
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 04:14:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=C7scGQMr;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 63D3E38C06F9
	for <yocto@yoctoproject.org>; Wed, 12 May 2021 11:14:14 +0000 (UTC)
Received: by mail-vs1-f47.google.com with SMTP id u188so4267740vsu.8
        for <yocto@yoctoproject.org>; Wed, 12 May 2021 04:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=c31d3JYlf41J/Rk47gh7tLmhHbneTqheml3JhgSTSPQ=;
        b=C7scGQMrN9Zr+P4bKmQLDYNSCTr/20LLbOVxBC38bPmD/r2+Dfm+bo/Ab2VqwFJqH2
         woSOd+dLo0E6CRRZkKBD9r+mS+aAzwWBfYUGkT7jShBBF9baFZjLbK1OmUjOnQE/IwSP
         /so1oYrpt2hC0eCmyo1gW3QDwDoqigAI7ZHgXx3pXiYg9wifILC/2GWHNuKAci36z6Ih
         dfOzTxTlxgPD18crrpMVznpa92TkXWmV4xFWButDrUlW+NRfd7XLkpJa1Z47nybrnxZN
         lmBOxaILsIS0dtVMocI8PA/YSd30CzOXLwcE94uI1KSwiJtYMUxqTHaLpUCTE5b7AuQ5
         4Gng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=c31d3JYlf41J/Rk47gh7tLmhHbneTqheml3JhgSTSPQ=;
        b=LkRl/bRZUHqezlfn78q+LlxeCknKQFnrUxZIC30lycO++XmQR9uI4hO5svU/8lUE+J
         9l5erP8ZltEGrbweqaWXu4wUerflqvqn2w3MhyQH//S3x5toltO54/rzQV5yIKMkaVc6
         6gufLJgMPtF2fpHapjz6DptNoP8x5BuCsqh6LcSnrBNfeS7WG8yOUu/u8uHUR4w0NkW8
         DU6JMcniQYy1KRwPWENveioyYNx+8wlFmzirWZeuS9eNSrbRcK9KzKxlHNol3DoMOmQe
         stWMj6r7v229jhKVPucMw9W5zQw/7JUqzrn9Xs2rnBH0RcTk0xwsAT5LsjaUV8n6P1Qi
         f8jA==
X-Gm-Message-State: AOAM532R+8h6KLdfhKOvgtCDJwDPdldORM2ombdwu2ijRx7wOiZA5Tf4
	3J1fzbdK3+Hr6dbrub/WNaFAuOpDEf4VjTJurAjrRh6ilSzqkA==
X-Google-Smtp-Source: ABdhPJzyu6qvykZQju4iGk0r/LT3qqK83D4IA76Ew5djGNWXbs6yDg1e40NjeuNLY/maKnG6nDwzd7qpQmVENEsy+00=
X-Received: by 2002:a67:2e43:: with SMTP id u64mr30638796vsu.23.1620818053223;
 Wed, 12 May 2021 04:14:13 -0700 (PDT)
MIME-Version: 1.0
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Wed, 12 May 2021 13:14:01 +0200
Message-ID: <CA+4=imafR6ncjuC9UOgR3PBPS7MR7H5fo42vn0M9tk7=GSFUoA@mail.gmail.com>
Subject: Understanding kernel patching in linux-yocto
To: Yocto discussion list <yocto@yoctoproject.org>, Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"

I am currently working on a kmeta BSP for the rockchip-based NanoPI M4
[1], and I'm wondering how I should be providing kernel patches, as
just add ing "patch" directives in the .scc does not get them applied
unless the particular .scc gets included in KERNEL_FEATURES (see [2]).

From an old thread [3] I understand that the patches from the standard
kmeta snippets are already applied to the tree, and that to get the
patches from my BSP I'd need to reference it explicitly in SRC_URI
(along with using "nopatch" in the right places to avoid the
already-applied patches to get applied twice).

I have the feeling that I'm lacking the rationale behind this, and
would need to understand this better to make things right in this BSP.
Especially:
- at first sight, having the patches both applied to linux-yocto and
referenced in yocto-kernel-cache just to be skipped on parsing looks
like both information duplication and parsing of unused lines
- kernel-yocto.bbclass does its own generic job of locating a proper
BSP using the KMACHINE/KTYPE/KARCH tags in BSP, it looks like
specifying a specific BSP file would just defeat of this: how should I
deal with this case where I'm providing both "standard" and "tiny"
KTYPE's ?

[1] https://lists.yoctoproject.org/g/yocto/message/53454
[2] https://lists.yoctoproject.org/g/yocto/message/53452
[3] https://lists.yoctoproject.org/g/yocto/topic/61340326

Best regards,
-- 
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
