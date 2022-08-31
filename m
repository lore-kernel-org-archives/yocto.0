Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3D0DECAAD5
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 11:17:10 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web08.24017.1661944625108926891
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:17:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HbD6k+/t;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id bt10so19484689lfb.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 04:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=MG0Zs++MyRxvC0zqxgU8oCRRFF9NtpS4WF8+G176G+k=;
        b=HbD6k+/tNplfynEWPJdl0GgcoqD6O4fbKvxwS2Ze9H7RMwW85Cc/HAGEjwXi7zHrCt
         X+H9oSu2UwG0FB7llXAVUsk5JH0lE1b/RPirwJadJ1yPk6z4r74RrxaaL2MbFtKrzq8f
         kfBPc/YWKKj2b8Gv0l3tVhZ25lYyyLPPFgONOicav0YevZ7etVuRO4K5RzL9pQzl/5GQ
         cO4wZW1g4jYp3UNqURlO5RraOYfI1znzVlUJFOBByHOgNSqtEkX5MlL83MFELIgNMj/5
         CN9AnHJSQ7FKbTk5OstCWaHLkdUCr+wAHMn+i+5AjewcvbIzb4pymxMaZyTee8nHWGWC
         0weQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=MG0Zs++MyRxvC0zqxgU8oCRRFF9NtpS4WF8+G176G+k=;
        b=NbtWGwa0TAmBNF4rfGzUJ7ML+ZEPg0fVcxJ9B+oPj/h/zmhNZDvScPp3PbdBjzmksw
         HMhJxXdmnM0SPq/DHKJFJj72N2zTbHMZ48NKrlErpIuwgt/kVRiyCg3gmNEFomNJRzKr
         Rm/OXHfZfLgm+8hdzfBrSNcgHKC0djCi7Gf1pYXMRfc11KRssjakWbHqzqH9hULMMll2
         Jxmz7EUy1jIqoslwkuVH1DHn4Mc2nmO5S9f9LH4dqSvSF9FuYvLwiuOZQFIvendsekkZ
         uoDi+8yf5/k5B8tQi9TAutns+Uvqk7E4BZApsJoe3kX92Xn1LzZFYEchiDEqLlBf75kP
         YKaw==
X-Gm-Message-State: ACgBeo1A7Fs9CF5XnYDHt07T2cojZZSbpiu+PF3ktpGfZCGN3+UnyPPg
	yud1aWHV+DWuBlfUl9G6/88oFQzTAy/sf+ooETU=
X-Google-Smtp-Source: 
 AA6agR6aAH/ctkRjb6yh3kXsTeyf8APJnpklSXELP6iRwlayx8BmeJ07EsPS26gZDi26audRAC422MtSGeUXpPS/8q0=
X-Received: by 2002:a05:6512:2511:b0:493:50c:ec3 with SMTP id
 be17-20020a056512251100b00493050c0ec3mr8840481lfb.665.1661944623227; Wed, 31
 Aug 2022 04:17:03 -0700 (PDT)
MIME-Version: 1.0
References: <003301d8bc7f$c2feb310$48fc1930$@gmail.com>
 <CANNYZj-NE9s+b9Yny9+5q6MFGY3fT5RpWX76Sx6p-yFRGty1tw@mail.gmail.com>
 <1792b01731d2412c53740470ba7521b68c6a3973.camel@linuxfoundation.org>
In-Reply-To: 
 <1792b01731d2412c53740470ba7521b68c6a3973.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 31 Aug 2022 13:16:51 +0200
Message-ID: 
 <CANNYZj8pr9cnMeR71mPQ=TZVx+zL7WBBC4D7dZLcm+XMzmaqDg@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 30 August 2022 (WW35)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 11:17:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57953

On Tue, 30 Aug 2022 at 22:40, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I think I may be lagging a little behind on status. I did see a lot of
> confusion about the patches and I know they didn't make the last
> testing cut. Hopefully they'll be in the next patch.

I just resent the complete patchset (across three mailing lists -
this/bitbake/poky). It's a bit tricky for testers working from
poky-contrib, as they need a poky based set, but this is for
individual repos and master-next.

Alex

