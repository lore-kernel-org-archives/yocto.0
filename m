Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FE08C36010
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 19:51:06 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.5315.1744141862503696960
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Apr 2025 12:51:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PN/tKmZS;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6ecf0e07954so81153216d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 12:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744141861; x=1744746661; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5I9+CVB23vz3AzSKFAMDipz958D2JUarJd+FjJTkcxk=;
        b=PN/tKmZSl+UYl7czuYauX0TU8w1ECHXXTCMuw4NE3Mr4bPHoJk8CeDz114KCJhdKuZ
         tDoN9+RzYxQS15Ip7JnuvAGOAzRmtK7oDJ1PLh7vfazwhPp882msymt/zXReuUd5xO8t
         NvFCaQcM/vu8hNBUF8EsrGcKVleOl8VRcp6Ke1VPQSLWqAtnuyc9kLe532P9mGKPEM3V
         PmUsWuAuhjEBKYeArKRIn2jK7xfvnktEAMPvZ7GgTiazWNyRCmesMbOxdZ77uMTROrZt
         +JzjpKnIcUpR1V2/dGpNIZORPpNaBn8c7knyxYVCeKiQSnLzAiP0h5wAvHxD+gdjdHGP
         hyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744141861; x=1744746661;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5I9+CVB23vz3AzSKFAMDipz958D2JUarJd+FjJTkcxk=;
        b=Tg58QFJgAa+OZfc8jPHw6/GRg+63wjakd5la7GWpba3N7Q/LU5CUXAKU6WNCyoKNK4
         wsG2RTPOkv2p9DJtYZhAOH7w8eslrMDdFULM9ZQbt6FdhiiHHqmJcqchQLoEaO5GB0Y3
         arsP0f6EpPghtS0vTKFpn40mrDB3/XEYYdzBQzbYhqbvPV1ad4lLx/8m37B3OQFdDaq5
         Ak2zNFtPdLS3lbpReavGJ2U8POO/lYIvaGsVs8SIwN7fLeQs42aXKot4Zs7Bn2hgOPB2
         X5bJP/uNtCAm5ZZ1Jx1bctJblkdiaA8D+tlucP1DNlJPNKHExX7TfxUEHmbV+ZMUtPEw
         CDnA==
X-Gm-Message-State: AOJu0YxW7yiLZR+RtEmnWpDmxxevo/45WxosADIGqqxI+xVwJiv/jGw6
	ptiJj5KNC7KzRJd7dm7zvUkXZ0ICxUvuvb2+r4MNmCFMXmdzjkhuunSMeJx6+AUJweXqNCwtOSc
	+uK+RLS+wnyL8NfdtX4vedyRQcqg=
X-Gm-Gg: ASbGncvmpPNKe7sE6aN6x3Cihpp5y3bPRvEFC5gyh9krgtHDp8yAwnXY2orOJzYFKzl
	FWG7aBXxOykW58DdZYqfvOTr3oug8HiHfUXDNTLZwBA8RbED6tTS/wbtz/hTYc/qB43hGDfRGcc
	ed/N4yChvao0Hchj0ENDH2tfhYZnV1l1htI+f4Tz8sijJBxsPNtKCvGwDLkXRf
X-Google-Smtp-Source: AGHT+IEYOFcG7kg5sxgE5xq4Fj1v4G9nZ5ZoygVvlKZFtP2WrgjypY52Bkbz9dcuWwqyl2MiMMnx3hx5XdAa9+AZivg=
X-Received: by 2002:a05:6214:1d02:b0:6e5:bc9:95f8 with SMTP id
 6a1803df08f44-6f0dbbc0f40mr8451956d6.17.1744141861560; Tue, 08 Apr 2025
 12:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
 <183447646FA7BED4.31078@lists.yoctoproject.org> <183447EA8991BD5A.31078@lists.yoctoproject.org>
 <CANNYZj9ZEiVebtxiaXEsFSR_2EmYDq5Qx4M3wskpKdL0mZMvXg@mail.gmail.com> <CAJo0Az703ob3hXzqYGHCxVQ=L9RLpc_yYf2uOsTskkZ3g3JZ+A@mail.gmail.com>
In-Reply-To: <CAJo0Az703ob3hXzqYGHCxVQ=L9RLpc_yYf2uOsTskkZ3g3JZ+A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 8 Apr 2025 21:50:50 +0200
X-Gm-Features: ATxdqUE2wnLStq9IXmqxHeqsuI39-SjGqdB3kbh7vwD2Mx2nHP60Z8D6h0G71oo
Message-ID: <CANNYZj_YJNvWkf-Qu7UFnKbSqqEyVG5TvnjuF_BSjEt=ghv5Rw@mail.gmail.com>
Subject: Re: [yocto] [auh] Setting up AUH for non pypi recipes
To: Tom Geelen <t.f.g.geelen@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 19:51:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65128

On Tue, 8 Apr 2025 at 21:16, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
>
> Ah nice additional thing indeed. I will keep it as UNPACKDIR as I
> believe that is now the preferred place.
>
> Other than that, does anyone have a clue on why devtool (via AUH)
> always seems to throw a git error when it tries to upgrade a github
> based recipe?

As I said, the particular error in your original message is caused by
S = "${UNPACKDIR}/git", and if you tweak it as suggested, the upgrade
will work. If you have other examples I can take a look, but AUH
handles oe-core pretty well in general, including github based
recipes.

Alex

