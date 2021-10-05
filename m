Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50DD9C433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 22:55:27 +0000 (UTC)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
 [209.85.221.170])
 by mx.groups.io with SMTP id smtpd.web10.4277.1633474519252733008
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 15:55:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kB4VKRrO;
 spf=pass (domain: gmail.com, ip: 209.85.221.170,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-vk1-f170.google.com with SMTP id b67so387691vkb.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 15:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c9e2aL5FPsDIvvgPaD0Fn3rE5I+M9FX67EGJUcxzvrY=;
        b=kB4VKRrOXNLpom+28VVTOAhBfFpyqrHQH32s37d6bFGNuFXOJUFAW1Xc0lsyPcSUth
         ioIuh1b727CvU+pERhAhVMGR5kL7i/NKdIM2jRkoe27VJyX8TmNkTwBIDLfpL/X7vzMk
         eRIfVOGOWcVjqntxaGPnLwYno9Zo42dMEVd88sMYvjHElBb7BJBSgxZw29c3s4uZn+SV
         b5g3K86qVE/WKOn0u4X5DK2BUGAjm3QBx/4rIbMg5Xw8fnT5TzY5NsIy2zq3QISVGxgC
         SYAeGWwFfCpEAJGq4qisW7pQNmeOHjgzW0o0wbXncm1NsmXgFJs8kFk66G9FhdKwCYPY
         aDJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c9e2aL5FPsDIvvgPaD0Fn3rE5I+M9FX67EGJUcxzvrY=;
        b=R6Ii/pwIXJBTHSqRjVYjCFM9/NIdIFV1O5ioYewRd4EVFNbA0+OMVvnXJQ+I68sbn+
         kCLvsh6H5kGO5eZ/YoALzeqGlwl07OdsIuPJtaB0EB92Eu5ChWkTvC0r0p1GbxYsA4Oh
         awIDtbcV9XYJYgtYhiRgrfoa5LOO1axMRHXaDDFXa/RbQuycYjiD4zdZ4cNeVgsKhIBI
         nW6lHJochVBiJO03OiWKF92cFW2rMzRo7GNOVuYdVMN85bLcHxsmhXRVENBmVpfxCyHQ
         gbLt24/P25UElRi3j9EW6+f9FqpjNfqFs2sQ0OhGXRbksZ93wi/RyBBzeUoE2Hb49uJp
         uzEg==
X-Gm-Message-State: AOAM5312irVZ77vhJrctkshUnsrsXtIFOWIlTACKa7pCJfiqmHB7fHxf
	mmITPxeeoH7mdkDL5CTNuXw4xmH+Db+0tR4wB4OFCCggx6g=
X-Google-Smtp-Source: 
 ABdhPJy1STbsIRkxyg9eNrUKDZWwngsblQ+olZcnmmZN6y+M0uL4LKz44OhEI10bEi2PDbyLSF6bB1zWZwH9UVmGDPU=
X-Received: by 2002:a1f:e946:: with SMTP id g67mr24259505vkh.10.1633474518388;
 Tue, 05 Oct 2021 15:55:18 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CABKMkPKrjB5Wb9MOb74qzeqx7brs9Em3dmk1h5Zxm1CKKJmYkw@mail.gmail.com>
 <CAMKF1srTpBs-cZOqbLbFxOpkowxjH9-Q9NgYoMX3eXiAoUo6fg@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srTpBs-cZOqbLbFxOpkowxjH9-Q9NgYoMX3eXiAoUo6fg@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 5 Oct 2021 15:55:07 -0700
Message-ID: 
 <CABKMkPKYZ8niobe+a9bFmzsO7_h2Offs5JpyPV4=YpFyX0oaTg@mail.gmail.com>
Subject: Re: [yocto] Google GN support
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006b139705cda2eca8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 22:55:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54974

--0000000000006b139705cda2eca8
Content-Type: text/plain; charset="UTF-8"

> look at meta-browser/meta-chromium as well.

The download archive (tar.xz) approach may be the easiest solution.  Then
one would just need to make a versioned recipe for each LTS.

Thanks Khem!

--0000000000006b139705cda2eca8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br><div><span class=3D"gmail-im"></span>=
&gt; look at meta-browser/meta-chromium as well.</div><div><br></div><div><=
div>The download archive (tar.xz) approach may be the easiest solution.=C2=
=A0 Then one would just need to make a versioned recipe for each LTS.<br></=
div></div><br></div>Thanks Khem!</div>

--0000000000006b139705cda2eca8--

