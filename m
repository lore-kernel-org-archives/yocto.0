Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81A25C4332F
	for <webhook@archiver.kernel.org>; Tue, 27 Dec 2022 02:54:14 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web10.149945.1672109645375373316
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Dec 2022 18:54:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=ir77ilfC;
 spf=pass (domain: mistywest.com, ip: 209.85.216.45, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f45.google.com with SMTP id o8-20020a17090a9f8800b00223de0364beso16071654pjp.4
        for <yocto@lists.yoctoproject.org>; Mon, 26 Dec 2022 18:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FKVDDKDfpgh1XUbikbtRhc2ZajZIpBLw1jgw/p/DCR8=;
        b=ir77ilfC8ChjH88p+9uJaUbWa0GghcAS6lTo3ZtbBrJnHh5Dukwdb1+VMDxq63Zvxq
         J0QZViI//zzmYUiUUooXGCatYrCZ7AOwaA3x9PrOWbxvmemJuOQmWKZDTQ1ObWSUok+0
         WqAPQ2Ar9UqgK+5eBMc+UDYkqGCY5RTKGDoLBVqOg3CbOejn96e/ID5MmrGqj4kUBBXf
         YJFUif5lgtF/NTGvEAaNh4+MAYTIJWnl5FcllTQRrIIRagEt+Wwe/logEP0xrFygciIG
         lerwT8QD3tV43RpRLTxSehbhJ6JrLck3MZiEZ5xXZNqt1R3sx8B55AWxWOrGKYpP1LP2
         RNhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FKVDDKDfpgh1XUbikbtRhc2ZajZIpBLw1jgw/p/DCR8=;
        b=jrryNRMYPUHaKAXuXMP55orgVIr2/CttYOS434pArWVNzD+1gTNAq43yexMHvoNxJS
         H1naBCnLd4eQGXqkLtgvPuGN+XaJZepsYamN02uOqtcIURCgMnOucSENdbxr7g6crMNX
         j9pRUKQnBgmi5/hr+Rp0eC8nWK9wLiNzQov1gbFQDjCwt5kf/chy+eVLgF8ZjbMK+cUP
         JYsjmuUPsOQqRdhk+SBsKLVELWwn6gMnLiLKaPktDqT63ppu9kgqBy1xmWEPvI9YyL3A
         vKHhfr4NIavL9CWUZaTckcsI5i0252vfqSm33C+Fjnz8PKwqw+fCtdpu04ixjf+5RNBo
         RvNg==
X-Gm-Message-State: AFqh2ko49De89S1EQoC55KBxqk8bLAafgA3EpdvRyhwm4Ek7mayRH0Tm
	WWU8Yf9LIZL/30CTRDWpT42QfL+hsEebkCyweAM=
X-Google-Smtp-Source: AMrXdXsexNGVHKGtoZHloxxlggvyd6U79u4fjBAfau9YrFJZQCdxisRu9SJ7bs7DUoA61AolkrQ1Tg==
X-Received: by 2002:a17:902:b60d:b0:192:6464:f433 with SMTP id b13-20020a170902b60d00b001926464f433mr11655144pls.1.1672109644192;
        Mon, 26 Dec 2022 18:54:04 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id r10-20020a170902c60a00b001811a197797sm7826932plr.194.2022.12.26.18.54.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 18:54:03 -0800 (PST)
Message-ID: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
Date: Mon, 26 Dec 2022 18:54:01 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: recipe won't build, missing pseudo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Dec 2022 02:54:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58872

Hi,

I'm want to write a recipe to compile phytool but I'm getting the below 
error when building it with:
$ bitbake -b phytool_2.0
ERROR: Failed to spawn fakeroot worker to run 
/home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool/phytool_2.0.bb:do_install: 
[Errno 2] No such file or directory: 
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo'

my bb file looks like:

[phytool_2.0.bb]
DESCRIPTION = "Recipe builds phytool utility"
# Needs to be changed to GPLv2
LICENSE = "MIT"
SRC_URI = "git://github.com/MistySOM/phytool.git"
SRCREV = "8882328c08ba2efb13c049812098f1d0cb8adf0c"
LIC_FILES_CHKSUM = 
"file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0"
INHERIT += " pseudo"

python do_display_banner() {
     bb.plain("some message")
}

addtask display_banner before do_build
[/phytool_2.0.bb]

It appears like my INHERIT line does not satsify the requirement.
How can I resolve this?

-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

