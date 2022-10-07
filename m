Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FD7C43217
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 09:35:03 +0000 (UTC)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 by mx.groups.io with SMTP id smtpd.web08.2485.1665135297778774242
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 02:34:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fxcxFG2a;
 spf=pass (domain: gmail.com, ip: 209.85.166.178,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-il1-f178.google.com with SMTP id g13so2272235ile.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 07 Oct 2022 02:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PxN4XlFcDfPoEQwXeYHgKa2uULYsPF4XnBZyLrGxsIM=;
        b=fxcxFG2aomvlbkfSlTHi74lzXdYTgV+nQnN6FmMEqNJfYC3uYlqiH9wLmd+rCX/xdH
         8PrdNV1wzEWzCa/lL/fWXMAZ58h8Lxayx22e5BSWNk7pGA8DrPC/bheX4r3w2WfjHdZi
         4cInRugtZDvjagTfQhDHerdmSv0JCOaR8Autg0RYwM+tq8ULrR88ckFU9db7EulTuogt
         jkcHNMJWVHUO8Nb0LvDOiC4zRw0zqlgAdyW5lOR17UV3FvnhH/4/qrAq9xKRYtbU98qm
         wmdszay07DndmbddHUv630TUMw0cyTKK4bPGj707ldaLLVGObKSAyLvx9ky88MVu+PJB
         lxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PxN4XlFcDfPoEQwXeYHgKa2uULYsPF4XnBZyLrGxsIM=;
        b=JmayajBlpRwMWogZ+fLWUG0pwyRtTu9kQyv6EEsiynd2VObZ2NiiYldatpgDAsO3yW
         0AaZBygH7NgrD84ZbmbmVDFC1/ZeGX7lz83vy4SBR7yDG5NqmjZNiUmYg8iqlQ1DgmaS
         pw5WOQkLkkMRYu3ENikV3h1P3rT4ldhSJjmj/oilkiHQV0tBRWz/mCA+HAo2D1PaseFk
         OMjwgnf8PY/K3x597N2nj7Qe10MrOWkHPSo3Yg8dm8Mn5ueGGfv5FZHhalywg3KVVwkG
         piJJscH7FxVq9Bfiknr7qzPteFdYDcn81zVOlHqP3htDVkOtzhd1EIE5zRTxH2z4BE5u
         TVVQ==
X-Gm-Message-State: ACrzQf13Swdlup/2ziDJ7kk0ajrmfpP02hh2KIg/yPCzG5aJIDloeOZe
	oEvWont07bcyNJBPY79/ynhuPH6Qbvft96rvHLk=
X-Google-Smtp-Source: 
 AMsMyM6e15hMRpCh2VuNUQ0adTKx6T3DuAm7tuqJKCUmp3q2YNs7PWRUzjSIu87YWtq72Of4LSZzfyGBLWXpxeWU8uw=
X-Received: by 2002:a05:6e02:1688:b0:2f8:3768:a620 with SMTP id
 f8-20020a056e02168800b002f83768a620mr1858562ila.98.1665135297176; Fri, 07 Oct
 2022 02:34:57 -0700 (PDT)
MIME-Version: 1.0
References: <931a9536-5f23-f48c-0831-33d2add6406e@bootlin.com>
 <12998.1665134928428236625@lists.yoctoproject.org>
In-Reply-To: <12998.1665134928428236625@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 7 Oct 2022 11:34:46 +0200
Message-ID: 
 <CANNYZj_5A-4gY5+ftq=GjW_AjNsd44EhmCw1LRGZE0UQpydY1A@mail.gmail.com>
Subject: Re: [yocto] other ways of removing GPLv3 components (than meta-gplv2)
 #gplv3
To: poberauer@yahoo.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 09:35:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58284

For what it's worth, I have eliminated meta-gplv2 from the
infotainment stack (e.g. a major build) of a major car OEM, so this is
doable. It would help if you bring up specific issues that you see and
we try to figure out how to solve them, and come up with a list of
'standard practices'. Even bash has a sort-of replacement in busybox,
which needs to be enabled and played with.

Alex

On Fri, 7 Oct 2022 at 11:28, Peter via lists.yoctoproject.org
<poberauer=yahoo.co.uk@lists.yoctoproject.org> wrote:
>
> Thank you for the replies, Alex and Michael.
> Have joined the docs list.
> Couple of related threads for reference:
> https://lists.yoctoproject.org/g/yocto/topic/question_how_to_handle/90285507
> https://lists.yoctoproject.org/g/yocto/topic/incompatible_license_how_to/75210517
>
> Thank you
> -- Peter
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58283): https://lists.yoctoproject.org/g/yocto/message/58283
> Mute This Topic: https://lists.yoctoproject.org/mt/94157267/1686489
> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

