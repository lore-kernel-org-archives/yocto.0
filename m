Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5533EB64DB
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 09:14:13 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.7157.1686734047243920257
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 02:14:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=BKqb2wj7;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2b341f83493so5865461fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 02:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686734045; x=1689326045;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dFacIK7vPBsxYquKohNjtV9VdwQFQkA4WLoDVSzB1nM=;
        b=BKqb2wj7F6XohZq2nXQkSZEAfnN1Om+YemS9QwlnD1t5okMN8sxuFqgA77C4+Q1KM2
         uOJN7Ud/obUY7bFxLGJYhRiFjb538HMTOOlyLW2uvwEIPCDWlAv/cJUMUFOQFnWm8XSt
         C5LWrwEDzcWPX4/0h1ludUcPwezViIHSFuUkxyZ4wk/jD0SqumgpgI7TTVKxsKa9DALH
         njArpnTYVylOdvgM06sFtoEs8moHwpHSsRrBLK4X/r1ZZNbs2WSNW3ZyWUCkBs7l5omH
         YRoZAYuLwNBzJg53nLI3dt163BNqc8nQRoIXsriUHM7ymAZPc9GDUTLPQWhDL6YB93qo
         awqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686734045; x=1689326045;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dFacIK7vPBsxYquKohNjtV9VdwQFQkA4WLoDVSzB1nM=;
        b=O2LwN8Yoa4fktm+DSQneRaRJIsr6Dd4PJAJqv/fKUnGZWfKyI7XO9XeKPVMsaXCwNE
         4aWKCp+HZhpoF/EMTlTDvdgzmQUTlLMPOnZeNU3WoTss52AfC7GbBB8N+aoz+wUe00kg
         Md2VCMFe6WnPJQCrqmdJNWwjir47yuBEUBO05ZdrpbW503wpLJS7fXhMEbbNY6Pe6aYJ
         UGcX5nOQZ76hHAMSA9Hj0DR4dJspoN6qeEDLLfWWE61Ui3u94kJ1oBT6I8LMezpS2Cqw
         yDnemAdoq+b4q/1xQLcEMkYMKc9TYv5j+SMrV/EfIzyCjS2o5fpBnYrDTkJHQoPWn7Qb
         k6pg==
X-Gm-Message-State: AC+VfDw83TExzr88prdRNwJ31oS5nVWj652PqrKFjdPPgwyLcWn+RZfq
	YeOm/N29Qovig930LrspCrl88axS8HWEEIpBnvM=
X-Google-Smtp-Source: ACHHUZ7lp5cBb2p/Cq80L+ryrGiLd8hqe/WCjvH8fj2zm59g9Ht1BFez9lWvjpAvS5Wzpf3RbMSll2rm5xWDNs0Uyo8=
X-Received: by 2002:a05:651c:158:b0:2b1:b814:c112 with SMTP id
 c24-20020a05651c015800b002b1b814c112mr5814718ljd.49.1686734045121; Wed, 14
 Jun 2023 02:14:05 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8Zb=2ptZHrZo=2Efr_=7s8mRR-PLSik-0=ApyN2tS=MQ@mail.gmail.com>
 <32579.1686733763470210039@lists.yoctoproject.org>
In-Reply-To: <32579.1686733763470210039@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 14 Jun 2023 11:13:53 +0200
Message-ID: <CANNYZj88p-YF6jN+JxmPT3Pw=nmaC7OAZaUde4koK4sYCddfww@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-base" through "bitbake
 core-image-base -c testimage -v" #dunfell
To: lavkhush2208@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 09:14:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60293

To be able to use testimage with qemu you need to set MACHINE to one
of the qemu targets (you can see them in comments in
local.conf.sample). It's not going to work if MACHINE is set to your
board.

Alex

On Wed, 14 Jun 2023 at 11:09, <lavkhush2208@gmail.com> wrote:
>
> Hi Alex,
>
> I successfully builded image with using command- "core-image-base" after that I am running command "bitbake core-image-base -c testimage -v"
>
> then i am facing above mentioned issue.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60292): https://lists.yoctoproject.org/g/yocto/message/60292
> Mute This Topic: https://lists.yoctoproject.org/mt/99522880/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

