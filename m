Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990FCC001DE
	for <webhook@archiver.kernel.org>; Fri, 11 Aug 2023 21:11:25 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.53995.1691788284753754322
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Aug 2023 14:11:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=aA1C19pn;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-317c3ac7339so2049849f8f.0
        for <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 14:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1691788283; x=1692393083;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aLM3V9PHRhmH4MGijHeVHIv+pxQ9BXyCGjcyIW79k/k=;
        b=aA1C19pnwh3M9QN6BOHpjjmfxTSeUM+yifKVhqzRCX9P93PRDV7S94miAfLNqCVTqI
         Y5Ahb/Y1nA+MSnSdprB0KENQhnpzO0A7NVHGRGGzBqVEDHZ6aCIwGBvTLD7Agm0umd7Y
         Pz6xDnKXUo/SlfYcinuHobRXpETChbOiunEzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691788283; x=1692393083;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aLM3V9PHRhmH4MGijHeVHIv+pxQ9BXyCGjcyIW79k/k=;
        b=c89RvwSdkmFghU9hw0kZNIY/2GR8nuckanAwgp+I/CZeXQ1IvTgGFJxXpUoV6TdmPf
         sAXNxQlAZdpLoD4Rq9SE7VTa07xwfiNsA20nb/NJPwcmekcHuES4aSztIrZPSo9ipRjK
         f+tbhIUSqS9GF1c4NcNdLgPnQgwqeIbTkzjLFQW4kq6u+k05h5aksepJw03NC8oDLj7D
         N1mcwapg1XUBCsDXj1wQ4eynAjhZL987/aSp4fZ0VzGNpa8RqECorOQ/m6Bhoh8f3TeC
         j7OLMvQLI/kSxgC7mO7ebRe9Knc9GpGVkduhGfk1UYbCjrTRtsoSGKyFExSKRIzCYFaa
         Fvwg==
X-Gm-Message-State: AOJu0Yy/ue1sFtgM+I2ilINZQVvTeg1tPdRC7Be+LUJdzEXDH9UeMrss
	K3w2iHWhv+dA5JMKiHb9DZq98A==
X-Google-Smtp-Source: AGHT+IFAAIEqQezEDwHABi6Nt7TU7Xr020YYuyxWPfj3buy0RKMrwxcHDEN9r6KFCVueotstjRBB4Q==
X-Received: by 2002:adf:f149:0:b0:317:43e0:3f33 with SMTP id y9-20020adff149000000b0031743e03f33mr2274112wro.37.1691788283054;
        Fri, 11 Aug 2023 14:11:23 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a369:d6b3:1297:abfe? ([2001:8b0:aba:5f3c:a369:d6b3:1297:abfe])
        by smtp.gmail.com with ESMTPSA id b8-20020a5d45c8000000b0030ae53550f5sm6552262wrs.51.2023.08.11.14.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 14:11:22 -0700 (PDT)
Message-ID: <1a30874e474b84412cb2df4bc2bfeeaf8775ba89.camel@linuxfoundation.org>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't
 exist
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Date: Fri, 11 Aug 2023 22:11:21 +0100
In-Reply-To: <CA+EiEZLQ5WNP_9wUFvoh33U_5J0Uys+0hXbn4UNrToV1HYuFdg@mail.gmail.com>
References: 
	<CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
	 <c9cc305944c70a7f59e881e39d020d5e216197e3.camel@linuxfoundation.org>
	 <CA+EiEZLbtCfDGyxA8kjwQkPjeJJ9vzwpKMKGSW6ABGq2uogg2Q@mail.gmail.com>
	 <fd9c2bb67198be27092ed786908f100ab8393d38.camel@linuxfoundation.org>
	 <CA+EiEZLQ5WNP_9wUFvoh33U_5J0Uys+0hXbn4UNrToV1HYuFdg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 21:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60785

On Sat, 2023-08-12 at 07:50 +1200, Tom Isaacson wrote:
> My bad. Ok, so:
> * What function is responsible for copying the dwarfsrcfiles binary to
> poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-s=
ysroot-native/usr/bin/dwarfsrcfiles?

It would come from the extend_recipe_sysroot function in
staging.bbclass.

You will see this function being called in various tasks as it will
show in logs in WORKDIR/temp/log.do_*

> * When the build completes the dwarfsrcfiles binary is present (even
> if it got there too late). Why, if I rerun the build with no changes,
> does it get removed and recopied?

There are a number of reasons, the example that comes to mine readily
is code which removes things it thinks are now invalid and then
installs new versions of them.

For example if the taskhash of dwarfsrcfiles changes (e.g. it's code
changed), it would rebuild it, then update copies in any recipe's
sysroot that depended on it.

> * I asked before, but I've just been doing this by adding debug
> output, but is there a guide on how to debug this directly? I can't
> figure out how to step into the Python code directly. I use VSCode.

I'm not ignoring the question, I simply don't know. I don't use VSCode.
I'm an old school C/kernel person who uses printk (or bb.warn() in
the=C2=A0bitbake case) to debug things.

Personally, I'd start with looking at the logs for my-app, see when
dwardsrc-files is being added or removed from the sysroot. The logs
should indicate that.

Removal could also happen at build setup time where bitbake prints
messages about removing things in which case the removal wouldn't be in
the recipes logs and isn't well logged, that code is central.

I'm doing my best to at least give you some answers, I'm afraid I don't
have them all, or tons of time to spend on this so I'm doing the best I
can. I'm assuming some answers are better than none, particularly if
you're looking at something you think is abnormal but really isn't.

I hope you can figure it out! If/as/when you do, help documenting it so
the next person can know what you wish was documented would be helpful
btw!

Cheers,

Richard




