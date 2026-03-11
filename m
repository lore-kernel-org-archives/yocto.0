Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 163771125876
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 19:17:03 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4646.1773256618633867925
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 12:16:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=qZnjwzE5;
 spf=pass (domain: smile.fr, ip: 209.85.221.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439fe4985efso137390f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2026 12:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1773256617; x=1773861417; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0EVnCe6DQfmt2qFFWOAjeFLRBra+CHvRoayDKE7p1fM=;
        b=qZnjwzE5N8WyMzjBRpxtFnpjohJQt3mB6E4kjS1UAKsoxtZ6A4ZIxz11O/BRq5fXe0
         70OT1Vm5/hZM5vS6D20C9VStdEmMCjnF2JdU2YtVTNV/M5jjmoy+hO+HIMBbvcoM4W49
         7VphxdtD8qngWz0oJNc/k5554E5UJVY4sFQxE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773256617; x=1773861417;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0EVnCe6DQfmt2qFFWOAjeFLRBra+CHvRoayDKE7p1fM=;
        b=puWHBsUGlhBk5LMLbRWBPZUkPGB3DglnSJfEU7OMsFu46m/GnrvRjDVtbTcRLR0itc
         OruWBoVy2nAsA6MbJKPLxXIQiBlZjs16Sex4zW08SxPoE1i5AvOC4OdT+2ronLZEOI+Q
         pYig749CoTs1UNwiCY4LS4504ZxTM/IRfrxpWlHgJ//kd42idtok569963T+NA/ejYDp
         t1eFE5NyynwUW/9/W9Hpx4CTe9CoZfD5UjJZYiqsYGrmXP1xcY60U7c1JV+rX8y/r4bA
         455Bc0N7W7gWNRLPY0mQ9ufVPAr4l7YXWjK8A2yGWaBDELttCvGQrtyeSazMDDZPBLbh
         kaEA==
X-Gm-Message-State: AOJu0YyMYY3SPXayoG4zE74MOdTks2Kc2f84rOIbRv/ZdOHbCus0UolI
	+lyYGTCX6wCGU6lxaJw3qaW2AKPNCagzvekiW8zr9H+Pz9FCArG08jVQ2TwNbuhp6MK9qRTZIPJ
	LZaxC
X-Gm-Gg: ATEYQzzzMp2VjVueekc7iPIoduqKneH68KRfpXXWOMTnwRwLOQ4Y3GYQIFIAwSOG62N
	SsVfORwCBG/L2mB8gSw6/CTnWA0+medZXkGmLdOFZbUq3EjFp3nRWUTJwObHQKqZqWqKdxb0KnQ
	FHB/mDFGPG7oZv0+2knFO+/Z5ZDg3w8lXiJ5aI2elJ0TY0PvX+XR4aZD5UmfAFxkG/eTE3eJOdz
	1/KfWYndy8QS3ugyuoE63RhV8Hoh5FRzzznhw10g15hPNJRIGmkA+ACNiwk0EHwtYHqvRV9zjPD
	rtojVDX5vM6lZyA4NdQ8fGrNu8MazPuyoUL+DUA4qJobpA8nOURXI7OXYrrgdB7jHEKgRUz5gMa
	jTIqd69ZvDVbXv/kTJxBaGn1HY51YlPepJ26LrAbmi9OhUxxGWg0IcyY6Cl5qK0PtfXgA568FP/
	0KZEIwXHjEodPoLqNyB948ZMapRrwV8EK4IYFgTvmNMjXvf0iA748EuU4LGOI+UAfvYO0pe20KD
	Seo5JhK1IA4SNzy97EsU4SyVA==
X-Received: by 2002:a05:6000:2003:b0:439:ccec:fcd0 with SMTP id ffacd0b85a97d-439f822a48emr6928678f8f.29.1773256616766;
        Wed, 11 Mar 2026 12:16:56 -0700 (PDT)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe19ac34sm1711423f8f.3.2026.03.11.12.16.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 12:16:56 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 11 Mar 2026 20:16:56 +0100
Message-Id: <DH070BEBCNFR.351WN55RVTJLH@smile.fr>
Subject: Re: [yocto] go regression in scarthgap related to CVE-2025-61726
 patch
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <yocto@lists.yoctoproject.org>, <veilleux.cedric@gmail.com>
X-Mailer: aerc 0.20.0
References: <7IZh.1773253104984679443.MaYv@lists.yoctoproject.org>
In-Reply-To: <7IZh.1773253104984679443.MaYv@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2026 19:17:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66325

On Wed Mar 11, 2026 at 7:18 PM CET, Cedric Veilleux via lists.yoctoproject.=
org wrote:
> After the recent golang patchset in scarthgap, go programs are crashing w=
ith:
>
>> panic: godebug: Value of name not listed in godebugs.All: urlmaxquerypar=
ams goroutine 1 [running]: internal/godebug
>
> This is observed in the podman recipe from meta-virtualization but I don'=
t think it is related to podman only.
>
> I've traced it to this commit:
>
>> commit 242963f4cd1597d31a3efae2422016bf888c6e25
>> Author: Deepak Rathore <deeratho@cisco.com>
>> Date:   Wed Feb 11 20:59:00 2026 -0800
>>=20
>>     go 1.22.12: Fix CVE-2025-61726
>
> Removing this patch fixes the issue.

Is this problem related to this patch under review?
go: Fix CVE-2025-61726.patch variable ordering
https://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dstable/s=
carthgap-nut&id=3D9605a264c87b5c7ce26eeec902448b0892f8af1a

Could you try to see if that fixes your problem and report back?

Thanks!
--=20
Yoann Congal
Smile ECS


