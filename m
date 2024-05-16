Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50369C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 19:56:00 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
 by mx.groups.io with SMTP id smtpd.web11.23999.1715889354494604724
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 12:55:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FBSVYFJ7;
 spf=pass (domain: gmail.com, ip: 209.85.161.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5b27ad74c40so367262eaf.3
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 12:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715889353; x=1716494153; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=smRbfWkNT+hS+U7VJQ6/GVPl8oA57ATUv19PGjgpno0=;
        b=FBSVYFJ7uCkYVUE7kuIacaszKJ9DJlA5jYfrFQrWAHuajKHso2NrrIolz4uYgbBB7t
         tZVdnpSwSykHv00CQAwLYhNCBtj7Tty0GSebar22phaXiGzPofs/C69xTAEuzL0Vl3Q4
         nbZycXBG/2Sucf1yiw2N73QthbPd1mbOfpKRlvcSVYfi6kMPATVbFImNZebDP9EL4dbj
         JVUNTwlASYDJOizO4PKCWEAYFZYzkhwcF14DMHGM3iHpfedJW+DKymqzlmsB8VJUR/T4
         sKaNBlmi7ptLzgsvXcbEWeAy541N0d01blN44PqyrjiZo1p2iFaA0vrlFpzo7klYYugH
         yv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715889353; x=1716494153;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=smRbfWkNT+hS+U7VJQ6/GVPl8oA57ATUv19PGjgpno0=;
        b=ZUiQ3r+NpFfUaMyXnp4BXrppvN+5y4gmmgWNVs1R6lM4G6G/5+I+YE0gQJhS9GICx5
         oXQMPX3A3NSZPYVW41kUp/u9oC/XHj1OLJDyOV+ciUxzcFodX0T2Fd0v2ArIaUQQnzfs
         UUT5RCdjpZ75pY2xOX8eQFdBco9Zlo2kfgpm8gMxw+Nb87EKFwf8T+6Awa++LykRxLP9
         FGE9gmIbbs9JMJIoyn4m44v2z9s0czZCxsknbNk87nnRaF+214qNK3a1X9wd1qPs9jRS
         n2WUrE5xkLitehp82OF3gaLaBeDHiSvDR0USZ9nhT7gWxa/d926kuwOXmcL2fmNXrG0v
         6cIQ==
X-Gm-Message-State: AOJu0Yz+poSTjAGyhDgYYWrHGpLPwcwU526sxAmQoeUh79rmqbk8zLES
	xiUHe+098X68iqtWHttXKnyHo/zQemeKtAUM3k41xLY5kviFU5LQsm2stPO9HcL1LD4h6vV0aZN
	1kJ8mh4oPq5Agl/hzeUXIYjk658Vk5Ea04jlDqQ==
X-Google-Smtp-Source: AGHT+IGyY5/398AbNvxafegZmGokTHby0UB4PHxlmsvYmdO0HLoBOVx5XafQyMXtIEEdJu29wGVoGE4IJm8punRqm8c=
X-Received: by 2002:a05:6871:5228:b0:243:6963:b416 with SMTP id
 586e51a60fabf-2436963b858mr20082396fac.24.1715889352568; Thu, 16 May 2024
 12:55:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
In-Reply-To: <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 May 2024 12:55:26 -0700
Message-ID: <CAMKF1sqRwTj97XMGofu-8YW-QCPAT4MHnZYHH3sJp2LNgLcZRw@mail.gmail.com>
Subject: Re: [yocto] packages not generated in output folder
To: yocto@lists.yoctoproject.org, simonkbaby@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 19:56:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63126

On Thu, May 16, 2024 at 12:28=E2=80=AFPM SIMON BABY via lists.yoctoproject.=
org
<simonkbaby=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I am building some applications in 5.15.0-102-generic #112~20.04.1-Ubuntu=
. My yocto recipes aeh building successfully but I am unable to see any pac=
kage folders under the tmp directory. I see only log files under temp are c=
reated. Nothing else. Can I know if I am missing any configuration?
>
> tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/marvell-umsd/3.0.7-r0=
$ ls -ll
> total 12
> drwxr-xr-x 2 sbaby sbaby 12288 May 16 12:26 temp
>
> This is valid for other recipes as well.
>
> /build/tmp/work/cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi/libgcc/11.4.0-=
r0$ ls
> temp

Packages usually fall into 3 categories roughly
all - meant to work on all architectures e.g. scripts etc.
arch - runs on given architecture and machines based on this arch
machine - has machine specific stuff that makes it work only on the
given machine

what you search for is in arch specific build area, there is also
machine build area
which is usually <MACHINE>-poky-linux-gnueabi and will be located in parall=
el to
cortexa5t2hf-neon-vfpv4-poky-linux-gnueabi in your case. Look in there as w=
ell.

>
>
> Regards
> Simon
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63124): https://lists.yoctoproject.org/g/yocto/messag=
e/63124
> Mute This Topic: https://lists.yoctoproject.org/mt/106141357/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

