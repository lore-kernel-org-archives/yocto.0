Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04512D33982
	for <webhook@archiver.kernel.org>; Fri,  5 Dec 2025 15:46:33 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8630.1764949583079184821
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Dec 2025 07:46:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NhBtkIR9;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-477b91680f8so23110555e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 07:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764949581; x=1765554381; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=reIR/q7BqL9HOAUKrydXUFQNSeLLahmStDS6sY79IP4=;
        b=NhBtkIR9e3u7gzPnjYm0KDpfoLa4wNEC0qYbzS+tP12Vhg7ml7Lss5ZLVAHrWI+vkw
         EE+TXejsRjF3Ycum0AFDbtLwRNnoDRZ8i0edIbuKZWgyjvMzQ2l1Co1NKzxKO/WPeNMe
         9wU4pBT2OavS+CHrm9xnjjApbNBvalzUaM/0F74+NpmmaoZ8xuYwO2+pmhFqUUWXQX5x
         qCWiJVu8QwoZm1c4E/sn8cU2o2S6/8fuUnopuEyYeRopedZaf3y5sTBppiJyEf5SCt7c
         EwpoWgaj1MSOu62zGn8zrjXB6ubFunmt8FXekqYnTlrM5cNGVjpTBn8Q6pM7TiLDQcxr
         YBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764949581; x=1765554381;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=reIR/q7BqL9HOAUKrydXUFQNSeLLahmStDS6sY79IP4=;
        b=wC7oqhmAiu5fmHT8oqXU/AsnOQx6cZ7wTdjzfAlVsmT+WQcr9Kci50+/oW4BAAok04
         7OwMLLqh4WupoGzxrLHGhXUHudi6H+zk81+wFkaCnBOYW+UOgLLL3pX6no/0CNqqpOrU
         JFEP12+HLvmYUT8Lax1eK/MiAs+N2UbTlmNd6WJi7ylt5WgHtTMOJePn2rVNBdX1O9Kr
         n2trMN3U0kCFyDrm6+ztNlrLK1bVUOsvKDsJ451eQIfv3UgEiLK5FlExlyNjlAgQVCRX
         oTT9WfhuvI55eMW7RAixZidkHkT1oaLQxp1prrMLFEetQlmxX8B3Xe/POBSSLUoU0xR3
         61Og==
X-Forwarded-Encrypted: i=1; AJvYcCWL2vLClPdNcJI93HqO7dnRXXRKHc1TwkMWbNwTSrMkJXaCUDsVyLUAvMmspBpEkz+s1Zyb4g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwLjZM416y/qK2lMQrTssddG0Enh4CjuwBxXRMsi32HiDfPZfM/
	mySeyoUGJpkhA5Silzf3qBIR9X9VoXkvfR4rqLPOMyAxcw2QGYrU8+m7
X-Gm-Gg: ASbGncuSdRISCPCmtO24+RKhzwjs4U//HgIjT9eMVvRMSzk8OnetaQOIIpOmZF4gPO6
	Bq0TTY3gh5IoWcz1p3hCiTMqEHKG47JyfntvTqGwOb1kQHZwHep3Rx2i89Of6Zvd85Yfe3dFqtz
	/igSxHnOC697LnvmyWzK9hNDXiZlSLL3TQjJJUKDfx9V9J7H9mfg2gst7pD7maAik8nP96el36U
	UhO2t+u5W5oUDYh42QtYUhACGCE2HqVj2qgF8px/7gOVtbdsbPZHHoEcYGMkyhm2EqtheEpytDP
	DmT2Vm4YGrNZI0cpN2IxexHLfggxf/aV5mqkpHRuXkBmBkgwSlgJFGN2I0UDsDo5y3MN8nVnyfM
	ZdvfdVqK7MNV1OYMviAv/v8JEIEAVlHoX6ts9bgILhQZbSomiI3kkSd75GjIqnbkNCKvB9UPdM3
	R1PS/YO5sIxJg3BMB4ORbOqxvyuEeheQ==
