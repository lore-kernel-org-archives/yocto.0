Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 447DCE7F12A
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 21:04:39 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.2773.1695762268960909773
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 14:04:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZJi0THdM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4060b623e64so21289215e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 14:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695762267; x=1696367067; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xc9J/FxH8IO+Gt1O3WYy9+S8RkZko1/ddO+CklnCx+g=;
        b=ZJi0THdMqi7mxa5du+ZR9Iyq+rRgGhm7ST9Sl31TrLmRf5cqfZcqvEz8bM+c/Iu/j8
         Dfrz9hCt+5rJ6aG4V6yntWu7w0SuUh1ZIeslglCrf+2StH96C8NT/R/XoN3uGxk+C3rb
         ELVUC3UiasW4OVEOtxaPgW5Et7fYN6ajx6ix4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695762267; x=1696367067;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xc9J/FxH8IO+Gt1O3WYy9+S8RkZko1/ddO+CklnCx+g=;
        b=Osvj+hyn71PxYcA8lmM8o3jp9GFej/fu68ll80J0PS4pNT23T+rf8ROtaIb41KFTKm
         hT7DvIwbBAsx4pEvdlXBsbD7AnTkl8TEhoNxhZoyXRVK29ONdJYFVH6fo54qwzweTdEy
         iVYgYBfzaXBQn8BJmEBYGQkguLWgSDI2LugXFrAQHEhxN3szDcAsDZ1yEE6smW912Q3s
         2TkO7cIIsRRmoqwBHALWoE+o5czjqMdj5h/z8f1cO0GfHuNzfWkAKrG3qhav4DoJIB4s
         hQqRNdYe/4U/lIK5gIsFVmIAyPQYwpLojqJ0apUt8Ca3RMRmJhZEmld7IyjxU9xJvyki
         e/vQ==
X-Gm-Message-State: AOJu0YwUOhaYbNaeVJ2P4YzxvxYdaRZb255EIBPBGiGN3ziSyge+17fw
	QXm5Db+qe8M3lJJGwoDdlujnrQ==
X-Google-Smtp-Source: AGHT+IEe9PKnIGNbyWGhTrbCm6gt2L9mJiLkmmsvB6eh5xuoq3RlNDpejtG3f7xBWmjrad2xjqme4Q==
X-Received: by 2002:a1c:6a04:0:b0:405:19dd:ad82 with SMTP id f4-20020a1c6a04000000b0040519ddad82mr13923wmc.16.1695762267112;
        Tue, 26 Sep 2023 14:04:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ab67:eb18:db89:ef9a? ([2001:8b0:aba:5f3c:ab67:eb18:db89:ef9a])
        by smtp.gmail.com with ESMTPSA id 19-20020a05600c229300b00405953973c3sm5383149wmf.6.2023.09.26.14.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 14:04:26 -0700 (PDT)
Message-ID: <2cdc97fad001fff58d54e1f71eb660ccf94c01f7.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3_M3.rc9)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Tue, 26 Sep 2023 22:04:25 +0100
In-Reply-To: <0101018ad34ba5d6-27fffea4-4223-4f49-9cd9-834c99ca18f0-000000@us-west-2.amazonses.com>
References: 
	<0101018ad34ba5d6-27fffea4-4223-4f49-9cd9-834c99ca18f0-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 21:04:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61132

On Tue, 2023-09-26 at 21:01 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-4.3_M3.rc9) was completed on the autobu=
ilder and is available at:
>=20
>=20
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3_M3.rc9
>=20
>=20
>     Build URL: https://autobuilder.yoctoproject.org/typhoon/#/builders/83=
/builds/5949
>=20
>     Build hash information:=20
>=20
>     bitbake: 612bdf09416ff96d08b22cf92b077516d23d0963
> meta-agl: 4a14356a535dcd47f16f788ac830d0d03457c9da
> meta-arm: be9bbaa16ed0d60490fb8f915fc48e40d14478a5
> meta-aws: ba6a653f0b5a4fa55e71646f0fe1fd0673d2c947
> meta-intel: cc04677a2717be485bf9cecf4a3d48f8a1e601cc
> meta-mingw: 65ef95a74f6ae815f63f636ed53e140a26a014ce
> meta-openembedded: c40aebd422e60126c3b18e35c20a1cb38a795a52
> meta-virtualization: b65fe24b8cbcf8797f31d058a79f8a21985e955d
> oecore: 1adf70729dafc9729e665986ad2e2250cbd25c5b
> poky: 6cb490713ed30f1f13d25978aa0d377ce66b1861
>=20
>=20
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20

Please ignore this email from a QA perspective. The good news is the
URL addition worked but the "failure in the step if the QA regression
report failed" changes didn't.

Cheers,

Richard

