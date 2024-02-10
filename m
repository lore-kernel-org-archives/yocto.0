Return-Path: <jan.vermaete@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38B34C4829A
	for <webhook@archiver.kernel.org>; Sat, 10 Feb 2024 11:24:31 +0000 (UTC)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web10.12044.1707564266570632087
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Feb 2024 03:24:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RVUt9QDM;
 spf=pass (domain: gmail.com, ip: 209.85.210.51, mailfrom: jan.vermaete@gmail.com)
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-6e2af0bc0dbso1093575a34.3
        for <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 03:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707564265; x=1708169065; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SZhOymTR61VoT8wuV915v0yBVgF4jkYigcDVJPq8e0I=;
        b=RVUt9QDMnUJg/lOkaXRtZ1LjPkl3SYTSw9vRy1vw7jyii2/2npq8CJfxxH0IXkVgpz
         eG+EbQYnJuMBAtBmEDc5jtUcGtxUO7p3VO/qT4UhaOUQUAojvQur1Q3g+BkwDQPFsy7c
         CApkFq/16bn+rGrdnZBJtu3287IQHQ58hA4cPAwGpsnTlPijEtm3AoljvwmJWmgGKC7H
         y/qHPwPHjHVm3Na2Kmtmtb0on9vqwONbeDErIgCn+peX9mri5pWadMG1gXVE4gJealtw
         5mTxhAucFdDpYKmB6RGoWZSzUmSF+bZrPInA615C3YqQchsCIn8BxxQQAzBLrErzWIsn
         gqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707564265; x=1708169065;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SZhOymTR61VoT8wuV915v0yBVgF4jkYigcDVJPq8e0I=;
        b=DTyZ+5+j13oXNRckF+AlLlZibEB+xstLXzQqmGRk3gDNcwoWGuXJptA49GQKhAcVAi
         klIV+VSM3EODXflRRRgxzwZRX+54AoK7MgeyZJggu6U35iz97JoLPv8n0U/Vdv6j0ul0
         73kBybNPHYXWdRd0Wzt2UH/84KDL8J0chsgscTFl8ssNpfdDUZxflQIydilaUmMfYOOL
         1P02gUjvG76osYUGSrtdaZ5uL3HMY21C+9F1HVj23qVd5wmCm/ZB5QGyQBNHe0AgmwCx
         Iwf3VTuFefdvm8H6R9NuLVj1PDtkENv4+Pt+UpbPQQhE4UYmdIJ9bMGxIrhpf99Y00RZ
         RKiw==
X-Gm-Message-State: AOJu0YzcE4cRNOXocYLYZznJffquk1jySQP88lAKqLzstfTITitHZAD9
	veejkWei/fc2LAQF3EYYpTo6SAr78R1NjhodeAzd4KBUmWrVj/CVFwg1QCtsvBAV2jJbaAqexfe
	SoADb4lBbUs7CoWSj53ekbYCUTaR3AGePyRQ=
X-Google-Smtp-Source: AGHT+IESBo+h0kd8GBmLQ3Wcjnf/XemmKO8xa+Q0iI+SpEws/nnkdSyvL/B2VoRQoxHy4Cvz0XtSGxj16UZfscEdvOM=
X-Received: by 2002:a05:6870:9686:b0:218:4414:6f35 with SMTP id
 o6-20020a056870968600b0021844146f35mr2227416oaq.15.1707564265371; Sat, 10 Feb
 2024 03:24:25 -0800 (PST)
MIME-Version: 1.0
From: jan vermaete <jan.vermaete@gmail.com>
Date: Sat, 10 Feb 2024 12:24:13 +0100
Message-ID: <CABF_=yg1+8ezmbtV8YFDWfvdyK-=-wO2d0OEOgNixZhSFmk6HQ@mail.gmail.com>
Subject: meta-opendds: git url changed
To: yocto@lists.yoctoproject.org, keith.derrick@lge.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Feb 2024 11:24:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62455

Hi,

The git repo of meta-opendds changed from
https://github.com/oci-labs/meta-opendds.git to
https://github.com/OpenDDS/meta-opendds.

However, the older repo url is still reported in layers.openembedded.org.
http://layers.openembedded.org/layerindex/branch/master/layer/meta-opendds/

i assume the change is related to this new:
https://opendds.org/news/2023/03/17/transition-to-unity.html

br
--=20
Jan Vermaete
=E2=80=9CSuccess is a self-correcting phenomenom.=E2=80=9D -- Gary Hamel

