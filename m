Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E147C19F2D
	for <webhook@archiver.kernel.org>; Sat, 13 Aug 2022 10:43:23 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.3522.1660387401847372548
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 03:43:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Vo9XPQpu;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id n4so3603955wrp.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 03:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc;
        bh=PKoSL8Pyqz+nc5LZchqGPfLgTCKnZWkf8+zN3H0d2mM=;
        b=Vo9XPQputU2t4a9ijw3owQyy5AyX7zKCgGTR3ePFwKFVah/DOy9WlI8qyijhCRXKhV
         nJmgIprFgB62tL1O/O1ayj2fc/liDlPIbK0hjwNC8kO08WVaHUITRfz9JxTA6X5E415F
         jMP8Aiy1IEgYxGF6aaMTR4ve0o7OtwL5yiI88=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc;
        bh=PKoSL8Pyqz+nc5LZchqGPfLgTCKnZWkf8+zN3H0d2mM=;
        b=mUJOJipzSJQqvPNLsV7Eo2sRD+sNV/CGRObDKNdv1eM7mhosiTFYf78VDbrv0sm6BK
         52DDzDMPU6LhsxX0xwc1Z1oyGZVmOeDO1SRAS83ALMpFVDt5eGObyjhTWfDMZE/6eerd
         cBEWnn+WoTmPRKZXVnPxTZa1HyFZiBjSYCOOgjiIe5Mah//LIZuCqXF/jwuJyRYTQz6E
         8+3OsDmDGYG96M/SXUSZTDQIEcykPuqg01meNbvntMzO7kOASLd8VTqu7WbFHhvTJeFB
         f6pdqT4fjMaSC4+4lzscZupzV2UNaGzdr2IhHwT86D6KBdgCPVjeQS8Chd7WStBCvVKC
         BKEQ==
X-Gm-Message-State: ACgBeo0c74b6ST1fZpPDru9tk9XWpO3a1qVdXW8PEJg7iQ2Oeuwnvnh1
	GmocGm8Gd3YOCzNTWa53TjxjlA==
X-Google-Smtp-Source: 
 AA6agR59j9rgoKvx5epqjw4uzHMgL45xhdmOhrX9vUvX2SMbkRHOv8/QPbbrSHM5PNUwgoXFm24cpw==
X-Received: by 2002:adf:ea03:0:b0:21f:151e:780e with SMTP id
 q3-20020adfea03000000b0021f151e780emr4102177wrm.25.1660387400227;
        Sat, 13 Aug 2022 03:43:20 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:f6d8:ef31:d475:da8f?
 ([2001:8b0:aba:5f3c:f6d8:ef31:d475:da8f])
        by smtp.gmail.com with ESMTPSA id
 m128-20020a1c2686000000b003a5dbdea6a8sm3124842wmm.27.2022.08.13.03.43.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Aug 2022 03:43:19 -0700 (PDT)
Message-ID: 
 <c8d67f619c1515e215ef1c58fbd74bf74e22c3ce.camel@linuxfoundation.org>
Subject: Re: [yocto] question about PREFERRED_RPROVIDER
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: John Wang <wangzq.jn@gmail.com>, yocto@lists.yoctoproject.org
Date: Sat, 13 Aug 2022 11:43:19 +0100
In-Reply-To: 
 <CAHwNHZWC+BJnU34rrm2d3UNKv4gZ3mt9vOug89pgtQxb+wh1bg@mail.gmail.com>
References: 
	<CAHwNHZWC+BJnU34rrm2d3UNKv4gZ3mt9vOug89pgtQxb+wh1bg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Aug 2022 10:43:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57836

On Sat, 2022-08-13 at 17:57 +0800, John Wang wrote:
> Hi,
>=20
> There is a package with two versions, private and public.
> But when I use the PREFERRED_RPROVIDER to select the public version,
> bitbake still tries fetch the private one, and then bitabke terminates
> because do_fetch fails (no permission)
>=20
> What I expect is that when I select the public repository version, it
> should not fetch the private repository, am I right?
> Or, should I not use the PREFERRED_RPROVIDER to select a public/private r=
epo ?
>=20
> Could someone guide me :)

"virtual" entries only work in PROVIDES and PREFERRED_PROVIDER, not in
the runtime version of the variable.

Cheers,

Richard

