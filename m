Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A9BCA0EE8
	for <webhook@archiver.kernel.org>; Wed, 17 Sep 2025 09:09:01 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.2397.1758045345789366215
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Sep 2025 10:55:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z4aGGvzR;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: mr.nuke.me@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-31d6e39817fso8277209fac.3
        for <yocto@lists.yoctoproject.org>; Tue, 16 Sep 2025 10:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758045344; x=1758650144; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:content-language:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wRO0nu+3hdxwhIeEOIiNSXS/TdTfFGOtGBNWk+BeCKg=;
        b=Z4aGGvzR+O2uTR5NaXqYSgCnrCovWMJ/Cw1LaKd4oRmE8o9duaR3Pjbt2mBjJFDAl+
         1FNtG/WPNGj5CHb2lwoSI8Wb8Gi9QQJ3xN4kGJHHybG/gEpnEnS2n+93+LLlPy3xCE5w
         9RQwzn0QwaCi7xYI25kD2krHfsIPwTQv829pLku5iCsLTrheah4e/01t9d4c6I7NnNi5
         i+iCfXWc4ujxqTlP1wxJyc90ZodttIc9nWMl8onVDG1BcyGQviqN+LK+8j++e+V+vZQH
         /MedYBlLA9oaQuNvRSBQGGD0Qk6HFB1KvgKRg2AeTbkSDxBhIMFpIUKL77lzx/Kgz6hD
         0BIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758045344; x=1758650144;
        h=content-transfer-encoding:to:content-language:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wRO0nu+3hdxwhIeEOIiNSXS/TdTfFGOtGBNWk+BeCKg=;
        b=X9MmBRVi0iOqTBW6VY/G47hx24CDcuBkua1C7MNyhpNe5bxCZVDfLZUp8QoqPoY+5U
         QGXPp0Lf0at9j3zKYiBC92bZMW5aXRlrbUZ/ja+IqrQ7YBHN603Jm1Tco4dGEXzVON0l
         9lSCzYbf/wy+ICwa8yf4XTh/KiJ7GuGB5LdHkGeCaVZZ8m0mNfleHgG+hUPvgX0mputt
         OJJ4BOOkia+mH4pTzgPnZ3sTJwf0oyHyj1Aqi1dWW+xA26DXBQdZ6PX6Dhkrce22bVVS
         oKd/Vl0tpH2b6HbWULPYEmG+TbofF/bUZCpiberoFT0I/xPiRMw2Ul5ULuVRAHBt3u0t
         EY+Q==
X-Gm-Message-State: AOJu0YyVLQMk7NpPT13QHBkHR5pdrlq8RcuMwSoYM2Pov235KUcUlCW/
	BLl7vBML5H3n4h96vw6LP3PXhcRhsAaeIoDcEOOnFRJuqjc57X1C3AkghXOmNyzV
X-Gm-Gg: ASbGncvo8dYZDedL1Iv+L40QVEdM59RqiATkXEwbiT0imk+26+6rtWCB4U1078GEVjS
	RuBlINDzGH0xArEoZWkwPfqO9rxqEgWg4M1fkr/JLVYaW7IU5EW2S8p/jYMwpSVlfTZGSsJ8Vh/
	F0x6DPc9Ep3FSvJLBxiR/dTQPB1pG/8bvtXq09iUUcdTxJqr2oVIu3+PJeswIKm7HMS78UUYO/N
	3kXu1Nw0aAviNmHcPPnjbCLL/VGd8sv/kAC5Cko/BEJNYMC1W0qtpmDYslvKrqNPLGt9frzbSEr
	9JqlWR0C+fvAVdyEODx6eChvV1QoOVtnywuwy7iGSmVlJ7wGPOIALjj9MM4a38xGMuHGrCkYxAq
	8m3xMUn7u7Mh0CLKjARwNtCrGePqz96jJ49/Z1dPDfCvgpac8BTmA5me8Lk3Djg==
X-Google-Smtp-Source: AGHT+IEn8Ss8O2xqlfMCRaf7I7YfcvOwfXyi2KnDmx4LDiYKHVkECCyhMR/aSpi7FuuQInlB47mKPA==
X-Received: by 2002:a05:6870:c0cd:b0:315:c0bc:4bb6 with SMTP id 586e51a60fabf-32e560cd41fmr9579835fac.5.1758045343865;
        Tue, 16 Sep 2025 10:55:43 -0700 (PDT)
Received: from [192.168.7.203] (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-32d32d564d2sm5002217fac.5.2025.09.16.10.55.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 10:55:42 -0700 (PDT)
Message-ID: <3458af39-2ec2-4cc1-a45d-f6e37f073090@gmail.com>
Date: Tue, 16 Sep 2025 12:55:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Alex G." <mr.nuke.me@gmail.com>
Subject: Checksum failures fetching from xfce mirror (meta-xfce)
To: yocto@lists.yoctoproject.org
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Sep 2025 09:09:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65849

Hi,

I've noticed that xfce packages fail on do_fetch with checksum errors:

ERROR: xfce4-session-4.20.0-r0 do_fetch: Checksum failure fetching
http://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.0.tar.bz2

Checking what's going on with bitbake xfce4-session -c do_fetch -v

     [0] Downloading 'http://archive.xfce.org/ ...
     HTTP response 301 Moved Permanently [http://archive.xfce.org/...]
     Adding URL: https://archive.xfce.org/...
     Adding URL: https://archive.xfce.org/
     [0] Downloading 'https://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.0.tar.bz2' ...
     HTTP response 302  [https://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.0.tar.bz2]
     Adding URL: https://archive.al-us.xfce.org/...
     Adding URL: https://mirror.slackbuilds.org/...
     [0] Downloading 'https://archive.al-us.xfce.org/...
     Saving '.../xfce4-session-4.20.0.tar.bz2.tmp'
     [1] Downloading 'https://mirror.slackbuilds.org//...
     Saving '.../xfce4-session-4.20.0.tar.bz2.tmp'

We see that the XFCE mirror gives us two redirects. Both are concatenated to the same file, hence the
checksum failures. We can reproduce the same behavior with `wget`:

     $ wget http://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.0.tar.bz2
     ...
     Saving 'xfce4-session-4.20.0.tar.bz2'
     Saving 'xfce4-session-4.20.0.tar.bz2.1'

     $ wget -O xfce4-session-o.tar.bz2 http://archive.xfce.org/src/xfce/xfce4-session/4.20/xfce4-session-4.20.0.tar.bz2
     ...
     Saving 'xfce4-session-o.tar.bz2'
     Saving 'xfce4-session-o.tar.bz2'

     $ $ ls -lh xfce4-session-*
     -rw-r--r--. 1 mrnuke mrnuke 1.2M Dec 15  2024 xfce4-session-4.20.0.tar.bz2
     -rw-r--r--. 1 mrnuke mrnuke 1.2M Dec 15  2024 xfce4-session-4.20.0.tar.bz2.1
     -rw-r--r--. 1 mrnuke mrnuke 2.3M Dec 15  2024 xfce4-session-o.tar.bz2


The first `wget` call realized that this is two files. The '-O' argument causes the them to be concatenated. I wonder
if this is a bug in the wget fetcher, or if the XFCE mirror is doing something weird.

Either way, what is the correct way to resolve this?

Alex

