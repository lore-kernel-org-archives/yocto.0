Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CC80C4321E
	for <webhook@archiver.kernel.org>; Tue, 29 Nov 2022 13:00:48 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.148863.1669726839699849793
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 05:00:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=e7R30HoH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso10746978wms.4
        for <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 05:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RREwh7QbVPW+ie/JU281YWmPGMHjjgQaxb/ioucpFzc=;
        b=e7R30HoHau7z16sdcVRZ5k6SbCuBr0qFRhoh9SiCvJolbTVphxc/P+Wip23bkQTLZ2
         Dw5Q7nez00pev7p9XR3irWyV+VozIp01TCYLgpgHycB3gzliCH2NJhvKdno5LKlh6rPr
         qo2RwhfNlzt95yDB5wPR2iEOoaq8BNmhbTVwo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RREwh7QbVPW+ie/JU281YWmPGMHjjgQaxb/ioucpFzc=;
        b=WnJhvihAhi+s4oXoKdFEH4rvRijcbm7xB1wZ42YW00t5ygXgmP1f5psEUsXi3SUY6m
         CtVfFOtDeTjymPf5TlQyJEmJEf+KZ9mMmZMDuxSmE+MUTY3y9/MEp/hKscAs0gsNSUC6
         vKLN6oiLJX30b9cnJnUsSX32HSCsGbiJBlUMmUWARv6fe517ne3g16vf8x0RIeH5hYUp
         OdcGdvxsQbU4NKDRjETBLVPGsmMB2oVwyX//cHEDI3hExRcQUbrasv9ngWbZtRXiUbXh
         8OfyE+SPnj+k4hThAhrqfpQcAHzMotFkFFiEzbe+ki/dTBFOl09aC/JG7Eq2asrz9RCW
         jUNw==
X-Gm-Message-State: ANoB5pnxeVZ/cacMmMpgZh9QIghiQji1rdHGjSWtSW0B1UMtvweLa1lH
	vbYXTUfBWjT7uv9unjVv2o509A==
X-Google-Smtp-Source: AA0mqf68q0Ns8QI8rKMSAmpN5BR5AyHwb4NF0ZEfGKktU4PZOBmMNkh/8uWojq5JmrV4FoIhppEo+w==
X-Received: by 2002:a05:600c:6012:b0:3cf:cb16:f242 with SMTP id az18-20020a05600c601200b003cfcb16f242mr33355598wmb.82.1669726837969;
        Tue, 29 Nov 2022 05:00:37 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:426:d29f:e451:e2dd? ([2001:8b0:aba:5f3c:426:d29f:e451:e2dd])
        by smtp.gmail.com with ESMTPSA id he10-20020a05600c540a00b003cfa80443a0sm1941858wmb.35.2022.11.29.05.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Nov 2022 05:00:37 -0800 (PST)
Message-ID: <2bcc5965138170e205fd605fb0bc8e76b5236185.camel@linuxfoundation.org>
Subject: Re: [yocto] Upgrading from sumo to more recent version
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Maik Vermeulen <maik.vermeulen@lightyear.one>, 
	yocto@lists.yoctoproject.org
Date: Tue, 29 Nov 2022 13:00:34 +0000
In-Reply-To: <CAKO9uzrfjAtjAL15pTb6F52UL5=OT1crYG_7bdBDU6kkwKNs-A@mail.gmail.com>
References: 
	<CAKO9uzrfjAtjAL15pTb6F52UL5=OT1crYG_7bdBDU6kkwKNs-A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Nov 2022 13:00:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58652

On Tue, 2022-11-29 at 13:51 +0100, Maik Vermeulen wrote:
> After some questions on this mailing list, we got comments on our
> usage of quite an old yocto poky version: sumo.
>=20
> What are the steps to upgrade to a newer=C2=A0version?
> We have quite some of our own recipes, and also some
> proprietary=C2=A0third party patches.
>=20
> Do we go version by version from sumo to the most recent one, or big
> bang?
> Are there tools to for example fix and replace the old notation by
> the new one?
> Any other tips?

There is extensive documentation about moving between releases here
with our migration guides between each version:

https://docs.yoctoproject.org/migration-guides/index.html

That will include information about the migration tools where
available.

Personally, I'd probably try working with the last release or last LTS
and then try and get everything you need working with that rather than
doing it incrementally but a lot depends on your experience/needs and
the kinds of changes you have.

Cheers,

Richard


