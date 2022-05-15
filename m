Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBAFEC433F5
	for <webhook@archiver.kernel.org>; Sun, 15 May 2022 22:45:44 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web09.22421.1652654743543931648
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 May 2022 15:45:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=C5fRNHNk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id
 r6-20020a1c2b06000000b00396fee5ebc9so1229431wmr.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 15 May 2022 15:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:content-transfer-encoding
         :user-agent:mime-version;
        bh=nbTK+BXhbzXQt2zj4CBnwnaAvp/kBpbTY1cCV2egUZ0=;
        b=C5fRNHNkecbJbQPNgi+jeAzEV+81RUn5YZlQjDZCM9isjlwHbRiDlhwnSVpC0XQtgw
         Ihdqyw9NK+pmabfFJptC/yjEl2SbpXPxSq23JI0buflxzyhrRMoxtd4/7xA5sHOzZy5v
         PwYWlN5hTJMq6sKX/euzO9mUZLGVqPZozTiR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date
         :content-transfer-encoding:user-agent:mime-version;
        bh=nbTK+BXhbzXQt2zj4CBnwnaAvp/kBpbTY1cCV2egUZ0=;
        b=G+2uNMqK41rAPYIkO5BgrCDh8x2W22HMWra3Ge0hzp1nfxkOwYcQcx4cfNYFzAC9kd
         73a/W3dQM+icwNHFC1r/YvZtHeNRqWkyR472qyGQxYMoZkew0cq01xnu+K79YCfs7b3W
         Xm3lcnGGO78IpMmn3M6o1xei9/aYcQDcCwtCK4htmCtz2oqqTr8ilNrY+aolMBT1I3bu
         mmbc/G/JQuQ9915xuKxqxGtMKelrrrgDnIMRnvcaNokFYSqCWWjBglNe15fc51KOiW+S
         NPXeJaH091srYuiux5z9TJPMBcu9DsxpKB+3ghWweL3MsQWQH+nKNcxr5Kl/YCuvIvHb
         R7hg==
X-Gm-Message-State: AOAM530dj26mBWHepMBlCErSfknUZc92/cjPYMTo806rRP71wjV+fgT0
	hiD4Q7YTs3jouFdewmpXGPP+URFqUA5l/5Ea
X-Google-Smtp-Source: 
 ABdhPJx40G7B+HkEyPlndE4riuIG5+qJPtaJ82ZS4ROp9n+ir6Csik8Tt4riuswbbk47+gYHpqunAw==
X-Received: by 2002:a7b:cf02:0:b0:393:fbb0:7189 with SMTP id
 l2-20020a7bcf02000000b00393fbb07189mr13754433wmg.197.1652654741595;
        Sun, 15 May 2022 15:45:41 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:907b:5576:ab63:2b17?
 ([2001:8b0:aba:5f3c:907b:5576:ab63:2b17])
        by smtp.gmail.com with ESMTPSA id
 j10-20020adfc68a000000b0020c635ca28bsm7907197wrg.87.2022.05.15.15.45.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 May 2022 15:45:41 -0700 (PDT)
Message-ID: 
 <c78ec7cfcd93591fecd8bcb305f2226b088b512a.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-4.0.1.rc1)
From: richard.purdie@linuxfoundation.org
To: yocto@lists.yoctoproject.org
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Sun, 15 May 2022 23:45:38 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.0-1ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 May 2022 22:45:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57103

A build flagged for QA (yocto-4.0.1.rc1) was completed on the
autobuilder and is available at:


    https://autobuilder.yocto.io/pub/releases/yocto-4.0.1.rc1


Build hash information:=20

bitbake: 59c16ae6c55c607c56efd2287537a1b97ba2bf52
meta-agl: ba35313c0852ebaf924a9b71d87a4e3f5e90ac9b
meta-arm: b838d40efe06c839d58cf39b785175d0ba7518c6
meta-aws: b07a769a4347b9f425cf8c6106d3191634791f8c
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: fb23bc3e661685383edd3026e21ca25825c48bc4
meta-mingw: a90614a6498c3345704e9611f2842eb933dc51c1
meta-openembedded: 5357c7a40eaf8d1bcf7ff58edbba8e9527e40c7d
meta-virtualization: c578929ca3910e78a2b5876c70749520791124ee
oecore: cb8647c08959abb1d6b7c2b3a34b4b415f66d7ee
poky: 8c489602f218bcf21de0d3c9f8cf620ea5f06430



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org



