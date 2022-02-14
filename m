Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D10DC433F5
	for <webhook@archiver.kernel.org>; Mon, 14 Feb 2022 18:39:16 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web10.38300.1644863955850985856
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 10:39:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fh9JEbqA;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id
 d14-20020a05600c34ce00b0037bf4d14dc7so2573wmq.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 10:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=UaX6PN1xfqU3Y6e2JcSIucAthhPv25zE5kePKoum6Ls=;
        b=fh9JEbqAWFJ6hXZ6bF2hq8APzIcOrqi+E7PQxc4I2fy/k2XvjUkP7JzGqhjNkGRjEA
         azxINmMHmJ/bSf5+uaL78XGui4X0huI0X/cGy9TTDXFi1L/6Cz+1KQz7chUgmNSnF+7j
         u+Tk5yk5tiVbnfCBAnimHpx9491HRdONzZMUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=UaX6PN1xfqU3Y6e2JcSIucAthhPv25zE5kePKoum6Ls=;
        b=a06m/LHJH6ld7nonNQDeQaPgKubjP5itGWAn4Vw5e3Hm8VqE0mJQqMu5dL73K8bdm4
         3DbSgoniw5KT/OASQTZ+dIzkzoBxJSVpk8OpFAkuQ3YmlZhtIuskXwggoqyGYNFpBk2T
         y6/A+yum/lMN0s0lAgNufvJBlWO267X64UfS2+OSehd5sttMWVRqsmjXe+fGZoV5DUkJ
         cF/EP/Roo7W1BGRdz9G/pW+h9e7AmiYq5LfSxS7M/7nfaHXB6wDFy1sAvGsxq6wyMNkf
         P82NG/4boX8pew04jEIdH+fjrUmNvWfPbNMgJwj4ojpScpIi/L2khjmtjz52NVCGi465
         8/+A==
X-Gm-Message-State: AOAM530fQKDV+BWJkv37KNyyiyoKbGt30kCjSGYHiNIyCNonX3jPKATQ
	uXx6ULqWQFAbOGyGzVydF6LzWV8NjvOZCQ==
X-Google-Smtp-Source: 
 ABdhPJwY6UBzAXyH2gGWH0zf3KwvGBjMuzmFVoxbcirQ4A3pFabaIfeodquVYvBOvCMWqQNGrRg/1A==
X-Received: by 2002:a05:600c:1151:: with SMTP id
 z17mr12059279wmz.169.1644863953817;
        Mon, 14 Feb 2022 10:39:13 -0800 (PST)
Received: from hex.config (5751ab90.skybroadband.com. [87.81.171.144])
        by smtp.gmail.com with ESMTPSA id
 c8sm15659656wmq.34.2022.02.14.10.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 10:39:13 -0800 (PST)
Message-ID: 
 <36320b3e89d2e21fb911f956d8c2cd21dd2c62a5.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-3.4.2.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Mon, 14 Feb 2022 18:39:11 +0000
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Feb 2022 18:39:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56188

A build flagged for QA (yocto-3.4.2.rc2) was completed on the autobuilder and is
available at:


    https://autobuilder.yocto.io/pub/releases/yocto-3.4.2.rc2


Build hash information: 

bitbake: c039182c79e2ccc54fff5d7f4f266340014ca6e0
meta-agl: 1a8abc70c4f2339200b612d96d81c4eec3ac0519
meta-arm: 51b728a52bde7c613d5855afeac0fa6a31771bd2
meta-aws: c92344938ab4d37de8bd8b799186dbbe3019a069
meta-gplv2: f04e4369bf9dd3385165281b9fa2ed1043b0e400
meta-intel: 5a30dcefa54040dd05099549a56156a83263554c
meta-mingw: f5d761cbd5c957e4405c5d40b0c236d263c916a8
meta-openembedded: c05ae80ba680887ac924c21536091be7a1173427
oecore: 418a9c4c31615a9e3e011fc2b21fb7154bc6c93a
poky: e0ab08bb6a32916b457d221021e7f402ffa36b1a



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org




