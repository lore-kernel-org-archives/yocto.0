Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94A2C00140
	for <webhook@archiver.kernel.org>; Wed, 24 Aug 2022 13:01:22 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.10508.1661346081560371053
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 06:01:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Zh8Ryosa;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id b5so16398246wrr.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 24 Aug 2022 06:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc;
        bh=Sbx6T4G2tkMAns5LSGqBcN1fGxaluvITALFvMG6xGpk=;
        b=Zh8RyosaSGG70X7b/bMbw19IgTh2coN+Sbpum4YHfoAArggxJThxxZC7CVHT9kemRr
         eE/ju7if1ig5Vs9pXMChjW/hTVwl1PR6ORHxsQ1OOM8+x/nHL9wGZgrRymwCGiOyRhQi
         tVg1cgMT/QcXWmyAxiUdKukdvWL2ubdBIiTKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc;
        bh=Sbx6T4G2tkMAns5LSGqBcN1fGxaluvITALFvMG6xGpk=;
        b=jCE3OM8dqMNCIqcCwT6lkhkxUO2zm8WKKfuDpuE9hjPDjLt9t1RHKdOLBn7vMbNqxS
         oJZwMQtlZWz/qCpOS0DYMpdi+/lhiW+9uMzORvH6t3ac3ZlFsdNhCUo0PjLMnhCwVzcH
         tVprUwnasGHPY0Fa+E+vJnHdWiT4KUEEQZmeIdbLN8xQuQiExZfQdgJI116Q+8x3tBj5
         G9HU2Kn1LtPNXC4C60anIF4HFFazYelzJYFz9dbjwBSmlSEagbi+e1wNjU4bV1T2Fmqj
         z2F5xymVsERK3rTt5ki/YxDhN8vgo/svKDT0KgBaV0YqnTqq1YI0nswq0GwCI7n6De0U
         h6/g==
X-Gm-Message-State: ACgBeo2ot9WCwJT4gpJRdZ+HQ9hoPT8z0bYYGBjFSqqRMJD9FEhn0oeS
	bLP6kOXe48jBVc6Lb4XvH1EurQ==
X-Google-Smtp-Source: 
 AA6agR5fRqlF8D0KJf57tEQGaVaqHPbE6V+SdWWcUhKveApiGXkjoMAth42CDh79ForaEiF26u/ang==
X-Received: by 2002:a5d:59a6:0:b0:225:662f:fc76 with SMTP id
 p6-20020a5d59a6000000b00225662ffc76mr4357571wrr.151.1661346079727;
        Wed, 24 Aug 2022 06:01:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:4e4:9da0:6de0:5e33?
 ([2001:8b0:aba:5f3c:4e4:9da0:6de0:5e33])
        by smtp.gmail.com with ESMTPSA id
 v5-20020a5d6105000000b002251c75c09csm20166177wrt.90.2022.08.24.06.01.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 06:01:18 -0700 (PDT)
Message-ID: 
 <d1306db241ff440fdf8d005f598b6c6acf5b63e8.camel@linuxfoundation.org>
Subject: Re: [yocto] Building for both target and host
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Maik Vermeulen <maik.vermeulen@lightyear.one>,
	yocto@lists.yoctoproject.org
Date: Wed, 24 Aug 2022 14:01:18 +0100
In-Reply-To: 
 <CAKO9uzpWNuqqtnvzRvZM7btNOmr344U2zp0W9hr86ZrUbLjj_Q@mail.gmail.com>
References: 
	<CAKO9uzpWNuqqtnvzRvZM7btNOmr344U2zp0W9hr86ZrUbLjj_Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Aug 2022 13:01:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57891

On Wed, 2022-08-24 at 14:18 +0200, Maik Vermeulen wrote:
> Hi,
>=20
> We have a recipe with a CMake project which works fine on=C2=A0target, bu=
t
> ideally we would like to test functionality on our host systems
> first.
> How can we also have it generate executables for the host system?
>=20
> Do we need to make changes to the recipe, CMakeLists.txt, or both?
> I read something about autotools, but it's completely new to me.
>=20
> Any hints on what the easiest approach would be would be greatly
> appreciated!

BBCLASSEXTEND =3D "native"

would create a variant of the recipe X as X-native which would run on
the build host. That may or may not be what you're looking for :)

Cheers,

Richard



