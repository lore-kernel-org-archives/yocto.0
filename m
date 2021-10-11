Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAFF7C433EF
	for <webhook@archiver.kernel.org>; Mon, 11 Oct 2021 01:45:40 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
 [209.85.222.45])
 by mx.groups.io with SMTP id smtpd.web11.6287.1633916737970081331
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Oct 2021 18:45:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qKyKkfw/;
 spf=pass (domain: gmail.com, ip: 209.85.222.45,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-ua1-f45.google.com with SMTP id f3so7543013uap.6
        for <yocto@lists.yoctoproject.org>;
 Sun, 10 Oct 2021 18:45:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=mRiMiA1AxLtZXb902rwksX6daqa97mQ69c31bmOu3UE=;
        b=qKyKkfw/YdOZUYST8XaEmRHK8LLCa/Mk58odOiu+SJbjVvjpyILKR7LJHIxxwQFd+5
         0OzcWwL4w8O3PO3/8h3GXf3iH+Jq8QMzNhg6mpBd8pyp8OFGEjOYGilAgwxjuC5zAzY0
         /22qvzoWTzEYa5748dQ/WHVxKxwCfJFX3IzY4cRMPBdacROuhjdqLBg3qxzfPJe7lmNi
         oRRi6m5nN+0qOhTDT7arbZxJRvlnU0dC14QqmR4BNT5fUlfyqJboQFK6F39SiaCnWRUq
         ngkXaF+SxItnOPVCNYgL8yV0HgzIdDWMIfXms+5HJ6pSvVVdVAGxffpBSoy75L1PxQS8
         mdNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=mRiMiA1AxLtZXb902rwksX6daqa97mQ69c31bmOu3UE=;
        b=eNz60Qh9ffz5uCiDEmFfAqt2S+FELo49ef0vfS0OtIhmunOoMiPVMwHR7f8vmW6nKe
         zAJB7FlF27b5v8w0wOR1BhSRhWS/pmkK0Ik7Tp4Os9pACJjX6HkQFgfYNHW2Kmg1rNHu
         rfpXFUJwRfxx5LjJnVLvwt28uKqQk2k6ju/hF1JV60zBBqKGsV1egYLIIT1GQniOTIk0
         RS47W/n0HpcCZAWaPhqB5mUVgPxSF++0C3WORKn9yM8j8EvXjfDlbQEEB6CbpmLyQECF
         C8Si8iBHswvOaNW1dqAKAGD07yvrlajRBOn/RfX9vy3Uut6ZJMN/20+wW75jvDpicl/l
         ac7A==
X-Gm-Message-State: AOAM531GGXAHKdHe/xWckLo2isJvLz7jUzVi4XriW1ExE3KISCY+uVej
	LeKWx18H4lwoZ3xdYDTQaDaiH+ua/930yggTlguPX8Cp
X-Google-Smtp-Source: 
 ABdhPJz9mn43Jmrp5em3VB7TafdtvzCT3hhM0X4wMSphzbYovYdXtv6GkXC8cRZE8eJ+g61nN9PHcveMYkN+9+cbYjo=
X-Received: by 2002:a9f:2371:: with SMTP id 104mr12663015uae.80.1633916736790;
 Sun, 10 Oct 2021 18:45:36 -0700 (PDT)
MIME-Version: 1.0
From: Jupiter <jupiter.hce@gmail.com>
Date: Mon, 11 Oct 2021 12:45:01 +1100
Message-ID: 
 <CAA=hcWSPQbqv9MDuRKME=iK8NM3sJKOdAcS1hti2VW0iodGFbQ@mail.gmail.com>
Subject: Yocto build error
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Oct 2021 01:45:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55010

Hi,

I have following errors:

No GNU_HASH in the ELF binary
/build/tmp-glibc/work/cortexa7t2hf-neon-oe-linux-gnueabi/solar/1.0.0-0/packages-split/wifi_signal,
didn't pass LDFLAGS? [ldflags]

So I add --hash-style=gnu to my Makefile:

LD_FLAGS += --hash-style=gnu
LDFLAGS = LD_FLAGS

But that does not work:

arm-oe-linux-gnueabi-gcc: error: unrecognized command line option
'--hash-style=gnu'

What is wrong about the error if the  --hash-style=gnu is not the right fix?

Thank you.

Kind regards.

JH

