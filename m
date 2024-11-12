Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06B8FD42BAF
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 16:52:09 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.91301.1731430327004078408
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Nov 2024 08:52:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kNfTNFvZ;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a99fa009adcso397963566b.0
        for <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 08:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731430325; x=1732035125; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9VULEq5rp2k1IEJBwN+OB8ASxjJL2Eidado3leldTKQ=;
        b=kNfTNFvZu8ReySPNmSao92PhzqBc4jDktT1ftMxYhorMl13eubyT1gDwt2ZFy1pudI
         rCMjsDp7HV4N7tkAm9JyCHL1gewtNa56FppYYIGUpUJGu9oQIOpxMizwDk7POJk3aaQ9
         xkdl9MyAGfF92dQz1dBWPY8Z3JfBx3GPRR+8GTi1UC8LzQbVd8ooSy+QAz1QMlK7zYp6
         N8MMUYjckONvufYbTU77jOC/lr3EweLZOMfUSJvdxz2PkZRXTvJNStKDVr/uG1mMFPTy
         Ec6b7INuAgfIEh/Nlj5FmbKnTT8CJQkj24mt1F3o1BNyhM5MVYuIOn1FsISQuEF6bMaj
         Q/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731430325; x=1732035125;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9VULEq5rp2k1IEJBwN+OB8ASxjJL2Eidado3leldTKQ=;
        b=q1/e3AeKRwAUhKuu48+n2X/qR/O4buSctEabFbkaUM1i/LCQ7s6n8NBtgRBR8T9iMV
         uA0rMLYy9/vtWPJi2uBsc0hBHzxFqY1mzBg74Av6t7ofm2AwRw0eD/eDyeAlyAi8gH0l
         SzEk9Rt/D+H83xeUJXS57pgg+H3H/HCgXT1i+pR0wtXmYmx4EgCgWvUu73j98jR0fDop
         91IHvqNBW4TgHRI9YUbdKhLjMSpMIlJqS+E/xmVc24f2VZf/QnBjOpjJrwdwhCo+sFZB
         W0XTOmIthZYyWtvNLmjNsqpT1JUd1oPfl9J9JQm489AG44hPNOLroZz33yxkvjhWLl4X
         FOnA==
X-Gm-Message-State: AOJu0YwyPSkBWZR7+Eh0rWoBNsLBDW3Lr23dq/MDvrt8WNgzAP7JBpum
	i3+6OIWucuXTvgLbBBHb0Fjv/oP5s9NX6d3e23HTHN8WnJfSKtNh
X-Google-Smtp-Source: AGHT+IH7iegXafM/dfLEXQhxFY8wAlF0Hbn2CId1ndrC7PDwgLE+1GohloQXMj+t0Rix98AMINFipQ==
X-Received: by 2002:a50:9f89:0:b0:5cf:11cc:91d3 with SMTP id 4fb4d7f45d1cf-5cf11cc9357mr14570631a12.9.1731430324992;
        Tue, 12 Nov 2024 08:52:04 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf03bb7fcasm6420866a12.52.2024.11.12.08.52.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 08:52:04 -0800 (PST)
Message-ID: <ce59ef65-84ac-4f4c-bfa0-ed2b3b42b7e7@gmail.com>
Date: Tue, 12 Nov 2024 17:52:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Id: 'weston': no such user issue Disable is required
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org>
 <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com>
 <CACsETSup3qgwz3HrA3yh_HQrZJteiP=BWaNuzfSespLVa9iR+Q@mail.gmail.com>
 <4eb6e8ee-3b1d-4536-beb7-4a4c4218739b@gmail.com>
 <CACsETSsO6OOVxZ=MgYMGv_Jepmn9OmgUBfDuiaEO3vFaAMbtWg@mail.gmail.com>
 <40d01dc1-7894-4163-ac1f-3807bcc92048@gmail.com>
 <CACsETSt+z2LxaQsUCh1K88S0APT88q+AgDKpGOcPMPDi=ntz5g@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CACsETSt+z2LxaQsUCh1K88S0APT88q+AgDKpGOcPMPDi=ntz5g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 16:52:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64270

On 11/12/24 17:29, sateesh m wrote:
> Hi Sarvari,
> 
> My intention if we disable weston we won't see this error.becuase I 
> don't need display.
> 
> Could you please help me with this. Actually I am not clear about my end.
> 
> Thanks & Regards,
> Sateesh
> 

Usually (unless someone did some extra magic with the image recipe) 
weston can be removed by ensuring that "weston" is not in the 
IMAGE_FEATURES variable, and "wayland" is not in DISTRO_FEATURES.

Since your system is complaining about missing weston user, it looks 
like that you don't have weston installed (You can also verify that by 
listing all the installed packages in your system, just to make sure.)

It just seems that you just still have something else that's expecting 
weston to be installed for some reason, and complaining about it. That's 
why it would be interesting to see what scripts are executed upon login, 
and from them, which one is looking for weston user.

