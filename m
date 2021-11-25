Return-Path: <jupiter.hce@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49C64C433EF
	for <webhook@archiver.kernel.org>; Thu, 25 Nov 2021 23:03:48 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web12.17913.1637881427423025112
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Nov 2021 15:03:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZNreQ/Cw;
 spf=pass (domain: gmail.com, ip: 209.85.222.46,
 mailfrom: jupiter.hce@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id w23so15155727uao.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Nov 2021 15:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=JijBsQ9wD61X4Q+LD5hq1lToF3omjCtGlvnNxNKZHbc=;
        b=ZNreQ/Cwkb7M2yJl+mkdBHk8oPiQzbzDLXywnn+BZ1wRtcKhrQxSEDkv+XN/+jxkL4
         eemYn2HAHUT1qFSMaj/DLDAQNM85EMA8/Bo4J/JCQPPD+V4xhouBmsRIeb+LBOf4lmEO
         EoEq2EX8Ns+sq6E2um529CbvzhT93HI23GWuxErnrLAvkrPcLWWxQG5tMwfjUKRz3QBG
         JI14S3QimgQkXsA9BnT0ejGm7B2WlL5s+pXMmZI7rlzP9vUuVKFw9yzVlX17f+fYg5sX
         NRz+tvYJkLt5FAxm7scUjtKcw7DAh5c3tOAqYUqwLyW17zDoYOrPKHzeqIG1JOOVMy9F
         P3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=JijBsQ9wD61X4Q+LD5hq1lToF3omjCtGlvnNxNKZHbc=;
        b=Z5/VrLp+QtdrcJj5dHYuwIHgF1KeUQSMYGo5x3QIoqiwgRU9/uRX/G0l9kz2FiGHHd
         TK3QAcDOmfARsH9vxpryiEpf7fuFt9yc2QuT/2wyCSjdLsjUtw0LwixcUPOQMDHIl4gy
         EhfUbr5I+KwTu0JX4CQNnjbkMRGbbzPaQqxy7buVFO1/cB2Lk54uk9UnJhyDVaOelVNZ
         RXdVQncl+R351wnqg7Gj2TpVZk9EqxQreZ0JUECgSY4+eN6JvAzn5YtSt/FlOXjqbWIb
         kfCCGatwlgoGGRXASNSJQWc+VN9ZmLVPwa3DY7WchqbXpi2Z9SoUmpQZ3aQg9OBml06T
         /Ypw==
X-Gm-Message-State: AOAM532pp6yjbrV0397C8z/vdZmWvB6bm3da2ryTUl2c7L3s2dg2Y3r4
	ytGpoRCWUUH8WXNO6Htrhfd1W+c6j5zBhdxakDba34fB
X-Google-Smtp-Source: 
 ABdhPJxwkT4BSYjgcd401tr0WN7sXikZDFif9ZVy0mI9IF6oVQlIr58SS1JjogiGP3yxak795V3oRSHWD8CVeUqGmw4=
X-Received: by 2002:ab0:6ecf:: with SMTP id
 c15mr32464290uav.113.1637881426472;
 Thu, 25 Nov 2021 15:03:46 -0800 (PST)
MIME-Version: 1.0
From: Jupiter <jupiter.hce@gmail.com>
Date: Fri, 26 Nov 2021 10:03:10 +1100
Message-ID: 
 <CAA=hcWSCzvpeqPWMjuTo9kCrE3cS14F7_+_XW-=PU5omTUKvEw@mail.gmail.com>
Subject: How to create connman_1.40.bbappend to enable and to build connman
 with iwd?
To: yocto <yocto@lists.yoctoproject.org>
Cc: comman <connman@lists.linux.dev>, Daniel Wagner <wagi@monom.org>,
	Armin Kuster <akuster808@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 23:03:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55426

Hi,

Please correct me, but it seems to me the connman is moving to a
direction to ditch out wpa_supplicant and to use iwd, but the Honister
still configure connman with wpa_supplicant by default, appreciate
your advice:

- Is connman with iwd stable enough?

- How can I create a connman_1.40.bbappend  to replace wpa_supplicant
by iwd configure?

- Where are the documents for configuring and building connman with
iwd? Where is the operational guidance to run connman with iwd? Can I
use the same connman dbus APIs or are there any dbus API changes to
run connman with iwd?

My apology for FAQs.

Thank you very much.

Kind regards,

- JH

