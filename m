Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539E5C83F25
	for <webhook@archiver.kernel.org>; Thu, 29 Aug 2024 13:49:35 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.16150.1724939367347430955
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Aug 2024 06:49:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=J4HGgt7V;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f4f2cda058so16123331fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 06:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724939365; x=1725544165; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sGFN+GOSE/e2edvpdJs7man+5BbUo8dALbSsOi7otjM=;
        b=J4HGgt7V+8F7O9Cc10tbqd6ZH8WTFdMz/SBW21bqEMwzVt43uCCBRR93xUyZQzSkTU
         Yanw+aaTozPP4b461kPVucht0XDjR9Rn5eQjolCIabCeyIo7wM0EOhmRrDXlLBNZTi7g
         s9J7isjQjb3KNlRgGIr7mWFZI9nO8yfeG3o7Tg62spoYGS9pM2OS7C8qWzW529xIRbtv
         5VDPjX9b3LWmcKbC6KiNOKkbNNxh8pseeDO0jRV2OhaxVn80jl1rTWP+ChO1KdcxanRc
         BuG8FN3ariqF8b/ZlfMvyLWEqRu8b1oPuw8EzY2KBr/dCfUP1E+NUMmaka7Hxn9AZ0Dr
         W1Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724939365; x=1725544165;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sGFN+GOSE/e2edvpdJs7man+5BbUo8dALbSsOi7otjM=;
        b=CvnRAxJFdVxQouRHMwD0DrU8dxmLgPlo7gdQahPaQxMMh3AN6Wn5jsAPk8nE9NU33T
         fW/2m+1/5liU6ke37kS0Kt2amPuB44q+NNdot3WxyNdWvwhJcs7/TRU2w5Jt1KlysDtx
         7O5iRhPXkskd1j3ex4xMwKy3Hny2QVy9dVlik7wVAey96u+ZnUDQlti+1JNyOH7Zchgf
         ZOPZTcJ7GzGZQnPwYJOkSEkDSVZi5YIrOBDs7mdafMqPh7+sb2HEOzsoDZLNGBe93lQb
         y4D96nNVKkB0OITNL/oRWykjAHt0QWpGcQgrNyGByjao2OuwnyN0FNWUFflziNTtkTMc
         OZQQ==
X-Gm-Message-State: AOJu0YyYAz6BYJ2J1Khz0p7hutP72wfDxh9ULXDU+nccD30Hsa9bOakT
	2zhnZ5ErSEe9W2XTx73yeon5L4p7XTvPn63OJ7xdhFp17+OgYsZugfp6VqCCNCWkwqx8BvozVmS
	uig0sKMI0wGZIKPUB7Q9fo15USnONTg==
X-Google-Smtp-Source: AGHT+IHnM6T+8Y/jvdMWqHB39ZPe9l4+vRqAz2Ij3wrr+r2WvS3bc1dF2oH/UtKyOdqBWr514vMFdt7+rEGWS8NkPdI=
X-Received: by 2002:a2e:a543:0:b0:2ef:2f8a:52d5 with SMTP id
 38308e7fff4ca-2f6167fbc99mr8161411fa.8.1724939364591; Thu, 29 Aug 2024
 06:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <2hc9.1724938551588666583.s950@lists.yoctoproject.org>
In-Reply-To: <2hc9.1724938551588666583.s950@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 29 Aug 2024 15:49:13 +0200
Message-ID: <CANNYZj_V74dAjiN9S2j7QAA9SfGygy8cqjAZCHLqkG043++yhQ@mail.gmail.com>
Subject: Re: [yocto] nfsserver script cannot stop the nfsd threads
To: yocto@lists.yoctoproject.org, pangliyuan1@huawei.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Aug 2024 13:49:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63772

I guess this should be raised with nfsd upstream? Their answer is
authoritative, we'd be only guessing.

Alex

On Thu, 29 Aug 2024 at 15:35, pangliyuan1 via lists.yoctoproject.org
<pangliyuan1=huawei.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> Recently, when I execute 'nfsserver stop' to stop nfsd service, I find that nfsd threads cannot be killed.
>
>
> # nfsserver stop
> stopping statd: done
> stopping mountd: done
> stopping nfsd: ..........failed
>  using signal 9:
> ..........failed
>
> I noticed that nfsserver script uses 'start-stop-daemon --stop --quiet --signal 1 --name nfsd' to stop nfsd service, which works by sending a signal to nfsd threads.
>
> And I have identified that this issue was caused by the following linux patch:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=7229200f68662660bb4d55f19247eaf3c79a4217
>
> This patch said "nfsd stops allowing signals and we don't check for their delivery any more" and it recommends using /proc/fs/nfsd/threads instead of sending signals, for example, "echo 0 > /proc/fs/nfsd/threads" will stop all nfsd threads.
>
> I would like to know if this issue a problem need to be fixed?
>
> Best regards.
> Liyuan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63771): https://lists.yoctoproject.org/g/yocto/message/63771
> Mute This Topic: https://lists.yoctoproject.org/mt/108161046/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

