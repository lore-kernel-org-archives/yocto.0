Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC096D68BEF
	for <webhook@archiver.kernel.org>; Sat, 16 Nov 2024 13:34:55 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.12638.1731764094066065057
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Nov 2024 05:34:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=LYIQwTOj;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.177, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6ee55cfa88cso14913767b3.3
        for <yocto@lists.yoctoproject.org>; Sat, 16 Nov 2024 05:34:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1731764091; x=1732368891; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GoaEFS0hW6U6E5CbSXoxjK7IVint3Q0+qz7odjZFAjU=;
        b=LYIQwTOjgtrRgw//Zt6DU2+q2+bfVdpJPwwOqDqsWorCVtIKIJchH4Mh5rHJYQL2RF
         LG8JFPJKeTr/Esor2LR4j05/Vp4nqHsezoL9j4Q4COe/vwjw+oBxBTIpqajgLo1fJQ1L
         TRpRiz8mUSJmBChqKuhVN+AO1NHlymjOi/vfDpsp8cNPmBMbeuc7bqPSUL65rydY619n
         SfyepJwn09sBOCyiWXSY2z97LlXIm2HaoOHZXcgxMF2a8bICTv9pxcx73RCF8SbyS5om
         uR4UlVR6huMLRhfkrzNnOulFZPTD0CekyAbHmOBuL1eP02BNwM7pTBthOMWyn6jCswLs
         PepQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731764091; x=1732368891;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GoaEFS0hW6U6E5CbSXoxjK7IVint3Q0+qz7odjZFAjU=;
        b=SlW3MHqd/x660UbpL1ZsTMLNQaeHMH1MCkPdZBkd2QXBpztTeH46eK7InE3P9pwCcl
         DuMhfxMijHC54O3Sv+ACrG6dYNQxpc/bX/VWfx25K13UIsHmyDA2Nti08ZUw+bXUgpmC
         Csca7KHwhLprABF3bzekiBZidLtdgN+B0o2vl8+y/YOi4kE/twRQtk1lNWIaX5Si2zLG
         LxrpAVxgqcPthtnXd45n4orPvfMIADq1fahWtscSwCTFbYXGJgn9TuKDPT5pacypvdCq
         p3b1dLnvj24MO96i08ClqwAsKGrH6w3QPFkzyenkyMG+TwreVhQjFRNxn6lVIFlTyWjU
         Z+bQ==
X-Gm-Message-State: AOJu0YxLCfT77YAtFCKvrG21YQRAoK0YMxvP6YFyT/Yu6um7C1YY6IND
	rJ5hvumZ016P3e4jGJ5lPD3iJhMVE99yuQH1BgftrmdwvHKg/aVx4KwkDiljFl6IqKyb2tqIcNV
	HCaL0aNntu0IxQl9Yez9oat9uBBqkoqArq4KS4G6oGIR6tnyChqk=
X-Google-Smtp-Source: AGHT+IHho3DRmsTEa5hKqPtrOwCzLpDz2u4hNS2SPLNymPMr3ZNhuLnq14ue8rXGZTp4+5ylUB/cvsKzEzUnh0AcCP4=
X-Received: by 2002:a05:690c:600a:b0:6e3:1f02:407b with SMTP id
 00721157ae682-6ee55bf066fmr61463737b3.11.1731764091223; Sat, 16 Nov 2024
 05:34:51 -0800 (PST)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 16 Nov 2024 05:34:40 -0800
Message-ID: <CAOSpxdbKwz6Og979Mj0XUbxvrXtih5g-EY-prd4sypzLw-g8rQ@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-4.0.23.rc1)
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Nov 2024 13:34:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64281

A build flagged for QA (yocto-4.0.23.rc1) was completed on the
autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.0.23.rc1


Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/447

Build hash information:

bitbake: fb73c495c45d1d4107cfd60b67a5b4f11a99647b
meta-agl: 510a73d8ebcc5839c3a941c686175cb83922c0f3
meta-arm: 936c02ec13661bd86a05f7f90e1b920d5092d670
meta-aws: 57e4c1cb45078eeee295754226eb8e59802a137c
meta-clang: 8bc893d735e5f779a2dcdc3992621d5ab371800d
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 8514c60ac1a9a17ba20b17fa176119728a91dcf9
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 4ad41baed6236d499804cbfc4f174042d84fce97
meta-virtualization: c996df33763f292da5e7513c574272d7de23eafc
oecore: fb45c5cf8c2b663af293acb069d446610f77ff1a
poky: 8e092852b63e998d990b8f8e1aa91297dec4430f



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

