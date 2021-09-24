Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,SPF_HELO_NONE autolearn=no
	autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 747AFC433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 04:47:08 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.3983.1632458826904225598
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 21:47:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lFh4k0rR;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id a12so5608067qvz.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 21:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jXXlfY2vKDFWUHz4xAIHqWXUWmzeb6CMIeeJ7DeAmZ4=;
        b=lFh4k0rRoyrB/HeNEJbApqYurxiqwpwL7fPmcLhCfgzLKkHadkaZHdkNjSo5MzEf49
         b+9C5urga3HqeAKn+FJkXC7Yaz0uXfS+ohlGiA3AnqK/djIMqqASMQORgLo6xcfuXhxD
         JpKl8hBKG2n90qYA0XYlm3uX546EzkARwXOqUsFHROkFI0n4YWPb9qCBD2oQI/nYXrWB
         uYIeAVJnwaEiqjMLqoxyn6wS0wfDMoMHtv8agjihaYiBZqLTzOwKJo3NOKqhTcCH9y+X
         nGolhVZCLTi8XLAdRwt1Ijw2xHNkuaUqQ7S+FJuchehukdk0z9bem/pMb6rFP8bHTS/e
         n2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jXXlfY2vKDFWUHz4xAIHqWXUWmzeb6CMIeeJ7DeAmZ4=;
        b=KRAWq1TPYBbO2BsyVXw7VZW59MfPA7B8dKgEcNbD+FlFhB4pHFrc8v+39Lwf0O/OF/
         y4LdBR2t80ouQWTyU01c23eQErt8ksiOmoFIt6jbs2YWQGpT8Gras5XtF6nTsIg7U8du
         PcmS62TmRscKlcia7O0qsSeAxHmHPeykU/xHADLP+BBHWvyolAWgnqFl/NszkItgxYQX
         Ce5KKiTonhdvqEMYqG/vNOU1x3hwIQnOMm/np+LNwgn9HUsGNnEy4UjIOLmVmsWXF8/o
         /JUWemgM8FwTT/Nyao1evR5iUKA/iEdUTIxtQ5nButyNgrKgs9jhybhhRObYsd3f4Rep
         LeHQ==
X-Gm-Message-State: AOAM533emkuwXV3NdCAiHB5QagNpSMvPIjcXdJLy41AqhIoeCiGLTY6x
	kDjY8bOwUrGVCptat6ZURiJcJPwQgl7ZFCnbFQk=
X-Google-Smtp-Source: 
 ABdhPJyL3hKSm93Npipg3lCHVWR0FhWtWsuYPX3myMTTHq3rq8T10p7X8F9vgPPG9voir8Bp7q0AeD7BLPMns1jcQCs=
X-Received: by 2002:a05:6214:50b:: with SMTP id
 v11mr7914245qvw.41.1632458826077;
 Thu, 23 Sep 2021 21:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
 <20210923115919.GA25233@localhost>
 <254c0237-f5c0-8f64-61a0-a5e8835d64f4@t-online.de>
 <20210923205548.GA5309@localhost>
 <255e8117-5135-6f34-3b7a-7b9b94f0b603@t-online.de>
In-Reply-To: <255e8117-5135-6f34-3b7a-7b9b94f0b603@t-online.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Sep 2021 21:46:40 -0700
Message-ID: 
 <CAMKF1spTrnpFBLJVace9WcMesgEWw-7h9mqYA7Gp2HG_Gn=Jkw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding
 root device
To: Markus Volk <f_l_k@t-online.de>
Cc: Trevor Woerner <twoerner@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 04:47:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54829

are you both using systemd or sysvinit

On Thu, Sep 23, 2021 at 3:26 PM Markus Volk <f_l_k@t-online.de> wrote:
>
> I'm surprised mount doesn't complain about those first 5 lines! Those are not
> properly-formed fstab(5) entries.
>
> No, it doesn't. Those entries are ignored except /boot.
> One interesting thing: i always had that bunch of malformed fstab entries.
> Before the change from static to uuid it looked like this in fstab:
>
> /dev/mmcblk1p1 loader1 vfat defaults 0 0
> /dev/mmcblk1p2 reserved1 vfat defaults 0 0
> /dev/mmcblk1p3 reserved2 vfat defaults 0 0
> /dev/mmcblk1p4 loader2 vfat defaults 0 0
> /dev/mmcblk1p5 atf vfat defaults 0 0
> /dev/mmcblk1p6 /boot vfat defaults 0 0
>
> Now it looks like wic fails in getting the correct value and uses sda as a best bet
>
> you're proposing (a bunch of malformed fstab(5) entries) should be considered
> correct.
>
> I guess i just got used to it because it has always been like this since i build for the rock-pi
>
> In the mean time I'd like to apply your patch 2/2, if you could please add
> your SoB line?
>
> Have sent new patches. Just delete the first one if you dont need it
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54827): https://lists.yoctoproject.org/g/yocto/message/54827
> Unfollow This Topic: https://lists.yoctoproject.org/unft/85688479/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

