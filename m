Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F081DE732F2
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 16:43:58 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.18538.1695919433825435734
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 09:43:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hq88rpmT;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-504427aae4fso12947132e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 09:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695919432; x=1696524232; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j2OB1CNXpzriND9gs2+nisX6A4ZOdx5ALgUjV5uUvCU=;
        b=hq88rpmT5KsK2gwTl4He1Iar7gFRKMtG3QSI7c7/8Og/5KAwRvuzAmo4pocGfL8LED
         wZrdDIQKcWc1fUb+xVG+6uheLthqmAYrma1g/hGofKp7NDXbIlAuzUxxGKb+OuJfUOc6
         Bnhy38yQVYFtGFu+/NKB7awjOxGG873Hay/pANacrPGkT2SSJzNgUiOKJ58aWGFbgLCO
         9Ux7jzm8yp06uSCWVLBLn57sX0H7Brsnl/HqrUaSCONntmIj/uLyf1aG8OkCmBGYbloY
         Ucz4cNzqcL1S1ilzkBKfB8WB4BDWylJunbEMUem0pIpVWIKF3I1VthnhuMyGXyd6dMLR
         N6pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695919432; x=1696524232;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j2OB1CNXpzriND9gs2+nisX6A4ZOdx5ALgUjV5uUvCU=;
        b=Jgmx/Xbb+bVGtP5nLebuf1Rz3tOLdJWkCjtmumN2OuhfQWurDE6bRYt3wbPuKS3jtl
         AAjQU1qVy+ZDAV1UdcV0thYLx96khSajLmecaicIuN01Zzqh/lPfpdtD2daiCN0dd61n
         VB/6h0k5pjiwx5JGzGXRIcZD+W910M5pOnPIS8hDqqui+pAdpRoNZF1qU2OAAuhEXYku
         q/TvYVWF5XcHpSovWdshWg+PX6w4pF1xLHleG0DXaCwYGi/v8K2T/fpbvjcA0cn4/lzL
         oZvlqwr7CuFN+VtSkBPzQC4OieXibkvFf0qhqO9LTUGLJbzGbeGBrfyU4GslSdfCIzKn
         C2KA==
X-Gm-Message-State: AOJu0Yxy5btZNhekMVAIfPqoQ9IKOCp8xxqoDEfCcO8NN84CymatEGjf
	WKTPYw7s4doq49nkAuEp2Yn4xdHEGDF2cfMkR3c=
X-Google-Smtp-Source: AGHT+IFxT4X2r3jiDEvNOFrx+QJro0hTZDO27aABdoZlPDK83NUcHzb31Rsye6iEpFq2Wbn9jnUjQc4HMv0efkVCkkM=
X-Received: by 2002:a05:6512:1282:b0:500:7bf0:2b91 with SMTP id
 u2-20020a056512128200b005007bf02b91mr1448619lfs.13.1695919431633; Thu, 28 Sep
 2023 09:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
 <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
 <CANNYZj8RAvj=sJtQuH9J_zKKAsUbhcdKe0hiA2JJy1wwxuzDNQ@mail.gmail.com>
 <DM8PR12MB54304C00CC6C924121E1CBDF8BF8A@DM8PR12MB5430.namprd12.prod.outlook.com>
 <CANNYZj8eSZZOfPGYCdYPrWjHf74dmRW5uYAZfTBp7JemPXxQCg@mail.gmail.com> <24b60007a669d075fa1e4ccd18980ada93714c7a.camel@linuxfoundation.org>
In-Reply-To: <24b60007a669d075fa1e4ccd18980ada93714c7a.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 28 Sep 2023 18:43:40 +0200
Message-ID: <CANNYZj-YBTN_yje-fyzp12YDF9XMaZSuMvLh6qA1H+9GEYEmfA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Core workflow: sstate for all,
 bblock/bbunlock, tools for why is sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "chris.laplante@agilent.com" <chris.laplante@agilent.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 16:43:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61156

On Fri, 22 Sept 2023 at 12:42, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> Things which used to be problematic:
>
> a) changes involving changes to gcc-source since it uses a shared
> sources stamps which confused the tools (at least used to). That may
> have been before gcc-source became a recipe?
> b) changes to a very common component (e.g. autoconf-native's
> do_configure) which make it hard to understand where the root cause of
> the changes came from
> c) changes which affect many recipes at once, e.g. the do_configure
> function in base.bbclass
>
> It might be helpful to write test cases for the scenario you showed as
> working above and some of the ones I mention above, then we can
> document they work and have an easier way to add tests for issues
> if/as/when we identify the problematic scenarios in future.

I've now written down the tests for these three scenarios and got them
to pass (in oe-selftest too \0/):
https://git.yoctoproject.org/poky-contrib/commit/?h=akanavin/sstate-for-all
(check the commit message too)

I am going to look closer at bitbake-whatchanged, what it aims to do
and why it doesn't work. I have a hunch it can produce useful high
level reports, and so shouldn't be simply thrown away. 'bitbake -S
printdiff' is too techy and verbose for some use cases. Maybe we can
fold that functionality into 'bitbake -S whatchanged'.

I'm on holiday next week.

Alex

