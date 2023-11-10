Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAF3C4332F
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 16:27:06 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web10.31747.1699633619671371273
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 08:27:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dxti5fCx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-408425c7c10so16840345e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 08:26:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699633618; x=1700238418; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DHuhw/pxq5u/RV8jhDvzPjtpE5uOgWKsmRYMWt5W2OI=;
        b=dxti5fCx1QwA8MuZWZKDsHasqev/jcXAVFrCTFY3CbX4YKHoLkwCrdTXd9B0fX79zK
         Vspd6OhY2UlAYE6enRiURbw6Wyqyod1AQtYXSKxKYYRqb5ZbzEG58+uD5x6YftDubCvq
         iZ56dm42MxUkkkGeLiKQbCdsdsqsMek5UBqfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699633618; x=1700238418;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DHuhw/pxq5u/RV8jhDvzPjtpE5uOgWKsmRYMWt5W2OI=;
        b=Xy36naCTbeMwmngXT/3oDp/wQwBU23gklYWHODpl9655T+JJOAgtG+K3dBVdHRcHQG
         A8MnwuM6phELTOFpPJt6sdPnyfF6+LByd7sh2DGWNmVMhNLN8kvEbpkpmYB3gl4i/9QA
         wEis32i0YAuNpHuRlsJ+tmkjTLh+iNqiPhHfeMuFKHYUkVuFijvEpttvztA4/gl1zwMJ
         WCNb+atrIikIjGFgi+VICNFcZMwO7TQqJXwPyMx+A3dlrDgTJcVinsEnb2PyD7k/S/qz
         HnJEQP5D4xenhNNls1cvrMnNvLCyXk2UK2PkZzXKOXCWfBtOJqypEG+dnow5ny9/CE4o
         dBbA==
X-Gm-Message-State: AOJu0YyDTiSJzg1SGF1rBgDSrXHjRT1DQZks9u47XqYt4rd+esIqjhnO
	raNP268+ik29owydRIhpiGF5kQ==
X-Google-Smtp-Source: AGHT+IHO9uY2uHHDTZtI9M21YWAogDB+BZzCN4Jj2OwS0e5k1pFbJcCemeF2/PIfBf0hjyy9+++XwA==
X-Received: by 2002:a05:600c:3782:b0:408:59d4:f3d8 with SMTP id o2-20020a05600c378200b0040859d4f3d8mr7979190wmr.18.1699633618064;
        Fri, 10 Nov 2023 08:26:58 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:3703:3761:dd76:7c61? ([2001:8b0:aba:5f3c:3703:3761:dd76:7c61])
        by smtp.gmail.com with ESMTPSA id p17-20020a05600c469100b004064e3b94afsm5718030wmo.4.2023.11.10.08.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Nov 2023 08:26:57 -0800 (PST)
Message-ID: <97046710f71b6c33e7da08ee9497d15fb5e300af.camel@linuxfoundation.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 4.3 is Released
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: michael.opdenacker@bootlin.com, Lee Chee Yang <chee.yang.lee@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Fri, 10 Nov 2023 16:26:57 +0000
In-Reply-To: <0dc758ee-2e07-436a-b274-f1b25c847bee@bootlin.com>
References: 
	<CH3PR11MB809364115B3E18ABF048E076B9AFA@CH3PR11MB8093.namprd11.prod.outlook.com>
	 <0dc758ee-2e07-436a-b274-f1b25c847bee@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 16:27:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61652

On Fri, 2023-11-10 at 15:57 +0100, Michael Opdenacker via
lists.yoctoproject.org wrote:
> Hi Lee
>=20
> On 09.11.23 at 16:29, Lee Chee Yang wrote:
> >=20
> > Hi
> >=20
> > We are pleased to announce the Yocto Project 4.3 Release is now=20
> > available for download.
> >=20
> >=20
> > https://downloads.yoctoproject.org/releases/yocto/yocto-4.3/poky-15b576=
c4101231d248fda7ae0824e1780e1a8901.tar.bz2
> >=20
> > http://mirrors.kernel.org/yocto/yocto/yocto-4.3/poky-15b576c4101231d248=
fda7ae0824e1780e1a8901.tar.bz2
> >=20
> > A gpg signed version of these release notes is available at:
> >=20
> > http://downloads.yoctoproject.org/releases/yocto/yocto-4.3/RELEASENOTES
> >=20
>=20
> Many thanks for the release. Maybe fore the next major release you could=
=20
> mention the HTML version of the release notes, as well as the migration=
=20
> notes, as they were available when the release was made:
> https://docs.yoctoproject.org/dev/migration-guides/release-4.3.html
>=20
> That's a little better than the raw rst sources :)
>=20
> For release updates, I'm not sure that's possible, as the release notes=
=20
> are usually available in HTML after the release is made.

There is always the option of tweaking the process to change that?

Cheers,

Richard

