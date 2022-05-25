Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8652CC433F5
	for <webhook@archiver.kernel.org>; Wed, 25 May 2022 13:30:46 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web12.6734.1653485437435329200
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 06:30:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OqTwidmV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id
 67-20020a1c1946000000b00397382b44f4so3360568wmz.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 25 May 2022 06:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:content-transfer-encoding
         :user-agent:mime-version;
        bh=CfbeqypQyaAwx3laTdAzGVwD3IV6PD3SkJly1vxcqd0=;
        b=OqTwidmV3wVphgjS+h/X7aKvc9NofRlZCDWegkzJUVM8xxBXfde0Bbcq68zclrX8gy
         YWMKozPW69ZEXhQ+xu3RtuI9tRxJpczyfu5ezv2t5/dlmh2bv6gh0oOI270yMlkESxRs
         HQp78gCKl/GZkOAVCuS8JrnoAKxUCNHZJEIM4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date
         :content-transfer-encoding:user-agent:mime-version;
        bh=CfbeqypQyaAwx3laTdAzGVwD3IV6PD3SkJly1vxcqd0=;
        b=3fEAwLCwl1gWm63RFxLNOozGOlTruBF5Xon8qDSuYAqZ+2KqU9brgUsctYDTCX/Lic
         W6e7WQW8Hm5MPR44MrqFAgAriJDUg2ga0CeeCVtQDSQozcUBHmC/neZBKZb1iCY+zKOC
         +cpTB4lAGShxMU1wsRYPqOTzK0tYpYHZic4GGGyaeOJBHTgVm96wKXnssAw/Qsr60Kzz
         wJbgr47OCEqTAtjIoTBLTPOv82uO3eqxFYcXpxQNNKbuikaKiPQF1UMzczUhVanK1rlw
         GQyXkqW5aMv9m2Pa1vW2pBVte5SUu63NkersaGs1C2xaHRbRlEzHKChuoqGq2vmGX9Ut
         hz7A==
X-Gm-Message-State: AOAM531o8TiicvxduQksmQii81uquHB7cYODTr7W7Wh6IlCmsouSLNaD
	8ZhCpoxuEcT7ZV3A0wMXr9RviQ==
X-Google-Smtp-Source: 
 ABdhPJxdX3d0KAtQ8gqAE5sPNCsBvhas2BPiiPcpG3j0Zj5bPdelQWwn7jpbyE29eOUPTNZgCXNhJQ==
X-Received: by 2002:a05:600c:20d:b0:397:3971:909e with SMTP id
 13-20020a05600c020d00b003973971909emr8257917wmi.203.1653485435790;
        Wed, 25 May 2022 06:30:35 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5808:e02b:90d6:3f52?
 ([2001:8b0:aba:5f3c:5808:e02b:90d6:3f52])
        by smtp.gmail.com with ESMTPSA id
 r18-20020a05600c35d200b003942a244f53sm2062723wmq.44.2022.05.25.06.30.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 06:30:34 -0700 (PDT)
Message-ID: 
 <839fb1eb42b9da12380051c5b27dba90f167e015.camel@linuxfoundation.org>
Subject: CVE metrics tracking from the autobuilder
From: richard.purdie@linuxfoundation.org
To: Marta Rybczynska <marta.rybczynska@huawei.com>, Ross Burton
	 <ross.burton@arm.com>, Steve Sakoman <steve@sakoman.com>, "Mittal, Anuj"
	 <anuj.mittal@intel.com>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Wed, 25 May 2022 14:30:33 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 May 2022 13:30:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57184

I'm happy to say that automatic CVE metric tracking is now on the
autobuilder and automatically feeding to:

https://autobuilder.yocto.io/pub/non-release/patchmetrics/

and the git repository that backs it:

https://git.yoctoproject.org/yocto-metrics/log/

This is working for dunfell/kirkstone/master. It is enabled for
honister but doesn't work since the json CVE output for honister isn't
there.

Not sure if we want to add the json CVE output to honister to enable
that for the short time that release has left?

I plan to run the autobuilder job powering this nightly.

Currently it adds a json file for each run into the yocto-metrics
repository. These are 6MB each though so we're going to get into silly
amounts of data rather quickly so I may have to adjust it to just write
the latest. It would also help the size to use tabs instead of spaces
for indentation.

The autobuilder job currently throws warnings but I think Ross said
he'd send a patch to allow that to be configurable.

Also, this doesn't send the CVE emails Steve currently sends. It would
be possible to add, I'm hoping someone might like to send some patches!

Cheers,

Richard



