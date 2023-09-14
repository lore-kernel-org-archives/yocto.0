Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76CC4EEAA44
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 13:59:30 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.13009.1694699961121537057
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 06:59:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AoWa56xC;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-31f71b25a99so922111f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 06:59:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1694699959; x=1695304759; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cAMA2T7F0sEfVlmcqgszJaDfZxoXNdCJYQmJDaW1M3s=;
        b=AoWa56xCRIEzSI2GI9oGatwdedmTUHzJx20ibTfzoBfMx9RJuk2zZ/JcZv4e7AEE6x
         K4GchTG5PiygLgGemaTNMaKM2H/YSbF5+RS+lZMUZ+0TL9KqwaVh48uco1zva/lmASQJ
         7nPlvbwfQvOrjK+WWrUohssFMk/3exjhXLaYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694699959; x=1695304759;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cAMA2T7F0sEfVlmcqgszJaDfZxoXNdCJYQmJDaW1M3s=;
        b=l6iWG9vXcjVFl6iFXTNmE3aO/gaHdLgTFz8EyS1FkAD0whjn92JlHXP0TfU6taYHXC
         n3Tj8apFhmk/+B0p8wzelTyyH9WmRbcOiK7Rnqjm45c9iXwJg/LMlrkatpo/HI6yKMiY
         qdELM57a2z4dgSYO5o0b7gVQ/kZElimbGIsjphfmO0rwBF22/pyfoYStsMVHklE6Qu9v
         mXH0VX4/YfeJ4EggCav9LmH6we405NtfgSlVJ/l3NcVI2fyy+ZIPEGVQjVhF02YZSGr8
         62zEXNaTU8xC2le7yu94OL4+433Sz03SxXT3tt3cTRJStiC9fSqo6rCLMMP98Zc6e/GW
         EEyA==
X-Gm-Message-State: AOJu0YznhmbhlYYCiVX2To3Uvy8ddJZzTNdWxSh9AhLLK6b5IyMLPaGV
	4mM0VmDj9NHcuH8OtwhKWN4ARQ==
X-Google-Smtp-Source: AGHT+IGWjjy+QPPOMXvNULuuglt3nlICosmsmeM4VxFFnecACUFWaS6/+QC4jAErUZRPs3xg56r05g==
X-Received: by 2002:adf:d0ce:0:b0:31c:6525:770d with SMTP id z14-20020adfd0ce000000b0031c6525770dmr4556861wrh.1.1694699959529;
        Thu, 14 Sep 2023 06:59:19 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:a6e7:41e3:896b:6b97? ([2001:8b0:aba:5f3c:a6e7:41e3:896b:6b97])
        by smtp.gmail.com with ESMTPSA id z15-20020a5d4c8f000000b0030647449730sm1848230wrs.74.2023.09.14.06.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 06:59:19 -0700 (PDT)
Message-ID: <aaeb579eaf7bb5914a944d6a2cb093be7521548f.camel@linuxfoundation.org>
Subject: Re: [yocto] Errno=No space left on device
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dave Hitchman <dave.hitchman@kymati.com>, Martin Jansa
	 <martin.jansa@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Thu, 14 Sep 2023 14:59:18 +0100
In-Reply-To: <AM9PR03MB7012488D10FE95C6F4D12AA892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
References: 
	<AM9PR03MB70126259019EF2AD25999A2892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
	 <CA+chaQefpv8V2gsmnk_DYfOCRstcp1985RNVTAdRu3hJki0x4Q@mail.gmail.com>
	 <AM9PR03MB7012488D10FE95C6F4D12AA892F7A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 13:59:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61007

On Thu, 2023-09-14 at 12:35 +0000, Dave Hitchman wrote:
>=20
> Does anyone know what IS enough? Watching the video series
> around=C2=A0https://www.youtube.com/watch?v=3DbTEdfwtPtNY=C2=A0he doesnt =
mention
> changing this size. I dont actually know what this watch manager
> thing is supposed to be doing, there is one command prompt doing one
> thing, I cant believe that it would need that many things being
> watched? What is it even watching for?=C2=A0

There is a "memory resident" mode for bitbake (BB_SERVER_TIMEOUT =3D "X")
and for that to work reliably, bitbake needs to know when to reparse
metadata. For that reason it does track the metadata changing. In
theory it does this even when not staying resident so it can detect
changes in the metadata during builds and inform the user not to do
that and also to reduce differences in the codepaths between memory
resident and non-resident codepaths.

You might think 65k sounds a lot but in a simple OE-Core checkout,
there are 2.5k directories and 19k files.

In order to reduce system impact, bitbake only monitors directories,
not files. I'd imagine somehow you have a lot of directories being
included in the watch paths.

FWIW in a given build there are millions of files being processed. We
should only be monitoring the recipe/config files though.

So whilst that doesn't answer your question fully and I don't know
where the files are coming from, 65k is a relatively easy number to
reach in the kinds of work bitbake does.

Cheers,

Richard





