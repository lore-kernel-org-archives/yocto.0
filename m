Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B45EE6FE49
	for <webhook@archiver.kernel.org>; Sun,  8 Sep 2024 13:24:25 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.29997.1725801857315880573
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Sep 2024 06:24:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IOQMtFgC;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42cae102702so11880785e9.0
        for <yocto@lists.yoctoproject.org>; Sun, 08 Sep 2024 06:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725801856; x=1726406656; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KSPwSTDI3S+vwdOt6HH/voVm5jksS/jsixpq/WZHJI8=;
        b=IOQMtFgCAaio+dSElxweIunuSldPnGlYQV2iZQu/POF2l9Kj1Ro6cyGABl3RnMTnZF
         kmfr7b/m0R0E9IPTuzRR06Qc18mITjZQQ8RxX9+rRtmvbB2on1LMo9Mocj0w1AtSRkrz
         lOvUsX/WwEAPu7yspsi5/f+bdUvJ8gX1xHVs8rX5vEo7/6rA4bXUxw05Gsrz3enPzzHU
         4PjCNvaup14OTc7eKM+QjswRn7ULhHUvKEZv+NcXyP9juxWgD+O51nrOCAPpRh/+4h+s
         E1cbMJQ4StmZi7kUjRH9TgyVjkqiL632hkynPTllFI94kG99G1O+WQy/gX7IRYEBqGKU
         ivOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725801856; x=1726406656;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KSPwSTDI3S+vwdOt6HH/voVm5jksS/jsixpq/WZHJI8=;
        b=DT+5ImcWyCMuqdZfh7movRoI2PpDpqN2o8bhCIHjQdXZ9s6rPdx6yeLN38G4OY/81v
         R6MQuI2rV/6Lzo5Sksdhf7E1PiX05NPd0Ada/xgw4P4KdsOq3y5jXHg3NzUl6MBMTcuQ
         88uNatktKzjikVWZpSoER/e3S/PHv0/apa0iIdAVAWSsPNzgylSdXiY3qeTjyFhjRDHd
         aEY346l1brVpRegydOo909PvLgGSZyDRabg52x+jB3eJBVdGVQoLeKVvwLLJnSV2SW48
         U/SL90TND5aEZ9k+0g4N6+fOLEB1sXv/P1VVTOfKddoLZIFiyeWrKfBB0byUp9mk3bH1
         G5Vw==
X-Gm-Message-State: AOJu0YzoFgw8ON9rflMKO3MIzl3I9PpDrm7oli+qk3vTlVrWCPh2OM+m
	PUvmZ8mWw+SgfM2octTzgT1QH9/iZ75r+3AybiDxVK6N1BjNO7b4
X-Google-Smtp-Source: AGHT+IEKjzQZsrwSEBZUs4NDmm9OuK08nhtNsSxxcLC7ys5bZPhMAfplIOBo+rfG92mooSR+LnYUTA==
X-Received: by 2002:a05:600c:4f88:b0:426:62c5:4741 with SMTP id 5b1f17b1804b1-42cae70a06bmr29598075e9.2.1725801854812;
        Sun, 08 Sep 2024 06:24:14 -0700 (PDT)
Received: from wsadrian16.fritz.box ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956de3f0sm3357258f8f.113.2024.09.08.06.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 06:24:14 -0700 (PDT)
Message-ID: <d3de9f84fdb01cfde504eb19489a61ff96736cbc.camel@gmail.com>
Subject: Re: [yocto] esdk devtool finish workflow
From: Adrian Freihofer <adrian.freihofer@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>, 
	radoslav.pesek@microstep-mis.com
Cc: yocto@lists.yoctoproject.org, Adrian Freihofer
	 <adrian.freihofer@siemens.com>
Date: Sun, 08 Sep 2024 15:24:13 +0200
In-Reply-To: <CANNYZj-7uC6enmSrjuq24A+UBOSuUJF=puW_RBqN8CcP9BN8fw@mail.gmail.com>
References: 
	<CANNYZj_MOsO3Vu2YRfB3njTS-RZBmnzduCS3QMtcMdnZOoaswg@mail.gmail.com>
	 <2927.1725630876196244404@lists.yoctoproject.org>
	 <CANNYZj-7uC6enmSrjuq24A+UBOSuUJF=puW_RBqN8CcP9BN8fw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40app2) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Sep 2024 13:24:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63799

On Sat, 2024-09-07 at 12:41 +0200, Alexander Kanavin wrote:
> On Fri, 6 Sept 2024 at 15:54, Radoslav Pesek via
> Lists.Yoctoproject.Org
> <radoslav.pesek=3Dmicrostep-mis.com@lists.yoctoproject.org> wrote:
> > thank you for the prompt reply. As for me personally, I am,
> > actually, using the yocto environment, as the yocto maintainer
> > within our project, but wanted to create esdk for the developers as
> > i hoped it would be easier for them to work with recipes and for
> > me/us to maintain it all together - as opposed to, for example,
> > each of us having separate yocto environment. My impression (from
> > all the documentation/howtos i found) was that this is the way to
> > go.
>=20
> I'd still recommend that you play with the 'direct esdk' workflow.
> The
> challenge for you would be to provide a well functioning sstate
> infrastructure, so developers never have to watch never-ending
> do_compile on their feeble laptops :)
>=20
> We're working on a 'single-command' reproducible setup of yocto
> (bitbake-setup), but it's currently in review/prototyping. There's
> also a prototype for 'oe-replicate-build' which would bundle a 'real
> yocto build' into a self-extracting tarball, like the esdk, but
> without the 'special' bits that obscure bitbake and make layer
> modifications difficult.
>=20
> Classic esdk bundles will almost certainly not be developed further.
>=20
> I'm also CCing Adrian as he's in the same boat as you are, and has a
> lot more experience with developing real products and giving
> developers a VSCode experience that's integrated with yocto. I'm just
> living in an open source bubble :)

Hi Radoslav, hi Alex

It is true that we have replaced our eSDK-based setups with Direct SDK-
based setups. A year ago, I had the opportunity to talk about this
topic at Yocto Sumit: file:///home/adrian/Downloads/yocto-summit-
2023.11-devtool-i_S04eDYy.pdf
One year after this presentation, I can summarize that it works much
better than what we had with the static eSDK installers.

We share the layers and the site.conf file with git submodules. There
is also a tool developed by Alex which will help you with that part of
replacing the eSDK installer without dealing with git submodules.

The second thing you need is a shared sstate-cache. This feature is now
available officially in Yocto. We do not use this so far because we do
not have a shared hash equivalence server yet. We use a simple, a bit
hacky script which downloads all sstate-cache artifacts before we call
bitbake.

@Alex: We should discuss this issue in Vienna. I think there has been
great progress in many areas. But I don't think there is yet a complete
concept for operating a complete infrastructure for distributing layers
and ssate-cache, which also provides security and scalability. It's
definitely doable with enough knowledge and maybe some helper scripts
and compromises as we do it internally or with a CDN without security
as the Yocto Project does it.

Regrads,
Adrian


>=20
> Alex


