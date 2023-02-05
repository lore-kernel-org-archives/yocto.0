Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29866C636CC
	for <webhook@archiver.kernel.org>; Sun,  5 Feb 2023 07:38:26 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.24917.1675582703413093913
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Feb 2023 23:38:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TdUYd7Jf;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id u12so13680629lfq.0
        for <yocto@lists.yoctoproject.org>; Sat, 04 Feb 2023 23:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8fupz0lB1Pv4Fs3TtRfBnhOKQpO1wpxaPi60qcPNNuA=;
        b=TdUYd7JfpHhE6HvcZs2XREzC8UE9u4guo3kv82hwPzHvuutnVlqvJAoMeTDNqHPmtB
         reUDbDdSRO0aW/4uxOqVtR5Lump9h/v9qKOU6uXKH+J/VG1td9TONp5suU9RFfd8bqU8
         CQpoI1OCBEEvhC0r1E+nFkFoi212CuJ4OtY9vRWV4tzOT7wVt40LV0vsdkOIG8QsqwPc
         BkSpKnoTzewj0Y7zwnhKjNKwitn8uHwHUCXRUDG+B/ZEVkI/i5K97DDiVoDeC220lIDl
         t3hAYEs02pjEIJktG4RBUGRwsQr1JzBU4IR0+MyO7xOYrJ/a5ZJj4uomwdgadC5JL9a3
         F0qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8fupz0lB1Pv4Fs3TtRfBnhOKQpO1wpxaPi60qcPNNuA=;
        b=hDdeusp9FXgWXxhbAG9rSeA1sHB9eOkXjnbMlIgyFDSqJKsPscQh6nFQmfR06SEvXR
         JERrSmd/oMJRAA4ySMgzjZO6NBbiF4q7OLGH09yPHBY5qmK9iT9AbfWyH9sM0K+Mz1nd
         g8ZeWkzkWIgTOZEw/HIkgcHC6sxYmr5XZGR/j7/3072vBuKiDzHWFmRd5lkhSCCpv8LA
         rwns0FfdYD9Ng70xi2wJJ7LcGxNW/jlr/JQIdge01/ZJlebe+gTCBU7m3vdtM8q6MuX7
         A7Z6j2G6v97jppO81GwJC/bPbhkt0HV5dTnsGsL5XYfIaRaOHpEIvxwo72mPoZ8XYb0+
         BUiA==
X-Gm-Message-State: AO0yUKXxpmoS5cdJPTEDWO8pRNZqtEoDnXGX51YAIjgVpTruKCKYr5Vt
	fBl/X8ikmqzNJqMCVtS2biCVsrX0ikqncU5K9yw=
X-Google-Smtp-Source: AK7set9T2dVmmlRmLSz0VH0FN4i2T4mU8pjbaAq6FLArPq3wVzZaNlFnh7pw6Ij58Ca2vtMjF+3ck4TCUO7CFOCvtKo=
X-Received: by 2002:a19:4f54:0:b0:4d5:a652:e2b2 with SMTP id
 a20-20020a194f54000000b004d5a652e2b2mr2382042lfk.154.1675582701482; Sat, 04
 Feb 2023 23:38:21 -0800 (PST)
MIME-Version: 1.0
References: <3db8e6a5ee0f9dd0afecef56bba62bee283885b7.camel@linuxfoundation.org>
 <32073.1675570518496655471@lists.yoctoproject.org>
In-Reply-To: <32073.1675570518496655471@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 5 Feb 2023 08:38:10 +0100
Message-ID: <CANNYZj86Ozk=LBcKQtkVHRb5g+EAwdmPHTCNLCyX-GJKfWjaGg@mail.gmail.com>
Subject: Re: [yocto] error when try to use sudo command in recipe
To: SIMON BABY <simonkbaby@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Feb 2023 07:38:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59166

On Sun, 5 Feb 2023 at 05:15, SIMON BABY <simonkbaby@gmail.com> wrote:
> Thank you for the reply.
>  I was trying to add the layer https://github.com/savoirfairelinux/meta-embedded-containers in my yocto build. Below recipe uses sudo commands.
>
> https://github.com/savoirfairelinux/meta-embedded-containers/blob/b131baa90291c159d3a725b8d66786c85964556c/recipes-support/container-image/container-image.bb
>
> while building it fails at sudo command and getting the error below.
>
> sudo: /usr/bin/sudo must be owned by uid 0 and have the setuid bit set

That layer is not maintained and you should not be using it. If you
want to use containers, meta-virtualization is the supported way.

Alex

