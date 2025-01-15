Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D808C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 18:37:05 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web11.29532.1736966218702958862
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Jan 2025 10:36:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F0NYKJg1;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6dd01781b56so2031786d6.0
        for <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 10:36:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736966218; x=1737571018; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lxPIVCYAdG3eK5//uRw4DE4sXxPqVlBVqdr0JKimLLo=;
        b=F0NYKJg1rFZhPlBRq4HyfTxDVOM6vAiMsBph6WHxBZqD5fW+RZ4F5NFJxhF34c8Vi4
         z+UyT7YBheL2awstnrsA4HR5EYIpaUwQxH3VhCDNGOUOZULy/cNnjk3+rgCwPsiSj1Sf
         dfPCCgxC+CboqlpZlDZi8bDm+Y0A+1FYIqEOFqPgbDt8SsynP9hLSLKOhuSgj0p65ib7
         pQw85vfMaChBFzseLXhUbOLo7O0eTheslTPxzQFr9UKac9KmiFBp8As323zOT0KDm9aS
         HFXNLMG5rQbbzqVR+bxCMtjdkhOoldY8S3zHXVaYnfS00IrLYVpD1o+BRFrgWsR7Rgdi
         BejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736966218; x=1737571018;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lxPIVCYAdG3eK5//uRw4DE4sXxPqVlBVqdr0JKimLLo=;
        b=LK9YilFNRDaksgx0j4KEUkc8WFczJo9ag8pXLwLFSn9E6LlxJi1Mfi+6pTh6HM5ddN
         les/1GwNhygB9y2Vj2E6NG9WOdzc56pbHITm96t3hONoQySNwS2onmcoTR3GE5CKnRUT
         IjphLTfMOVhl3Seb8LgaOGsdxf6Z2LOKz/KpKAk8Qiv0feH3M2XGDa2VsQfrqHPG3QPL
         jZq74AM4t8kpSa98l6nZ6LvTpp5d0HD7GeGhZCPw5nrAdKGkeZs+P7Q4w/pTTH9G8WYL
         nGDNG3Bo40bFU3uwO4KtnCPmYcKlW1eynUj/3Nuz1tN9NEgvg6kMippXZeMOs8cS/1ei
         RBtw==
X-Gm-Message-State: AOJu0Yy+1OHvVYyaO6RtxvuK5l0sfC4ZcRyIYMXg8uNqX+XDrI/atDsv
	WqMvcjmYC+ALwXuOgijVrq9i0xvb01KAMkr53Wi7+Rt6keUAkMDDjkMFW1oHFEj70yPabKRwl79
	lLWeQ0ITiUXS+DeDaIXXvDTwarrw=
X-Gm-Gg: ASbGncsImQ7rvWYp9Ns7FV5R0aFm8fIu6cSrmvkBfAzkVzSFCmulPVUPwLnIjxlL23/
	9UPb3WR9nnpRO1qwSig+cD3a2U03iHxE2EDeU
X-Google-Smtp-Source: AGHT+IHHB+1xIC7yQoPeECJqwa1VB70tn08texqbes5pBfrw8gfffRUCLgiNxCd3bF09j6pcIMzPQPZmPBaQvN7mN3w=
X-Received: by 2002:a05:6214:2428:b0:6d8:960e:5785 with SMTP id
 6a1803df08f44-6df9b234c28mr441426296d6.13.1736966216200; Wed, 15 Jan 2025
 10:36:56 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj9hFmjRONtY6Gx5fBsp2UsTn3yMzKOn5uhX4UT5LxWp8g@mail.gmail.com>
 <1047.1736961766763185321@lists.yoctoproject.org>
In-Reply-To: <1047.1736961766763185321@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 15 Jan 2025 19:36:44 +0100
X-Gm-Features: AbW1kvYZUFAhG1X59QDkaEgft56yxlANLFfJg4ef6X7RpFC4LVy_98K-0R3MqNE
Message-ID: <CANNYZj8gFR=kFT-sJVLwqi9P1vi-fyiYv0mZGyETKArBK8b4Mw@mail.gmail.com>
Subject: Re: [yocto] [HELP]
To: ganesh.manoj.mahajan@signify.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 18:37:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64564

Wait, why is it now in
meta-eaton/conf/templates/template-name/default/ ? That's one level
too deep. It needs to be conf/templates/something/ and you then put
local.conf.sample and bblayers.conf.sample in it.

Alex

On Wed, 15 Jan 2025 at 18:22, Ganesh Mahajan via
Lists.Yoctoproject.Org
<ganesh.manoj.mahajan=signify.com@lists.yoctoproject.org> wrote:
>
> First, does /home/build/project/meta-eaton/conf/layer.conf exist? :- yes it exists
> build@ubuntu-bionic:~/project$ source meta-eaton/setup-build-env
>
> 1st if
> templatdirvalue = template-name , templateconf value = /home/build/project/meta-eaton/conf/templates/template-name/default
> Error: TEMPLATECONF value (which is /home/build/project/meta-eaton/conf/templates/template-name/default) must point to meta-some-layer/conf/templates/te    mplate-name
>
> 1st IF it is failing

