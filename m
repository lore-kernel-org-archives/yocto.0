Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75229C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 18:40:52 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.979.1738003251514402512
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 10:40:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MIY1CPD/;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-436345cc17bso34238735e9.0
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 10:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738003250; x=1738608050; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ciNmE3MjCQSSMlFOxm/z4biwI5w1xJBgtir3eky/g3Y=;
        b=MIY1CPD/gqg2R7Zmh5ecl5BuYXltK/TcJH1XGs92pH3dYLglUf0y0nKL608Wf8WIWX
         jt0dXh67/w7jNuH2EWLCZAXPvb+eMFfAG+6ysF5WTKeoa5J9FjxLp+4FpHGg0I4x6pEV
         nP0vZXyFpzO0/hbBZcO1HWc2YAQOyK0wbb6C+eFCmmxy/QToefi5pu8XMCwFLskvTPkt
         3Z6IdmclC7L2bQ2NsTbv0kiBHR9A0G1DPHTkZVenK5KOsscTZoCudh/VXL60+Hwg5YBZ
         nUZvqzsiYD5YdJtU/a0/yjU4cLVIs9RQHV53gFUW4zCOmIpj54UmTvrNlDmnJx2aOUu7
         49/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738003250; x=1738608050;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ciNmE3MjCQSSMlFOxm/z4biwI5w1xJBgtir3eky/g3Y=;
        b=Fpaxzm0HUf3wQK4J1KumGq1pwx4ChaZDRkIXNlO0KcKm9PJQsKWP5WSCYtF1IkL1dE
         Q4HLgLPBKuImZU37ecbShlIiARQPLTbeEFO6W2vlvlMVo6enDxrmT+2ZYDWw74aunL3E
         LNiQrCwZ15yQaCioAIw3BXjpaxVkzpqyMMwhzuF2Fdu9JTclaiEHldI4zybKfXlH88Vb
         eVSXRGUI/jgV3VmWBilUlU0mv3c8EQgVN5nz1IC3D7U3BruPWQ3vcOZvnzpoYwMvcJp+
         KGcZLXWkATrbPdzgdD6iOGborxro1v1e9G9b1XVlyr62xf3b+KElFs+QDZu95/IQG/kP
         926Q==
X-Gm-Message-State: AOJu0YwTv2JzwImIErQMSiSYxCqF9WO4B+AnU4yXH6qIBmJYESURWp7T
	ZfH9RVabvL+RIsvPTdCd5BU4RVkQKYcD2R5Aedb/xYI9bKKh7xdV62UoaQ==
X-Gm-Gg: ASbGnct73xKIo8hnJOBubIa2bDyVki79IOM39YvP7o+AzxHqkAGv0RwtIZ5ZA+0uD+4
	80YM5FnX072Hg4oXUydmFhO9ahC38s1cW+B7g8BRto3ng7q11Tp3NuK/bSrw6BVSBeZEsSEa/CX
	hxTIJk458g8dXSxsasiLtOiAKWph1SQP7JViF2WoMclrHz1Cmdp7d6hgmHqwNQJcSUGC92Eddlg
	9p0FGDUnKVAnQEg0c17NIQni/Oz7ta8zc5YWR6NP0DnJkoMX/wMfTYR38NLdLNZJoHg1ytcO5+z
	JQelZwD22Osp
X-Google-Smtp-Source: AGHT+IG1o5VnWLAtdqXqO+ujjGpLoWB5i37Dusq0NBtPnVZx7aNPoHz43eOIetfSbSuaPfPxcTwdAg==
X-Received: by 2002:a05:600c:510c:b0:434:a1e7:27b0 with SMTP id 5b1f17b1804b1-438913ccd4amr488405615e9.11.1738003249595;
        Mon, 27 Jan 2025 10:40:49 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4fa463sm141705515e9.8.2025.01.27.10.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 10:40:49 -0800 (PST)
Message-ID: <b69d48e5-7062-443a-be53-521852cbd10e@gmail.com>
Date: Mon, 27 Jan 2025 19:40:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto scarthgap] do_configure failed for pth-2.0.7
 package #autotools #bitbake #scarthgap #yocto
To: yocto@lists.yoctoproject.org, kavita.mnnit@gmail.com
References: <Voh8.1737990624661397609.VUZB@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <Voh8.1737990624661397609.VUZB@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 18:40:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64646

Unfortunately this information is not sufficient to give any answer to 
this issue - it would be much easier if we could see the recipe you are 
trying to build.
Is the recipe available online somewhere, or are you able to share it 
somehow? If you are applying any patches, they would be very useful to 
see also (unless the error happens without them too).

On 27.01.25 16:10, kavita.mnnit via lists.yoctoproject.org wrote:
> Hi all,
> I am trying to move the yocto kirkstone branch to scarthgap version 
> and while starting the migration, I am getting following issue:-
> checking for stack setup via makecontext... ../pth-2.0.7/configure: 
> line 22539: syntax error near unexpected token `;;'
> | ../pth-2.0.7/configure: line 22539: ` ;;'
> | NOTE: The following config.log files may provide further information.
> | NOTE: 
> /home/kavita/yocto-setup-scarthgap/build/tmp/work/cortexa53-crypto-poky-linux/pth/2.0.7/build/config.log
> | ERROR: configure failed
> | WARNING: exit code 1 from a shell command.
> ERROR: Task 
> (/home/kavita/yocto-setup-scarthgap/layers/poky/../meta-jci-app-4017es/recipes-support/pth/pth_2.0.7.bb:do_configure) 
> failed with exit code '1'
> I checked the autconf version has been changed from 2.71 to 2.72e.
> Is anyone else faced the same issue? Please provide some solution or fix.
> Thanks,
> Kavita Awasthi
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64644): https://lists.yoctoproject.org/g/yocto/message/64644
> Mute This Topic: https://lists.yoctoproject.org/mt/110840172/6084445
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #autotools:https://lists.yoctoproject.org/g/yocto/mutehashtag/autotools
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

