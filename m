Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F0C8C282C5
	for <webhook@archiver.kernel.org>; Mon,  3 Mar 2025 12:08:35 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.51526.1741003705078459427
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Mar 2025 04:08:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aN8eDX9e;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-439a4fc2d65so45512335e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 04:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741003703; x=1741608503; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dbq/lRHS/haS8wldeiiqGKpe6RUTVbdyAuu0KbEs8Hw=;
        b=aN8eDX9eMEYQTedNClpTEJi5KqXntIqJW9YdWUkFIbQVIcM7zdVqJWTFbm1hgWlELU
         0Hyn+DN88phETFTH6rNZH/0sGzmdIqcTm2dDGP85QAPT95A+7cl8L+FKkm6sD9Q5WfhV
         TWY8TuZCJWU8r/HEQPx6m9r2GtCDPtExTUrOHOtVH9WsEZ8th1gs0dm6rQ3QOjr1Y+Z5
         j4bXNnycsI86/QIub6TcHGA53Rz/EX4EPJ34qPHVLjvSD6u2YwaNgkCGyY4nh8jrqIgs
         C6T/s5BRgIrLyNC7LkFkv21N++kg/7pqM3XkgH2TWer/33WB+bChcAymBd5Xph1N0Aj0
         j2qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741003703; x=1741608503;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dbq/lRHS/haS8wldeiiqGKpe6RUTVbdyAuu0KbEs8Hw=;
        b=PwOS+y9yn6o1grPzC8dsYfF4icAz0emKfvutjpHcB62j1G6A9f3ynTOVNY4USs3obU
         H6e1THEkhnJt7EVyjbqDbWIMeWXVL8t2MFWyjxQBvbXhxX39+Q+XcpGY8Xa8JyA4dk50
         jT/dlvGtylzUU+OkVB1jm8nPRB/cSukU8k8XuoFiGtgwS8y2OKnMJmfaRfKP0UH1Tdcn
         cUkgmO236/kOhK+jwHGGFSe4cEy2aIiX84LbZbR++tl1zKsE25IxT0fncpZL8IrOqVUv
         xr3uTp64RpvO4PbEt198MzXCGcFgmErpKNZmt/YU5JCd778ZPDzYMjf2DxSBJ9H+T0yF
         jZwA==
X-Forwarded-Encrypted: i=1; AJvYcCVvPcl9NVB62ydUm/gn5lGktOxEE8zjGKfTKfznUrj6gXjoI7Sqx3y4+pXtEpyDbSN8vQxD6w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxFKRCUemZCM+os3ZnpC2ezrD7XxBVinFQjhZ4CYpCoJ6+uxEZH
	YlDBYRwXYNFk9Pb1x1YhyDhjKWOQh6qlm+WbQw3d47eWypAFGnwk
X-Gm-Gg: ASbGncut2TOdqPrrzTJIOtOc+SzD1OYXC0xXoEnl1sH6k0ys7X7ylCJCK9DTpEkkKoa
	BhyDOR7IloowksOwiUHATnYtaAhuryItDLuYWyHAra9jCD7O6ps5bAsJzWYTj0eis5n+dboVloW
	NEkJc8DhbkQTs2numCXdDG+SCa/E4eEiQSZ7RJ9rZST1cYN7KLjOPXyCsBCAJLNRDVCaG4s9cXu
	03NANC8qUTSIX80dhXmAC11iKn8T7p7tOX9wx5CTe19IG40QiV980FkgSGtV6MURx47wvEe3IG4
	elv1+z0h8d0UbTbyXA/UkHKrSx2xXdO2qMGPrRWVMNY9SVDs4ZCk
X-Google-Smtp-Source: AGHT+IF52pX7OstZMqLDxL/r1hVTPk2dAOeglPvHEFLnshvt40byAFbhc8Qwd9Zsfb0woMPa4P0ldA==
X-Received: by 2002:a05:600c:a05:b0:439:86fb:7325 with SMTP id 5b1f17b1804b1-43ba676d2e9mr136863895e9.31.1741003703216;
        Mon, 03 Mar 2025 04:08:23 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43aba58713bsm193156615e9.34.2025.03.03.04.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 04:08:22 -0800 (PST)
Message-ID: <ee3d8230-dfac-4933-810c-586fff8ec0ba@gmail.com>
Date: Mon, 3 Mar 2025 13:08:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: landervanloock@gmail.com, yocto@lists.yoctoproject.org
References: <cc0e95c4-8411-4ec8-abb0-61378d978c87@gmail.com>
 <18989.1740853925670787710@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <18989.1740853925670787710@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Mar 2025 12:08:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64910

On 01.03.25 19:32, Lander0606 via Lists.Yoctoproject.Org wrote:
> Nice! I did some research, but the only "improvement" I see would be
> to change the stat-struct in the callback to force UID/GID to 0. But
> for that, I think we need another callback function to wrap around the
> given callback to change the UID/GID. Unless I'm not seeing something
> or misunderstand where the problem really is?
>  
I have created a draft patch[1] - simplified (and not a full
implementation), but it seems to do the job at least for btrfs-tools. It
works for me(TM), though it doesn't always mean an awful lot - I only
checked the generated FS with core-image-minimal, which looked what I
expected. Would you mind giving it a try, if you have time (or anyone else)?

If it works for you too, then I will write a couple of tests, and
attempt submitting it for the real thing.

Of course, everyone is free to try/comment... I intend to submit
something very similar to the current patch - the sooner comments (or
rejection) come, the better it is.

(If no feedback comes that would discourage me, I will try to submit a
patch around Wednesday-ish in any case, for further scrutiny...)


Thanks

[1]:
https://gist.github.com/OldManYellsAtCloud/f6b6ecf37ab65db8d61ac7bed583a7f4

