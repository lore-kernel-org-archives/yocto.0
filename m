Return-Path: <samuli.piippo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2A9C4332F
	for <webhook@archiver.kernel.org>; Wed,  8 Nov 2023 08:57:55 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web11.9576.1699433866832981319
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Nov 2023 00:57:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=djFbhIaY;
 spf=pass (domain: gmail.com, ip: 209.85.222.43, mailfrom: samuli.piippo@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-7ba6a0bada9so2294980241.2
        for <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 00:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699433866; x=1700038666; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=C4/4gkqM5ErJLhdTfOxKTSIb/CCI6keQgXmUEc/Dk4o=;
        b=djFbhIaYZ+RTUk5jXi+kDWXMcgy/SMyRLii7vS+xE4ALh2l3e3b+ERV3dapiOnNgap
         pP2GMNAJHcb3EQDzAeM5hVMXD1/WAwGE+akaBHP1X3KRX8CPb/ynvzbM4pmrMqDzZ/Su
         IExim3f/EwUjmCEt2hmvH8XDNjrTaCxl3Qg0pJRugziPHpQUodBI3rnoGg1Zk85MKtcb
         BLAzYCr1V7jMD4/nubFWX2eyZVXdh+8sOOLWJsavR6/LAijX2CnaLWJnOYkXP+NWxRrI
         WMsiDi9yzzkpYTEkptmzA3vGRjDm1igzU2L0ojkahhdA7VhIOJWOWruC1mbk9lTsWPId
         WUhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699433866; x=1700038666;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=C4/4gkqM5ErJLhdTfOxKTSIb/CCI6keQgXmUEc/Dk4o=;
        b=Yb3wj2bkYyKvzB0v/BEZNU7ORIXVd9w2M38hH5wvf/QG+Uarw9/1xyQKS7z0ZbDZ1A
         MGL3TKKDYEjR9KpCFU6QZ7MdQQQi1xdb2NSKpzi48/8vJKsDEtYVzXmXWKiJCuSrt89T
         1WlyG8tyTCAgwtMP1ClmkJiYugbS9MVMxU+F5jmE0etqt0FfqoJEPEqlSqyjgaw6SgiZ
         GyVPSa+Q2Kw3Yz7R4cQrrVcuHbyJmlSXQVMVOCOc/IrrsibAWMf52h+7I0LQ7ZhRZ+4j
         ka9CvAlYo2tDxxzPnHl5s8/RsjE54iTVUJ5wcPmiKMVzWa3B3974hQ/4Sb7UyCCv1/ZQ
         MMRA==
X-Gm-Message-State: AOJu0YzhUpYaQT6djI8q/XGPD30BE4nci/7AnrG/yN7H4sZLjYjaUbhg
	rAj54n/Jsx8SqQA5yJ6p8duGIiTyeQ2BlAiwG2J6cV/WmzA=
X-Google-Smtp-Source: AGHT+IHRGmRj5EURzO9wktBQPg4wiBhtre5ZbVMPNh1Eg0WNjuTbmv7O8oHUNyKqQJq4qQ81voTDB3un31Mg5wJLcp0=
X-Received: by 2002:a67:c30e:0:b0:45d:9224:a89a with SMTP id
 r14-20020a67c30e000000b0045d9224a89amr1190791vsj.10.1699433865651; Wed, 08
 Nov 2023 00:57:45 -0800 (PST)
MIME-Version: 1.0
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Wed, 8 Nov 2023 10:57:34 +0200
Message-ID: <CABXoSoWo6-beEPMM0eVkrMzqR+mA0bwPdw6w9dthVhcCk+06DA@mail.gmail.com>
Subject: [meta-mingw] patches for meta-openembedded recipes
To: yocto@lists.yoctoproject.org, Joshua Watt <jpewhacker@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000e1ab5b0609a04779"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 08:57:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61636

--000000000000e1ab5b0609a04779
Content-Type: text/plain; charset="UTF-8"

Hi,

There is a mingw build problem with abseil-cpp recipe from
meta-openembedded layer (master/nanbield). meta-mingw declares dependency
only to oe-core, so the question is that should fixes be pushed to
meta-mingw layer or directly to meta-openembedded?

-samuli

--000000000000e1ab5b0609a04779
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>There is a mingw build p=
roblem with abseil-cpp recipe from meta-openembedded layer (master/nanbield=
). meta-mingw declares dependency only to oe-core, so the question is that =
should fixes be pushed to meta-mingw layer or directly to meta-openembedded=
?<br></div><div><br></div><div>-samuli<br></div></div>

--000000000000e1ab5b0609a04779--

