Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1EBCC77B7F
	for <webhook@archiver.kernel.org>; Mon, 23 Jun 2025 12:48:19 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.18783.1750682897148362687
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jun 2025 05:48:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mEpHX63N;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-60794c43101so6202960a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 23 Jun 2025 05:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750682895; x=1751287695; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PQBwxIS+FabHcBnqijU77upuw1pt18fdLsNOuhbKSQE=;
        b=mEpHX63NROZmlfTXhyAT/x0J0rgNgkZ0rlWY7UBDD84ZstkrFnqstjBRslC+3Ta2Zw
         U8vDadVC1fBpRCKu7hPzHdGTMLGRvrydcKHs62iR7QBlHilq9V3WAUUkQl9/oI2zZ79Y
         2mQ1Wd5jI+CoPpbIT5OCBXI1xVIe1SGwOgUXsWGTZVw5uzk0TiXRIvkLC5MA/SRScQX8
         xizlFhIh7ci3yLcWk4j+Kv+ovB1UhUnkuAAhdhBmmgzg7/A6hDIN7An2J2kG/8zZDRxg
         PpfjI2JqZFIARq9seLW5U3QgtdO4iNDP/bJD+FspeOaCrO8oYSS2bFmtGZo4X88Wrudj
         I9uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750682895; x=1751287695;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PQBwxIS+FabHcBnqijU77upuw1pt18fdLsNOuhbKSQE=;
        b=chlLrdrea7Kcy0W4rvdI31jHjk0J/vfb4oN7EzrQiFx/kUie14WIdoCYy2CpV8IGUt
         dZXwtx62bN9UaY8S3NpvQ4OhBOnofV8rHdecZ9NXeu9ojSexIF64ociw+wWM/E3WD7KC
         N8WorEkSQ9kCE960TY/FyTR0zAuClKJjnYhBRbInsswbr84WZzn7mTlKisIsa9dyDLJJ
         sg40YswY7Hu7V2JhfnEF6bRO/Dqie5jlfwjvr8FE1Rb0OP9nLo9OQcW+6FkF6E94D3eQ
         aQGvmQyAXANl11bmtJRYhE1tS01kI4CeQZ3rG3+aXdm16YpbOYcGQ1/hZ2d0yJjhCyTs
         UZDA==
X-Gm-Message-State: AOJu0YyIGV7F4EYy4u7r7vfpPBLZFCS83Si4Stg/swjWAo7mJipgXzfb
	NF3HiqZK7uRPuEaQOP2us+J1zKyjTcMAdyPzCqxNdopoNHsBp2VCwVeI+s+M/A==
X-Gm-Gg: ASbGnctMm6c2W0kHHYC73EHT9CBZdLpmHq0td4YliiUFfqv1ArYWhffPM5QW46m18N2
	diah2noValiH0d/6IuClkDSWp4VKtju5Vm2l0Tq4F3gsEzZIzz/y/skIM29VqqTfReF7jX+s2Y6
	Y03gdiAG9ITsk0d/tZwQtzslzGPnvAByf7pWbkYLEGP64EUCxgVAzLDp7JgkjvJo9qVMeuTUfyg
	K2/lPOZwt5ePORYud7fsh6VYgUqQqwijdbZx8gTTYZ2gFA092VENdHqPDPu3Xfwf19iaYhEUuYQ
	WA0LHjYblbFyWQwec7mxXHZ+Lpl6wZ5MDmdKq6IdCWeoz+2/3IdowZ9xm7LRToTWOe0mpw==
X-Google-Smtp-Source: AGHT+IH9Xmg7Ogd6gWjZlTyko7a/4v0iIBeE45l6DRwr6uHlNxu8IyYuCBAPCbvsZ+j6+636yEPaRA==
X-Received: by 2002:a05:6402:2547:b0:607:eda0:16a0 with SMTP id 4fb4d7f45d1cf-60a1cd2fc63mr10603343a12.11.1750682895269;
        Mon, 23 Jun 2025 05:48:15 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a18c94752sm6179019a12.46.2025.06.23.05.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 05:48:14 -0700 (PDT)
Message-ID: <d29fe87a-8095-4823-bf57-6046b9e67d2c@gmail.com>
Date: Mon, 23 Jun 2025 14:48:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Virtual Keyboard on Wayland
To: yocto@lists.yoctoproject.org, matteo.orlandini@tastitalia.com
References: <C42u.1750681341370467311.Q2We@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <C42u.1750681341370467311.Q2We@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jun 2025 12:48:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65534

On 6/23/25 14:22, matteo.orlandini via lists.yoctoproject.org wrote:
> Hello,
> I'm searching for a virtual keyboard to use with Yocto Scarthgap and
> my Python 3.12 application that uses GTK 3. I'm using weston version
> 12.0.4 and I saw that weston keyboard is not compatible with GTK 3. I
> tried to compile squeekboard but I got this error:
>
>     Nothing PROVIDES 'gnome-desktop' (but
>     /home/bitbake/muratore/nxp-scarthgap/sources/meta-wayland/recipes-support/squeekboard/squeekboard_git.bb
>     DEPENDS on or otherwise requires it)
>     gnome-desktop was skipped: missing required distro feature 'x11'
>     (not in DISTRO_FEATURES)
>

It seems that gnome-desktop's  x11 dependency was a relic of the past,
and has been removed[1] some time ago. Maybe you could try to backport
it in your layer (as local.conf or bbappend) and see what happens? (Or
maybe even send a patch to the mailing list, if it works)

[1]:
https://git.openembedded.org/meta-openembedded/commit/?id=8106d4192567233f0653242326ac3041a1233b69

>
>      
>
> Can someone help? Thank you in advance.
> Matteo
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65533): https://lists.yoctoproject.org/g/yocto/message/65533
> Mute This Topic: https://lists.yoctoproject.org/mt/113786861/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


