Return-Path: <m.cavallini@koansoftware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 701D5C982CF
	for <webhook@archiver.kernel.org>; Thu, 17 Sep 2026 11:01:06 +0000 (UTC)
Received: from mail-ed2-f26.google.com (mail-ed2-f26.google.com [74.125.228.90])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.36352.1789642858786736875
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2026 04:00:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@koansoftware-com.20251104.gappssmtp.com header.s=20251104 header.b=BVAtE0oF;
 spf=pass (domain: koansoftware.com, ip: 74.125.228.90, mailfrom: m.cavallini@koansoftware.com)
Received: by mail-ed2-f26.google.com with SMTP id 4fb4d7f45d1cf-6aa13e194easo1162102a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 04:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=koansoftware-com.20251104.gappssmtp.com; s=20251104; t=1789642857; x=1790247657; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :from:content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=j0uaLd0fh+ZUQoTLIAgSLPc2QCXJA2kBawVD57scJKE=;
        b=BVAtE0oF19umsZ+JgyLTl1hzcUgeIRc21fdWF3YEVlu70t7reXbvf408ouFfwBjMTm
         En/kJe+I6nMHc60lRGzvGhipg2OuG0vvsAkakf19cpiAB+qbnjScSQ2ZoZqIwGJBAaGw
         ODcVACLC0djwf3h4KvGLEDRp5y3UNMd9YfOoSk96TvY4F8Q+GojMcPf76iQ6rZEZN1RX
         XtadSbDIRf42kvURo6hogBvFTKDBxJ01EEQf+IOXt45IWNdGmfAWEn6A/99zPoKngciG
         JPR05gHA784YRb1M6vDtBdBRs18qglec5HqKNYXeHfnO3FyL6UqsybqDbi1cyJUMq1m4
         NIzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789642857; x=1790247657;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :from:content-language:references:to:subject:reply-to:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=j0uaLd0fh+ZUQoTLIAgSLPc2QCXJA2kBawVD57scJKE=;
        b=HirvtW7SaDhi/HB+rn9IfQdK9zV03Sd7QRy3o8cBBR5OpDwhJHLArRJRfU5xjdbH0Y
         2U8xIFY5YcnJQprj5MW1HvwbrrJiWdOOK/290eVlhisN33YVay5hR/t4+IaSZ8oOABsU
         Uikg2Q5Un6U3aXSk8K+gzxHokBTnxAa/urriVAVQZzPi8hgK93wXwe7UzffRS5wZXDOf
         YiUHXeY9TxoEP8pCLd2yHYhF7dz9JHnhLy/nmOSoS1E8b5uBMCIjUwD19fCt1n15rGeS
         rCpD/+JSmYhBSs8KkS4wFAZEAcKKSoPaTXAMf/lduHSTW508aT1UOdpkcjDvrcq7COW+
         nyVA==
X-Gm-Message-State: AFuF++nq294EYfY2RAifF4KL3lNsr9s4JihFOYPh+ZPdavJP0wIgFZiK
	1Otd/qke5SHaDYegblyFktaSIhe+XepCxNpVB0mbBlua+dV0IaHErI1Gr8bkb5Nn67Fc55PMODZ
	aIIL2ocp/
X-Gm-Gg: AYBFou0djl4BoQ+cUqqJzHgiN8Zptl+PhvDIXNTbq01D96fnLoFOkTF1Jzf7WLVic2c
	BQ3ERn3TdKpLhhXE6/8KMgXaPw1HXjWCMreFS0nG6TP0NjS67fQTqtlEqu4YI2JsKby8t1IcMWE
	ncQlD6D3Ra3di5k71yOI7LPtc9DuAERfpw1UyADF38+YuqF3DYVYqUSnO0csW1lUGg0UUMmCMFi
	qkNaqVcdFeza0KBAClN4VHGpA5AhVE+IgYNupZAKjwVGkeWZxXlJTPPGtvtFwcmCLmZGXLUg8PH
	09GfgAhbQxeJ9QDrZUrwumizgggqCe6S3omjTLbhZ2AIEBbn2uzYUFwFZNsFg4xZi18RO0UheXB
	gWfxNIY/Sf5HEVlI0M9zyQ6QWXkEKyx43lUtIhs/t6X0whdzAvDQ7OSGLL9PCRLX0Zrq47BAlwk
	6MfkStR9FHiSPZzfALD3gr0kPqfyywNWG+AQlRY7FDOj29mO69pCe6I1+haPvQXIo+hszjd7j68
	SuX6SDloNfgzUo6O096JLIrHvhmLX+Xj0Zotzw35jXL1l0JBxQTt1vR+w==
X-Received: by 2002:a05:6402:438d:b0:6a3:f63a:4978 with SMTP id 4fb4d7f45d1cf-6aa2223b0f0mr3533087a12.8.1789642856594;
        Thu, 17 Sep 2026 04:00:56 -0700 (PDT)
Received: from [192.168.0.6] (host-95-229-48-41.business.telecomitalia.it. [95.229.48.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1cfe037esm3634734a12.1.2026.09.17.04.00.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2026 04:00:56 -0700 (PDT)
Message-ID: <aa020169-3981-431d-a529-c301140c69c8@koansoftware.com>
Date: Thu, 17 Sep 2026 13:00:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Reply-To: m.cavallini@koansoftware.com
Subject: Re: [yocto] Has anyone built a (wrynose) core-image-minimal for NXP
 i.MX93 FRDM?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <3c9cc3c8-6d85-57a9-0345-492ab5dcd100@crashcourse.ca>
Content-Language: it-IT, en-US
From: Marco Cavallini <m.cavallini@koansoftware.com>
Organization: Koan sas - Bergamo - Italia
In-Reply-To: <3c9cc3c8-6d85-57a9-0345-492ab5dcd100@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Sep 2026 11:01:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66730

On 05/09/26 16:57, Robert P. J. Day via lists.yoctoproject.org wrote:
> 
>    I tried this a while ago and it failed, apparently due to a version
> of U-Boot that was not recent enough. So I just put the board to the
> side, then recently noticed that the wizards at Bootlin have updated
> their training/lab material to wrynose:
> 
> https://bootlin.com/blog/bootlins-yocto-training-course-updated-to-wrynose/
> 
> and one of the supported boards is the FRDM, so I'm just going to
> follow the course and see if there's no issue now.
> 
> rday
> 


Hi Robert,
as we at KOAN are using FRDM91 (imx91-11x11-lpddr4-frdm) for our recent 
trainings, I confirm that the NXP setup using 'wrynose' has a broken 
recipe for u-boot-imx-2026.04-r0: do_fetch fails.

At the moment we consider stable the manifest based on scarthgap only
imx-6.6.52-2.2.1 and using meta-imx-frdm.

Best Regards
--
Marco Cavallini
KOAN - Abinsula Group
Bergamo, Italia
https://KoanSoftware.com

