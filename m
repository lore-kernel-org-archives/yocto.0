Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18D11CF34D5
	for <webhook@archiver.kernel.org>; Wed, 19 Nov 2025 15:18:09 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9473.1763565478837129969
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Nov 2025 07:17:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=T6lEzHhN;
 spf=pass (domain: gmail.com, ip: 209.85.128.54, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47790b080e4so30065255e9.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 Nov 2025 07:17:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763565477; x=1764170277; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=soJws8MTyCfIGotY7pEXujTBrdj40Ydkk4ui1kyg+tY=;
        b=T6lEzHhNhr9y+lWByCtF5lE1tXUxXsLAiIrTs00M9g5EGFR9pgcjmLvmtgLjcyaZgC
         19c325T/Q4GD7JfHxmgXjIoC0x+oWsK5qLW3RrX0Z5q19JBKax7+U2XdtctfuzxUX76h
         vV/Wv1hHY2QSY0zCfLEyZ8u5z6xXK7fQnFK7ttLGVWVGpDzW3GKmlUd7mV91IyOWb4tG
         H+GLfGEXSJ8IAe8rS4mHS9x2VjwBUUf1WD+3EepfAaeiV/u/l5wmHQTBx5ubybpVhE8t
         UMirEOi+kw1alNA4fO1vCT+MvGxKQzK/b98Rlxd+DSjUdn8bkeIaXNvhR5goHBzyKH/a
         3ZoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763565477; x=1764170277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=soJws8MTyCfIGotY7pEXujTBrdj40Ydkk4ui1kyg+tY=;
        b=So6viLwISNLwR8N+RzmQJvP3pMF7kV8e4lKfZIAurb3PYoRW4VgwS0DO3bnk6PIkaK
         cKRnuYAGbkMcWYffuo1EwPOhKLgVnGwSmEE+CY9RloiDn2DfekVAAFmq64jrSNW95d0j
         oVN8Zsg8z3NIvyGALHv8Xugfzi6Qx3BeJgM+lj5o+f7nWNXktPSdv6/p4X2fEVnepUFU
         P4m41vlGUHfu22MIds1cYTPrYv1ASolwMDz0GIZgb3F5Xa+d61YM3CSPuQh04sIU+Vqh
         LxmO8MUPPim7twR+5qp4YJVCvvi+dQazs225FRMl+E5oFXCyHsr7z3GMCal4wrTsPsU2
         nk/A==
X-Gm-Message-State: AOJu0YyflUSrSociIzbMh8C0SoOPUjMSjms7/O+wABd0sNnb0+rOi1is
	wxT6Yzmw2NAmIJi8nyHDhMT9H95++cRyNyhQAyEns91NCgJ/MackQTsMDVF0Kmip
X-Gm-Gg: ASbGnctXjuK8V/hox1xG4XDYd9U4Z0z3d66rv2b8WrOBYxItQf3pBrnxWjI5BVSvjnC
	KA/ltXZ1sF7K9hnM35Wj4b06UBPz/TtXRcNH9g1ROVf2mbZGpHS7qJcQTmzpOwmi1sNVnM8IKUZ
	jMtkz58s8p0taWtI+V/X2DubSq4Jb//Cy3bqBQnneLjGGgc1QXx/2WkrqmQ9qfq+j0ZAl6pVwfp
	O0ivHGK/ovbp69fOtBhZCcK/SbPkXZ/K/tiPMkSZfIMANb+qiuQuKwbXke52slB8jUIJdEazssK
	cpjg++z9/16c1EzXxZ/TsKt04FmvZAnmaaO7xGIJaRYqIhurFl18xoGAWOpSzBBWr555RhiUK9p
	6m/GXkvaCBxNbsdxyEpQf/WvMn+0oziDTmGi19JG8geGjKSNZvWz/+u7ECefknvwSg0W6suhQrs
	gaoC0lpCpACjpSM8gajtxHYksM/ASSxOAt8AyQTzJ1
X-Google-Smtp-Source: AGHT+IHnEVPOjST19ZsV+Kuteg1R7BsLjRfgN7zM5upld7whHoJ+G/Yh6hHSyEjASdpuN3H+hrodyg==
X-Received: by 2002:a05:600c:35c7:b0:46e:49fb:4776 with SMTP id 5b1f17b1804b1-4778fe62098mr203637795e9.11.1763565476906;
        Wed, 19 Nov 2025 07:17:56 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b10260adsm52208775e9.7.2025.11.19.07.17.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 07:17:56 -0800 (PST)
Message-ID: <48750926-4ee5-4d46-b452-8d0c0dd680bc@gmail.com>
Date: Wed, 19 Nov 2025 16:17:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] weston 13.0.1 assert fail #scarthgap
To: yocto@lists.yoctoproject.org, jarno.katajainen@solotop.fi
References: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <NWUB.1763560336855590654.KUb9@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Nov 2025 15:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66036

On 11/19/25 14:52, Jarno via lists.yoctoproject.org wrote:
> Hello,
>  
> anybody willing to share guidance or solution to overcome known (?)
> bug on weston crash. I'm able to get weston up and running but when
> ever moving mouse weston crashes. From gdb stack:
>  
> #5  0x0000007f9ac35624 in __assert_fail
>     (assertion=assertion@entry=0x7f99eff420 "fb",
> file=file@entry=0x7f99efead0
> "/usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c",
> line=line@entry=506, function=function@entry=0x7f99f00ab0
> <__PRETTY_FUNCTION__.5> "drm_output_find_plane_for_view") at assert.c:105
> #6  0x0000007f99ef784c in drm_output_find_plane_for_view
>     (current_lowest_zpos=18446744073709551615, scanout_state=0x0,
> mode=DRM_OUTPUT_PROPOSE_STATE_PLANES_ONLY, pnode=0x55b20579b0,
> state=0x55b1f3d0e0)
>     at
> /usr/src/debug/weston/13.0.1/libweston/backend-drm/state-propose.c:506
>  
>

How to reproduce this? Is it platform/layer dependent?
I just compiled a core-image-weston from Scarthgap, it didn't crash with
qemux86-64 at least.

