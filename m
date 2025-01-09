Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E39CE7719D
	for <webhook@archiver.kernel.org>; Thu,  9 Jan 2025 22:28:25 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.5810.1736461701461933767
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2025 14:28:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=Ta9sMrbT;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.172, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e399e904940so2227761276.2
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2025 14:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1736461700; x=1737066500; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xQqOVya4AB2P5fAT2mwS0ClmICD293fT+lDVEkpgsiQ=;
        b=Ta9sMrbTUeJ3DMX5dQCljj/fwIO4GsRmiBmHgqv/A2oKxj1ByiCA7lKMo+Yz/H0Txv
         22bXUhMWbsNHCVcCoMAZM0n5w5CEPiR14uzbwEFJypnFYyEOb9mNn9o2lFFx6Yz2xbFZ
         gYeEhUV0Ja8wrujrGxlFOIvqiqWGtaXRQvdydPHfC5jnx8J0pvuuOkmqpy58ykqMIc1c
         hpr1rol96ATiEZyEpzo0PYz3CXQKX2mF4FU+PCk5n6n/3Zkd4yyZBfjA79x0rLPmFBsq
         GwTmLETLvSRFLW3VFXE57gdwxUadpmmwYsEt5Y2DkFEUaWUW6JGLTO69OfRbw0JMLy8Z
         OfxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736461700; x=1737066500;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xQqOVya4AB2P5fAT2mwS0ClmICD293fT+lDVEkpgsiQ=;
        b=mouJ7Y18xunDkQNLwh9JvqQAAt0WCpEc2OJ04ZGdH5xNKPtQlQnR2ljrW01aZMWZfI
         vACBsi2pfPOBUWU6qKSbjmGYrubn/ksioYib8SDrq39TItdaEtffQmO6708WZHzuT28O
         hqC6GN2GVCvDWBqcIsb/71l+lQHrzvfkndlUFXH9uDtrwNunHA6eAPMHOAnews2A9WMT
         JAKX9N47p/FAaqIzgtchLNUs/5t66zq/KGFGLawUxs3NvoHjDhXivHjqQ6brU3+Y8UFH
         mi2dSZfH/qxvf9us4uBf7oEiah+m9WBsUkJeo4QOHyn8F4EEmiOfLmXTM+s+KepGWCq1
         hjVg==
X-Gm-Message-State: AOJu0YxymUbaL2ZJz8PRH1QTybpBkiPlyRrYP3qO0B9+U5HP6cG/QKdj
	Nb6W5EUbjNOdKdyrNSbI6Geq6QxBt+Y+GXqP82CnLsseIOr8e4cRPPlnCOg/atbZLJnWGmcKUFk
	XjGcyh/Tva038p0N0ZMLsr3PAMhcd2G3ELWOt89KuWd0XadFe0jR3Cw==
X-Gm-Gg: ASbGncuMl1z0etjWkfsEmV7yMIFy3QbwIu2LZ6nGIQO9NpxEL6MdkdbvLQy7fynZ19o
	KzFsR6S9m1nWMzyYfzQrc9ug5Xiih/w4oUgLbNw==
X-Google-Smtp-Source: AGHT+IFJCGZScwROqjbsUn9FlbKueDAv2DLMNdmy5NfSYlUf3nSTW2EYO3pPy3NDDwWnZNtju5syikp+PJlF5pJqx9I=
X-Received: by 2002:a05:6902:1581:b0:e3c:a022:b53a with SMTP id
 3f1490d57ef6-e54ee173c20mr7079842276.28.1736461700522; Thu, 09 Jan 2025
 14:28:20 -0800 (PST)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Thu, 9 Jan 2025 14:28:09 -0800
X-Gm-Features: AbW1kvYzuYaVUCDf9UmKBEb1Hg2dlXcwHnhHZzHhdn35-rxcxgxE08AooQ6Shr8
Message-ID: <CAOSpxdb5xR3BHif6-swTPdqFoibSAn4KEtZHSiLd3Xi0T75mxA@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-4.024.rc1)
To: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2025 22:28:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64524

A build flagged for QA (yocto-4.024.rc1) was completed on the
autobuilder and is available at:


    https://valkyrie.yocto.io/pub/releases/yocto-4.024.rc1


Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/778

Build hash information:

bitbake: 3f88b005244a0afb5d5c7260e54a94a453ec9b3e
meta-agl: a120153e6d3b7c23075aa0557cfab31dc2887b67
meta-arm: 936c02ec13661bd86a05f7f90e1b920d5092d670
meta-aws: b7de336e93c991a51c4df9195c9789e1e5904311
meta-clang: b33aa9c7f54807c113c44b0f2c15a5c5d88ae5ee
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
meta-intel: 31e3dbc89af2b8dcac889f31cc0911018abbf55d
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
meta-openembedded: 7b3fdcdfaab2fc964bbf9eec2cce4e03001fa8cf
meta-virtualization: a055d7dcafc58855081a5eac9a46b93b9b51012b
oecore: a270d4c957259761bcc7382fcc54642a02f9fc7d
poky: f50532593651dff82bc952288d786c55038c2c86



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

