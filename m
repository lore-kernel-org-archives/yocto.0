Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FFEB64DA
	for <webhook@archiver.kernel.org>; Thu, 20 Jul 2023 11:07:15 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.10274.1689851231062397423
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 04:07:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=emgJ+JlC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-3fbc59de0e2so4878235e9.3
        for <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 04:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1689851229; x=1690456029;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VClLnxJSic3gcr8scW6/5axsDZ4SrqPrSdF0Nmh61tc=;
        b=emgJ+JlCNWBxLv+1dW1KleDGrOJt3m+dwUF6Zb9NqjjtZCJTPesu0bYJALLi0CF+Z2
         Hwa4zi/QO2dFNkckKGBKjKB1YW8urJD6PUE9yLpauKvn0DizbveTiwt7M75zmkMzUvlh
         Ejbc+3Dnn01g4x/3u8PNaT2i9lXFimCXEzGxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689851229; x=1690456029;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VClLnxJSic3gcr8scW6/5axsDZ4SrqPrSdF0Nmh61tc=;
        b=ab9gSS0Qr7krWtTyhBlPrJjUA3hlj3X3+jup24DwIh1ayXMLAzQ0vryp4/4Ib2IlXS
         LiAmhW29h60+se5X4uj4ROrHl+WD1PnNfIFYeYeL9H3NvXw4uezA5TtISadOdwMCHbxy
         WahpkiBume1SeNO6vvqPHryBDeQIUJAxl+mDiYPZjIvbXqmEG9gpsZzR224a4zAtE/dS
         OQEdoM51ow/O9UtRv3kxakYubbigXolfNT3nK+T1guf5QoeqmnCVjzR5d0XpRZbIyZe1
         v6w7+K8V+gT6BbGhLMGTOg3N1WM6vVWmQlQH4dU+rdfJntyFJY5zWDj6rAI6dThv2tTe
         DpXw==
X-Gm-Message-State: ABy/qLY9tXo8Au9ISU/LDUv6HcOazqKmHKlfroExU+X/d6vaL0syxdkK
	8UHSfJ5Hpee22PACN6nYQG3WYg==
X-Google-Smtp-Source: APBJJlEkQIG6IiAfMDMcuxXbGCD2jt6HjulA9tn5oAdwaFZkj23BCG8KL7de8Ua2e40b+PAKkr6j0g==
X-Received: by 2002:a5d:6244:0:b0:313:fce9:c568 with SMTP id m4-20020a5d6244000000b00313fce9c568mr1981748wrv.31.1689851229247;
        Thu, 20 Jul 2023 04:07:09 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ba5b:ff9f:e968:6d69? ([2001:8b0:aba:5f3c:ba5b:ff9f:e968:6d69])
        by smtp.gmail.com with ESMTPSA id c10-20020a056000104a00b0031434cebcd8sm1026605wrx.33.2023.07.20.04.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 04:07:08 -0700 (PDT)
Message-ID: <b8d2c2dc3ebe972f06ce15c24722d25af1dc0ca0.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3_M2.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Thu, 20 Jul 2023 12:07:07 +0100
In-Reply-To: <0101018972ef9bb6-13d574f0-6c64-42aa-9666-4166acbb6a36-000000@us-west-2.amazonses.com>
References: 
	<0101018972ef9bb6-13d574f0-6c64-42aa-9666-4166acbb6a36-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 11:07:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60619

On Thu, 2023-07-20 at 10:54 +0000, Pokybuild User wrote:
>     A build flagged for QA (yocto-4.3_M2.rc1) was completed on the autobu=
ilder and is available at:
>=20
>=20
>         https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc1
>=20
>=20
>     Build hash information:=20
>=20
>     bitbake: 64bc00a46d1aacc23fe7e8d9a46a126f3a4bc318
> meta-agl: f1bb0ee68b18a39917e06bfbb08d677bbf8bdf25
> meta-arm: e67d9c4dbc892ef688ff960d68e02627fc99bb53
> meta-aws: 2b834db25df1dd90e2b05f89cf1ddf3790bfc220
> meta-intel: f96c815a14dab58abce5d4ce69e8fa76c9f6de3a
> meta-mingw: 4608d0bb7e47c52b8f6e9be259bfb1716fda9fd6
> meta-openembedded: d57c4655623a7271dc93cfb741ffdbf1b511a5c2
> meta-virtualization: 680f56d9e432c0cb7de41fe50610f218bf53ba1f
> oecore: 8bb047ad3bd93fcf655eeec53e6d1de1e7747140
> poky: f73ae292bc0b92df3cb76c6e8b220f18630f6bc7
>=20
>=20
>    =20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org

There were two failures in this build. One was a meta-mingw issue and a
patch merged for that now. The other is a meta-agl with a patch needing
to be rebased. Both issues are in the other layers and not in the core
so the milestone release should be unaffected.

Cheers,

Richard

