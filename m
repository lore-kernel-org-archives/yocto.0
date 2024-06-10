Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F317EC27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 11:22:40 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.16996.1718018551990869643
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 04:22:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Zqim+j1n;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-35f24fabb81so675513f8f.3
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 04:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1718018550; x=1718623350; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kYC5F2Lfk2kUzPNJtBgBco8lnamjzIj2p41YHgklygo=;
        b=Zqim+j1nAg2BZy6kRc5sbKdqSaysLk59mfJY42gDo5btEjMCDmbqtcNeGB34J7Bqx7
         ZSzKkLDT8MsOHaE6im5aSV4WGaPirUGvUFCzQ5P7JDij6Yg6l2l83nYmszCud1INtWj0
         qUSfaLATM1Awfojvf/FXTP+qD8ABsBfa5VfJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718018550; x=1718623350;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kYC5F2Lfk2kUzPNJtBgBco8lnamjzIj2p41YHgklygo=;
        b=tCzf4nOguz9niAkiZzE84PWCz5Xu9KPpJnAMyqPKFwCbRWR9yH+uaCwDXwoip7de9O
         /8NlyIZ16RU+7rZpJByQnfopX+FRxoPxAPKIJPodRIIoZQaENoKSBaj8oS5OO6+XFHBc
         BoUQIeIL1FFwooOZ9E8V87zvJDwcOb5JVT1onmcwWts/EMz2EqNaJXoL7ivVEwGvORhe
         lVIni2SiY78YFg3riGk3AvHoALGImwbIKMVa5ciLaYzKnzy9ls7J2EAAKZmxeSmVJA66
         1vAbwBysPYjoBMtVA2QZK3WKn2I2oVFNFaKYdHKInyns19dDyZ1Hz7dERGKCpMKn/i+P
         BrHA==
X-Forwarded-Encrypted: i=1; AJvYcCVZZEfB0KUNTxVo1i1FKTDu/MEBI5fejZEES8kbBEvdvz2ds+2VGFb86G0DgsfdBQ0oevOEryHco9EnEm7LsohGj7JRIu6C2ZVmwPhe
X-Gm-Message-State: AOJu0YwVnXglRBIwPMYqhYE9qtiBFVrF8Lb50kkG2KIQPgeyN7fmpqjR
	+RZR1seaceuqJ7x/hsqfW7ok6S7iYFh+S7dRfUGmsaGh1IAH3iUuCyJAT8dwEqI=
X-Google-Smtp-Source: AGHT+IFLHWGE54jNM0I3k4wFJkjhswmKldUpslyPk+OEuNXucZSaRNw6PKV50I0DnsS1M7PKQE2mwA==
X-Received: by 2002:a5d:42c8:0:b0:35f:1f19:594d with SMTP id ffacd0b85a97d-35f1f1959aamr2563210f8f.33.1718018550314;
        Mon, 10 Jun 2024 04:22:30 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:fc3b:77d4:176b:a54? ([2001:8b0:aba:5f3c:fc3b:77d4:176b:a54])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f11cc5061sm6377363f8f.5.2024.06.10.04.22.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 04:22:29 -0700 (PDT)
Message-ID: <17fdbe98636e4e93ba2f7dfd52e294d2fb479ff3.camel@linuxfoundation.org>
Subject: Re: [Openembedded-architecture] [RFC PATCH] bitbake-setup: add the
 proof of concept implementation
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alex.kanavin@gmail.com, bitbake-devel@lists.openembedded.org, 
 yocto@lists.yoctoproject.org,
 openembedded-architecture@lists.openembedded.org
Cc: Alexander Kanavin <alex@linutronix.de>
Date: Mon, 10 Jun 2024 12:22:29 +0100
In-Reply-To: <20240502105745.3073153-1-alex.kanavin@gmail.com>
References: <20240502105745.3073153-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 11:22:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63305

On Thu, 2024-05-02 at 12:57 +0200, Alexander Kanavin via lists.openembedded=
.org wrote:
> From: Alexander Kanavin <alex@linutronix.de>
>=20
> For the rationale and design guidelines please see this message:
> https://lists.openembedded.org/g/openembedded-architecture/message/1913
>=20
> Left out for now but will be done later:
> - config fragment support
> - tests
> - documentation
> - official configuration repository

I finally got around to looking at bitbake-setup, sorry about the
delay. For some reason I've been struggling to want to start thinking
about this!

My initial impressions are really good, I think it is a start down the
right path for what we need. I've noted down my thoughts as they came
to me:

From the init command, it isn't clear what build.sh is for. I think it
should also mention the traditional build env file too, make it clear
where that is.

I struggled to find the --build-dir option to init, I tried to specify
a direction as the next parameter but that has to be named.

For the cloning of repos, I wondered if we should have some config file
in HOME with a pointer to a central downloads/clone cache? The
autobuilder will certainly need something like that. Whether we could
use a common cache with DL_DIR remains to be seen too.

I'm not sure I like the build config being moved out the way when
updating. The tmpdir "ABI" and conf file versioning should protect us
from the worst problems?

Also, once you're "in" a build environment, can we can bitbake-setup
without parameters, i.e "bitbake-setup status" and "bitbake-setup
update"? Effectively that means teaching init-build-env about the
environment it is in so that bitbake-setup can then read the right
config from the env.

For demo purposes it might help if we could add a "poky-ng" config,
which would be poky, but built using the config from the individual
bitbake/core/meta-yocto/docs components. That shouldn't be too hard to
add?

I'll be experimenting a bit more but I wanted to give some feedback now
I've taken a look.

Cheers,

Richard


