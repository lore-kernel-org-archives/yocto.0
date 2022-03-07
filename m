Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00434C433EF
	for <webhook@archiver.kernel.org>; Mon,  7 Mar 2022 16:08:31 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.28050.1646669311001773951
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 08:08:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EEgchPXr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id
 n31-20020a05600c3b9f00b003898fc06f1eso411238wms.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 08:08:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=/se5iL5DJQiJclScZJZI0aOZ6c2VObSS9VJFZCC5SCA=;
        b=EEgchPXrr9Cy2SIDEnp22tXKGGyOzJgh6GRuXu+Fwof7XvATDqv9lPJwTRgPaVGtU8
         h8/PdG95Mjf3ERl12i2xGatZm6P/+Sr5eaZ5rWOFBsgfA3L07ndI4Y2dBUJbQ03vqb+K
         6fX0+0l/fH9b1j11fLDpSL4eexIuewAfuTB58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=/se5iL5DJQiJclScZJZI0aOZ6c2VObSS9VJFZCC5SCA=;
        b=PH/NZQkYv0MhYK9/1GPitrk1yRoNubVrfTUj/6A9wf/L7nW5Rv7TMRswEopXue1l3L
         PcEVbFAPpbQ+MwYaGZWYFi5llNQ1W6r4Ch+sLhfSRbCSMJbjDmdM1WHHudP1ZP2PyAP5
         EO0XpsUwosvIjfZg0df6xFOMcs/GyGBAl6rLaEQJYC3qUYwIiYxaOu+/YI8vcUSLAnZL
         IrxbGmb3Y28nClyokHjx0dcaom6NFergS3TiIIT/gzUIb/SYX94JwqqsrjfoTm0cByr8
         tsR86iRSmdrb1hW/pXzeVkmRave6d6gGanOIDV4Jk/oGjJypdcIOgakvqZjMgZd4GmX4
         CL8w==
X-Gm-Message-State: AOAM530UKB7A9gN09mbiaQaFw22638jPdsnS0KDU+PN9QCTfUyoS2FGW
	FGCmptl83i5tgtR6EULGbhAy+5ksggMsVUJl
X-Google-Smtp-Source: 
 ABdhPJz6C9gHSjlEA7fyX1muzq/I9MUTau9sAIjIVfM7pSQK9B9jpMfkyiNJdnaNXlEob8n6vg2NQw==
X-Received: by 2002:a7b:c950:0:b0:389:5328:aaa8 with SMTP id
 i16-20020a7bc950000000b003895328aaa8mr15649700wml.181.1646669309128;
        Mon, 07 Mar 2022 08:08:29 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:bb31:2700:8490:fdf8?
 ([2001:8b0:aba:5f3c:bb31:2700:8490:fdf8])
        by smtp.gmail.com with ESMTPSA id
 n4-20020a056000170400b001f1fefa429bsm2123396wrc.8.2022.03.07.08.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 08:08:28 -0800 (PST)
Message-ID: 
 <77803c5750f16e9f50051c88c0335818d60320c2.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.5_M3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Mon, 07 Mar 2022 16:08:27 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Mar 2022 16:08:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56381

A build flagged for QA (yocto-3.5_M3.rc1) was completed on the autobuilder and
is available at:


    /srv/autobuilder/autobuilder.yocto.io/pub/releases/yocto-3.5_M3.rc1


Build hash information: 

bitbake: 8055ec360507e6a678ee5c4018ec1ab7f5a9cce5
meta-agl: 9df7a40dd0b5e3ee1ed72e460dc99193eeb4bd6c
meta-arm: 643cf58a6988505dbd9243142496a3bc649efb1c
meta-aws: 214a5867b3b0d9ba54818aabb1711eadf4ba9eb3
meta-gplv2: 5c9f033892ae56c178616859a1245efd375e64bd
meta-intel: 6fba58adb3823cd7578062b0afa4938dd7206adb
meta-mingw: d49e803e4b8b62dc148c182af499e582e7684de4
meta-openembedded: a75b9a549563e09fca9a8c280f5731152913b651
oecore: 4caea2d32f177fbbe3887f37b6700b2b4996b2be
poky: afbdba9b12bc12638d82813d1cd31ec479971c4b



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




