Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F129BCA5FC5
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 14:49:24 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15354.1790779762471100853
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 07:49:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=36Hrt2CX;
 spf=pass (domain: smile.fr, ip: 209.85.221.52, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-48870973bddso754909f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2026 07:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1790779761; x=1791384561; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VJwB5Gh2z4cmSepyjuYGQJtLc3rOngOvNR+q1vcBgL8=;
        b=36Hrt2CXO3yjcbNnqeXE5D0NC1LfrwTi7iJK5/LYsADNg7oAnbfH9tztXop2SQAtkV
         0gba2FEKeyn1BsvCRIDGDDk3O+sh9Uy2/b4xGGr3cNF9TXwsF3IladQA9JJo/bOC+3r6
         iaBUSZQaE2aqfSptTl1nZxA77z6WV+egCuW8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790779761; x=1791384561;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=VJwB5Gh2z4cmSepyjuYGQJtLc3rOngOvNR+q1vcBgL8=;
        b=TLYm3EfzcrVVZi/uxLQXQ5vJMOWkiFeqadOe44eNKy4b4Uxls+i6dbPXBOjIYU4FIE
         dsrbR36fKL7AXH+MfREr91W0mkyZujyMTaQV+9JFIiXdRRSWPcOHGybC9d8Wj/bm5BjL
         LOyueFy1Kv4c6I+aYFU64aP7Wo0WSoAw32evS75FFf1Z74eETaTf5PJbkaE2OtLlMPqY
         ATZglv013cLeIiQiOt2RsbhvWapKhjXnAGgkb0zz4RSvivpFeKIDa+FsSfcH0+VB0y8i
         0SvmBrvBFLM+EgO98/DHjXYt3fBoFMtCqnKP48fLk7pCZhJ7et5rFbvzkHM4Zy0aNWjl
         yizw==
X-Forwarded-Encrypted: i=1; AKwUvByvrZZHV0aZbnZUufubdG8N1+51lJQzjH/eSbLyi3Ro8UqFJpJqqPQMJRncFGTAFgsXoA2E0g==@lists.yoctoproject.org
X-Gm-Message-State: AFq9FYLl8SFn9eNlaexzN8m7+Q6fz+Q5qWNgLQEwWFggvL3G3Xtwprpk
	Lcf50WQWbAQ+Nk0j1vo1xvfN9uaE135Ccn2JgpC1RyXtZNszUFLTns8LWscFD4v6kFbNfIfVkiy
	5x1nR3fA=
X-Gm-Gg: AYBFou3H1K8e48hLT9BlLBmVT8jZ3JSSBte7AR3OxXiTjc/hAAqKTGp8Hdep05VWeHP
	3zXJFoKkedg/0zuuJyCXeyxhqnp5K5h5uj3/Fvx5STd+fncPQQp14eleP85jEi0bbJ/xcasbzFt
	VOi01KqIx7BSBKwlc8tCZc9y2+u/SChxNZMsG8r2hWlMXyT9qZ3ttVrDlrwbzllW0yNjKVZ4EaE
	h+71a2bHNS5uTFHrrEwCjRPrHSpb9OkBlimoOHrC5FE9dicIE2SYFauOeW3J5tVC+s3PV0c7N7M
	uQzYAzgO19tCUs0uU4ELs/BAd6jJjP4bjqrWsLVhCcO2dnt5iBjobswffyIE2IcuzvqHbhQvDkQ
	UslwumMhStBeProS5AzesWBOQ5zZyCKHjOHBXmX6J5IOdoXBS5D6Q1EiyMpEl6o9a2Il/XkteYS
	0h9Wj80n6ClovqF5Ja0o3GjEFB6tSRcnNK/Tyuc1s4iG3qdkznIIn5M+J4tKSf4tJBkIk1pBoAd
	XVoV0lAalWB3+T4x1KhVSSQ9ZM/NAW3pD5u7TkIOPPaPxYp0df2gKbFHFk=
X-Received: by 2002:a05:6000:288a:b0:48a:f395:2349 with SMTP id ffacd0b85a97d-48b024caa97mr4010551f8f.16.1790779760410;
        Wed, 30 Sep 2026 07:49:20 -0700 (PDT)
Received: from localhost (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48b029be7cesm4485218f8f.8.2026.09.30.07.49.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Sep 2026 07:49:19 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 30 Sep 2026 16:49:19 +0200
Message-Id: <DLSQG0G120BV.3CN1II58OGZMK@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.4.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <010101a0f2bb1dc3-f7d94a5b-ddf5-4408-a5ca-9cfacb88f136-000000@us-west-2.amazonses.com>
In-Reply-To: <010101a0f2bb1dc3-f7d94a5b-ddf5-4408-a5ca-9cfacb88f136-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Sep 2026 14:49:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66746

On Wed Sep 30, 2026 at 4:32 PM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
>     A build flagged for QA (yocto-6.0.4.rc1) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-6.0.4.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/4840
>
>     Build hash information:=20
>
>     bitbake: 51fd94a67fa17650a9ff623492005972bbc7d26f
> meta-agl: c36f0e0bbed6000f28cfd10417c280c9fdca37cd
> meta-arm: 673e8d7c5dcd14de58092eb73e6ecc5eee5c1735
> meta-aws: 3f110301bef871c552a3424f447de59a55db71c8
> meta-clang: ef0d22f21910a0c30c967eeb17d8f209806e2d81
> meta-intel: 79a9681ce83f6bf36aede3aeb8c1707d29bca329
> meta-mingw: 5876c193da3ad86b5e23012374b5350e49b0c755
> meta-openembedded: 47d7dbdd10890bbd429bc0cccbe14435c37e5af1
> meta-qcom: 509b772e581442558e7b7efea05c5ae082504f50
> meta-virtualization: a07bf78dab0d46099a7e6ca8b2aadb07535efc13
> meta-yocto: 7c25b11156553145fa6b241a2d4f65d94438f804
> mixin-wrynose-linux-firmware: 71dfb81bd98f59ca2127d39b100ecbb8ce1e0ba3
> oecore: 0f03c732a0a2d0506b41b1abe60b3f368b2300dc
> yocto-docs: a2cc1f5b86f3cdc9ad3257a2545322c5169da3ca

This was an "all green" build, so OK to proceed with QA.

Yoann
--=20
Yoann Congal
Smile ECS


