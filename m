Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71505E7717F
	for <webhook@archiver.kernel.org>; Fri, 13 Dec 2024 17:54:18 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.1607.1734112294321764499
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2024 09:51:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hvivknWz;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: sakoman@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5cecbddb574so3475261a12.1;
        Fri, 13 Dec 2024 09:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734112292; x=1734717092; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OHyD4+WIxLIpDhK5DyPlvEM2lYFH4wNwmxyCh0GO69E=;
        b=hvivknWzJeWvNMRDFenRTAwhWOhvmVRdThXpWcsGgjmse4aWCzVQP0DkrhenkvokrT
         twvPGMRKTf/NO2milhQpNiZ3ZxV96B2lMVJUcxYSWRkVhtGHL1hx5q5K56jWmErDqZDb
         QfNFxVemu3AMG5Tj6tUUm5BIOY7OHi1FYfFpFmlvCa4OVuuH8Jvvd74A+ydXDaB6vy87
         CR+gZCnVX6x2M8wKIMPpoYWRdcvriFxrlxAiX6xB73lSq0w7K8rweK/Ro3BTci0rxFFl
         dLTiprbXZxyIWBQrq1/C+iL9mK6e+1BSzfUCxv4UX9+sA22fusV4/pTynuec7WFveYTf
         K0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734112292; x=1734717092;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OHyD4+WIxLIpDhK5DyPlvEM2lYFH4wNwmxyCh0GO69E=;
        b=EoFGRc8ISS22/bpIsAlF6GUQpEwxLwA4J4vSBGMnmjdze5icaesGwvnZ+tsMdskJQS
         ApyJrzXmun/gQa1NwHkGcHWXFwRKvBsJ8xNmdDSd4qXzV5W4Gm/1RZxSZVJTPgMc7txm
         uvN6smhsLqXGhRzLJyrPADrnXkDA6fCRyp9f0tAlihVk1ipjbYYQ1ExEQtOZAF0nFKgb
         bbLxMwEb4b62OzzHEO9B8vzptPN23qR+luea9yVu7Q8QquDiRtTrmXuSv8IlFZVJzI++
         pdCLQq2LBNnVHXys+FjqmOlEX/bCPDbZ9bIPjlMu08PrpC/LqYF8y5/VfO8me3DkKpBO
         Ceqg==
X-Gm-Message-State: AOJu0Yz+VTij1JDaR1a9LxnnewmvFb2iUCFJhZGDEc+QuVQih+wT92tg
	LvPukT2c1xVpnMes1FgowIrgo8qppflP4AQlE69bV6DbUYQG8MSragpIN6eHVNWfE0t17GBauVj
	mJteAjGsCyivKLeuxAK+BkkTBjIveAdB5
X-Gm-Gg: ASbGncuaPMNK6WXmZIowOUViclvjYm1Z5eqLnfpBXi7HpVIygL+vzEyu8muxTnh+b9T
	ULt9fpmBJCVn5bcvKNnRYZo/dSDXmTrBVK9IfIg==
X-Google-Smtp-Source: AGHT+IFKIavwifCMAiJJ0gYMpzt7pipF3KL92TlROPpSI6KWFki/kh0yRE3Tio9TNXeNL6ZiQwiZn30G+SDycOFKk8Y=
X-Received: by 2002:a05:6402:1ed5:b0:5d3:e79b:3b3d with SMTP id
 4fb4d7f45d1cf-5d63c42a44dmr3264712a12.28.1734112292039; Fri, 13 Dec 2024
 09:51:32 -0800 (PST)
MIME-Version: 1.0
From: "Steve Sakoman" <sakoman@gmail.com>
Date: Fri, 13 Dec 2024 09:51:20 -0800
Message-ID: <CAGDS+nkB+EyEg8FOQUbjt+aeAs5DBLEtsMojDjyarvLM=ikT4g@mail.gmail.com>
Subject: QA notification for completed autobuilder build (yocto-5.0.6.rc1)
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 17:54:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64445

A build flagged for QA (yocto-5.0.6.rc1) was completed on the
autobuilder and is available at:

    https://valkyrie.yocto.io/pub/releases/yocto-5.0.6.rc1

Build URL: https://valkyrie.yoctoproject.org/#/builders/29/builds/639

Build hash information:

bitbake: f40a3a477d5241b697bf2fb030dd804c1ff5839f
meta-agl: 2e060732691ed8fcee6725cf8ebc92e887bfd188
meta-arm: 7088279c0ab00c7dabefdd4544951b4746b48476
meta-aws: ee5bb55697723ccf692592e0b37ad268869e1c0c
meta-clang: 9fbfa9db33131abdf3870a94f00199eb53e276e5
meta-intel: b61d5310fcb4e5077bb4b1de0228dc45ba69510f
meta-mingw: acbba477893ef87388effc4679b7f40ee49fc852
meta-openembedded: b8d1a14f7f3b76457c36752202ea7ae5881b6654
meta-virtualization: 450941a1b6df96285691e8c23d4f332d3c88a994
oecore: 336eec6808710f260a5336ca8ca98139a80ccb14
poky: 2541a8171f91812a4b16e7dc4da0d77d2318a256



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org

