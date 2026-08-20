Return-Path: <fabien.thomas@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76F94C5DF82
	for <webhook@archiver.kernel.org>; Thu, 20 Aug 2026 10:56:07 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4414.1787223362948735511
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Aug 2026 03:56:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=Qw3VHV6G;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: fabien.thomas@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-493b966dd74so13916215e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 Aug 2026 03:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1787223361; x=1787828161; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4fCswMlfxz2XI/ybfqcqpfJXxyGkhAPe25uxyB0IiOw=;
        b=Qw3VHV6GKsaOusB7b039koIDnSk/vEz5QveM9EJynbOcloE0huqk5oZUOR/NugVGx1
         qtO7XvA2OJ0kmnGKZhZceFz77YmGyqhZde0N3z82Xy1c97UNa3pwtMgo/UzssaG/VgIm
         7rMtFoyEZsIxoaOqBDfyyPfKbnncAE2PlUSkA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787223361; x=1787828161;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=4fCswMlfxz2XI/ybfqcqpfJXxyGkhAPe25uxyB0IiOw=;
        b=fq+wuQLmINmXxYzPC/fGx/Wzb4Ks85eknwlxtqAN0D/A4LlTCVaYvh732OsvXiPqd2
         IPcCPsGht0MOk7F6EOGRy59lFxP6qekKKi2KnpamnCqSm+ZdAXPw765utJNnG/g2OyI1
         /z/sZqB4vOiG9ayK877W3USYaLIXR8EETX3NaYTKAFnR+Pnz7JVclCcsK+LUV94CmG9L
         wjRHHacYz5KP+6unk30vuJiXKfmys4bRmEnU9+5TYBNyyNXUK30l6kxIpTbBe1L8zZOH
         jL+WJSMCkqhhpucobp1YzPCGLYWoQQEn7tn2Hta0LDAT65kO6Sbd0tuH271Gdacn90sD
         VMUg==
X-Forwarded-Encrypted: i=1; AHgh+RoX3OqwjOT3tPvRDqwgyhWRMXvZmkHx1FOY7nGlHwxuQ03L1HV3H1j2RQf+kOqe82WxPKqDTg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxcnCJJ/RZazsQYlsiINgR6Vn96rF4YOnxVvK3hkUOguZz4n6Tl
	qXv9lvp667qDCGn8V0v+tMV7I/7Kp+3gdtd+bQ/3DrUBJfWbdvuefdpi4h0mQBgiIJRhmlksE1D
	3W3WHvaE=
X-Gm-Gg: AR+sD11HJ8C1AQV2nZU9FU+hFSHs0mH5t+cGGY6yHxAYLLbkUxT7ouGKQXCpl/9xMoN
	oCvfI2gYChXDg/qpWc1g/PECBHq0C4xr4x2PverJp8szXKxDFgkMMuUR7i0mNpc0hjFdSfv4/tD
	X6MBKuNJSLatRNpsWjmq9bc+0ddKutdQWmwNbYZeWQ/Xheay5nN9Ps7wadV+2Y7R/I5ZGpSIC6U
	ZK8WlwGkIF+7MfU4RRb7U+/1E4fUxlffzGJlkZur4FDQxsSme7jM0pCaLD5R/rG88aPQ5ivi/F0
	dzZxTsssV9lSXDF5v/+Y3UKVOebM94h8PdZRp27INhdWL7xuq9zmm6Zh0ncIjgIP4PpRA4/bIVc
	Gmn9+Ml7+TmAH71MdHZbEBygdTxTSvfQi3J2acr4Uxb3pD3DGw/76/vJ//Rl1ebovq0TBFc7ffd
	eMOfkdGQQCX3YAgvwwWy8N32YvZbXDARTC7+2OzF69wvsAiajc9KyofURRDW8jI8J0EL4TBAZH3
	a0TX0316DULBIhkSiv3s3qz/JHfjZ1kR7lj2usz/BUqpwayufSqFcOAWjqntxRD/tEdTrnMUQtv
	uL/3ZNu4AaXRxsTi7P6JOAsX2mFEYoYrKyE=
X-Received: by 2002:a05:600c:8b35:b0:499:7ce1:d8a2 with SMTP id 5b1f17b1804b1-499aa1a54b2mr211501195e9.8.1787223360945;
        Thu, 20 Aug 2026 03:56:00 -0700 (PDT)
Received: from localhost (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0fd728sm195792655e9.3.2026.08.20.03.56.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2026 03:56:00 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 20 Aug 2026 12:55:59 +0200
Message-Id: <DKTPT0WXH511.A84SS1MYLVAD@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.3.rc5)
From: "Fabien Thomas" <fabien.thomas@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.22.0
References: <010101a01a76718d-b9001e6c-d0ae-4cfa-b512-6be5ae427a5b-000000@us-west-2.amazonses.com>
In-Reply-To: <010101a01a76718d-b9001e6c-d0ae-4cfa-b512-6be5ae427a5b-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Aug 2026 10:56:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66690

On Wed Aug 19, 2026 at 4:39 PM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
>     A build flagged for QA (yocto-6.0.3.rc5) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-6.0.3.rc5
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4513
>
>     Build hash information:=20
>
>     bitbake: fae9db3168dbff1b8c76fe9c6726a9687ff97514
> meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
> meta-arm: 0979b80429099f1a42dc0026c8c466cee780bc74
> meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
> meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
> meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329
> meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
> meta-openembedded: 6bf0d8ad57b33950bab4c7f6c037e1ccb6f6e2eb
> meta-qcom: bfa25fcfda87cb483aeb8259494b0a7ba65f7422
> meta-virtualization: 30f1a9d7e5ef1b41c64ff4c3c40951133d548ed8
> meta-yocto: 1b132647002eea43a2c7a7f857f63f42dacbc26c
> oecore: ef022bf82d79015802309d14c28b13373ebe53f5
> yocto-docs: 5b1ff88511d90634bb3077b878176de577464e12
>

Hello,

This build had 2 issues:
* "ERROR - Error: There are no available tap devices to use for networking"
  It's an intermittent ressources error. Those passed on rc4[1] run on=20
  the same code revision. (Which failed on another AB-INT resolved now)
* "meta-qcom" failure: This is a known issue worked on by the qcom team:
  [wrynose] meta-lts-mixin dependency broke Yocto autobuilder builds [2]

Both issues are not related to this release so OK to proceed with QA.

Fabien

[1] https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/4502
[2] https://github.com/qualcomm-linux/meta-qcom/issues/2457
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>     =20
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Liens : Vous recevez tous les messages envoy=C3=A9s =C3=A0 ce groupe.
> Voir/R=C3=A9pondre en ligne (#737): https://lists.yoctoproject.org/g/qa-b=
uild-notification/message/737
> Mettre en sourdine ce sujet: https://lists.yoctoproject.org/mt/120830443/=
7886019
> Propri=C3=A9taire du groupe: qa-build-notification+owner@lists.yoctoproje=
ct.org
> Se d=C3=A9sabonner: https://lists.yoctoproject.org/g/qa-build-notificatio=
n/leave/14956003/7886019/2021459035/xyzzy [fabien.thomas@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
--=20
Fabien Thomas
Smile ECS


