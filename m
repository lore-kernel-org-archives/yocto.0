Return-Path: <perceval_arenou@trimble.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79C25C48BC3
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 14:27:02 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.42619.1707920813428111256
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Feb 2024 06:26:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@trimble.com header.s=google header.b=EdbD0jmG;
 spf=pass (domain: trimble.com, ip: 209.85.128.53, mailfrom: perceval_arenou@trimble.com)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-411f17700ffso4401195e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 06:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trimble.com; s=google; t=1707920811; x=1708525611; darn=lists.yoctoproject.org;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=oTBhLJKf/jln9oM0o4omcWJdtxfWq3BHnEdOCJocVeo=;
        b=EdbD0jmGfVI2Cgr9sqCuxVesj8GWxTNypCZwdyJy9cIGfOSkT7B6qiejebOvkfa5rO
         jbNoLLR8R/FCMK8niZ2F1OZVJjReyWfFj1o7qPxdmOt1Ps2e5bkuHE7+2xwHQI728YHD
         m6MI8WPnwoo1n26EA5RRaRcEMtIsTNjOc4Mj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707920811; x=1708525611;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oTBhLJKf/jln9oM0o4omcWJdtxfWq3BHnEdOCJocVeo=;
        b=oqYUKoLbT8DpHt/d7MrYucWeTCIbVaRh2HNj+WbDfi65cr1ZhQ3byfwyxJlQi27OBK
         tKW3Nqnkf9kMmi0AnoaG5Q9Ua1U+2iF7gOmAImIk/iENrPuoNiFvk8Xu6nLuTKGgz7PZ
         zRny1SccZw8FxlsTgUKCxRbqA6n2LyBvZqHpQxj64FzQ3bcJCPIqiNVLALW+WwSEBXTV
         vt4QL866o+4aJEbIMjblowi6umGOZ4Yv5I4xh3gGk9kv8mNJdwD48Lu0t0vjnmwVlgkj
         ZHOuVoqmMlJJbT6W5hYfw9DnRNABKDuQp9nUndvuXC9OMSQbMngRS2xqPQHMtLCzmK7z
         e0PQ==
X-Gm-Message-State: AOJu0YzvyuZ6rmHL3TdF6RYpCLyi/HCITgCLr6jHghx5yXVH9Luf1yNh
	LcZlryMeyxzGLGxHXppKL2anUHOPggvRxDP1f7BqqEJE8ULH6rfE5jI/1fsrOmY=
X-Google-Smtp-Source: AGHT+IGhGMfvhR0ZKnim4KQJaqJf13KBtv2aOLFqNIwHKXRWK0+U3ny5lG/7DypSRS5R1PP6c7IYlw==
X-Received: by 2002:a5d:4007:0:b0:337:c73f:db0f with SMTP id n7-20020a5d4007000000b00337c73fdb0fmr1684154wrp.41.1707920811344;
        Wed, 14 Feb 2024 06:26:51 -0800 (PST)
Received: from [10.2.87.19] (lputeaux-658-1-190-18.w80-11.abo.wanadoo.fr. [80.11.239.18])
        by smtp.gmail.com with ESMTPSA id n12-20020a056000170c00b0033ce5b3390esm2493694wrc.38.2024.02.14.06.26.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 06:26:51 -0800 (PST)
Date: Wed, 14 Feb 2024 15:26:45 +0100
From: Perceval <perceval_arenou@trimble.com>
Subject: Re: [yocto] extend python3 manifest to add a module
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Message-Id: <L4OU8S.IKKLTX9ZETHK2@trimble.com>
In-Reply-To: <8B0A80A4-7D4E-4ADE-A645-0C7DBBBDE8E7@arm.com>
References: <QIBU8S.RL2ZWWVWX0423@trimble.com>
	<CF199512-3ED8-4845-AE0D-3F3FEFCD02A6@arm.com>
	<42NU8S.WT0Y3BGIDTIA1@trimble.com>
	<8B0A80A4-7D4E-4ADE-A645-0C7DBBBDE8E7@arm.com>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-Rd7KfF4CiCqlg5Gclyxw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 14:27:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62491

--=-Rd7KfF4CiCqlg5Gclyxw
Content-Type: text/plain; charset=iso-8859-13; format=flowed
Content-Transfer-Encoding: quoted-printable

Thank you very much,
yes indeed :)

Perceval

On mer., f=E9vr. 14 2024 at 14:15:46 +0000, Ross Burton=20
<Ross.Burton@arm.com> wrote:
> On 14 Feb 2024, at 14:03, Perceval <perceval_arenou@trimble.com=20
> <mailto:perceval_arenou@trimble.com>> wrote:
>>=20
>>  It seems that the dataclasses is not packaged in a dedicated=20
>> package on the dunfell branch according to sources here =20
>> <https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtoo=
ls/python/python3/python3-manifest.json?h=3Ddunfell>
>>  So it ends up in python3-misc which have a lot of things:
>>  $ oe-pkgdata-util find-path /usr/lib/python3.8/dataclasses.py
>>  python3-misc: /usr/lib/python3.8/dataclasses.py
>>=20
>>  Should we package it in a dedicated package or another one? What=20
>> would you suggest?
>=20
> For master I just sent a patch moving it into -core, because it=FFs a=20
> fairly fundamental package.
>=20
> For dunfell, moving it now is probably not a great idea, but at least=20
> you know now what package to RDEPEND on to get the class.
>=20
> (or, you can RDEPEND on python3-modules and you get the entire=20
> standard library)
>=20
> Ross


--=-Rd7KfF4CiCqlg5Gclyxw
Content-Type: text/html; charset=iso-8859-13
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto"><div>Thank you very much,</div><div>yes=
 indeed :)</div><div><br></div><div>Perceval</div></div><div id=3D"geary-qu=
ote" dir=3D"auto"><br>On mer., f=E9vr. 14 2024 at 14:15:46 +0000, Ross Burt=
on &lt;Ross.Burton@arm.com&gt; wrote:<br><blockquote type=3D"cite"><div cla=
ss=3D"plaintext" style=3D"white-space: break-spaces;">On 14 Feb 2024, at 14=
:03, Perceval &lt;<a href=3D"mailto:perceval_arenou@trimble.com">perceval_a=
renou@trimble.com</a>&gt; wrote:
<blockquote>=20
 It seems that the dataclasses is not packaged in a dedicated package on th=
e dunfell branch according to sources here  <a href=3D"https://git.openembe=
dded.org/openembedded-core/tree/meta/recipes-devtools/python/python3/python=
3-manifest.json?h=3Ddunfell">https://git.openembedded.org/openembedded-core=
/tree/meta/recipes-devtools/python/python3/python3-manifest.json?h=3Ddunfel=
l</a>=20
 So it ends up in python3-misc which have a lot of things:
 $ oe-pkgdata-util find-path /usr/lib/python3.8/dataclasses.py
 python3-misc: /usr/lib/python3.8/dataclasses.py
=20
 Should we package it in a dedicated package or another one? What would you=
 suggest?
</blockquote>
For master I just sent a patch moving it into -core, because it=FFs a fairl=
y fundamental package.

For dunfell, moving it now is probably not a great idea, but at least you k=
now now what package to RDEPEND on to get the class.

(or, you can RDEPEND on python3-modules and you get the entire standard lib=
rary)

Ross</div></blockquote></div>
--=-Rd7KfF4CiCqlg5Gclyxw--


