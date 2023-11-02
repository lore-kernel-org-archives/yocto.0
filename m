Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A811C4167D
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 15:38:19 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.34197.1698939493003418089
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 08:38:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=BFboSsJO;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4084b0223ccso7918725e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 08:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1698939491; x=1699544291; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V2bO0se7qdA/c82x9ecrhkCacV10Njfx9cxlVazFFkY=;
        b=BFboSsJO6fdgWDXBLqkJ91gdsXicKQCCQXimnozXxLh3uaNshXmNxD4WLcM5qF5AWL
         OYRkgytrRicv9lTdzSuxrsHxdI79gOmlccGsoZ83rwoW5udiyPC8WmdgDXNdURIJqZni
         mZ4+dHXpdp7+1yODK6ieMOtiPIuyUBSKnEJe9xphhPiBbZnb8jETmIUA2utTFAQvm/2j
         gyWseia35J2V4T0Js5hcOuq4ZvjndmsjFuZHQy9alVLdRfyqstv24/MNUetMizAGeK9x
         u02Tsi5BPQQ3GOZeAmq2UbBTqcOEiqa9O/p/Ex0zGWFXjuxpkOi68N/wPGrf9CeaYQ/P
         qF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698939491; x=1699544291;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V2bO0se7qdA/c82x9ecrhkCacV10Njfx9cxlVazFFkY=;
        b=VSl8l8btjsiG7sUBsAm0PTf/y4eooLl6CXvPbrkN48RhitCBwgm6wIrm2LD/74bf6l
         DWvYhyKBbLaeX0cQ+1OpGpZ88YpERxjtVjeuoOUOKj4KMQVQFY34Yw4CrohyYjuJqqTP
         JWWJOR2hBUZUSChdgymeYsaXjK6ZYmOGiN9+F/1mYeJoDxRPCUCSpLZAlYTgyEN3EUb9
         VoJVvFb+DS8y2tVVwgexl4VXKd9nesYwgfl6Pc0jn1d4jQkZAiCIB7vDUPsHAgH06ajd
         mAsgzAstlEgzeLTCgQfHrqHc/trzd/gEbTTQC/nrttXVfQJmw63jtz6E2IBp2SD/+vrZ
         gFaw==
X-Gm-Message-State: AOJu0YyEiBnbwu2vIbjc93bZ91L928NOgXhiJxWXXAm/xC91H90jcyN0
	khrw1TwvRBi8ph3/rL5dKRCnlg==
X-Google-Smtp-Source: AGHT+IEsLQCAXsl/yBhXtXOgy8lvlTkr8j7/DYObEh/UXiAJkkKFlSKnJyXB3OFVUNWz3mG1zi21QA==
X-Received: by 2002:a5d:4889:0:b0:321:7093:53f5 with SMTP id g9-20020a5d4889000000b00321709353f5mr11419727wrq.64.1698939491227;
        Thu, 02 Nov 2023 08:38:11 -0700 (PDT)
Received: from [192.168.0.23] ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id d16-20020a5d6450000000b0032d96dd703bsm2764084wrw.70.2023.11.02.08.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Nov 2023 08:38:10 -0700 (PDT)
Message-ID: <89b12817-93e8-44b5-b0c2-0cb0bc303f29@smile.fr>
Date: Thu, 2 Nov 2023 16:38:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add
 Openembedded auto-update-helper with list of layer to test
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <20231026130340.2070302-1-david.pierret@smile.fr>
 <9a9ccb04bcccbbb2718f1c09504d2c500f78f367.camel@linuxfoundation.org>
From: Yoann Congal <yoann.congal@smile.fr>
Organization: Smile ECS
In-Reply-To: <9a9ccb04bcccbbb2718f1c09504d2c500f78f367.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 15:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61582

Hello,

