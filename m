Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7D9AC7EE2A
	for <webhook@archiver.kernel.org>; Fri, 27 Jun 2025 20:31:51 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.574.1751056307942798187
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jun 2025 13:31:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=V0bgXq9u;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.177, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-70e4b1acf41so2257757b3.3
        for <yocto@lists.yoctoproject.org>; Fri, 27 Jun 2025 13:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1751056307; x=1751661107; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BwBtzMcy0EcNbiaT1cxQlPNhj476vRmDIWrXNFhceyI=;
        b=V0bgXq9u1pNgRz8vsPOqbeXWKp3RCKYuIAm1JgXs3SDJn5tUXoirJM41suLamqZHei
         vLiigiaR5NBaAoxmGpBqrFIMXMS8EnO2ZhG77ANG1BAHj6Dx1UbD/xvFrZkjX/g7AAbs
         BCBE924OzVKMHjIHvFOtdTiaYErR3T+XDy8oxTLuyI9yHgOVEGN9jXOMy9A6v8k9zDOu
         2XGGCe4HBnQxAzYJ296pIucly7vTodD/9VwUc558QEt1UNC8DA5L1eBY9h9OoMF+piH+
         +CpftU1v7f0Ey2d3IUADhjdF6hXH85ScYYm8ZQGHpD9VnyYEbrvSFNzTwOeOqevC27bl
         08uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751056307; x=1751661107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BwBtzMcy0EcNbiaT1cxQlPNhj476vRmDIWrXNFhceyI=;
        b=GPv+oSuuM9dKYKG6C/pPBaz5VZLRBh2hwHWpt+7rU6xjA0ZxcvF0d61da8/mKW1gcj
         Z9aIQVJFQraTqldYOEd0IcAH1TEbctyI83ila+ORYK56Rf1MAE2Ydjs8VO64886GOFco
         Z7ARIk9Fo5XHdrvzlb8PzaO4YHl+swWDp0WhuCvzXwZYm0NJZqaVstCrOURsR3YC+lP8
         mWUUDcsC29cyXG25+BmZh5prOz1X6jj/6lynPUMpe+hRRIH0qtcWXxz9jYqJq97RmdnH
         oA7c6pn+MnFHPmY7B7nJyQdaAqHhgi00lRyKIB5vU0zm3+bU/eg2afvSRQaeHRbVC7pm
         Au/Q==
X-Gm-Message-State: AOJu0YxE0jlDASFDtic15jV2Aea9Vcj/Pepiytvqi7s+bZI1kD2dnWnF
	+v5OKIw5wYsKdD6tunWadFOiCMkxrmYaVSt4cGum+icmH1/2mE1/6vKvVIDoVpFkXjk4LWwV9D1
	bxhql0OH8zVc1GMOKTHbXxLmZdDiM598h6KEoBfVs6aLpmEjD9743
X-Gm-Gg: ASbGncsOc0TDVkPHngV+6fjrbAfH1CVAA3rtDXmGpRhgjDwdqoeTzD8NghXKPyUGmzn
	yjLxvGa1GuH9J89nPdSvx2JKssuVddHLeN+Kg4A5e9g77JtA8SjMscNj58doXsug/Yas8WUp3eE
	C5ZlludA6lYNj/hqkBDjfTogU1/wb30fn8gPr/nDswMAoR7xrtra8hBuNJu+K4cxf4EgAlOQ7aB
	w==
X-Google-Smtp-Source: AGHT+IFcyNGWwEheEjmCLZtfm9qMpfSe6dVqD91ndpg5Bbsqip8IqoAtZ7BanC3YNYLTxdxsOEml7/Sb+ZDb/YKBaCQ=
X-Received: by 2002:a05:690c:ec1:b0:702:d85:5347 with SMTP id
 00721157ae682-715171bd0famr77782507b3.36.1751056306895; Fri, 27 Jun 2025
 13:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <01010197b2e383a0-0a867f4c-e19b-4f1a-9a6f-59e10ffc01ef-000000@us-west-2.amazonses.com>
In-Reply-To: <01010197b2e383a0-0a867f4c-e19b-4f1a-9a6f-59e10ffc01ef-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 27 Jun 2025 13:31:36 -0700
X-Gm-Features: Ac12FXyu8_AvWmUhgyhke-wE3LCLYDslqMMjCRy0OK0uYJlkmIFce_iDJ5tf8qE
Message-ID: <CAOSpxdaUsz=1wWg6joGW_F-EBoFBSRsOXvKoseRDD4JzSmamoQ@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.28.rc1)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jun 2025 20:31:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65557

This was an "all green" build, so OK to proceed with QA.

Steve

On Fri, Jun 27, 2025 at 12:35=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
> A build flagged for QA (yocto-4.0.28.rc1) was completed on the autobuilde=
r and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.28.rc1
>
>
> Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/bu=
ilds/1901
>
> Build hash information:
>
> bitbake: 046871d9fd76efdca7b72718b328d8f545523f7e
> meta-agl: d68bc4cb7cddeca1026a991ed405b9bec3d9179b
> meta-arm: 6b2d97cecd1b0e4bf4caee9a65595d279b57a686
> meta-aws: 12f6037467dc369f89629e1ce8d18d0a1bedde77
> meta-clang: 8a1d0a1993040ab9d2fb7259b71e4c9582f5cd17
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 95eb26cd3372439443acd1f4d4265989aadeca88
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 45bddd258a3d1ded925faf8389e01bb948dc7f5b
> meta-virtualization: 227cefa1261daf20b7d9737541994ec2bba629fc
> oecore: 75e54301c5076eb0454aee33c870adf078f563fd
> poky: 78c9cb3eaf071932567835742608404d5ce23cc4
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#564): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/564
> Mute This Topic: https://lists.yoctoproject.org/mt/113867803/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

