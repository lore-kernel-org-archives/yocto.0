Return-Path: <lpmeyer@ics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3C2CCF8853
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 17:08:19 +0000 (UTC)
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
 by mx.groups.io with SMTP id smtpd.web11.10.1728061697714795941
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Oct 2024 10:08:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ics.com header.s=google header.b=Pti7lqw8;
 spf=pass (domain: ics.com, ip: 209.85.161.47, mailfrom: lpmeyer@ics.com)
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-5e1b6e8720dso1231504eaf.0
        for <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 10:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ics.com; s=google; t=1728061697; x=1728666497; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DNZeSvYZtJcXnE/SoJz41OKL7xcw8oiw1CQ78CkCa08=;
        b=Pti7lqw8GnIDJ5ssf96CrCrAPce8Y0gvhVuRzT2tp+qGHPjp1jrskgQkeCIflM/Eru
         phZSx57en5PlYeCEms5p0KvdThbNTyzTrpY6tHqaaDJRvUgpYzPVsbiJPTe0UnsP5cTR
         J24f1eLC7MYGGZQmVFNlV18wDIwmVAb+SubOq4UpumVUVHZ8qYzN/+X+qRMjrPiRj3OX
         AyZvQZL3AVnm/+VVNkIVIPfu1Q4TRUps4Qe49Qf6QelPzcqBUOfQwT+ajHBNNnguw0gd
         nX+ZhEO+fVsKeuRklOaLUGIYmtQ8i7M6Js9GXNBSLEchjfLBxDW+m45ns0Enn1lyq2K+
         WbPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728061697; x=1728666497;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DNZeSvYZtJcXnE/SoJz41OKL7xcw8oiw1CQ78CkCa08=;
        b=FPXedWEg966V+hf1KRWCFtC33wUN6o0HgQIY6OenK3/TgmMk2kG8InArPA62FFNuN2
         MBPsMQXSq/nRkouBAlCfyNBDQYn5jnG1glgG7//mn5Jlbse7qEaYiTn3vY+rHveY1qgA
         8DS6JCqep/AevRJBomWntz3mEeayA/e1cSDKajskEXvt07ccTtVuBKnr9XIBdBIlpKI2
         DBCWI5flZPD4F5UyGysLYj/KBuU4Zo22gh9yhF4FqkKu9TZUXEt/8q3NLJzjQNMPhbaT
         KgAXwoX2TdGV088IdBwgwo6C8SC002JZJO94Yz08TaEXujm32rhWjHnE0U94cA1+VDIh
         VuHw==
X-Gm-Message-State: AOJu0YwHuXrgu1D1BjNzkeQGH1pRziJaVaofMN4LM0eF+AdlERHFGjUw
	Rnhk0LkOyiIozT2zQOIBvTMJ6P34yi4pn6Gkp2XXvmZdww0UY0kKCSHcHPWzAyunDi/abcdlKVi
	Jfjx4SHtetHVLlGcteyM7s5vAD3xGOXmmb2jDvseSX+LzK56n
X-Google-Smtp-Source: AGHT+IG2mkmIjPH73AP3yJ1AxIUh80BKju2sEkWSPA0wO5J7L0Pb1lPGEPn4bcRxGAFezSIrho6AMc9cFiuQ5qUIxcU=
X-Received: by 2002:a05:6820:22aa:b0:5e5:b652:9d14 with SMTP id
 006d021491bc7-5e7cbf82e70mr2474893eaf.1.1728061696498; Fri, 04 Oct 2024
 10:08:16 -0700 (PDT)
MIME-Version: 1.0
References: <17FB120285840E5F.4329@lists.yoctoproject.org> <17FB13B161187F1E.32205@lists.yoctoproject.org>
In-Reply-To: <17FB13B161187F1E.32205@lists.yoctoproject.org>
From: =?UTF-8?Q?Lisandro_P=C3=A9rez_Meyer?= <lpmeyer@ics.com>
Date: Fri, 4 Oct 2024 14:07:59 -0300
Message-ID: <CABqjNW_M99zBmqN4Rjk74pED4+bQULOOKv=raB=kt5X4Hia_nQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypy] scarthgap: reproducing videos with VLC
 or Qt using the GPU
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000091f5d90623a9b7d4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 17:08:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63943

--00000000000091f5d90623a9b7d4
Content-Type: text/plain; charset="UTF-8"

I could make Qt 6 to use rpidistro-ffmpeg which reduces the load to ~84%
but still not as ideal as I would have expected. VLC on RPi OS does work
nice...

--00000000000091f5d90623a9b7d4
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">I could make Qt 6 to use rpidistro-ffmpeg which reduces the load to ~84% but still not as ideal as I would have expected. VLC on RPi OS does work nice...<br></div>

--00000000000091f5d90623a9b7d4--