Le 28/10/2023 à 10:27, Richard Purdie a écrit :
> Hi David,
> 
> On Thu, 2023-10-26 at 15:03 +0200, David Pierret wrote:
>> - Modify the setup-auh to use repositories cloned by the auto-builder.
>>   Manage the case where meta-openembedded is not used.
>>
>> - Modify the run-auh to manage the optional additional layer.
>>   Only 1 layer can be provided.
>>
>> - Add auh-meta-openembedded job with 1 step per layer.
>>
>> Signed-off-by: David Pierret <david.pierret@smile.fr>
>> ---
>>  config.json       | 102 ++++++++++++++++++++++++++++++++++++++++++++--
>>  scripts/run-auh   |  39 ++++++++++++------
>>  scripts/setup-auh |  34 ++++++++++------
>>  3 files changed, 146 insertions(+), 29 deletions(-)
> 
> This took a while to review. Firstly, this really should be written as
> a set of commits with incremental changes.
> 
> For example, changing the script to use poky from the autobuilder
> checkout instead of the local clone is one logical change. We could
> take and review/merge that independently of the other changes.
> 
> Another logical independent change is using auto-upgrade-helper from
> the checkout of the autobuilder. That did highlight an issue that the
> autobuilder does not provide a checkout of that repository.> 
> With that and this work in mind I added auh-meta-oe here:
> 
> https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=47c0119b6e87f920566d2176793ef8d982cf31e2
> 
> and then added the auto-upgrade-helper repo here:
> 
> https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=854a60ce8bf8ce0feec370bc6782cc12aa1e29a5
> 
> which then means this patch is closer to working.
> 
> I had to make some tweaks on top of the patch to make it work:
> 
> https://git.yoctoproject.org/yocto-autobuilder-helper/commit/?h=master-next&id=673745f473024020ed9efece26462e8c884dc819
> 
> where I found that:
> 
> * poky in the AB context is $1/.. since it is the top level 
>   container of the layers
> * meta-openembedded is located at ${HELPERBUILDDIR}/../meta-openembedded
> * we still need to source the build env script. The AB could be 
>   configured to do that for us but currently isn't.
> * we need to trim the machine_list down as mentioned
> * the naming we're using is auh-meta-oe, not auh-meta-openembedded
> * I've temporarily configured to use the test-list so we don't 
>   send lots of mail to all users
> * layer dependencies were missing in ADDLAYER. I hate having to do  
>   that but it is is what it is right now
I've just sent a reworked version of this patch :
https://lists.yoctoproject.org/g/yocto/message/61579	[yocto-autobuilder-helper][PATCH v4 0/2] Extend auto-upgrade helper to meta-openembedded
https://lists.yoctoproject.org/g/yocto/message/61580	[yocto-autobuilder-helper][PATCH v4 1/2] config.json: Move AUH from custom scripts to config.json
https://lists.yoctoproject.org/g/yocto/message/61581	[yocto-autobuilder-helper][PATCH v4 2/2] config.json: Extend AUH to meta-openembedded layers

While moving stuff from the scripts to config.json, I found the scripts to be mostly redundant and choose to remove them.
I've took most of RP's tweaks but not the test-list change.

I hope this one will be easier to review.

> With that, we get this "successful" build:
> 
> https://autobuilder.yoctoproject.org/typhoon/#/builders/159/builds/5
> 
> which shows the exit code handling isn't great but probably deliberate
> to avoid autobuilder errors.
> 
> This gets us to the point where the code in the upgrade helper itself
> needs the layer support changing.
> 
> Since I've now had to look into that code, it seems the layer options
> are entirely missing from the commandline options parser. I'd strongly
> suggest dropping layer_machines variable and just use the machines
> value in all cases.
> 
> "layer-mode" seems pointless as you can determine if we're in "layer
> mode" if a layer is specified on the commandline (which needs adding).
> 
> I'm hoping you could use the layer overrides to be able to identify
> which recipes to upgrade.

I did not find how to use layer overrides here...
Maybe once AUH is more integrated into oe-core as RP suggested on IRC?

Regards,
-- 
Yoann Congal
Smile ECS - Tech Expert

