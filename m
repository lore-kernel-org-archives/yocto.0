Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A43CCD5BAF
	for <webhook@archiver.kernel.org>; Fri, 22 May 2026 04:26:12 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10587.1779423965935911508
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 May 2026 21:26:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=ksxyxMQy;
 spf=pass (domain: smile.fr, ip: 209.85.221.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-43eb05b1875so3797269f8f.3
        for <yocto@lists.yoctoproject.org>; Thu, 21 May 2026 21:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1779423964; x=1780028764; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Idf7EydLQ3Ks55sC3kTk1OZSrb+quIBJt+pPaMii75I=;
        b=ksxyxMQyEWYStsJHQFHm9954Rfj4CIn9wiKt8SHDBFuMATfO1BT0v/6fSzS1/n6wbW
         rfG6fQbZ3CA+Q11Izc11oeqHlcgo/mKtZoXxEwbq9m10dtpo7VAMJhGzSesurD8L8AWw
         WVD5cInHmc2FV9pK4B3vrIEw0sP1iusFsEQbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779423964; x=1780028764;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Idf7EydLQ3Ks55sC3kTk1OZSrb+quIBJt+pPaMii75I=;
        b=TkDPUsWAIEl9D+94VAdFfWRk4fXVDCIQj+lqj8qRV6tKyRYJElbO2pn1JlwHYGqMsk
         Gyww+RGKwKLj48wYh3enhDMT/LmCrOwjAkbK2XA15pOoSq1qRj43uwkEeO3D1rHF7qyS
         mqYcXinmfWUYAfx7GmWo6K5OLj8twoWSRwwWoKyHBAUXPHTQorgfZbdLfAzC/oHFfdAn
         SO7wf0l0XckucHTDKmEOOtK9u6ka71VgVr2T07+9bxIBdtv1aSHFBoAztX/s2/HclVrN
         9801SmYrH8GtF+ZUwD2JR/y2a08L/RQvYZ9PV9zR/dEbNBuiZGQb2VzGWqSyrnl9hn36
         /h5A==
X-Forwarded-Encrypted: i=1; AFNElJ8oGXegr68hc/Kg+y3WBzjyYupAoaYDGL9U395l/x/K6xZJdrY7/Mc4e+gx0oRUws2z1AkheA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzFXRVX15auQ7pZURDAu+veB30dRMa7A2kHFyPfyzkhO+EwPs8F
	h4er9sWvs81I+gMQIiBSgdNz/IbUVU/myTecR+bZYhTMuB4WNCon26qr/OwzahydE+I=
X-Gm-Gg: Acq92OH3/z0a8ypGW2R5eetGPUVTINQP4WU8BHN9kxf/fYKii5knHHQXD/06TsBMegC
	nTmLaMuwX8dX0VImXDIxApTgadr5+WGxefkUNyt0KpyLiADhgtzqtBrrkIje6FcKw1D+UGENURK
	AWsLybftTpPMir2MEaeM1mnAuRMgp87CPL7eUKFG7K98tr/OreI3z5pwLmChszcCCv4wXJ/xtV5
	ptn98EXEfV7QiqN8pP6d/4gD4XicoL9I6Obs8V7Sa3+5noRvK2Idj/C/ehHH/JyRHuTha5PJ6tU
	4vk5YGLPlvEbvQH2SxKS5mleOBpTn98bd4Mg1/g5oauPl6RBmOIwtuM2xJM5haSmvbWcB8qeHyv
	6uqSC4uxNi/h7uJMp5wOZzaLb1jlTW2gz3OgP8A07F7jqIuGQxGtEs9tm41vJ7TRiRYoNQNhzAR
	jNqaWVfxmW0cRHS13FGjffwnFgRhRkEIAwB3pZ3LFSHut60/wuypdY3E07rYfPb8ruzVK5B89Cv
	Y3oLmwpJ3nYrQ==
X-Received: by 2002:a05:6000:178c:b0:43d:6f0f:32fe with SMTP id ffacd0b85a97d-45eb38b86demr2282150f8f.31.1779423963908;
        Thu, 21 May 2026 21:26:03 -0700 (PDT)
Received: from localhost (2a02-8440-250b-4fe0-9468-ed09-4319-30fe.rev.sfr.net. [2a02:8440:250b:4fe0:9468:ed09:4319:30fe])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45eb6bc5479sm1228747f8f.0.2026.05.21.21.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2026 21:26:03 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 22 May 2026 06:26:02 +0200
Message-Id: <DIOX5F8ULSE6.1RNKJYPBRIWFI@smile.fr>
To: <qa-build-notification@lists.yoctoproject.org>,
 <yocto@lists.yoctoproject.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.1.rc4)
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <0101019e4cff17e6-5c625f77-2121-4c24-ac64-423227cf3775-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019e4cff17e6-5c625f77-2121-4c24-ac64-423227cf3775-000000@us-west-2.amazonses.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 May 2026 04:26:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66578

On Fri May 22, 2026 at 2:04 AM CEST, Pokybuild User via lists.yoctoproject.=
org wrote:
>
>     A build flagged for QA (yocto-6.0.1.rc4) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-6.0.1.rc4
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/3859
>
>     Build hash information:=20
>
>     bitbake: 22021758e66737bcf68dfd2b74adc6a0cb1d42d9
> meta-agl: a0e79e40abd8a48e1e2256e447db56ffad21b463
> meta-arm: 052c2cf333ecf16fc2ded4c5d09749ebaff8c0c5
> meta-aws: 8bc16e7bb3fa0eee9a96f0d93fdac0b2fd978933
> meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
> meta-intel: 55e0ff278f7040dff5e453c509357820e8ce4c9b
> meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
> meta-openembedded: 9af4488d46cb4fd4c0d2d64820c86225ebd6ac71
> meta-qcom: 531d7c4f5225aa88f23826c0746638efea24665c
> meta-virtualization: e1bdfe90563487f0a3253cd4b0d5bb7fa5194d83
> meta-yocto: 8251bdad5fda780a000fb41e6eda82eadf0fa39e
> oecore: 06dd66e6220e5ce4ed4b9af4d8231ae5f0a8ce80
> yocto-docs: 7ac955621b36a221126cd40f12c41fa98c213a24

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
> View/Reply Online (#712): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/712
> Mute This Topic: https://lists.yoctoproject.org/mt/119434374/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/14721440/4316185/830777862/xyzzy [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--=20
Yoann Congal
Smile ECS


