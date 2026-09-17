Return-Path: <m.cavallini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A60C88E72
	for <webhook@archiver.kernel.org>; Thu, 17 Sep 2026 12:41:02 +0000 (UTC)
Received: from mail-wr2-f12.google.com (mail-wr2-f12.google.com [74.125.225.76])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.38454.1789648858435025301
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2026 05:40:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koansoftware-com.20251104.gappssmtp.com header.s=20251104 header.b=dYjdIqh3;
 spf=pass (domain: koansoftware.com, ip: 74.125.225.76, mailfrom: m.cavallini@koansoftware.com)
Received: by mail-wr2-f12.google.com with SMTP id ffacd0b85a97d-485933b24c3so464789f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 05:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=koansoftware-com.20251104.gappssmtp.com; s=20251104; t=1789648856; x=1790253656; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :from:content-language:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=QZzXtNZ+tGYvvoARne7bRan76y0KnSCe8ziCFmqTuq4=;
        b=dYjdIqh3heP8wOMZAQ1o4m2AEj7AsyUook8YzUvAfLPdISWAQFgLqrIDZ1CnQvmzoa
         uXLMkdGAMbqHUC7bvbLHtGSh/c9qmOt8TMZG04YMgW49LshuGv7gaATUFW1NMmeYXgxI
         5weKww/GRVKlfhF7RcfCNk5CCZD7Oj4Hbhs3SQSn+ZV2FuwGGz4YcIsmULV2rIFLKgYg
         PyEbXqljABXffG0zPtvjsyC4lo1x5MB44lPi0eQF6uwS9Ty/v769OJOdEw+NJ50g6K70
         AJR2GOvgcpp3n0E+j8XlR0VjX2uLC/77BAjK0Bf/BRmqeRwtz2QMMSk86J706jKpBs+n
         aY2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789648856; x=1790253656;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :from:content-language:references:cc:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=QZzXtNZ+tGYvvoARne7bRan76y0KnSCe8ziCFmqTuq4=;
        b=GLPEasvU6vRhbGLo7bL/Jwah17DMeyjUUyKykfvAvoMi3aTmYs2gz6wWw+59IkfLJ2
         JHqcDZJQYx6tusjQcdTQEe2fSWdOPBx+TTBjAcif6AE8ydSKjhq4Vp7pMXCKb0AKr8j8
         fR+88Kydn1s50622IzDkx0jNaFZkol0ojmai2u5WrfmhdekARQcB3Yy9yh0E7TIRbPHs
         VoJWhDqeFTGYNz0iaq/SkE72jTjKio96A602SuO/Z2EKQxzWCh3fnxOJ7yGr/FkroQL+
         m6f7ZcCsjQmRPXK+YnOKwgTe79Vc5tQDP20i9S1aAwGyUA4NhNOs/0J718UpUM1dCv61
         4K5w==
X-Gm-Message-State: AFuF++ng0NYuqC+NNyuVligVNO+NVW9ILJ4HAIpzJsmMUWAQaQrQ89XK
	hMvh2OlD7LXL2/exlToZgbYLQzMlLmyYus4oSCsuNMPwx0h+BDppAkO8jg9NkKlniW/S
X-Gm-Gg: AYBFou18JtvW58qYiG/mgbCZwDfsgG336ky1sEv7jeZ5MvFeqNYVS82wluKSHbT9ZLh
	gc8MLCmDIB73CFm0dHBUuH9B3QIWfe+iqRjqpn0/qOxe4LMvv1VjuyomM/QiXQSG0p+G6djJD5j
	xJAM0E5OuKX4YAki1Zq/4F9Ir38s5nRk2f73LHOpd5K7vVIFJK7h7HI2JoaiUNfD46VPvMOVkXD
	t4xEowLUyC1GUOaFxFjPYiY8BwKuebX0J81xuUVoG+26dIyP3dPm68dud4OXmkzRyCt2y0SVjOa
	rxmYswyqJEH8vsxF61kci3aVOM1y/NvgLI7DrjthyNtSKCV+5lNqktb13u+OdHnY+rktndRGz7m
	r4I70fy/u7LbJZCXE9JldPl+H3adLj/HFigWgjkUooA1vahFlpRJ5ELEyC0PSzLPPUV4yMsPX+5
	i4/iYSIqcn2pidAUcWQGamhgElXOD7/Le0ugdo6bvDtnmHcbZKQzHEo1BPjT1JtPXTtRa0onbLU
	uKCFIf+Q51n19qx8RmRqFAC0NnV88+KkgUMqM59mnf5g875tERKcNLPiOw=
