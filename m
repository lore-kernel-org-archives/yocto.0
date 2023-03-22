Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A2EC76195
	for <webhook@archiver.kernel.org>; Wed, 22 Mar 2023 16:58:14 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.48831.1679504289820173857
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 09:58:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=agoouHBJ;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.50, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f50.google.com with SMTP id gp15-20020a17090adf0f00b0023d1bbd9f9eso24237941pjb.0
        for <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 09:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112; t=1679504289;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0rm4IVjk+11Hk9TTL2E/+1Z0v9X28Ll2mdYJpdMDunI=;
        b=agoouHBJ7hVMwffVOhX0VSaX+8DHfeMsTUMo/CQwU+00Mmf4b5CAZ04QSbFBwTadab
         5N2w19REsehU85zu9wTs9S6Bh0KR4nOB1PZSfAVQ5k9/YC2ZznuobPeGb/j4qG/lIAGJ
         +37DN679RSODJmATBc07Oshy1WnPEmLboazYwKz700TFPxMdp1NhhWjAb0k266U1IhOn
         pf9MBVLz6Eg8Bp5wsqoTOhkXj+nIboShHpUNlse512I5qI3X5rVtzaEctcloD4knGKzA
         DwcMOBgRsaBjXsggPDBsW/kSaz+DZ0GuOVVRfsFBjvf11Al7vfCQOw7cPSZUrGXq4qfI
         vkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679504289;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0rm4IVjk+11Hk9TTL2E/+1Z0v9X28Ll2mdYJpdMDunI=;
        b=wqkJ+fJm/+K19oj5ho5PNf3i15NzLmQAL6xSNslip3zi95emUC/XQ2jUeff9jixFt4
         tZ7aPiA3EBHkicreEqn3TcriIJ6Bd7eFm7tX0TWD71FiIbMpcSiWAZe++2MNzgb0cYYg
         Tj/gSkfhiq91LfVzFRPfCjEUGL0k7GYcMadbTXGvnaOC0/Tq1UTZmM5sZV5b3hOGohGy
         9TnKgukVCElwwN3SkDZIkij9k2yewfMAvfe1yEsHfGT9OfjA+jeaHjZ1frj2wNPxk7vT
         ZQqiUflDIOVPiMoI9supdzLUUgrG220aYecU2rqwsPAYfyIVQRAz++YgU47QQp0HI6AB
         hOQQ==
X-Gm-Message-State: AO0yUKUO462MXOCtQYJVbDoWhy8Mc1HGbK5zy8V21feDDh7j0Gib28gb
	iOjEtK1CIyWEkUkkbfsPMI7Rniv5wJaPFvsBaWemHw==
X-Google-Smtp-Source: AK7set/Dfx9wOixJixXuQI725awbdJs1WjVzXEytRM3HaN5MROjFdBmuZzb8VCgVB2VYbXp48MhCkA==
X-Received: by 2002:a17:90b:4c41:b0:23f:7e2e:fe13 with SMTP id np1-20020a17090b4c4100b0023f7e2efe13mr4617835pjb.0.1679504288910;
        Wed, 22 Mar 2023 09:58:08 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id h3-20020a17090a130300b0023d36aa85fesm13237102pja.40.2023.03.22.09.58.08
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Mar 2023 09:58:08 -0700 (PDT)
Message-ID: <2efc4ead-5dbb-1a47-3068-0fc388b296f7@ibeeto.com>
Date: Wed, 22 Mar 2023 09:58:07 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Subject: Network Isolation and CMake FetchContent
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 16:58:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59492

I have a vendor project which uses CMake FetchContent.

It's simple to override FETCHCONTENT_FULLY_DISCONNECTED=ON which is set 
in the cmake class. However, that does not fix the issue since network 
isolation prevents the CMake from downloading the content.

I have not found a way to override the network isolation. Is there one?

Now this is not a discussion about whether FetchContent or not is a good 
idea and any potential other issues that could arise from using it. For 
me it's to quickly enable a functionality without jumping through hoops 
of patching the vendor sources etc.

Cheers,
Rudi



