Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B82BC433F5
	for <webhook@archiver.kernel.org>; Tue, 25 Jan 2022 08:49:21 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.4718.1643100560390611205
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 00:49:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WZFyMSZ0;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id s9so2593009wrb.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jan 2022 00:49:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=xVH5WOQsGce5hMCJB61Vn+7HwutqnLVmzx6HLvsC5Qo=;
        b=WZFyMSZ0sLQY6zRJczp6axLpoTB2WzgOvgprCS0N/IfOyj3rF1g22X/sfmh4Qbqjkl
         IarsmF1l9Zgjb44NcehJVkuvsvkbb85PNA31wuF8WjtPAB/n3WhvrEr6VytP1nvAyH3U
         rR83XAWLxa63DUZCbL5GgS+vjGLkB69johv54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=xVH5WOQsGce5hMCJB61Vn+7HwutqnLVmzx6HLvsC5Qo=;
        b=VdhwgtOR3rQBn+yVkK38Th0NvGrdCZ9btilJZ2U3E0F3hXB/SsxcyI7LLa2/Z4mlO5
         aKrYxHf7G6ygffgP0jkKS1RhiwM6YcjyYbTY/ogb11+kxNE0xPyMBq3u1WBnhjOZ2FCS
         oLhqwlEMGfs5VIM/RDlMxlYkZENlnoTA8oz3HgbMyTSat3ZFnjI3qTjiaM3Kv5u/2kml
         JqBV1HezNNX+9XnTiwaQb8r6FYPA6fM2bw3e7txuiVF4rM6/38iL6xr0WhHLVshHpVMn
         J+ar4DeKuzz2pmpnEwl9IUwJOjLZyChNbvyF3dQI7BMFg0ZxahVP/RDhW5ICdmWbt/Z6
         DqpA==
X-Gm-Message-State: AOAM530dXVtufJ7RLrRYB/SuNT5+L/vug6EGzKiQ43MI1uS5eAbhqVT4
	XMRwRX0b6zu0h0Z7qDteLZLtpySnFulrgA==
X-Google-Smtp-Source: 
 ABdhPJwT9WUXtefse5U/2z4AKKAyyO2/aYRj9dg5Nk9M6m1sdu3o04PkUzvozAYHkhmhRQxB8Q9zFQ==
X-Received: by 2002:a5d:650f:: with SMTP id
 x15mr16982422wru.645.1643100558599;
        Tue, 25 Jan 2022 00:49:18 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:6b0a:3d41:67d:ed83?
 ([2001:8b0:aba:5f3c:6b0a:3d41:67d:ed83])
        by smtp.gmail.com with ESMTPSA id
 c14sm20870311wri.32.2022.01.25.00.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 00:49:18 -0800 (PST)
Message-ID: 
 <ba4c5ac88e9fb5f69bdfda0144f8f79fbd64aaf0.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.5_M2.rc6)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Tue, 25 Jan 2022 08:49:15 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jan 2022 08:49:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55962

A build flagged for QA (yocto-3.5_M2.rc6) was completed on the autobuilder and
is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.5_M2.rc6


Build hash information: 

bitbake: 1f06f326fa8b47e2a4dce756d57a9369a2225201
meta-agl: 7a644d636237459c54128a71d083cb6f9e1b8e60
meta-arm: 254482284d4588532bd7b9d980193e3e41adaa99
meta-aws: 8893e0cd4c0981eeda941eaa9ad2eb9359670502
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: 4ff5b19ba63ea69c47198e641acbc12e33634cac
meta-mingw: ddbf14b224215f47a5f80fc8154ade8d3bc318e8
meta-openembedded: a558d51fecda3e66ace21d02b57ab61bf122fdc1
oecore: a179485351a0563d12a2fef3e49971122255ed80
poky: 27ff420543f0195dab024698d804aca33f2ae139



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




