Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB52C25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 10:25:00 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.18146.1717496694436193082
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 03:24:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MYR9UaB+;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2e95a75a90eso57768461fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 03:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717496692; x=1718101492; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tUzrHoEvB0wv95KI/m2p7zRXGdecMYOOanHHJ1VIpp4=;
        b=MYR9UaB+LOiclzmEiekCYzP2x5sF6K7g5Cru2qrwGAjNhAzmPDzWpgtVx7O3tsvXMg
         JtVdP1fOZA73wQnSQozPVg+AYEOBdkXJ/+Eih8QoU1DmjT8UCXdVMRiFlpztXuuXgXII
         gIhYwcqK+eDdJUQvdsr04eRds0ruKRFrA8P9xfRSPOVvOM48mBl1+50KxSz3ma3u9WW5
         rUfRc21wRdKa3sVElk/SDU5iBo/DhjQ5pFWemxsAr7cNhb+FxBg8f3JhN9ZpQgr6EK2Y
         hAS+OWpN1Bxfk87W7lJWfG8HPXgGNxFllYvlTb1bs31fetA4yyApPiCdG1wwkccuKkSV
         pfXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717496692; x=1718101492;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tUzrHoEvB0wv95KI/m2p7zRXGdecMYOOanHHJ1VIpp4=;
        b=wGLlNi3uzA5GQIm1cWKwbCQTJ6qcEwqs5DZnNNOXGRxBYtW8NBhH+YmPPlf02mPM3v
         xXG/+/9hS5p2wLrNIVCLLfOXqzk8qqP1K4i9VIP0onr8I2c0+EKapW2TZxMRM4VHQGcf
         uo/4BXviYki2w7jehWjmGoOG657TC2bLDYDurrhQtzVX/cdFVPLvE2bQuspmqB5ev4ey
         tFhCoOONsKk0SQEsy/50Z5yn8YMOfV+OW5JW4CH+iC5LoMQvCum5OGfi+20xyGIUhebW
         n3zkTIwl6vRlwu9Ulh7eVibRQyWCAsPadPudt9/jVeEWuh2G2nxSFIIL7REzam5tXMu3
         8WIw==
X-Gm-Message-State: AOJu0YxRnHA5OCspJKSZH9aVMieNCP7G5v30ujJMloaWxmBnUTc0s/fT
	iYdO0+ctbzUSDgHlEYCKeE0tNyVemSLKzmRHqv/SvPLlVzTUs21wtb05LXsLh46f3TtKrcNBej3
	FWd/UOJsY4bm59XyS5JiQFEPoW89W4alD
X-Google-Smtp-Source: AGHT+IHXYNxlHHtvDjIXhemdAZ4umplq77QSbKsmYsOhsMn6NMFtiHToHDymB+0321Rc/quaMow9Yj1JpQF1g8dJn6o=
X-Received: by 2002:a2e:be9f:0:b0:2ea:ac55:6399 with SMTP id
 38308e7fff4ca-2eaac556f6fmr46658551fa.51.1717496692404; Tue, 04 Jun 2024
 03:24:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAKe-BNoRfMiza5Mf691s7h8DP1+BN38-0sx7-rdiSTJhfSkA1g@mail.gmail.com>
In-Reply-To: <CAKe-BNoRfMiza5Mf691s7h8DP1+BN38-0sx7-rdiSTJhfSkA1g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Jun 2024 12:24:43 +0200
Message-ID: <CANNYZj-fyCD3f_2RtDhKKMuO9dFk=pt7yb0fazez0v1Z_DAoBQ@mail.gmail.com>
Subject: Re: [yocto] Need to add TEMPLATECONF in Custom layer.
To: yocto@lists.yoctoproject.org, saswatinayak2010@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 10:25:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63271

If your yocto version is recent enough, use

'bitbake-layers save-build-conf' to save build/conf/ as a template. In
older versions you need to do what it does by hand.

To set up a build from template, use oe-setup-build (from scarthgap
onwards) or TEMPLATECONF= . oe-init-build-env in older versions.

Alex

On Tue, 4 Jun 2024 at 12:17, Saswati Nayak via lists.yoctoproject.org
<saswatinayak2010=gmail.com@lists.yoctoproject.org> wrote:
>
> Hello All,
>
> I want to add a custom templateconf in my build directory.
> Can anyone help me how to create Templateconf from our local source so that it will point in the build/conf/templateconf.cfg .
>
> Thanks & Regards
> Saswati
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63270): https://lists.yoctoproject.org/g/yocto/message/63270
> Mute This Topic: https://lists.yoctoproject.org/mt/106479728/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