X-Google-Smtp-Source: AGHT+IFgxYBHEBubrGrBb0Snl9eelM4LyFzjm/xaq4P5SfvdRA9uUUGIJapXnSF5TDpIynp8KixYfw==
X-Received: by 2002:a05:600c:4f8b:b0:475:d8b3:a9d5 with SMTP id 5b1f17b1804b1-4792aeeb58cmr106564935e9.10.1764949581235;
        Fri, 05 Dec 2025 07:46:21 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479310ca502sm92465895e9.7.2025.12.05.07.46.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 07:46:20 -0800 (PST)
Message-ID: <33793480-bdcc-4b88-ab11-0d493118836e@gmail.com>
Date: Fri, 5 Dec 2025 16:46:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Bitbake fetch does not re-fetch from network if gitrepo
 is found in DL_DIR
To: christian.leeb@hitachienergy.com, yocto@lists.yoctoproject.org
References: <MUyE.1764856618420625622.Sp84@lists.yoctoproject.org>
 <6a0d63c8-3a01-44a3-bc52-27ce3f5587dc@gmail.com>
 <96936.1764884505239996619@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <96936.1764884505239996619@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Dec 2025 15:46:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66091

I have been thinking about this, and also tried to reproduce it,
unsuccessfully...

If fetch is deemed successful, it is stored in the shared state cache,
and then it is not repeated until the relevant signature changes - I
think this is the metadata reference you found.
However as long as the download folder's content is only modified by one
project only, it supposed keep track of it fine.

One question about the DL_DIR: is it possible that it is shared between
multiple projects, while keeping separate shared state cache? Or that
the DL_DIR's content modified manually?
The shared state cache supposed to keep track of what is downloaded by
bitbake and what is not, but if the DL_DIR's content is changed without
bitbake (or by a separate bitbake), that can break the shared state, and
cause such issues.

On 12/4/25 22:41, christian.leeb via Lists.Yoctoproject.Org wrote:
> I'm using Yocto 4.0, kirkstone.
>  
> We set
> URI is
> git://dev.azure.com/PG-CT/PGLinux/_git/pg-linux;protocol=https;branch=pg-am57xx-ti-rt-linux-5.4.106
> SRCREV="7818dfe57e1d1e2d2eaf039d1231560611811d67"
> BRANCH="pg-am57xx-ti-rt-linux-5.4.106"
>
> The DL_DIR contains above repo
> (git2/dev.azure.com.PG-CT.PGLinux._git.pg-linux) and above branch but
> just not the latest commit of this branch.
> Also, between 
> recipe linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10:
> task do_fetch: Started
> and
> recipe linux-ti-staging-rt-5.4.106+gitAUTOINC+7818dfe57e-r7a.spark10:
> task do_fetch: Succeeded
> there is only a few seconds. Another proof IMHO that there was no
> network access.
>
> Fetch works properly if the repo is not present at all in the DL_DIR.
>
> I also check if shallow clone is set: seems that this is not the case
> unless there is some other setting to consider.
>
> bitbake virtual/kernel -e | grep ^BB_GIT_SHALLOW
> BB_GIT_SHALLOW:pn-binutils="1"
> BB_GIT_SHALLOW:pn-binutils-cross-arm="1"
> BB_GIT_SHALLOW:pn-binutils-cross-canadian-arm="1"
> BB_GIT_SHALLOW:pn-binutils-cross-testsuite="1"
> BB_GIT_SHALLOW:pn-binutils-crosssdk-x86_64-spark-linux="1"
> BB_GIT_SHALLOW:pn-binutils-native="1"
> BB_GIT_SHALLOW:pn-glibc="1"
>
> In addition I got this info from the internet:
> /Why do_fetch didn’t update the repo:/
> /BitBake’s fetcher logic:/
> /If the repo exists in DL_DIR and the SRCREV is marked as available
> (based on metadata), it skips network fetch./
> /It doesn’t *verify the actual commit presence during do_fetch*—that
> check happens in do_unpack./
> /So the 2-second fetch means it reused the cached repo without pulling
> new commits./
>
> I wonder what it means "/SRCREV is marked as available (based on
> metadata)/". It's obviously not there.
>
> Thanks a lot for your support.
>
> Chris
>


