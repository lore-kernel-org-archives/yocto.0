Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EE1D6AAF5
	for <webhook@archiver.kernel.org>; Thu,  2 Apr 2026 16:50:10 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1005.1775148605910132434
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Apr 2026 09:50:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=c4lcSlhL;
 spf=pass (domain: smile.fr, ip: 209.85.128.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4853c1ca73aso11210795e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 Apr 2026 09:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1775148604; x=1775753404; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xw4dZl/Nc1BuvNFB42VO28KW+VqrSLNqytAC9udH+BU=;
        b=c4lcSlhLnJrUwg7DjBo38vPbAnGhvDZCto6IAz0ur1Ea3hKzlHLy7EzC1twmDZaZQT
         ZYW5j0mcwEtEKEacv7WhoZOuvR4hI2qf37Wiyzn8Eo0oyBpZzF6hSKYNg4HrWz/VcacT
         JUouYazAamOQ7F5ToFaeqld6Fm7GvqyctBHvY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775148604; x=1775753404;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xw4dZl/Nc1BuvNFB42VO28KW+VqrSLNqytAC9udH+BU=;
        b=R56m+NWRDzWGz+EEPYR/ZYldmXn3BaYxYqUb19ymaDFdfw5ltlhZNJvDn5W7dg885T
         VtZZ4UhgGJobQM+eycsGCLn+Fjgfhia34pc6q7f2Z6pSdZSLuZBYM3oOv01iXKojuela
         EmztFyM/WCVdGMlb2iB2Jwhfn9JOZBs1f35EXU1B9S6yosgk4RgfnZTnEUXKso6gClG8
         5AU7Tw/PP8l0mgsjzZ0tDsbi8908Jljcp/SJ7xUp5n7IC3ZkfVqtsVO3KT46sTKqOkB0
         z2jR5t8C0PyuHf1h0FRqOfQqbueknD9LJsszzPjArtNEGu6+Hej/O7s2yIoKmWL5CqKX
         bPWA==
X-Forwarded-Encrypted: i=1; AJvYcCWcftgGKTxnMtxEaMp6we0duV4kGTXz1zAK1qQP1ABW45NDGjSjk15Q0cXhQ5jETDVCwj3JOg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz+phldmqPjezcfPipun8vRVY6JFMNEU4q9rrhDfwktguxOV8d7
	lwU8pqb+6E7N/X2nSTaD77GRBzxVz+38Z7FHiqlBVKQO2j5ihpeJDie2hG0B+NNN56LnVaUIPtW
	z95U63Ig=
X-Gm-Gg: ATEYQzzbEDJ9k6YQ7a4Mqh7ICo60dnJ6XbY75v77xQD5kzB9Q9uPd1lpV17dmHtyo3i
	Ew9l1oqA5JECXCcG0DpOUoIjDtFEPo1rneE1qAsfvUBdo6u4Tgqx5+LiWZW5I3QCyrSlAGzg/Jm
	dA7Cj9uogOumfAPMPyFMIocDgVc1tIEumSutlahdFdzVUnj8vIV5WYx4C6/ft4WmCItx/NYT3Zz
	/NmuSiM3lVuMU/VnUgAY18cCvDRbT04j235YYqJG0c5uhtK6StoPIjdLt6WddTChCeVZUUInDWy
	gW9HC541kZUSIMJG/ljDNIPvWJBUHP5KViQI1aAIOG9MXlLL8BC3/5iPIRxmYNwUQnTnBpsZPHH
	AGayVvCD6Q4uADOgiJZKC0pfGm6LOcYVooLgsmMPQX8Y1S+wdidZUwZxWi927kOJ0k3FgjaOSfX
	mWjIK5kCGJZSz9WdgbKqMf3zOvEivE9W7FxcuhCpvMmp/kqNN2WcC+b7joaIBImocUQCYP/pDGK
	TQ8zYmz5hpFIto=
X-Received: by 2002:a05:600c:c04a:b0:47d:8479:78d5 with SMTP id 5b1f17b1804b1-4888356d8bemr108436765e9.7.1775148604027;
        Thu, 02 Apr 2026 09:50:04 -0700 (PDT)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4887c561750sm253047315e9.2.2026.04.02.09.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2026 09:50:03 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 18:50:03 +0200
Message-Id: <DHITNUCSBWE5.1Z4BV3SOBNPCX@smile.fr>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.17.rc1)
From: "Yoann Congal" <yoann.congal@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <0101019d4f125330-7e1f1d56-809f-4925-a977-4c36436ac0d5-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019d4f125330-7e1f1d56-809f-4925-a977-4c36436ac0d5-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Apr 2026 16:50:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66381

On Thu Apr 2, 2026 at 6:41 PM CEST, Pokybuild User via lists.yoctoproject.o=
rg wrote:
>
>     A build flagged for QA (yocto-5.0.17.rc1) was completed on the autobu=
ilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.17.rc1
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3577
>
>     Build hash information:=20
>
>     bitbake: d3b4c352dd33fca90cd31649eda054b884478739
> meta-agl: 6937866399dfbf3f37764522545426fde3f9f97a
> meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
> meta-aws: 78fc3cf6eb3c8f7501d1ddf05d1787c43526b11b
> meta-clang: 5bce7e26a38a58bb52242494e54ab2af40009574
> meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: 06f846a325fde423bb0a6d49d771d8c1e144d7eb
> meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
> meta-virtualization: 3dd635f613f7299d986a8ab6bc9f584370f8ed1d
> meta-yocto: c7c38663a1cafb1fa8593c0b246811e51d3bbe20
> oecore: 52380df998b3a8fe6a091f8547434a3231320a8e
> poky: 1e8099846661571ede077f533eb1b6c86818ddce
> yocto-docs: aa7226705451e6c1ef964d49963bbed29b267c27

This was an "all green" build, so OK to proceed with QA.

Yoann

>
>
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
> Links: You receive all messages sent to this group.
> View/Reply Online (#678): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/678
> Mute This Topic: https://lists.yoctoproject.org/mt/118636557/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