X-Received: by 2002:a05:6000:240e:b0:487:8ba:8aa9 with SMTP id ffacd0b85a97d-4870d03fe83mr8606553f8f.23.1789648856343;
        Thu, 17 Sep 2026 05:40:56 -0700 (PDT)
Received: from [192.168.0.6] (host-95-229-48-41.business.telecomitalia.it. [95.229.48.41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4870bef7678sm16067700f8f.2.2026.09.17.05.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2026 05:40:55 -0700 (PDT)
Message-ID: <da121bfb-d0d1-4c2c-b063-fbb27fa8d88a@koansoftware.com>
Date: Thu, 17 Sep 2026 14:40:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: m.cavallini@koansoftware.com
Subject: Re: [yocto] Has anyone built a (wrynose) core-image-minimal for NXP
 i.MX93 FRDM?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
References: <3c9cc3c8-6d85-57a9-0345-492ab5dcd100@crashcourse.ca>
 <aa020169-3981-431d-a529-c301140c69c8@koansoftware.com>
 <5b505c19-21fe-9502-29ea-d2b5d2acd83c@crashcourse.ca>
Content-Language: it-IT, en-US
From: Marco Cavallini <m.cavallini@koansoftware.com>
Organization: Koan sas - Bergamo - Italia
In-Reply-To: <5b505c19-21fe-9502-29ea-d2b5d2acd83c@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 12:41:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66732

On 17/09/26 13:34, Robert P. J. Day wrote:
> On Thu, 17 Sep 2026, Marco Cavallini wrote:
> 
>> On 05/09/26 16:57, Robert P. J. Day via lists.yoctoproject.org wrote:
>>>
>>>     I tried this a while ago and it failed, apparently due to a version
>>> of U-Boot that was not recent enough. So I just put the board to the
>>> side, then recently noticed that the wizards at Bootlin have updated
>>> their training/lab material to wrynose:
>>>
>>> https://bootlin.com/blog/bootlins-yocto-training-course-updated-to-wrynose/
>>>
>>> and one of the supported boards is the FRDM, so I'm just going to
>>> follow the course and see if there's no issue now.
>>>
>>> rday
>>>
>>
>>
>> Hi Robert,
>> as we at KOAN are using FRDM91 (imx91-11x11-lpddr4-frdm) for our recent
>> trainings, I confirm that the NXP setup using 'wrynose' has a broken recipe
>> for u-boot-imx-2026.04-r0: do_fetch fails.
>>
>> At the moment we consider stable the manifest based on scarthgap only
>> imx-6.6.52-2.2.1 and using meta-imx-frdm.
> 
>    I tried again earlier this week (my board is i.MX93, not i.MX91,
> wonder if that makes a difference), and I can boot a
> core-image-minimal from SD card now, based on the instructions here:
> 
> https://github.com/nxp-imx/imx-manifest/tree/imx-linux-wrynose
> 
>    I'll verify this when I get home later, but I seem to have a working
> wrynose build.
> 
> rday



Hi Robert,
I am following the same instructions using the NXP manifest and repo.
I tried again now during lunch and it worked for my FRDM91 
(imx91-11x11-lpddr4-frdm)

I confirm that the NXP setup using 'wrynose' works

Greetz,

--
Marco Cavallini
KOAN - Abinsula Group
Bergamo, Italia
https://KoanSoftware.com

