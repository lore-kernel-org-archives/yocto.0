Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76675D59D60
	for <webhook@archiver.kernel.org>; Mon, 25 Nov 2024 19:40:16 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.27828.1732563610918713070
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2024 11:40:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U5MbHqmI;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5cfd28222f9so2664930a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 11:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732563609; x=1733168409; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6JAMC1xVSliHHoRul0ECcT2lMGC/mjQYMg9h0WcfO4Q=;
        b=U5MbHqmIlaPtSY2FyMIjw+QODyOShe1aeLZARlDDG55OdWSFdmTaN/Ff+azS/P4qxq
         CWjPKvC1MRuqmAVW5RiycGqHkVLs4kC9ftSsqA/Wfc3q9NBnP5aPJJb1CpVJewo0R5SP
         LCYycoZ2rYa+J+fQzYTqw2W4gL3AYgdd+RaGajhQq8lJZ7D+3kPeXsqw/q3r9kwlYe/x
         gEGhJeQQ+b+ti2qV5ywXQiCghjqSs6I60/wNXU64R14QUOvaPFPfTUyQmg3g8w7IyeXO
         Y7WwKZt55GW1+Qh5kWwqQl+YVeF7Yq75KwtmJm7CP0H4EBs0Wzp9rauoiltOIuCdIAuQ
         G4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732563609; x=1733168409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6JAMC1xVSliHHoRul0ECcT2lMGC/mjQYMg9h0WcfO4Q=;
        b=Trnwmz7zR9BcZ+Isvx9X+BEuULqY+loZRhTB0brybwYnKFuPJykYzo4zCE7fb02Uhj
         9SDHhvU6tqfYzQ6x1TVRoXeRiIXqls2HX7lBqeM839Rt3QwB8DhaUiU4H06PfRoWN8KN
         iVBTMEJ4zXSztKPW6edaFAayH3B3IiJ1UrRBASe81AYFh2NEDZ/Zmpae8HQ8rrjqxejq
         UJf5ACY6NE90EcOT0mcSecgAj8ylQRciX6/nJZyg41/0tI6QBbYyNafPy0uNU2aHI2bh
         MNST5Nc1/RuIhaKXIJSSRWFWEoanCVRdt+Snyg9mpPe8B1cBRr7LYM5hiOWnQoTQrEsx
         32ig==
X-Gm-Message-State: AOJu0YzK8Vnp9DpbjS4xO680K+XhLGC9uesa+QzT0IavmPio9TOOqgDr
	B86RmxCYWI8H7x7IMke5sLckAf+VpKlxCFOaQ5GH/PIgBkmn5S0HlKZECg==
X-Gm-Gg: ASbGnct9AtcNQPmdrDOncs1KhtjWtQGTZvRZoiEjbC9PUHasqDr0MtIK59SFU91poSg
	onax4W7p8fSNEqrffnzz0BhICjGh69nR51mjOEY8N6BCmCitRcjSWLsY35SL4zH/POUQvjGCGV8
	jp57w4RIFNtizY59Z154oebE90jV+mVi+nnlqFl8ZVSdptZPrzL8/N9jPiyXQAviW4xe1HOsaYu
	M84HzoiKyr7zjfys0WMmlrPvN63V9kvLNRewjjlQaGHKERdlvzdoxA=
X-Google-Smtp-Source: AGHT+IExgaF8ubxI04hjM+yI8ImHkkx9iu7fT+sY9BM4AGJ480Df6ntCNslxDAtAElKis+FbyWKzpQ==
X-Received: by 2002:a05:6402:348e:b0:5d0:35ba:f12f with SMTP id 4fb4d7f45d1cf-5d035baf230mr11782755a12.14.1732563608907;
        Mon, 25 Nov 2024 11:40:08 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d01d3be73fsm4435009a12.39.2024.11.25.11.40.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 11:40:08 -0800 (PST)
Message-ID: <f4977ec4-949d-4d1d-a154-5c84c56ca242@gmail.com>
Date: Mon, 25 Nov 2024 20:40:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Unable to build airbrake npm module in Yocto Scarthgap
 #devtool #scarthgap #npm #bitbake
To: yocto@lists.yoctoproject.org, sampathkumar.n@rently.com
References: <Ac0Y.1732508039366214005.99l5@lists.yoctoproject.org>
 <2202.1732511607318810332@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <2202.1732511607318810332@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 19:40:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64341

Following your description, it built on my machine without errors, once 
I untangled the licenses of the dependencies.

Have you changed the generated recipe on any way (beside fixing the 
licenses, I guess)? Just for confirmation, the error also persists after 
"bitbake -c clean airbrake" also, right?

Also, one thing that looks just a tiny little off: the Scarthgap branch 
of meta-oe has nodejs 20.12.2, but your logs indicate 20.13.0.
Are you using a custom nodejs recipe? (Though my gut feeling is that 
this angle is a red herring, still...)

