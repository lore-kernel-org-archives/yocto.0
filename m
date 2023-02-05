Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD6FC636CD
	for <webhook@archiver.kernel.org>; Sun,  5 Feb 2023 16:43:48 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.32551.1675615423252791311
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Feb 2023 08:43:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hVAG4x7K;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id x29so9972997ljq.0
        for <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 08:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MdWHcqJwRsyuWjQOrLUO2GuDPlHOPb4F/bmJothqxyk=;
        b=hVAG4x7KyKjFdZXbygyHV5KAJ4KFH6r/PWQL92Y3jEv5jxuyNrbzmbV9n7qEsyUWeC
         9gRqOJxzdqZxOfrUk7lAXVDgpoMPUnFCRMtdzNCWBBJ+wrZs4I17Ct6NYLq25OTiHppp
         59+hZwrqcjug+sPeQPER27Klu2Z3k0+G9R1TDUgA/qkdXSSBFnQMzY2VJVZpI8x7GK6v
         yy+3CRywjWMc1prFDDAS6XcBtw8m8pHsWr0JB8Ab5NwyeB7souz2UOE4uElx8VThfiGc
         iRXPLLgpzBEVeAY/3XdEASjAagCglDBlSo7VkunpYDRtG1/mN5iT+pE5ZtrfePW2Now7
         e7gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MdWHcqJwRsyuWjQOrLUO2GuDPlHOPb4F/bmJothqxyk=;
        b=M5RIKYHqXgDhr+gma7VpGCjwzNkn23JAOYmnJW9QcAgaHz05ko7fM2GFrXWKbY2xzo
         BjcmNeS+mEPy/GLwX1J669VQNwujcccxn3jqXBc/fyJUeOG/5jJeBaxsX4pBq5otm09k
         N1EQfgK38Kd2k7js3dD3jpIi/EmHHRlrVVl3rDmaRPoZb4jVR+7IeuBuNIXlgpeANaWm
         zcSu7VAh0n/rIzianOAVoXBGc9nld5EyFO12eU9xeyRIO4Z/0a8dak/JPjXHhXCW+NOW
         fkeZDL25ReRnDFeJKMCtynAXmVZkp5r0doD80W58KvbvAuqlueljdLpV1atUDdB80PyX
         sv+A==
X-Gm-Message-State: AO0yUKX6EOgBaX9C6UxFbzQDaIf7r86v/GHY2ZMv5mRp6gWBUjuW6Cqs
	2EZr7S1VuPJlXQQLxvucd/PNJMFgumlUhJeesZs=
X-Google-Smtp-Source: AK7set+b/NPxCOQkQ6AMagzUTRR4nmVk/hBnOrti7bUo3lg1zWP0V+MW5AnJnb9VuY39VdqDChbsVDh7rc3f/dhw/Xc=
X-Received: by 2002:a2e:9ad7:0:b0:287:4eeb:53dc with SMTP id
 p23-20020a2e9ad7000000b002874eeb53dcmr2679677ljj.27.1675615421422; Sun, 05
 Feb 2023 08:43:41 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj86Ozk=LBcKQtkVHRb5g+EAwdmPHTCNLCyX-GJKfWjaGg@mail.gmail.com>
 <21962.1675614208925138368@lists.yoctoproject.org>
In-Reply-To: <21962.1675614208925138368@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 5 Feb 2023 17:43:30 +0100
Message-ID: <CANNYZj9Xcju8Ma7gFbc5AReDcKsiRPOFVS0OuJ3uy6byS1Ne6A@mail.gmail.com>
Subject: Re: [yocto] error when try to use sudo command in recipe
To: SIMON BABY <simonkbaby@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 16:43:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59170

On Sun, 5 Feb 2023 at 17:23, SIMON BABY <simonkbaby@gmail.com> wrote:
>
> Thank yo for your response. Can I know how to use meta-virtualization for building and loading container imaged into the target. Ccan you please provide a sample recipe?

There are sample recipes in that layer, e.g. in recipes-demo/images. I
suggest you clone it and study that and available image classes.

Alex

