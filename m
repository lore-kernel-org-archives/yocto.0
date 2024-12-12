Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEF9EE7717F
	for <webhook@archiver.kernel.org>; Thu, 12 Dec 2024 13:19:40 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.19375.1734009570693881624
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Dec 2024 05:19:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YLE3zCOj;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434ab114753so4116335e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 12 Dec 2024 05:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734009569; x=1734614369; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UtwtN+r6tIMe8mdAeETYkdso7XJA2Kb3Cbl2ehR4PCE=;
        b=YLE3zCOjrUOm5yoLKsh8QfG3aLoFWTFhQo0PuS5Jb/npFt0gQZ3dgNsIQ0Cqm4uLHs
         KP56C7Pe8g5x49in0nJK4djqc/BB2GhY6sAlr+ZumMEhxZC4ZX0+ycHgmy6w36R5rYlj
         Q8kxHYmg4tFLTYh7TLACPa763wUTtrIbu/ItcBux0nbO/jVpq7WqEe9FW2y+wTk4A1sM
         L6OTfqvsC35otVlsN4T4Mn0bjcVqMleQoDUhibX4MRPX9jKviA5paAnErmN/hykVCE+y
         YbdmPwAEX4LlxaO1lpYLmWWMArAhvWTPIYz7/W8T07uwiA+QHwukfmQWH+1pfgvMZ8A5
         Bj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734009569; x=1734614369;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UtwtN+r6tIMe8mdAeETYkdso7XJA2Kb3Cbl2ehR4PCE=;
        b=ifwbFPpKhMxPpmutbBeJl7ZOoGU+4B5OGP+9mNWZLQIh4RpdfNFJH925EE6bkIDDY3
         JXi7CClllvhEejgfxUpE3Yaq7Eju8C0LuFNIQ9FbDeciHVpRL2xfCwEFnZv8E/UURZoc
         nJALc83t3Mj34BOMPxsR4gt0w66VPbg2n3vr+C5d/lejnT3KvK4FZTM5Rcsb/5KhdkW+
         CRqRx9fCWkit7Yr4ly8QMfYQHyKng9HxhdZl5tlLquG5GZmquPD1tqRb4x75Mis86ssd
         49mHqPywEo4rdvuS8u60ACNvx42j4SGqFl5MhGPAUObcTO2xA5DpcOckw36sRtOGrt69
         tT1g==
X-Gm-Message-State: AOJu0Yx2pFlDyzM5Xu2dQ0w34XUDkIspkNsIwslqgtTXKsf4gfl+y+b+
	0i8VK2FaMBaoWP7G4ZqkVpuD2saZbkSHJ86VWkXPA2yTLGA1yn6WM9SCbBZD
X-Gm-Gg: ASbGncsTIEOU5VLovOUMaB0z/BOUTtiHLDK5BbHrg8yho9eW4xxLqZVgoBZqSZaMxS8
	90Q1zwv5eFVJ2Noq4ONmey9xhtq9HY7BPr+GgLwLm7SD+Z1ICG5CELmhx1/CPXC+cMtGTDZ+9IQ
	SBDsa8ZEH5mhF5tdg2odD1KDJr3K2UMgB6Gq63j5S6ZKrks5huB09mxuPKm8bkMBT1QoFnWxEb1
	P+Di0khWS84iifm3yL1edsRfj0+vuX+qxMWNyuMi1vPnD3pBZXvg5LDJDoqksVe
X-Google-Smtp-Source: AGHT+IG+kmbnNJeAa/pzqiuh2MHJZC2+zOES1K2fAq7ymItaGMWNudYO9yDz3o2Iogk8OMFCUQ8HUQ==
X-Received: by 2002:a5d:5f4f:0:b0:386:1cf9:b993 with SMTP id ffacd0b85a97d-3864ce5c698mr5872169f8f.26.1734009568778;
        Thu, 12 Dec 2024 05:19:28 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4a25sm4042360f8f.27.2024.12.12.05.19.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 05:19:28 -0800 (PST)
Message-ID: <0f36018e-f08b-4fbb-bcd0-f9e18f4968a7@gmail.com>
Date: Thu, 12 Dec 2024 14:19:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Scarthgap recipe to save and package to secondary
 partition
To: yocto@lists.yoctoproject.org, pierre.daye@p3lab.com
References: <vnCM.1734009244366914529.Gp65@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <vnCM.1734009244366914529.Gp65@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Dec 2024 13:19:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64436

> Any idea on how I can solve this? What am I doing wrongly?
> Thanks!
>

You could try to remove /media from QA_EMPTY_DIRS in distro.conf or 
similar place:

QA_EMPTY_DIRS:remove = "/media"

See also: 
https://docs.yoctoproject.org/ref-manual/variables.html#term-QA_EMPTY_DIRS



