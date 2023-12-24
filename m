Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9DF1C46CD3
	for <webhook@archiver.kernel.org>; Sun, 24 Dec 2023 09:24:36 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.24215.1703409875410216316
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Dec 2023 01:24:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gng3xGCw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40d4d9d9b77so12870725e9.2
        for <yocto@lists.yoctoproject.org>; Sun, 24 Dec 2023 01:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1703409873; x=1704014673; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SuOfp3+/77x/Xt7tGtRhMjXcnk+N/HmLsYamuZE5HOw=;
        b=gng3xGCw6nqjUPACqObI10FFMv3+8jxHfCLZPgFiMsdCLOSaPkoZ1CfODclPv4tyOt
         xiOMM/4OIyrWciKxgAE60/M4qBQxWD2WoZlXDbGIyqS2U9jqri+hRbvgH9JeVicIxlIz
         Zx2Yr3qYuqlbKk2gIBIkPAtV3XYq48Sdn2T5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703409873; x=1704014673;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SuOfp3+/77x/Xt7tGtRhMjXcnk+N/HmLsYamuZE5HOw=;
        b=NWIoKPumkJ8pVh8cfo0FOUKAmLKUWuqxJst5ILK2aG8Sgumui/OqrlOlMN0G/jx7yQ
         SwkR0UIS6UChiY+otYuV/YRpo9RlruaZmiSPau8ysxj2YTC5yP4JgR4Ksx8MtX6hUh31
         i/Uy37vLbceHsx8xKv2WS4zmO+GZPYisJuVelSMAAZ7+O6XAW5bxlKH3b91BKPndADaR
         Mqgt0cRAaqT6UA6COWWVTWygwssvZ4lf/HJKpfjEfm+S28B2DY8AtvLVM4w2k8HjxU0f
         p7rG9TBZLQS+SWQigPgd1P2tymB08L8LQ1oZvMoqbBJl+UNUBctTbsOVLYHNLhUCg2NF
         HN5Q==
X-Gm-Message-State: AOJu0YyOA/A6eBLll9j5QRmA67I9STLZQbetego8YdeFwMCpoGDT41e9
	w/kJs1gUnX9ZDfFC5AnkcmaUbunwTGpUC4XzU3tchHwZtjA=
X-Google-Smtp-Source: AGHT+IGQJ+yXxLu8dZs17/h8AD11IKHbxUipB6aWKEqMUS1kD+I5dX2eLIuH4jbCyyr5HMBO5wZWAQ==
X-Received: by 2002:a05:600c:4f46:b0:40d:50a7:a62f with SMTP id m6-20020a05600c4f4600b0040d50a7a62fmr1390309wmq.50.1703409873333;
        Sun, 24 Dec 2023 01:24:33 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:1c79:d2f:79ae:73e3? ([2001:8b0:aba:5f3c:1c79:d2f:79ae:73e3])
        by smtp.gmail.com with ESMTPSA id h5-20020adff4c5000000b0033668b27f8fsm6679850wrp.4.2023.12.24.01.24.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Dec 2023 01:24:32 -0800 (PST)
Message-ID: <b94e8b6ccdd6692c95f683ed878e3d0335ba4ec5.camel@linuxfoundation.org>
Subject: Re: [yocto] CVE Scanners and Package Version
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Date: Sun, 24 Dec 2023 09:24:32 +0000
In-Reply-To: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Dec 2023 09:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62032

On Sat, 2023-12-23 at 02:47 -0800, fabian.hanke via lists.yoctoproject.org =
wrote:
> we must provide a SBOM for our Yocto based product which will then be
> used for (internal) CVE scanning by the security department.
> Generating the base document in cycloneDX format is fairly easy
> (thanks to the nature of Yocto).
> But we do not know how to include information about CVE patches for
> each package in the document. Not providing these, will cause a lot
> of =E2=80=9Cfalse=E2=80=9D feedback on CVEs for specific versions which a=
re already
> patched (but version number did not change).

https://docs.yoctoproject.org/dev/dev-manual/vulnerabilities.html#vulnerabi=
lity-check-at-build-time

The cve-check tooling can check which issues are present and which are
fixed in some way so that information is there.

>  This problem was also mentioned a few days ago in the presentation
> from David Reyna:=C2=A0https://youtu.be/PegU1G1bA80?t=3D1127=C2=A0. I lik=
e the
> proposed solution of adding a vendor specific string to the package
> version. But I'm still wondering: How would the CVE scanner vendor
> know which CVEs are included in a yocto specific version and which
> are not?

The data could also be written into our SPDX SBoM information, offhand
I'm not sure if it is already or not.

> I hope this is the correct place to start a discussion (if not please
> point me to the correct place):
> Does anyone else also have the same problem with false feedback from
> CVE scanners? How do you deal with it?

The project has been focused around the cve-check tooling and SPDX SBoM
generation. If you want to use that data we'd suggest you extract it
from those sources as the proejct iself doesn't want to try and
generate multiple different output formats.

Cheers,

Richard



