Return-Path: <dusrad@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E54F7C433EF
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 16:56:17 +0000 (UTC)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 by mx.groups.io with SMTP id smtpd.web08.12769.1644512177000202584
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 08:56:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FDy7u94L;
 spf=pass (domain: gmail.com, ip: 209.85.166.180, mailfrom: dusrad@gmail.com)
Received: by mail-il1-f180.google.com with SMTP id e11so3908668ils.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 08:56:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=lK3mzoIUhqXMst+g97grCsmZMQziyjGqc1Q2TWURx78=;
        b=FDy7u94LaFgoA45Vtvcv0EANAmQ3CKVyh6yMaAq+hWDpdKrl4Dkpwon2MvA4T+sRp+
         baSpMGBKsUJATBFB1YCGOdgGK4PlPC3VuCa3F5/NvDr9FAbOFsXmaAGOtisRn5a+k/GS
         2+9ULWb4IN6lAdz5gsmlZRizy30vzkBgE/Frvp48iIDWn3f4xZ06CMo8cKqVS/I+zRZ2
         y2cIDCGZbQXCVB75x+7U3vKsxKVjqtU/b7oKEA1bTJzt5Sy2BAMbV0LxZPa/2PmNAtXJ
         HQbkizQAlo8AsDC/2jkN58jsh9yrMfvhtC7hkyYy0N/qYT6wj5f3ZTnoL8Su3ILw1aOi
         NLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=lK3mzoIUhqXMst+g97grCsmZMQziyjGqc1Q2TWURx78=;
        b=M4CkjlsnPn+CRwNbHPTjTEmIvBAF4z59qSjAztxbmfeAa9GRfeJFgX+Ox/twt9TV5N
         H1NrLHKb6w0gxHKvth71dzBNiQJX7a+KbgRAL1RVv5xlmM10gpAAW+hNA4f/iMoAUMfi
         cCwdI8YajxT5ZrYDHYeKo89CS5lAA5fAGr2Jm1gtraDr97BStGgUolu86SYzE0CcPfRG
         lllkxjTbhowiE4vWw4PLogVFo0Ee5uAjDHRY5hxLW8o/GyEwQZYlm1WK4Ph+AijFtO86
         fvbFQvfvqTUKjzMnl6Ri0NVCnmcDUr/ef55dYkK2wGumIhUEGhOTYjVEIkv3Rjj1D/6h
         Dx3A==
X-Gm-Message-State: AOAM531ZjrWxun1652nOavH5/Owfxtnkp1VKjoQA3zTqfELsIZSXB6Ak
	TJtsVfCfh+33u8LEw1cx2Khs/vzRlomJOZs+MsnUN8rmidQ=
X-Google-Smtp-Source: 
 ABdhPJxeoA2EkteltByEjJeTLQC9V+oMrZfN+RA5IHegSmHp5PlOj+aWo8O5oP2ARGs0vc+E/pqMYqxHGJSdFaDNMAc=
X-Received: by 2002:a05:6e02:19c6:: with SMTP id
 r6mr1149277ill.306.1644512176279;
 Thu, 10 Feb 2022 08:56:16 -0800 (PST)
MIME-Version: 1.0
From: Dusan Radic <dusrad@gmail.com>
Date: Thu, 10 Feb 2022 17:56:05 +0100
Message-ID: 
 <CAFe1xewJGwZXTH+qhKDsZN9ecofbgQJKZfyT-5iHv=QFbjE8-A@mail.gmail.com>
Subject: #yocto #zeus Problem with moving from rocko to zeus
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 16:56:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56149

Hello,

I am trying to upgrade my distro from rocko to zeus.
After I fixed all the initial parsing and build problems I have
reached a point where the linux-imx doesn't build. Maybe I am
underestimating the task in front of me, but I have already seen it
done.

The error looks like this:

| .../kernel-source/Makefile:947: recipe for target 'fs' failed
| make[2]: *** [fs] Error 2
| Makefile:146: recipe for target 'sub-make' failed
| make[1]: *** [sub-make] Error 2
| Makefile:24: recipe for target '__sub-make' failed
| make: *** [__sub-make] Error 2
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (.../meta-mylayer/recipes-kernel/linux/linux-imx_4.1.15.bb:do_compile)
failed with exit code '1'

Is it possible that I am using the wrong linux-imx version? I have
tried a few but to no avail.

Thanks in advance.

Best regards,
Dule

