Return-Path: <robert.berger.yocto.user@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,NICE_REPLY_A,SPF_HELO_NONE,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC8FC433FE
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 13:34:30 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.8212.1632490469444017442
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 06:34:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ffiR+Xlv;
 spf=pass (domain: gmail.com, ip: 209.85.221.43,
 mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id t28so14189713wra.7
        for <yocto@lists.yoctoproject.org>;
 Fri, 24 Sep 2021 06:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=YqkcTjobbFTce0e9TyQrnRnVlXyIqifD84n0eBkXDq8=;
        b=ffiR+XlvSiwTbshrIGTQPhepy08urLZbEQAVOR4/7zbaLx/osi3+yLO5W25qcBEX3+
         KqmHRrQtFIUNggReQXwcac+570cqt8GClgr4KpWZoZzX/GrQCRaqIu/jbnbsuQhRU67x
         4t3ugEMxvbBs7JAIobFG/WFBaq57vzoZD8mLKo9+VgwSM8UumV0sAVyNSGPqVQ6q4FGI
         kmorgbcpfzLSF3A7APBdJfL4e1GaxJ4h1s9gbuR6dWTuthz8cCOaCdclixVkQuniUXiA
         7qwz7MFirNpztmKALql1apeFWhYHwAW67cwx6dmb4JesEB5no2FB5Ec+aBXoK+zBgVkT
         ZRZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=YqkcTjobbFTce0e9TyQrnRnVlXyIqifD84n0eBkXDq8=;
        b=kawXqtb9dwXsdEARfPfgIwrsvYhEAbAbgTwYs+/pfVNfYuXBmvDCIKyYOPxXFmhiuZ
         CLdEfXOpytv4+6iTgoQ7T+gUNEevdpVaq5K9hix16voJD668w5Gs782t6ZvrycONoo8/
         BdHycJtTVbK0FwbgavoPs/u3AHJv43hPYV8WnKyq44H4C2BSI2vr1rUWY1qiUPkEsQbq
         5uvjiW3Ju+JMOPSVig66Opl3+Z7pqxHeWWDzT9BSdcpITbkIaT/l42xYFu/nsQLc3l8q
         9qY4Er26xWA7tBKHex8q2KCvKpfILNetHqpwm4ov2RT3Q/nLdnr8+0zXwQMTfMClwCpR
         WVKA==
X-Gm-Message-State: AOAM530DnMaHzircme/OKS5yYJN9xTEIEFcTn6FfLlEOOY5ZKwK5uNtJ
	cILdFP+kyK4PeKpB1eytaH/LpfJlBI8=
X-Google-Smtp-Source: 
 ABdhPJwymOSFva2VANXJ3l434CK3oBEP31UU/YU/fs50x+rWLf9u42m4fE4L2JKaKbhyhPTkIyazGQ==
X-Received: by 2002:a5d:514e:: with SMTP id u14mr2626923wrt.32.1632490466211;
        Fri, 24 Sep 2021 06:34:26 -0700 (PDT)
Received: from [192.168.42.52] (ppp-2-86-135-62.home.otenet.gr. [2.86.135.62])
        by smtp.gmail.com with ESMTPSA id
 i6sm2657193wrx.61.2021.09.24.06.34.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 06:34:25 -0700 (PDT)
Subject: Re: [yocto] #yocto -third party licensimg
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.16A7BD92E5357053.10953@lists.yoctoproject.org>
From: "Robert Berger@yocto.user" <robert.berger.yocto.user@gmail.com>
Message-ID: <b087e9fc-f09c-fe82-f40e-b1963bba3728@gmail.com>
Date: Fri, 24 Sep 2021 16:34:23 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.16A7BD92E5357053.10953@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 13:34:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54845

Hi Steven,

Please see my comments inline

On 24/09/2021 14:10, Monsees, Steven C (US) via lists.yoctoproject.org 
wrote:
> 
> The one solution I found says : Add *LICENSE_PATH += 
> "${LAYERDIR}/custom-licenses"* under conf/layer.conf, *this does not 
> resolve this warning*.
> 
> This is a new item being added to our Yocto build.
> 
> The Data Direct vendor does not submit their code to Yocto because they 
> sell thier code.
> 
> We are adding code to Yocto that has a private license and we are 
> attempting to have Yocto accept the license, *is this proper way to 
> handle this ?*

I am a bit confused, but can try to show you what I typically do.
In my custom meta-my-layer I add to layer.conf:

#-->
LICENSE_PATH += " ${LAYERDIR}/custom-licenses"

CUSTOM_COMMON_LICENSE_DIR := 
'${@os.path.normpath("${LAYERDIR}/custom-licenses")}'
BB_HASHBASE_WHITELIST_append = " CUSTOM_COMMON_LICENSE_DIR"
#<--

underneath the custom-licenses dir in this meta-my-layer I put the 
custom "hello-license".

> 
> *Can you tell me the proper way to add a custom license to a recipe in 
> yocto ?*

Once you did something like mentioned above you can add the license to 
the recipe you use to build the funny component of your supplier.

example_0.1.bb:

LICENSE = "hello-license"
LIC_FILES_CHKSUM = 
"file://${CUSTOM_COMMON_LICENSE_DIR}/hello-license;beginline=5;endline=12;md5=36e6988a930e054886e6af19372edb07"

If you want to get fancy, since it does not seem to be an open source 
license, you can mark it also as:

LICENSE_FLAGS = "commercial" in the recipe

but then you need to whitelist e.g. in your local.conf to be able to 
bitbake it:

# whitelist example recipe, which is under a commercial license
LICENSE_FLAGS_WHITELIST = "commercial_example"

> 
> Thanks,
> 
> Steve

Hope this helps,

Regards,

Robert

> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54842): https://lists.yoctoproject.org/g/yocto/message/54842
> Mute This Topic: https://lists.yoctoproject.org/mt/85836383/3618532
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [robert.berger.yocto.user@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


