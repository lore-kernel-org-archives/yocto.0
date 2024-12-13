Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC9E7717D
	for <webhook@archiver.kernel.org>; Fri, 13 Dec 2024 11:27:52 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.13271.1734089264914417321
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2024 03:27:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=am5UxUtN;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3862a921123so1174801f8f.3
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 03:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734089263; x=1734694063; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RUyddi+AHshWybr1Tyx43xDoezws7cWvijy4Fh9oSWE=;
        b=am5UxUtNJgM30qUA74Q/HSDNEBMaVfyhVybnAXdFAhtdfRtqxYeJb7U57grutB+HU9
         IhfaoPP0mOj5vK88R4VISt5LeWSUJycd4zwuKQ347jij6DHuCP/tU82C+ILr/RKjb6I9
         0Fo6LRh8+IBpOomv7vCYXaEV9w0XC5sgQflvuMCLtqTivLf+0ndDHC6kUet2FRl19/9U
         h8re2H07aAen6wuHmZHHrRAwy6rwxslY7ph8iwra1FMa+ZMbFSc3HSkC1hGgyHi7MBJM
         hibrMNlsQdiFngwEAgogcvydlK94vmMKO5UuITuyPf1sjzBkECkL7N6WCsZx38MGsTfv
         /9TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734089263; x=1734694063;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RUyddi+AHshWybr1Tyx43xDoezws7cWvijy4Fh9oSWE=;
        b=vAIGvYVR4XI2sBqq6bvXogkMnB7Dwg8nHqM8jBxA+FAiPbFtpvFGe4TNDU9DDJDhOd
         Mh+7v4anWvYlSaBVECE15jhbqYp+HO/ZyeEqjX9mqT4IwJdFn7CNGkWbXyzG3gkeonxV
         A7a23odBn6keM7OSb/5E9aULND9WeT6spDNzfvdrxths/0t2cmpWVKzStS99GRy/dGLU
         uozcs4lqH+/D03sodNxwrDVsEGtASUotcOvdiZ/WpW6Mj7QG6X0/AIh0MXD6ToAZ7vIv
         NI3w9MXR7r6x0KArNqhefAcjH6CZ4fdRSlwQJWSHneKtCTxbkD9GBGceKdY08hVaLao9
         C4WA==
X-Forwarded-Encrypted: i=1; AJvYcCUEutt8hUTyf7Fms4oVjFy9nV+F5aONNP4TaEHsAVat/8+W1Gi6TAVeMgn4uBI+28PYGan78Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yya2QMES3PHyuWmT0+2V7ZgqeOmFl4uYPv4pJtuDObc/fsGF2kC
	uqFJvYEW14/QRxlZnad35h9zxUiaKDZEHADHo6gvpOKFGXvwm1JA
X-Gm-Gg: ASbGncuJqDgWyWQ+6dL215k7DoXkHHWAqi/QQ5SI8OU2GE7jMVuUMU67dMmdjbQA/10
	gjFeV/AHJrYbzyqBeVXHpwnhVk18WYvnlSFRM23MwHKonxTQV6/eB/LZKXaLDJ9/Q9WGE7j4B6M
	F4Nm95P4kfjjL0kBOc+x6hSQKcfwz36T0YWKTIRMO/0RJmTSp5hnPcXmt1iMA6JaclWKMLuwS4r
	7WkLWz4rpJ9WcOIFpucVBFRMNivLl+5p5IZlx3K/lwk788iTE0y7VonfYkcTu+C
X-Google-Smtp-Source: AGHT+IE3AhTMJ7PFUMMy9hy1tUMDkRfEogMSDmObF+qtgFMWQHRPT2bBeRv+BK/ynULGtj1ayAElCw==
X-Received: by 2002:a05:6000:4026:b0:385:f07b:93da with SMTP id ffacd0b85a97d-3888e0ac2f9mr1730750f8f.47.1734089262750;
        Fri, 13 Dec 2024 03:27:42 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824c2c9dsm6799169f8f.54.2024.12.13.03.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 03:27:42 -0800 (PST)
Message-ID: <4a7aa310-e4f6-4682-823a-e6d5351b3349@gmail.com>
Date: Fri, 13 Dec 2024 12:27:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] issue while adding spinnaker package to Yocto build for
 core-image-sato
To: rajesh.d@mindteck.com, yocto@lists.yoctoproject.org
References: <2440ad33-31a5-4396-b12c-18852d437704@gmail.com>
 <6917.1734088170203071321@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <6917.1734088170203071321@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 11:27:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64444

>
> | === ./yaml_cpp_vendor (git) ===
> | Could not determine ref type of version: fatal: unable to access 
> 'http://local-mirror/yaml-cpp.git/': Could not resolve host: local-mirror
>
Unfortunately I am not intimately familiar with this layer. Blindly 
guessing here: is it possible that you set up some repository 
substitution somewhere called "local-mirror", and missed to remove it? 
(grep -rl local-mirror)

Otherwise there could be someone else with more knowledge around here, 
who could give a better answer. If nothing else, you could also contact 
the project itself on github, they are the most competent in supporting 
their layer.


