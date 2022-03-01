Return-Path: <menon.vinayak@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9021BC433EF
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 05:06:53 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web11.4979.1646111212739419970
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 21:06:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FMzpACHg;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: menon.vinayak@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 29so20262926ljv.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 21:06:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=12cj991m9kGu1LtDfFR3BAG1GJ5azIdEn+uEsgop2vE=;
        b=FMzpACHgGKaE3D36RNufE70QMA1TlYOEOkNtmyGpAFpuCRgIF4JkL5avOIPtUunFZk
         EKbQqW80GcfQ1obcbmhGtvPr/LeeilGtwjL2UT/I76Hp2wsQ4SYTVLONXb56ntUclJfD
         6GsjhdCymEGaS7gIQbQflXmX5/xZ7uFK8dkLS6wAeUSepiLwQalXsjbv+DD1DHTtyN0A
         WVf+tjsieIL2i2EpvnY+ONyDvmXg6W5f2OoCPWClcmKP6pVgcblXUE9iOZbMypP923JZ
         mTbjxktyqPBnBT5ri0cADXOICKyEWtlcTmSJPhp/4aGu/srMLHxDgSXtKtz9F4urMiVR
         R0Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=12cj991m9kGu1LtDfFR3BAG1GJ5azIdEn+uEsgop2vE=;
        b=ruNkJ0BuP+C/mExU+GEebFnHTOTeVHu1LioZLIbfgbsFqI7E0Hcci4ol1f2VtwIyks
         kmCNb0IKaa4qWRdF2lyLtuGKGLHbOf10pg0LOKPzbBmLV/Qtjc5BogQOe/jUdD3cKhZ/
         9O6l/MAWyX3ptf0Cs6BhOEKqA2Iop0Aznzfe8GW4/7KPQOg9lmBcSefTab/CsVCZqFcQ
         RSnZ8zezPpd+4qnnG25cirYqlJ2WBc+9y/hfiGSzG+hx0rJGsHmIWvgUpgD66va5gaqk
         F7QRnl7xpb415UF4FAD5LQoACmtwV0fbPxNuEb89OGYHXapQ4mAwg/IAeIh5zM7yxt0W
         VcYQ==
X-Gm-Message-State: AOAM532Zklnhi+pkzxgORQh7DYoFv+3fgTHEDSGgLLOghjp8DhCU05em
	ueax7AI3qlw62yjoDCbjKaiFoTW5ZCNx6hObIvaZqjCLpQo=
X-Google-Smtp-Source: 
 ABdhPJzP2x5SsnaM6AFOCZq8xicYKYW86ZBfVh9hEFWULwPzfZD5+RoA+ZgrKtDnQR+FRjIPgTeTwTtVa1P1o9uOe3U=
X-Received: by 2002:a2e:5c5:0:b0:246:38a0:66c3 with SMTP id
 188-20020a2e05c5000000b0024638a066c3mr16509766ljf.127.1646111210433; Mon, 28
 Feb 2022 21:06:50 -0800 (PST)
MIME-Version: 1.0
From: Vinayak Menon <menon.vinayak@gmail.com>
Date: Tue, 1 Mar 2022 10:36:39 +0530
Message-ID: 
 <CAH9dsRiArf_9GgQS4hCg5=J_Jk6cd3eiGaOiQd788+iSLTuU+g@mail.gmail.com>
Subject: On managing debug and production builds
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 05:06:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56329

I have a requirement to create production and release builds for the
same machine. Debug build would use most of the production recipes,
except few images like Linux kernel that will have debug configs
enabled and a separate debug image is created.  Also debug images will
have few extra debug packages and image features like debug-tweaks
enabled. What is the standard way of managing this ?
One other requirement is that for e.g. I do not want both debug and
production linux images to be created in one build. That increases the
build time. i.e. just adding debug variant recipes alone does not
suffice.
Also the debug and production variants are not specific to a machine,
i.e. tomorrow if I add another machine, I should be able to generate
both variants for that machine too without any machine conf changes.

What I have tried right now is to create 2 local.conf, one in
meta/conf and other in meta/conf/debug. The debug conf has an
IMAGE_FEATURE indicating that it is a debug variant. I am using the
debug-tweaks image feature as of now. And then I switch the confs with
TEMPLATECONF. Now, for recipes, I have not created separate debug
recipes. For e.g. in the linux recipe I am just looking for the
debug-tweaks feature to pick the right config fragments.

Thanks,
Vinayak

