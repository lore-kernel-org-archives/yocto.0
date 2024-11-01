Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FD6E674B0
	for <webhook@archiver.kernel.org>; Fri,  1 Nov 2024 07:52:23 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.32395.1730447538627470803
 for <yocto@lists.yoctoproject.org>;
 Fri, 01 Nov 2024 00:52:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BppGrdR+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-37d4c1b1455so1154989f8f.3
        for <yocto@lists.yoctoproject.org>; Fri, 01 Nov 2024 00:52:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1730447537; x=1731052337; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9eUDMpdIV2DSyLkLFUITeRds55uYhyU8bP5moofaE8=;
        b=BppGrdR+x4grl14Ne9rs++MID9CbEwppBQY4t9ofNaSX1oUK6OH2+i0HejR0ph0HF8
         8wF9IrshewDNIv1NjftCfJnb9c6VEcIeIK4dQfjpFeq1oV/NAV1ORtQt4jDPjUK8oyAo
         cJ8W+4L1nIQxW7Zf7+z1pHvv7xCvJGmf853kA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730447537; x=1731052337;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y9eUDMpdIV2DSyLkLFUITeRds55uYhyU8bP5moofaE8=;
        b=ODIUPL6U6QyPZUw6AYoZfhw2/rbYt+/t3oQDQ0LCoHli0OApQMngDJzY7QZttvVftT
         vP8dMpnwBTZwXXoghF88awthiB/GGmKf1+gYliHjXESEfyAyjwSIIf+N7OdMCaq93Xyv
         thOdAnD6raQh7jzNM1nUeHywS2lyikDMSkgPADLdRcuQkM3+AUSg65eJycyPhEUS7ZaV
         pUEmST4igq8YidoL5teCHeCZl7HPzIvV74JhbegHEdajPriLRcYfZYjXDWviIw+0BaHX
         iTQUq6pvWC0ahvmcuVdFUq0fAhMO2y3lHuj9/UFXNA3pevclhlEteIw4degVfeOvyUtW
         68Xg==
X-Gm-Message-State: AOJu0YxcLlNuySGXL7MYPy2GxsJLrWYWrFnk2+pCdaOiJtcQrWkrc3v9
	VFHwperbqSW3VPiCpBp4KWnSZPM8UkmdzuxBJkMOh7eidVMQgJDAc0uDEb9Bz24ihGE+d+IHiFp
	gG3M=
X-Google-Smtp-Source: AGHT+IEBMhE5yxF/3OBwu33neK7PDw160t3uofWcn3cwgBZqmprQRCfiZceZjBuEoLKtkkL/z5ANgA==
X-Received: by 2002:adf:e2cf:0:b0:37c:cc4b:d1ea with SMTP id ffacd0b85a97d-381b710fbe8mr7948337f8f.53.1730447536727;
        Fri, 01 Nov 2024 00:52:16 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:19be:469e:bfe3:503? ([2001:8b0:aba:5f3c:19be:469e:bfe3:503])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381c10eaafdsm4273662f8f.63.2024.11.01.00.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 00:52:16 -0700 (PDT)
Message-ID: <7179c6c8b17fda7a9916a670c1bb127397ff0aca.camel@linuxfoundation.org>
Subject: Re: [yocto] qemu-system-native fails to build with buildtools and
 certain host packages installed
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, email@matthias-proske.de
Date: Fri, 01 Nov 2024 07:52:15 +0000
In-Reply-To: <9791.1730446919931332613@lists.yoctoproject.org>
References: 
	<2b22b133425c602519f5dc6cfeebfcab1f230676.camel@linuxfoundation.org>
	 <9791.1730446919931332613@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 01 Nov 2024 07:52:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64200

On Fri, 2024-11-01 at 00:41 -0700, email via lists.yoctoproject.org
wrote:
> On Thu, Oct 31, 2024 at 11:44 PM, Richard Purdie wrote:
>=20
> >=20
> > On Thu, 2024-10-31 at 15:13 -0700, email via lists.yoctoproject.org
> > wrote:
> > > Should the recipe for qemu-system-native be adapted to filter out
> > > libkeyutils? This doesn't seem to be straightforward as it is not
> > > an
> > > existing configure switch.
> > > Any other thoughts on that?
> >=20
> > It shouldn't be finding keyutils and ideally that should have a
> > configure option. If it doesn't, we'd need to add one and disable
> > it.
> > Hopefully upstream would take such a patch too.
> >=20
> > Cheers,
> >=20
> > Richard
> >=20
>=20
> Thanks for the quick reply.
> There is a config switch for libkeyutils and it works for me - don't
> know why I missed it before.
> I'll prepare a patch, but I guess that should go to the openembedded-
> core mailing list.

A patch sounds good, yes please. It should go to the openembedded-core
list.

Cheers,

Richard

