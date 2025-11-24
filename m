Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD53CFA466
	for <webhook@archiver.kernel.org>; Mon, 24 Nov 2025 14:46:38 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18287.1763995595097774127
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 06:46:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bfy56khF;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477563e28a3so30055155e9.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 06:46:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763995593; x=1764600393; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=siflZI9lKb5gkgBqeSNZCcEQSO8npfqiMLrxS5JOsdQ=;
        b=bfy56khFMLdlb2rNol7KvhDkizDvwvcxLkrjoX1/sMtVT1hDm//fAVVj4xm4x3NgG1
         Th+pAG8HSA9RfbNAXkWAfXheH5NWquQIetymcCCDWI2lJjt+b2u2oDuEpNMCq/TrnIq1
         jNQE5ZzbnvirPuaYXwwZzY0cXYtQ++BvX28Vrmnb53RS2hw9+qhnUQBKIetkCe7pk1YO
         or/nq4I9IVNWLMR0rAP3ctbFeID1+nAdR5UjYomd4+2zxP3X2fEGs3khKxq56xzfbsgs
         JVZqdBBFDmhzDKYRWX0VTZH9rmvBc/rDUwoYKr0vTYVTdsEALa6Hn/qZH/E+A5qc0Xq8
         NuVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763995593; x=1764600393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=siflZI9lKb5gkgBqeSNZCcEQSO8npfqiMLrxS5JOsdQ=;
        b=Zm8FwOvlvtdjuVSUeVtn0xrqOSwT3DO42lwrHkz6dt6x0P4W1LnHjIHu0Llu/3FhzN
         TVT7FroN/5SseK7oJB4ImoGKfEI69t/sBVBxLheKcWc5wiYHUVWS7h4NiwvRWs6Ab4hW
         CP2Cf4zdtrMJ0GdktE7AbMUmlURNwetItfUKuHnt5oaXOyqLAhrhinT6uL8RSH7JgcEC
         iANlljutLUnDEFspdqPlXteWYtanIP34UEvq05KXIdbndHOQ3cN0rTYnSBkeH1xku3Jy
         lKN0LgJGF1oX3M5h21jlUURGAo2G9GfeoByU4oP59W6nk4qifT2QuczVpz7n8aKOrzyg
         6r8Q==
X-Gm-Message-State: AOJu0YwCGiB0FDUnRH/pDDYZHWgPVo+NfkDc3IK+NhgG2q4+8lKgtV82
	O/m58BWnMaqKAkaoaq9OlcJXBfIKcZX/J3D7DRZ2QCfuK7aYVkXJbpn02O7QyDoJ
X-Gm-Gg: ASbGncu9NkNZwTRLJIxFbDlllBSWdeJto0q9f0wkZowCVSWtXSHborm7AeKA0tjsVQI
	lCKo7vfY+ysDY+Dr3l1e+iEC8ZLh4XB4fwAi6GoEvDOgLTE8XPWPP5BXzXGh/DuzLBvAFC8gQeM
	/V/cEqHCK7/lxWR0EOCodGKNgLVTqG6uaTC+GYtuCn4JPTPVCk7xOpVe3V7jlWv6SttZn0iWCY8
	ALqxkhkE6dDUSkLFVyTyRGFglA5lusNZZm9zR7ZniI/d07zAcYUBmXpPqHD3tEWTWd6vcX/ktDL
	g8jd5UnkJpiWa0v4vet1G4ZoFMB7TJODLoWxHuco8a9d+ptTG7jO+mbhd7Fm4EWW3wuyP3DEkha
	lboR6MRXNWXOgqRUC89dggKviUTc3B6sLro1K7Bqzdlp03Zn8uby39gpIkHety4RLwVrGWPXKle
	kMxebHbwGTfcTyH/+DjfI=
X-Google-Smtp-Source: AGHT+IErQXwyxjnAo7dkikxTi5WJHmPYwHfCoKmqVIX5wykHZIySzMP1JA6mdLJCe6Nuv7VpF9dtDw==
X-Received: by 2002:a05:600c:1d14:b0:477:9d88:2da6 with SMTP id 5b1f17b1804b1-477c026ed62mr120788485e9.0.1763995593269;
        Mon, 24 Nov 2025 06:46:33 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477bf1e872esm199109675e9.5.2025.11.24.06.46.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 06:46:32 -0800 (PST)
Message-ID: <d8c5fc86-eac2-486c-9dec-c03b076a3e5e@gmail.com>
Date: Mon, 24 Nov 2025 15:46:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] weston 13.0.1 assert fail #scarthgap
To: yocto@lists.yoctoproject.org, jarno.katajainen@solotop.fi
References: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org>
 <48750926-4ee5-4d46-b452-8d0c0dd680bc@gmail.com>
 <564360.1763630492381329900@lists.yoctoproject.org>
 <46e999f4-7254-453d-8414-b019d0381209@gmail.com>
 <686098.1763993744038185859@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <686098.1763993744038185859@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 14:46:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66044

On 11/24/25 15:15, Jarno via lists.yoctoproject.org wrote:
> Hey yes of course i will. Being quite novice could you tell me how to
> test, thank you.
>  
> So far i did bitbake -c cleanall weston && bitbake <my image> and
> still have the same behaviour.
>  

That supposed to be enough, after pulling the latest version of the
scarthgap branch of meta-raspberrypi. Which revision are you using now?
It should be 5240b5c200e594b494a7f1a8f9d81e7c09bc8939.

Otherwise, if you are already using this revision, what is the output of
"MACHINE=${YOUR_MACHINE_NAME} bitbake -e weston | grep ^SRC_URI"
command? Does it contain the newly added patch? (Currently the patch
should be applied automatically for rpi machines, but if you are using a
custom derivative, it might not be present, depending on how you
configured it)

