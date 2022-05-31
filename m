Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D23DEC433F5
	for <webhook@archiver.kernel.org>; Tue, 31 May 2022 13:44:07 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com
 [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web10.49409.1654004644470881603
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 06:44:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hg4mZ360;
 spf=pass (domain: gmail.com, ip: 209.85.160.52,
 mailfrom: marek.belisko@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-f3381207a5so7132090fac.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 06:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=qyqtbBY4K5Npz/7G84SLxfwFy/eA+W2UkjTZCOl3qcI=;
        b=hg4mZ360iNNMk6wS5YgtIoTDPNVsMq4++YHkJDbz1gATLfCnyKjgQ4J+q55pE64Vun
         MGl7bzAE7EQbB7vcrGL7X9JQl4JfiQ/F7X2W9GQVXd9/dxtJAomxhBr7kWjR5Dow81h8
         eu6uk13Qx26PBQ+iyC+u8D86BuR6HsQTCIv+ah+8Jk5pYJlgNekucIuHzouoqmU91X52
         IrBgi1Z6jBJsv5VaqORBgQ/+RQCTEb1zEKjC/JUMGSIPde26+NFY4DOmvWFitvCozpLT
         DShKSRCXcGKBP4vu42aheoBtHKqZv9S6PH/QxGCvqy5eL0lyDxWMM+7flbMSD4mZEstG
         bQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=qyqtbBY4K5Npz/7G84SLxfwFy/eA+W2UkjTZCOl3qcI=;
        b=x+PZbNdr/+Pi889muhfeOI+q7JPXBqbPhzWnSREJL1vV0RgSAaOXW8Vr9U3vYOf5fA
         JiSDCu2OyjTrQYqMD2rQbNaFoOJutwyiB6opRihjXlr6lED9eqRROopcgcoTC9T0Zwbx
         Izm7A8exoFxIHgyP/sdGdaKomD5KxNTrRNCZHo6Q/fXum8c9sOfwcOrL87o3yqOAtZj8
         LXT7d3BksAy2IDspGfM/cVJ80yCmzZVMvdvaWrAOGae9fCB9j8Kvp3BJ/PaJprKg5QMa
         TIDTSxURz5B736xUUoY9bjfwLhfPtY7/fIWgQKUrlJJ9yILB155wGuCw+HwD2Ger44gr
         dWFA==
X-Gm-Message-State: AOAM531ywVvzwWmta93HFJIZpWuTTRuZ0ZkTGmi1imjs7dDYBpCPUJxN
	4cj/o82sU5djbdOM8zjYA6B6zHZ0iuUYE5qnzbfjogTW
X-Google-Smtp-Source: 
 ABdhPJyAAUtXR3v/9wOUnGTQiLQd3ZKbHAzwa9zjSfnd+2u8/MNU3kGiLhvCWYW8nkpgpe1yaK+6f7XzLG8588GCtSU=
X-Received: by 2002:a05:6870:5b89:b0:e9:bb4c:a6f1 with SMTP id
 em9-20020a0568705b8900b000e9bb4ca6f1mr13598209oab.52.1654004643454; Tue, 31
 May 2022 06:44:03 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAAfyv34oyFFxds7=S6Gpdf97GgNqLtM3UzsQrSibF8wQsftyFg@mail.gmail.com>
In-Reply-To: 
 <CAAfyv34oyFFxds7=S6Gpdf97GgNqLtM3UzsQrSibF8wQsftyFg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 31 May 2022 15:43:52 +0200
Message-ID: 
 <CAAfyv35C5OGgdfzKLpQX4+NnynX=3eBeMYE7XHCoEShoJDKaQQ@mail.gmail.com>
Subject: Fwd: changing root password on readonly rootfs
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 May 2022 13:44:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57235

Hi,

I'm trying to add support for changing root pwd on systemd built by
yocto (using kirkstone branch).
I enabled chpasswd + passwd applets from busybox but they don't work
as the path is readonly. I symliked /etc/passwd and /etc.shadow to a
writable partition and it seems to work. Other problem is I have samba
enabled where pam is a required feature and after password change and
logout pam asks for changing password again.

I've tried to use usermod on target (same way as on build) but shadow
seems to create lock files on readonly and it also fails.

Another idea I had is to use overlayfs for complete /ect directory but
I'm not sure if this is the way to go.

Any suggestions?

Thanks and BR,

marek

--
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

