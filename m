Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2DAD5C433FE
	for <webhook@archiver.kernel.org>; Sun,  2 Oct 2022 07:54:52 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
 [209.85.166.46])
 by mx.groups.io with SMTP id smtpd.web10.5615.1664697281850080790
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Oct 2022 00:54:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QNERUHPZ;
 spf=pass (domain: gmail.com, ip: 209.85.166.46,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-io1-f46.google.com with SMTP id g8so6198296iob.0
        for <yocto@lists.yoctoproject.org>;
 Sun, 02 Oct 2022 00:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=nw7j7aWGfXiwHFyuqGHrzlyzEBWkEcyndFCiA0GgWPo=;
        b=QNERUHPZqH5rqbNnZ2Je+O9CK6SFL/na5CJHKx9FWflW5M7OQOfikhildJjlWaigVx
         f8piS21UAeac3IyeePf068ZSwD4wQ2xYCgJSQ2WPNduyjw+jxZc3+0VSf3VE17bRAceR
         uBqli7oDTr5ewLQrRj6CX8VUcGqsZOl5ZAOj0YMosto70sY42VZUpuTG/IF8+XrnXzeQ
         GGdUTZiBf3TQlzbAU74stsyES7UV4MFuWrC0SnPE65Lu+GQ7SHajeRaBCgoSDxELtThW
         z6KabVcax8t3fcnWESKywqkaAjzX4KmKxXD/K9Ct9oPiDjJD0Vew6RpgoC4CHxwTE1Yw
         o/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=nw7j7aWGfXiwHFyuqGHrzlyzEBWkEcyndFCiA0GgWPo=;
        b=6CnUz0OoTvY3xxXLWh7kF1VOuXgQVveYU6FkyuSL2vr26+eHTzaN8BtDutvhxyCZne
         qn8pPn5EyKSDJjyYbSLk6dLxlyp36tBFLPLyE84dNNE566hzBtTmaubHPaq/9EeJ7FDf
         pDZRHebkMq0A4Jit4jqDjtYGfhc0EyClKWDEnpZIvrt/a69qEcxgIkHTR+vyQusnUCfE
         cVJdPXzb6SQNnUZPf+HDurf9TKhVJ++N5reppoPbOEwN3zRb5vu3cTrrZ81rxD5pF4+E
         K4QBtLh6/csvD7PUP/20cDIpW2IMiWj8k23A0ThPkyrrtmk0wkWInsY74xF4VbKPHYya
         Y+Dw==
X-Gm-Message-State: ACrzQf3yI9v2HvKnpPKN+9j7/eYcA2kA6ERPqNbU0Rthu9tfUaOzBiBZ
	xgQlJXbHeP0mn0//JjFhK8bEp0t4d+gZYVRqo6o=
X-Google-Smtp-Source: 
 AMsMyM7nsPRY3kMdI7V8SmRHvvAOuG11sIzJSSvIU8WYpVta0d4vCXsgMi2s901C6dsDlip5WXSuixQ/EWhQrlgUT7g=
X-Received: by 2002:a05:6638:2056:b0:35a:d11a:e814 with SMTP id
 t22-20020a056638205600b0035ad11ae814mr7323934jaj.44.1664697281067; Sun, 02
 Oct 2022 00:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <BREY.1664695778130467211.hWmq@lists.yoctoproject.org>
In-Reply-To: <BREY.1664695778130467211.hWmq@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 2 Oct 2022 09:54:29 +0200
Message-ID: 
 <CANNYZj_KV7GRBubeCKGDho=CXe1xpkzE4XAiWoFDT25aO-VAYA@mail.gmail.com>
Subject: Re: [yocto] Run rt specific test in "core-image-rt" #patch #yocto
 #qemu #dunfell #linux
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Oct 2022 07:54:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58247

It helps if you show log.do_rootfs for the image, so it's possible to
inspect what actually got installed into it.

Alex

On Sun, 2 Oct 2022 at 09:29, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello All,
>
> I have made a preempt-rt image with "core-image-rt" by including the following line in local.conf file.
>
> PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
> IMAGE_CLASSES += "testimage testsdk"
> EXTRA_IMAGE_FEATURES = ptest-pkgs debug-tweaks"
>
> and the bake my recipe with following command.
>
> bitbake core-image-rt
>
> I got my image successfully ready. Now I want to do testing of this image so I run the following command .
>
> bitbake core-image-rt -c testimage
>
> So i am seeing my all tests are skipped ( attached ). Kindly make me clear on following points .
> 1. Why my all tests are skipped?
> 2. How can I run the rt-specific test in my image? Except cyclictest any test, i need to run for this particular image ?
> 3. Would I need to run every test individually through bitbake or any other specific command so my p-test would run?
> 3. How can I generate the test report?
>
> Any replies would be helpful for me. Thanks in advance
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58246): https://lists.yoctoproject.org/g/yocto/message/58246
> Mute This Topic: https://lists.yoctoproject.org/mt/94066549/1686489
> Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

