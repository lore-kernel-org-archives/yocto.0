Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44DB8C36001
	for <webhook@archiver.kernel.org>; Thu, 20 Mar 2025 14:45:49 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.9687.1742481942902440334
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Mar 2025 07:45:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RjhiSsL9;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e677f59438so1446535a12.2
        for <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 07:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742481941; x=1743086741; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PbuJDl4c7GTs/zf7NHUnD03v0gCJtgbzK9qcLiT0Uu8=;
        b=RjhiSsL901WEfxgkhlE7x+i5hxBxr6Vx85LxnpNtf2XvTeSJ9JB8sG/wLCgKW2i2Iw
         JKMGum+U8Oyl9eL6ytnl5ZA8OE1dPPr0Yg4WvoM3KYiBTzhdVJTfA9KoocCy4J6PeFEy
         eICpCXvxizOFIDdvjEdfQHjKK9C2ZAo7RndJ3EhM18uI9DKaUXbn+/HztNRDEepnsCnw
         oOfnlv54wZwNHyoq2m31YmuRYx3PjLRvI7OhkBgDfYfbsdQzkWl0SsV9iU3Bnk3As3K9
         kTihZZK2SL1Pe/L36y3MRq/t5Zsr/DKDy4BovJeSnEJztId4VPcwdgOVUsFqR2oB5OjQ
         Q3jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742481941; x=1743086741;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PbuJDl4c7GTs/zf7NHUnD03v0gCJtgbzK9qcLiT0Uu8=;
        b=ZGYUByZqo/ff9mCcJYQ6RzaB83ahNoUk0K81caUQv4AeAus6QRd37UwX7/AzEAgYpg
         BrIgYUdXDdKULHQsziYHpA+vpUUnPhkBJDVFu+8Aa+Yg8I4u2ofz39y14NR+RXMdHndf
         bjc/he59VL4VF/a3pOWgoQMu2p83wlCEtNew+C1s03VaHlyGOlPPx2dbYcu0PsYziw9z
         ZAxO8hoXYd7qje8ZsinWNM9ZtoTK/Gl/07ZAo0SZqifXfzLGKBskVvNXA7GzqmDNxDr1
         IxQI19A5jFWAEHcptf/uX0iPW0oqacwoBDWDxGEpYTb/RrF64CyvOcATLMyGaUgEGHlP
         h8Fw==
X-Gm-Message-State: AOJu0Ywp5CEd8crTMHNhqnVsRmzfyqIJrEVF270gfztzy5bhCKNpMamj
	3yBfVYlP6BHqKydPyURlYeuuBCtzpQ9vWkkuqvbwQonKb3JTXtKfl0bXeQ==
X-Gm-Gg: ASbGnct7I380l1XVyRf+VBaQTTlgsvs/1Tyw1obYHgclpyOLwOldQJDsCZgoqcIFp4w
	s523NdN8EGHHtSaTQBWUCl/yTfBmRjdTRlSit3B4aQwLebAM8upn0Z0MPTfniCX/29fo0B1N1PT
	InG6Jk2Pzc15WZzwG+xoiM/GYSiwcMea8a71rOGZB3UR1jGVHpnZ1LK6c7Tcdoa78yv3se5602g
	JNJic9D7k0Q59yAWHyg1zEnCpalUoYLHD8RNpE6vkMfglRiKQ+9zZdT/PsrCnTbsaks5DcEcZLN
	ld7kUqylEXRmO2tV20N4qcKkb86yOdQB5QHP+1atlB/wrATscA==
X-Google-Smtp-Source: AGHT+IHszqcvNs1VEYFyhkU3XFYMypQN40gM0AcluUboELTwcNEM8Ld2LydQOfOgVDUWxLcgf6G4Fg==
X-Received: by 2002:a05:6402:27c8:b0:5e7:7262:3bb6 with SMTP id 4fb4d7f45d1cf-5eba02be6d0mr2598932a12.29.1742481940761;
        Thu, 20 Mar 2025 07:45:40 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816afe201sm10412409a12.68.2025.03.20.07.45.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 07:45:40 -0700 (PDT)
Message-ID: <93ffd6e2-a3fe-4119-85e9-8865739ee08f@gmail.com>
Date: Thu, 20 Mar 2025 15:45:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Any pointers to reduce the size of apache2 / nodejs /
 openjre-8 packages
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
References: <77oL.1742450403431989209.5fO7@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <77oL.1742450403431989209.5fO7@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Mar 2025 14:45:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64992

You could append " COMPRESS_JARS=true " to EXTRA_OEMAKE in a bbappend 
for openjre, which should reduce its size. Note however that there is no 
free lunch - it will come with some runtime performance penalty. Make 
sure to verify that it is acceptable for your product before committing 
to this.


On 3/20/25 07:00, emailaddress.ashish via lists.yoctoproject.org wrote:
> Hi Members ,
> We are working to reduce the  RFS size for one of our project.
> By doing all well known technique and suggestion , i was able to reduce 
> the size of JFFS RFS by 60% (form 369MB to 168MB )
> We still want to reduce the size by 8MB approx and the major packages are :
> a) Apache2
> b) Nodejs
> c) Openjre
> Can senior members suggest any hack / trick in community known for 
> reducing these packages.
> I checked the PACKAGES of these recipes and ensured only (openjre-8)  /  
> (apache2 + apache2-utils )  / (nodejs +nodejs-npm )
> are added to RFS and no other packages from these recipe are added there.
> Attached along is the list of installed packages in RFS
> Thanks ,
> Ashish
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64986): https://lists.yoctoproject.org/g/yocto/message/64986
> Mute This Topic: https://lists.yoctoproject.org/mt/111804210/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


