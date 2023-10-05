Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4364AE92FC9
	for <webhook@archiver.kernel.org>; Thu,  5 Oct 2023 21:51:55 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web11.28437.1696542708790010268
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Oct 2023 14:51:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dwWgUdnl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-317c3ac7339so1341410f8f.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 14:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1696542707; x=1697147507; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z2oCpI6c8TaKYcw+sVY90RaLYL8HXXG0e7eRCmvOmk8=;
        b=dwWgUdnlUwbzXsKciWeBoICPBSnDGmBFmZ8IbdKoCGDgRbRtq7txeq6s7azMh/d+do
         N1eFS+ph+gY2nnULT+/eUzND6hQHugjHLvBN2vv8bRKjD+/UNLV4kWJ9dkkVyL5+YwQI
         k5DCz708VmjuNdHKvCVYYmUBicPQ+nnfoiGB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696542707; x=1697147507;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z2oCpI6c8TaKYcw+sVY90RaLYL8HXXG0e7eRCmvOmk8=;
        b=L6V6rDl4d5ilOuYFtb8iE7y3DLMnK46/6BWWr+g7CmC+eC1TUs3hSFehqLFTYD8OG8
         keH6vJsvWivRmuN8/S7HhYR1CjIGi6qecUd6CFE+XtSXq5J1NSt7X9LMRY3cHknEMX8k
         tPvnHoAPk4s7iKri4D9bbBmyvxroburObHEWxon+HKj9fMqSm6VpYtRNUU4F0qKRGLjG
         h4v5bWgq+ka6rPh3PMcZ40tTFJcS9m87kCcYutIYK2Tc3fUoqHF/2ZDtaLI4lUsbIFak
         jXK5OmJO9tYP9Bi5PzKuhbdz/5cCHyKU++M2yts2LhuCbEjoovldYKxDw/eq1wYey0in
         SELQ==
X-Gm-Message-State: AOJu0YyXWe14XA4STpH5fVnTDBiYLELrG4ROY8McVqkFztgJIMwK9A4J
	ush+FS1ZuVTQEkuUbXaGc2F7WA==
X-Google-Smtp-Source: AGHT+IGo5BMXkX7V2p9EnuBv6+EIqc8GsBn63pNeZStk7f/FVVlm2ClnRneS7YM271+QFPW7k+FJcA==
X-Received: by 2002:adf:f00e:0:b0:323:30bb:f19c with SMTP id j14-20020adff00e000000b0032330bbf19cmr5945228wro.10.1696542707038;
        Thu, 05 Oct 2023 14:51:47 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2964:cec5:fab8:2212? ([2001:8b0:aba:5f3c:2964:cec5:fab8:2212])
        by smtp.gmail.com with ESMTPSA id i17-20020adffdd1000000b00326c952716esm101655wrs.61.2023.10.05.14.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 14:51:46 -0700 (PDT)
Message-ID: <a1f9a4b2816d9f048d9ef04d20a6a21b5663ecd7.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v2] config.json: add
 reproducible-openembedded build
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Fabien Thomas <fabien.thomas@smile.fr>, yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 05 Oct 2023 22:51:45 +0100
In-Reply-To: <178B4DC19A31CF35.3256@lists.yoctoproject.org>
References: <20231002145446.3166108-1-fabien.thomas@smile.fr>
	 <178B43BD6DF66AF4.3256@lists.yoctoproject.org>
	 <178B4DC19A31CF35.3256@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Oct 2023 21:51:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61251

On Thu, 2023-10-05 at 20:46 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Thu, 2023-10-05 at 17:42 +0100, Richard Purdie via
> lists.yoctoproject.org wrote:
> > On Mon, 2023-10-02 at 16:54 +0200, Fabien Thomas wrote:
> > > The purpose of this new builder is to report the reproducibility stat=
us
> > > of all meta-openembedded recipes layer by layer. It use the same
> > > reproducible selftest than OE-Core but setting only world as target,
> > > and excluding all oecore and other openembedded layer recipes.
> > > Also, the report output directory is split by layers.
> > >=20
> > > Signed-off-by: Fabien Thomas <fabien.thomas@smile.fr>
> > > Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> > > ---
> > >=20
> > > Changes v1->v2 :
> > > * Split builder into multiple steps, one for each openembedded layers=
.
> > > * Split reports output in the same way, one for each layers.
> > > * For each step, only to be tested layer and its dependancies are add=
ed.
> > > * Every other layers than the one that is tested is excluded from wor=
ld.
> >=20
> > Thanks, I've merged this with a tweak of "reproducible-meta-
> > openembedded" -> "reproducible-meta-oe" just to keep things more
> > readable in the UI.
> >=20
> > There is a test run queued here:
> >=20
> > https://autobuilder.yoctoproject.org/typhoon/#/buildrequests/454516?red=
irect_to_build=3Dtrue
> >=20
> > but things are a bit busy atm on the autobuilder so it is queued.
>=20
> That broke as did the second attempt. I've pushed controller side
> tweaks and some tweaks to helper which means this is now running:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/3
>=20
> Obviously there are still some failures but it is doing more this time
> and a least running something in some steps.

Whilst a lot of it failed, there was one piece that succeeded and
generated diffoscope output:

https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/3/steps/=
21/logs/stdio
http://autobuilder.yocto.io/pub/repro-fail-openembedded-meta-initramfs/oe-r=
eproducible-20231005-y6zo9rio/packages/diff-html/

As well as fixing the failures, the "short" names need work to make the
UI readable.

Cheers,

Richard

