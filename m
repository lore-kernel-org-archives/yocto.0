Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D32A3C433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Oct 2021 17:58:11 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com
 [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web08.1037.1634925490652666177
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Oct 2021 10:58:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gaLeJ8T0;
 spf=pass (domain: gmail.com, ip: 209.85.208.54,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id ec8so4658329edb.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Oct 2021 10:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vtamCHJHBsC+w7uTOuJn6vDIq8cS+YaqMxV8eU7ThoQ=;
        b=gaLeJ8T0yf0Dtx33Q3A9tL94zTaXKUMxMYz/0JxS6iIJs2HPruaXitRE7jC19WeuUd
         CnlAiIC8VIEJ68EHO6VzKkOd3ocDZJ001w8RxGbpRCguZX1PtcpTRftB2PMNshUIVj5r
         XGK0/FC7/bxBgjkaOG3hRsUZ5wupJpOVfKSQ03g57Nc4DglvqxE/FAHj4rQRj0k3nxZ8
         ALiy98JZbQK/FHAjwKujKoEj6G6n60FqDAeeXiW+3VWMlSZ5aK8sK0+OOjPy59WdoZvD
         5dk7MtHnz+8LyaPtms4H8Ayzv4upBJu0hYJx+VDK4rbWn5NneU1QizBMCdRWzXDiJT65
         FD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vtamCHJHBsC+w7uTOuJn6vDIq8cS+YaqMxV8eU7ThoQ=;
        b=RQFFc1NfVNH1jX+MWiDV6DSSknnJyTwNNjfKEh5PmbLd8/yDzbYuBQ9Ne7LWtlKI3G
         ZgNHns/2erTpR/i4X9+9zze7MlxBv/nzf5ESHZRx9SGKcsS//wDB37qzKiw840y7ulAq
         +pDj+oEEJEwLxm9uRbNijHb4SU4vZyzuUj/CmYm6j9Akk/D3DLzMH5+yDZ7aGjkUyyaq
         3VIIsC0jzuTw+WsQ7zJxg1DQ3MMTCWwkRbMFiOnRSRYtd2b6I99+G/QObJGtYfbioK/G
         R1Tg+TIUn9piZG6g5lOnExUzrprpf6pZNSWNeSYqU6NnRfVpvR6Qc5+8xaCj41DVRnNV
         WNmA==
X-Gm-Message-State: AOAM532L2N5LECfHqu9r/AavxDQNJhtNmGJdB6EhSyQKuJKunfWSL2iB
	m1YENQOiwwJa3J5t01X6e1FrjIG0xwxO8TABM/I=
X-Google-Smtp-Source: 
 ABdhPJwtMBx6s39s/nJsy8H32Cq5DmSzCPKNxH+WirUlFSf83jl7a/dss/9dAkx9VfoBXqDbevofZBoE+pCZf16fbyQ=
X-Received: by 2002:a50:ed85:: with SMTP id h5mr1826096edr.385.1634925489158;
 Fri, 22 Oct 2021 10:58:09 -0700 (PDT)
MIME-Version: 1.0
References: <7ae2fdbf-acdf-6d54-a428-65a38497a83d.ref@yahoo.com>
 <7ae2fdbf-acdf-6d54-a428-65a38497a83d@yahoo.com>
In-Reply-To: <7ae2fdbf-acdf-6d54-a428-65a38497a83d@yahoo.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 22 Oct 2021 13:57:58 -0400
Message-ID: 
 <CADkTA4NvCseHroH5yzQoRXaNs6WLMe0vLAMwFZ597ufJ_Y4Gkg@mail.gmail.com>
Subject: Re: [yocto] rebuilding perf fails after cleanall
To: chuckkamas@yahoo.com
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Oct 2021 17:58:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55122

On Fri, Oct 22, 2021 at 1:23 PM chuck kamas via lists.yoctoproject.org
<chuckkamas=yahoo.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
>
> I am trying to model a new recipe off of perf.bb to compile the usbip
> helper kernel code. I have been having issues with the
> work-shared/../kernel-source directory being empty, so I went back to
> the perf recipie and tried:
>
> bitbake perf -c cleanall
>
> bitbake perf
>

What release are you using ? We did have some issues with this in the
past, but they should all be accounted for now.

I can bitbake perf, bitbake -c cleanall perf; bitbake perf

perf makes a copy of the kernel-sharel tools directory (it didn't in
the past), so
it should be safe for any combinations like that.

Bruce

>
> I get the same error about path does not exist and the work-shared
> kernel-source directory being empty.
>
>
> Is perf.bb only executable in the context of a global rebuild?
>
>
> Chuck
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55121): https://lists.yoctoproject.org/g/yocto/message/55121
> Mute This Topic: https://lists.yoctoproject.org/mt/86519424/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

