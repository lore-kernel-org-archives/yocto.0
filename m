Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EF2AC25B6E
	for <webhook@archiver.kernel.org>; Fri, 27 Oct 2023 08:56:35 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.2825.1698396985392499856
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Oct 2023 01:56:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EdIljV7A;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.208.177, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2c503dbe50dso26929821fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 01:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698396983; x=1699001783; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AFL+CqqMdiY+C3e5VHGx1q8VUQeNkXbbPd3Ujzjkhvk=;
        b=EdIljV7AZPnRQtr1d8lkBJxwzNTUmX1KmJPjB9C2OOwXsFwfTi7CznGgvt7MVcehtB
         ubmJ0o4x96HoewCM5vZ7vdVA/douoWuR8Nn3gD9YlTEwlKHex6pRm0bWGFYAS4J05nXU
         gVanzxIKCnCmyp6U5bmftmkChFr2a/sfuZLrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698396983; x=1699001783;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AFL+CqqMdiY+C3e5VHGx1q8VUQeNkXbbPd3Ujzjkhvk=;
        b=qFa7Z1PH1vqLgw3IBjKqjrsASIcsy6xU/38PgPSr0b9ZmBBkmGAzw4YCWgMQns2fv9
         NiUPy7eGxD+n45r1KsRYRAR78v/QCAiiDy/8+KdGMSRyfux6pEotjOgoEWKK5apQV0tb
         iDctRNrkSdT8QkTQio+U/1vpm3+U1mwdFT7CF/l1EeMf15BzsoxQDEBbiiImVy48isc5
         0zAC6W+M+/3F0cohNHbJKbzhBlrHACYVGRMXEjW9SyA8M5w7NVfEjFKkRxNbI4DwM4mN
         7bMy2dWzZbxpfotpR1NJi6ixylgvEaj0IEQJY12swDQ284XDTxWCfsujyTQj7+eOaBba
         hz2g==
X-Gm-Message-State: AOJu0Yy/rBlLlOWNGHytDl+KTYhUyvod9wKw9RV+eh/84ZDhUjJnkOKe
	GcfY0yPJE13kGgqFrmLKEZHBzA==
X-Google-Smtp-Source: AGHT+IHB3v5fEgXUwZm3LFqKVkFosEuD8zuAvCdwgRVw+JqNpeibWCZYLvUS4uP2ujZpxdEYf9IGfA==
X-Received: by 2002:a2e:3017:0:b0:2c5:1c12:cb85 with SMTP id w23-20020a2e3017000000b002c51c12cb85mr1440695ljw.16.1698396983268;
        Fri, 27 Oct 2023 01:56:23 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:35e4:65b9:f46b:317d? ([2001:8b0:aba:5f3c:35e4:65b9:f46b:317d])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b004063d8b43e7sm4635840wmq.48.2023.10.27.01.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 01:56:22 -0700 (PDT)
Message-ID: <638c906e1cfab93122fab544eef8ad43ee61222c.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add a
 standalone builder for running yocto mirror tests
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 27 Oct 2023 09:56:22 +0100
In-Reply-To: <20231027072147.111314-1-alex.kanavin@gmail.com>
References: <20231027072147.111314-1-alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Oct 2023 08:56:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61500

On Fri, 2023-10-27 at 09:21 +0200, Alexander Kanavin wrote:
> Those tests are currently run as the last step in a-full/a-quick,
> but it's useful to also trigger them separately, after perhaps
> executing other builders that populate the mirrors (such as
> qemux86-64 and such).
>=20
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> ---
>  config.json | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/config.json b/config.json
> index 9987514..918cf08 100644
> --- a/config.json
> +++ b/config.json
> @@ -1433,6 +1433,14 @@
>                  "${SCRIPTSDIR}/setup-auh ${HELPERBUILDDIR}; ${SCRIPTSDIR=
}/run-auh ${HELPERBUILDDIR} ${WEBPUBLISH_DIR}/pub/auh/"
>              ]
>          },
> +        "yocto-mirror" : {
> +            "MACHINE" : "qemux86-64",
> +            "step1" : {
> +                "shortname" : "Yocto Mirror Selftest",
> +                "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; DISPLAY=3D:1 oe-=
selftest -a -t yocto-mirrors -j 15"],
> +                "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"]
> +            }
> +        },
>          "meta-oe-mirror" : {
>              "SDKMACHINE" : "x86_64",
>              "MACHINE" : "qemux86-64",

This and the controller patch should be live.

Cheers,

Richard

