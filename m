Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEBEFC83F1A
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 17:20:25 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.1124.1752772824240753770
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jul 2025 10:20:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dy6DlZ/2;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-60768f080d8so2251789a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 10:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752772822; x=1753377622; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lu7okGnadjYtqBLaovwZWcJCfF1SJcfvhyyiuLrf0GI=;
        b=dy6DlZ/2Ppn1sN3OQjnUd7fUcOkYH4mk9zvIy++YWExuIa1pnHppjaA+jokijVXKaj
         AhA+N60Wyu0Ybw9fazvsinNL9TLc8IZGJMS72FFutPPZP3OQXcvHeC/OPD+HYOedXOSt
         ey2NqkZZMaS8dNaHvVHMWPTXxnUeT6UGUkwkIM6+zF1/UN8vVjVpHtrHNlFeuaX9rYW4
         dcYQ2MCdIh9jf/72juvKRFqFmYD8YBCBz0QK+ouRT6BHJ6ZiBsEGKE7fc1wtDZ5zDuIG
         aolZa40G9+z1l6jQAuWHcuey0O0Z02IZv0SeY1I0XQjkZ4/SuMGuMNTc1Do2i1ryBk0B
         4I1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752772822; x=1753377622;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lu7okGnadjYtqBLaovwZWcJCfF1SJcfvhyyiuLrf0GI=;
        b=cpSphIo1vHMTeMhEpSk8Lp4z/67Ee2DhffQbhovHXPiF9IdIaFoRailHIKxvyJsETY
         xzkk2/nlal3tgRTUXnYaFGomo1UAExfzeAekfeSHa3XM5gtyiCCmtBUDQg6/DDHE9LeP
         cgY7oWmcYjTgmi6TMsJRPWyJfAb6YrvdlMU9usO0frzNd2ELvgA09zGJE4ROvQ9oBad/
         z+7yj2+7qvTvWdYp34/rXSfEpCMhY+rPb2cMaQ5b4pFzufo1ihiRsnbObJ88wHE545K0
         EXpNT1/VtN9IIk4BhikSr1SWHcyNRJyfQ2cTBjCTabhVbQPbwTEDXuANX16bZV6VvX+0
         kwSQ==
X-Gm-Message-State: AOJu0YydTqMtqfYkJLP2xiziDRqy0qfWLNbgyycDg2DivLTKzCkC9sNd
	CTyZjgmqDaYDBXTBNnaqneH3RP5KBRxQ7xoLvOH/bXBMiWiWlITSdWV22vHheQ==
X-Gm-Gg: ASbGncsBUYBGYxKVjwE5zE0rRUAK+1YeDKKcaCkg5k5LTbDkACdVCxp4xikiduvH06w
	SD6j35r9MkqGs+crkY3RkLB8CicKKcyVPy9AcEGqYTIz7eTXIOuGIKpZUwxmWxW7cltd/CjzLzc
	tvh28jftaJ7AvckIMgKT5RJ/gha9k+KncM0eWzLmi/r7Q1uMH9PmPWjMgez7HVwFe8PWavsKAgk
	cXrJXsTh/FoFTnYV00P6HcDssi8B4S6Zoi+zPbjYEO+SkENO7+Hs7GPoUNaYMAlVbWTuRPjAx+i
	LfYOHUPx+Epc94RBrC4btCJZxNq7hkQtRKDw7L1vaM1BiwvyQP6b6BdlMXJUJ2CBc5+eknvjGn/
	RyyYYoxR/8nUlksEafJJkn4yPXbXvmA==
X-Google-Smtp-Source: AGHT+IGvZWUrNWVkaConNnLJTDZGUAk+wgkr3k4LuvMTpCT95jf07++AQskASdw9db0M60NOkq9vhg==
X-Received: by 2002:a05:6402:234a:b0:60c:9d90:93c7 with SMTP id 4fb4d7f45d1cf-61285c0b926mr6896210a12.34.1752772822278;
        Thu, 17 Jul 2025 10:20:22 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611fa28e1c4sm8581351a12.10.2025.07.17.10.20.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 10:20:21 -0700 (PDT)
Message-ID: <7cc556c6-d347-469a-9ecd-47949e492aed@gmail.com>
Date: Thu, 17 Jul 2025 19:20:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Environmental variable present in do_compile() {},
 bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com,
 Quentin Schulz <quentin.schulz@cherry.de>
References: <e0e5b150-55a2-42ae-9d90-ec2f0023c93b@cherry.de>
 <29250.1752770915071927700@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <29250.1752770915071927700@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 17:20:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65677

On 7/17/25 18:48, joseph.maniaci via lists.yoctoproject.org wrote:
> Ah, I'm using a script to do this in a repeatable fashion, so I forgot
> that the last thing it does is
>  
> export BB_ENV_PASSTHROUGH_ADDITIONS="$BB_ENV_PASSTHROUGH_ADDITIONS
> ABC"    
>

This makes the variable available in the bitbake datastore (e.g. you can
reference it in recipes, or you can use d.getVar("ABC") in python), but
it won't make it available automatically as an environment variable. To
have it as an env var you are expected to export it, with "export ABC"
in the recipe, either in a task to make it available in that specific
task, or outside of tasks, to make it available in all tasks. (Or in a
global config file, like local.conf for example, to make  it available
for all tasks globally as env var)

Since you mention that it is available in the compile step, I wonder if
you have an explicit "export ABC" in the do_compile task.

