Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60638EB64D9
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 09:29:29 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.17734.1688635763328986225
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jul 2023 02:29:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=S8SQJVo3;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-992af8b3b1bso58406366b.1
        for <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 02:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688635762; x=1691227762;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QeIRqaJv1Ny4eEvvl4AZZYTmNtp4bYRgGq1SS4xXCcs=;
        b=S8SQJVo3XXD+VrTrPXT2wXxbentBzXbgxBHLsrMZisHeWDMdZ23unLirzwOzxRC18O
         TgP0ieu3gV3g+FlnRC+mS/bk2BzkTiiGVcJg3A4q/sT3VHQyi/94CJIs5XPy82ItU58G
         kAVMLrSunD8BSoXra4wQPYt8vSewDdMt6YZLZ5F659rUEix4Qaj9lpez3B640g6nSnwK
         28C2H1B4bzK+mS8Kf+/zevBoZCtk12Xwe/9zgsf9uud0jIP4tvYwe2IKheZPq6qmLZd9
         vSPs5l3pVxA7gBL+VY25m4PIWP4NjldpHgRs9PZ5i6e14PAin3GV1zClyRdGybRJRIsJ
         zMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688635762; x=1691227762;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QeIRqaJv1Ny4eEvvl4AZZYTmNtp4bYRgGq1SS4xXCcs=;
        b=LiM1hE0SEynsxwQB+okr/CM4J+J6hjP4edFc8INsUsPQ0lW0HVeUd78v4TrUNmfw+A
         21k0Qc43DN8Kcz+RUuSToXua0cvBruuPQ+s+gjiMWiB0cfoQy/lJCO2e+fH1QcGXKX2w
         wPtiKtp9ybLyM0ItjZ8mGMO+f9LJWNiYwrVUJfEnwth8fFxjBISOzlV9O8vPJCayfOpv
         Pb09OXxlKbWxCmeV7ufTDbRDEb/Ccl7Wyv4qXPB7ErL+jyS/EH6IfUFPD7S7DfuiP5pE
         dbAX+oS0EzMtARHLFsxP1/m5oeVJD8qn0M/lnIMq/VQwbkt25mxOmd+CdOiGhnJMccxv
         OeFQ==
X-Gm-Message-State: ABy/qLZE0i1C0IAcmUIIkpRM4Ect+3zshfTFPm1e/Ln7lu+nrZmaklYK
	0gfFNmlXab1L+rYb6n8G+5M=
X-Google-Smtp-Source: APBJJlECa5acqqJqEPXqwyHstfrTb33pdSN+q+UKR5okhpjT8gieMuDyo9seOjvu0bKaeTxmLcW0NQ==
X-Received: by 2002:a17:907:7f15:b0:96a:63d4:24c5 with SMTP id qf21-20020a1709077f1500b0096a63d424c5mr1106430ejc.77.1688635761540;
        Thu, 06 Jul 2023 02:29:21 -0700 (PDT)
Received: from [100.64.0.1] ([165.225.94.221])
        by smtp.gmail.com with ESMTPSA id j13-20020a170906094d00b00991bba473e2sm562387ejd.85.2023.07.06.02.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 02:29:21 -0700 (PDT)
Message-ID: <8d25b1e3d7a401d493802117d0cc48c3f63e7544.camel@gmail.com>
Subject: Re: [yocto] do_configure error while adding networkmanager to image
From: adrian.freihofer@gmail.com
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Date: Thu, 06 Jul 2023 11:29:20 +0200
In-Reply-To: <CAPJWBngA0dGYTfH5YqQ3veHSqfJVRze=t6nzKdi=S2QWmWF4_g@mail.gmail.com>
References: 
	<CAPJWBngA0dGYTfH5YqQ3veHSqfJVRze=t6nzKdi=S2QWmWF4_g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 09:29:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60523

Hi Hassan

It's a bit hard to guess what you are really doing. The bb is a fork
from a quite old version when it was still using the autotools. Now we
use meson.

The check for rl_echo_signal_char came into NetworkManager 8 years ago
https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/commit/b6914=
3b5085c58e51ab8077ee5cbe6fafe73e041.
It's probably not a change on NetworkManager side which came in
recently with your update to 1.22.16.

Compiling nmcli with readline works with the bb from meta-openembedded
and the poky version with a similar age. That's the default.

Some ideas:
- Try if the original recipe throws the same error
- Pass the readline parameter to autotools (what we do with newer
versions of the recipe and meson)
- Compile without nmcli and remove the readline dependency. Look at the
commit history of the networkmanager.bb. There was an autotools based
recipe which supported compiling without nmcli at some point in time.

Regards,
Adrian

