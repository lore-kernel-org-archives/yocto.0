Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F17C2C2BD09
	for <webhook@archiver.kernel.org>; Fri, 12 Jul 2024 11:49:11 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.5770.1720784949080752880
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jul 2024 04:49:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=To6wZOCt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52ea5765e75so2216398e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 04:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720784947; x=1721389747; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RWsyX6fjC4WXAMev6tuxwWMwblchSgMEQ0QJFaZj2k4=;
        b=To6wZOCtTjOuOwE3bb+Sb80G7DcKYDSGU7jLo1hEXS1KHAu00YfZ/XetYrLed/a/oN
         7/MP+hV9QwF4JomQnVwsViYEtn3h2wI37f5/egHm48vlf5ufv4S6xPMi+SGpBdw6dCt9
         fXlkajCXPJHMdqxGyHgP+wESZKaadHULyl+GI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720784947; x=1721389747;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RWsyX6fjC4WXAMev6tuxwWMwblchSgMEQ0QJFaZj2k4=;
        b=eMdMW/aA7wYYuUPk8F2PZ4i6wGwOhAgbTSAcblLi8tpsoK+H2oHp4vF+gLwjfE306W
         bIv3v3m9wzsNOF71ssj1HMff9xsdLIas1hUIdSZz6OR7K0edEWSVgVy6He2O0swryoni
         C0ari0Q9ckkVlZO3iHxFqGuhaOMo1EWYmt80gcIvmiW/POvEotqZ9ONHjmVxZicjIc8L
         ZWuDImY/GSXWUlONLNiwFXbXX1PaggQEHlOalOQCvLNikWhBtxWRyR1R4oaV+a6ukDEM
         D2MvfAEyGxJ0pH5mETjYUpNfY7wW5cN4Gnmax3Cx9OMcVCEcREqWiQlMxjS3w8PQx2cS
         Y/8A==
X-Gm-Message-State: AOJu0Yz2Jy/zuqE6WQ6KNnob3XhkZiwx1E8MHGZvM2iaNu3nSfAWh515
	mDiRayNFtGeOMh0cOCoGTCXKRgp6EsV63Ohm5WsBfwReSlnuLrDakdoMQO7XSocf/0Ej/zChiWR
	G
X-Google-Smtp-Source: AGHT+IH3PSATzENCaGMzPmoBVMkSy+YmST4dmORUJmUgxvCFxw/n1g/fHX0V/PMXVfOwf88dnoDvDA==
X-Received: by 2002:ac2:57cc:0:b0:52c:892e:2b26 with SMTP id 2adb3069b0e04-52eb9991397mr6237575e87.2.1720784946854;
        Fri, 12 Jul 2024 04:49:06 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:c138:9d7a:7e79:ba70? ([2001:8b0:aba:5f3c:c138:9d7a:7e79:ba70])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde891e4sm10050029f8f.64.2024.07.12.04.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 04:49:06 -0700 (PDT)
Message-ID: <689b928c15c976198dea9c12839f28594de4559c.camel@linuxfoundation.org>
Subject: Re: [Yocto][QA] patches : QA Issue: Missing Upstream-Status in patch
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, peter.marko@siemens.com, 
 "ycnakajsph@gmail.com"
	 <ycnakajsph@gmail.com>
Date: Fri, 12 Jul 2024 12:49:05 +0100
In-Reply-To: <AS1PR10MB5697F5E6530BC9C8F0836443FDA42@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
	<CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
	 <AS1PR10MB5697F5E6530BC9C8F0836443FDA42@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jul 2024 11:49:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63480

On Wed, 2024-07-10 at 14:02 +0000, Peter Marko via lists.yoctoproject.org w=
rote:
> Following distro config did the trick for me half a year ago when I
> started our migration to scarthgap.
> ERROR_QA:remove =3D "patch-status"
> WARN_QA:append =3D " patch-status"
> =C2=A0
> But I would not recommend to use it as permanent solution.
> Rather adapt your toolkit which backports patches to add proper
> upstream status flag.

Whilst I have the concerns others have raised about disabling this, I'd
like to make more people aware you can do:

ERROR_QA:remove:layer-mylayername =3D "patch-status"
WARN_QA:append:layer-mylayername =3D " patch-status"

so at least you isolate this change to your layer.

If you do then change other layers, they then retain the sanity checks
needed for acceptable submissions.

Cheers,

Richard


