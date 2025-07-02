Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCFCC8303F
	for <webhook@archiver.kernel.org>; Wed,  2 Jul 2025 12:31:44 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.22552.1751459498636782066
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Jul 2025 05:31:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G6e6Cyc4;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7d412988b14so694298485a.3
        for <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 05:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751459498; x=1752064298; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FHIq+Vc8nRYknLnn4Nia5odJAtI2rHM8ytkZWjqG760=;
        b=G6e6Cyc4Em/bS8nw2zgvw0mLGXgzK98l52FfSS2JZtUgBJ8X1IJs3+AIrv9bSDNETE
         Q3MYg37xDKpTxcfKJNYzcU9TWRABrOIGNNHRyg4kDGsFIDnkgBQ2nCNownJh1+qKTkP+
         aPUhTfsOzABRRTHQT5cXgjgdzAZQEN6cqco6X9Syrv1fKHxD0GyxpcoWMAkpHEKHU8+Y
         V+RbGe3LLg78tLum9LJ7afxenr9cEoM0kNmiEtjYG+d9jxfOYbtrLFSORfoMBxAGCKt8
         JKpq5F6tMEpLHUXXdNMPuujrf4Yu00M29UXuB9lqoJBcQR6xljwjzJzYJeoVs4rfPoPW
         4IJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751459498; x=1752064298;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHIq+Vc8nRYknLnn4Nia5odJAtI2rHM8ytkZWjqG760=;
        b=LX9LsubJ2vcvu0xwCswOMKbCYpIkw1wFeK48M1gOg7//1rEA2J1BAB9HN9+FgBxZTn
         CHL5nCN7i59a+Fi2dY6rwhPWOLkNKgIoJueYvW4awlkHM8OCn+RHNPuBB4q63K2fr/0a
         aE+G9Yd3WlPbZnesLk6r5IzR/JF+VF72mUEB3ZpBLNLMNvy5QiNCditQ+FfF42tF4XBh
         NvoT/RSBGwIdRW5xTI/RxQbFO2trADi2Ug+Tf05YJ0bAj/0UYkxMzr/l+xHp2zGRN39B
         fVyipJtLSoj1P9xGVs8gXCgZNcgAaYcjjrM+EtBsT86O+27o/FinQbOTZFd5CRG5RaWz
         2CSQ==
X-Gm-Message-State: AOJu0YwAus9t/Cp3RnSQnFElCoPdI9vY12vm93xjphyqXwsNWEgF5wTy
	yfw70w1RqijTcToGfDsxtyZbUg5Q0reH81keG07JlzcJqwvwG/X0QZmPvQrhIXD6JDZmRTEFqSa
	DJBbx81gyVH2+/3WfRqVj2zTFsbujtDxzEA==
X-Gm-Gg: ASbGnctlN8P2B2Omkl9WkPrYNdLhfsaj1mogUDI0opH3gFbgOxbzEItS9NIa95r3h7Y
	2LjMi6xvUIftJKlANDg0PO6tSOU9VxXfzCmK50LP+yfEI1OpyYEO1rTeIMVY3OOHxs6CgtLpU4q
	Oy4PjLPACbf8Z0hGNjRsyvakgq3NH3gFe1nHTTgftdVRc=
X-Google-Smtp-Source: AGHT+IEpa6kIKmB5zH4rjsmHjHaA1e7m1BMvUV8D8ezi5/q+29AaJD86AyNj1GMS8B/QhqdfWWSRZaWhkk+bd8ZpEaU=
X-Received: by 2002:a05:620a:2684:b0:7d4:5db0:5b95 with SMTP id
 af79cd13be357-7d5c47643bamr338394385a.58.1751459497399; Wed, 02 Jul 2025
 05:31:37 -0700 (PDT)
MIME-Version: 1.0
References: <HToV.1751453424466673150.avI7@lists.yoctoproject.org>
In-Reply-To: <HToV.1751453424466673150.avI7@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 2 Jul 2025 14:31:26 +0200
X-Gm-Features: Ac12FXwdVpv7QmdTFF6oDJ-lbfDobPQ-S-wOv6jW6H_Ck2mkw7WJbQvoxkMnQPQ
Message-ID: <CANNYZj__5seCE5qGS8J5OkioCz4JoswQv4WzwtLOa8gmcPRQag@mail.gmail.com>
Subject: Re: [yocto] Controlling host CPU utilization (avoiding building on e-cores)
To: yocto@lists.yoctoproject.org, akarnil@witekio.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Jul 2025 12:31:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65591

On Wed, 2 Jul 2025 at 12:50, akarnil via lists.yoctoproject.org
<akarnil=3Dwitekio.com@lists.yoctoproject.org> wrote:
> I got an Intel 13700H with 6 High performance hyper-threaded cores (so 12=
 threads) and 8 efficiency atom cores, the 8 efficiency cores are useless b=
ut I still want them enabled for background tasks, I am on Kernel 6.8 which=
 supports the scheduler for this processor
>
> I've used
> BB_NUMBER_THREADS=3D"12"
> BB_NUMBER_PARSE_THREADS=3D"12"
> PARALLEL_MAKE=3D"-j 12"
> PARALLEL_MAKEINST=3D"-j 12"
>
> in attempt to limit the number of threads available to bitbake in the hop=
es of the scheduler putting everything on the High performance cores but I =
still see my entire machine maxed out even on the 8 e-cores
>
> Is there something I am misunderstanding or is there another way to set t=
he affinity of the bitbake environment to just the first 12 threads.

BB_NUMBER_THREADS limits the amount of bitbake tasks running at the
same time. Each of those tasks can spawn up to PARALLEL_MAKE make
targets. So if there are twelve bitbake tasks, and each of them is
compiling a component, you'll have 12*12 compilers running.

You need to use mechanisms outside of bitbake to limit bitbake and its
child processes to the cores you wish.

Or ask Witekio for a decent threadripper. It will pay for itself
within a month of use.

Alex

