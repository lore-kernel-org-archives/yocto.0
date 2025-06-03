Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E49B3C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 10:05:07 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.7611.1748945106467294381
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jun 2025 03:05:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aePA8A+q;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3a3798794d3so4591576f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 03:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1748945104; x=1749549904; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7bnN2JHu+ZXi/PlZS65sSIzIstkYjTy197EhX8+dUHc=;
        b=aePA8A+qYQix7j54SfRP/plOftZacJxu0AtB8ZIfL3d0EMna2DEWnr6X3MRtuRuzwp
         VauL9/EH9rMnY38pj+q3fjZiRk9//2esn6pHHqa48pW2XQA5BH3FWqx+SVzoP095AGVx
         FW2yLsX2wiRy6owJoQNaHqtN54ch7xo02ZJAc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748945104; x=1749549904;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7bnN2JHu+ZXi/PlZS65sSIzIstkYjTy197EhX8+dUHc=;
        b=equVLcuAuzB4DeG13hKEhH3HoBWL1bTF5SSK1X7SlFuq1lHAgF0jTnjqgrrg9MKczu
         lfgw8e/6H/OleStP6/+uH2rVB3h+Qp7GxY5jOgB/nxHGGdWZD1oOUWBDeuqID1bwJAP3
         3EPU6U8wZ+BJmB9PEvzqK7hzaCDBYf2M3K10fy46uWGJgr882OfvOq+C8gpQG67nxCW+
         qE1dpC3ZzkwRk/CuG418elU9TpLlyPB2e8qB78OmENFi3cZ0vPvce5k7SIFVl1rERzZz
         BykWzJW9r3zXsgL8ENVHh8c5BH6ImB1xV/RSyycRh/+VQIWjYprhTvWtsaTdn3kYX+jf
         lTAA==
X-Gm-Message-State: AOJu0YyTe2RwF/CET08n8ATbPPKSDzDC/CVEIgKx1nSFD/+jBG7IHnPj
	P039uj+kCo7Rkqkvv2CNZKRTPeEGez0qQ3PLeE9wbJlqeSbrbASKETT5kQmKtbVD3Np69Lf6OI+
	0yZ3mYKQ=
X-Gm-Gg: ASbGncuyM7KJEipSi7LG0NeMDYBPQ39IEdEVf3LvwMX3Dp3SweLj3tOUIu+Cqcn78Zp
	8VT/GRjSk6jrgQwhtSVfltwft7oIpv68edvbkFiSBpsdAwofCwh0nec/N26Z4zH30q0gzy7Tf+F
	Dh+TjPsH4sY5YDn4CHq6jOfVeNrsYZg/9UdYe8kC1AEMyVI98TVUJ0ToXBhlBHuXGINiynddfxC
	0wK9drOHwEN3iwEr8A9maawsLDbilNxDBzMU46xBn5iRbC3QUTaU2Tmo8vJicBNYXwJXTUX617v
	klOXMbpEfPlNisXTltOl2ksEA9JjIWRV2EYdv2UFV1xOGSXGCd1BzqpUVQt3jZQDqbSUJHsjWiM
	xtSwcWj5b27IrkKVeayom/VCLjGsnXCbnwrGOS7VP
X-Google-Smtp-Source: AGHT+IHNw56WHl1KvBl31xTHHlspNKM9EcYYOjdXF90oxS1AXQqihE/oYgQoI2Gc+aATfwNEKutUfg==
X-Received: by 2002:a05:6000:2283:b0:3a3:652d:1640 with SMTP id ffacd0b85a97d-3a4fe160ba5mr9640162f8f.2.1748945104378;
        Tue, 03 Jun 2025 03:05:04 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:3864:8101:3606:8242? ([2001:8b0:aba:5f3c:3864:8101:3606:8242])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450dcc18a80sm148463535e9.38.2025.06.03.03.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 03:05:03 -0700 (PDT)
Message-ID: <10697945e6b651b23eb0d7e056baecee4d0e900e.camel@linuxfoundation.org>
Subject: Re: [yocto] Pseudo abort errors
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, arthur52666@gmail.com
Date: Tue, 03 Jun 2025 11:05:02 +0100
In-Reply-To: <yPaz.1748936411817721858.TsVf@lists.yoctoproject.org>
References: <yPaz.1748936411817721858.TsVf@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 10:05:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65456

On Tue, 2025-06-03 at 00:40 -0700, arthur52666 via lists.yoctoproject.org w=
rote:
>=20
> I am building Embedded Linux image based on Yocto framework. The image bu=
ilding involves a lot of recipe execution.
> when building the image I always get below pseudo abort error :
> =C2=A0
> > Pseudo log:
> > path mismatch [1 link]: ino 147610407 db '/tmp/sh-thd.VPxkGG' req '/tmp=
/sh-thd.4Z7cxB'.
> > =C2=A0
> =C2=A0
> I tried to build the image multiple times, 100% got the error every
> time, but the error was reported at different recipe every time. I've
> read the wiki page about them, but I'm not sure exactly what we are
> doing wrong that is making this happen. The files listed in the error
> log should be shell tmp files.
[...]
> Some context here:=C2=A0
> 1. I are running Yocto build command inside a docker container, rather th=
an a metal Linux server
> 2. I saw the pseudo abort error reported at multiple recipes such as auto=
conf-native, ncurses=C2=A0
> 3. The same error was still reported when executing Yocto build command t=
o do single recipe build.
> =C2=A0
> =C2=A0
> Thanks for your time and any suggestions.

I suspect the issue is the filesystem setup your docker container is
using. Bitbake/OE's use of pseudo assumes stable inode numbering and
some forms of container filesystems can break this assumption. I'm
afraid I don't remember specifically which setups don't work but others
might. That would certainly be the area I would look.

If the errors are always on the same filesystem location (/tmp?) then
that would hint at which filesystem to look at too.

Cheers,

Richard

