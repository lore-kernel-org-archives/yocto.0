Return-Path: <perceval_arenou@trimble.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 407E9C48BC3
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 14:03:52 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.41655.1707919428422491101
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Feb 2024 06:03:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@trimble.com header.s=google header.b=Cmw9vbin;
 spf=pass (domain: trimble.com, ip: 209.85.167.48, mailfrom: perceval_arenou@trimble.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5114fa38434so6151130e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 06:03:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trimble.com; s=google; t=1707919426; x=1708524226; darn=lists.yoctoproject.org;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=tcC2T/AWlnikCad5WKNeRePSEwU33P/jL7zFC1r1ryk=;
        b=Cmw9vbinxGY5ZHaFsfNn9WFfTC4zBKfsVq35eBZ5s7qIKT2jx3ALxRFv1ItzzcDdnS
         1BTMuLr8z7OK8La6JeqSmam9qh76dU8rs6bzMKcbMhKqZr6VbL2z/heOljgvBJtvltEP
         pUDVllyAI3xZZ3ajVnKKLf9YnkmFjdxM20CSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707919426; x=1708524226;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tcC2T/AWlnikCad5WKNeRePSEwU33P/jL7zFC1r1ryk=;
        b=aoW+dblfSrH/fbCDd/i3bHfErBoAgLj9kAhW7+YhKOPlWY7+MAF9Nk+y1e3B6c/AAY
         kBkzy8oVnjUooOnrtwCtAQlL+LxycM6680ryaig3xlsQAybYa4OMSMzJlZeAZGME22C8
         gIMMsIbJZ2ImTCs1cuUsc6UOSr/q9VMy3jwT5YWNRUCuJBAuuAjVq0CbFBgTDSdWNvLl
         zRAXKTEQc4F9Ew56/3vSCrqR4FnrllGW+aZ1L5JaKfofpn33u0zRzN202dKq1XptYLUK
         Uf73Mo+PQ7UR2dBLUvpa8APizi1m5ZZQzLk3zVsyWH0TCuZSmS6KRW3nuLMnCY70nfjR
         a4IQ==
X-Gm-Message-State: AOJu0Yyl6ZxIS7TSMOUxA+PDpgxuZbaCSzxs256a1CJNKKiHvdoThPJw
	2X18XYTS76UgHOJoYCr2B0dsgXr03pgGbnb4VVfISnPrgm9XbHhfOwF+bhr3Sc0=
X-Google-Smtp-Source: AGHT+IEYtu+3JYKk21MnlEV+pr1tOY77ldmQT0fMfHgBxod2vhTnHMyh4ZOJKJm6TeZ5a8Kg2pGurw==
X-Received: by 2002:ac2:43c7:0:b0:511:5087:36f3 with SMTP id u7-20020ac243c7000000b00511508736f3mr1716047lfl.53.1707919426370;
        Wed, 14 Feb 2024 06:03:46 -0800 (PST)
Received: from [10.2.87.19] (lputeaux-658-1-190-18.w80-11.abo.wanadoo.fr. [80.11.239.18])
        by smtp.gmail.com with ESMTPSA id bt25-20020a056000081900b0033b792ed609sm10453948wrb.91.2024.02.14.06.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Feb 2024 06:03:46 -0800 (PST)
Date: Wed, 14 Feb 2024 15:03:40 +0100
From: Perceval <perceval_arenou@trimble.com>
Subject: Re: [yocto] extend python3 manifest to add a module
To: Ross Burton <Ross.Burton@arm.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Message-Id: <42NU8S.WT0Y3BGIDTIA1@trimble.com>
In-Reply-To: <CF199512-3ED8-4845-AE0D-3F3FEFCD02A6@arm.com>
References: <QIBU8S.RL2ZWWVWX0423@trimble.com>
	<CF199512-3ED8-4845-AE0D-3F3FEFCD02A6@arm.com>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-2+mbb8rgozOlNij1L+tW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 14:03:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62489

--=-2+mbb8rgozOlNij1L+tW
Content-Type: text/plain; charset=iso-8859-13; format=flowed
Content-Transfer-Encoding: quoted-printable

It seems that the dataclasses is not packaged in a dedicated package on=20
the dunfell branch according to sources here =20
<https://git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/=
python/python3/python3-manifest.json?h=3Ddunfell>

So it ends up in python3-misc which have a lot of things:
$ oe-pkgdata-util find-path /usr/lib/python3.8/dataclasses.py
python3-misc: /usr/lib/python3.8/dataclasses.py

Should we package it in a dedicated package or another one? What would=20
you suggest?

Perceval




On mer., f=E9vr. 14 2024 at 11:24:41 +0000, Ross Burton=20
<Ross.Burton@arm.com> wrote:
> On 14 Feb 2024, at 09:54, Perceval via lists.yoctoproject.org=20
> <perceval_arenou=3Dtrimble.com@lists.yoctoproject.org=20
> <mailto:perceval_arenou=3Dtrimble.com@lists.yoctoproject.org>> wrote:
>>=20
>>  Hello,
>>=20
>>  I'm building an image on the dunfell branch.
>>  I would like to add dataclasses module in python3. For that I know=20
>> that I should add it to the python3-manifest.json.
>>  I tried to add my new manifest file in SRC_URI using a bbappend. It=20
>> didn't work as the manifest file is red by a anonymous python=20
>> function on parsing:
>>=20
>>  filename =3D os.path.join(d.getVar('THISDIR'), 'python3',=20
>> 'python3-manifest.json')
>>=20
>>  What should I do to add dataclasses to my python3 installation?=20
>> What is the suggested method or best practice for that operation?
>>  I would like to avoid forking openembedded-core just for that.
>=20
> The manifest simply defines how the packages are split up, the=20
> dataclasses module is always packaged.
>=20
> For some reason, it appears to be part of python3-profile in my build:
>=20
> $ oe-pkgdata-util find-path /usr/lib/python3.12/dataclasses.py
> python3-profile: /usr/lib/python3.12/dataclasses.py
>=20
> That=FFs not right though, we should put that in a better package.
>=20
> Ross


--=-2+mbb8rgozOlNij1L+tW
Content-Type: text/html; charset=iso-8859-13
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto">It seems that the dataclasses is not pa=
ckaged in a dedicated package on the dunfell branch according to sources he=
re &nbsp;<a href=3D"https://git.openembedded.org/openembedded-core/tree/met=
a/recipes-devtools/python/python3/python3-manifest.json?h=3Ddunfell">https:=
//git.openembedded.org/openembedded-core/tree/meta/recipes-devtools/python/=
python3/python3-manifest.json?h=3Ddunfell</a>&nbsp;<div><br></div><div>So i=
t ends up in python3-misc which have a lot of things:</div><div><div>$ oe-p=
kgdata-util find-path /usr/lib/python3.8/dataclasses.py</div><div>python3-m=
isc: /usr/lib/python3.8/dataclasses.py</div></div><div><br></div><div>Shoul=
d we package it in a dedicated package or another one? What would you sugge=
st?</div><div><br>Perceval</div><div><br></div><div><div><div><br></div><di=
v><br></div></div></div></div><div id=3D"geary-quote" dir=3D"auto"><br>On m=
er., f=E9vr. 14 2024 at 11:24:41 +0000, Ross Burton &lt;Ross.Burton@arm.com=
&gt; wrote:<br><blockquote type=3D"cite"><div class=3D"plaintext" style=3D"=
white-space: break-spaces;">On 14 Feb 2024, at 09:54, Perceval via lists.yo=
ctoproject.org &lt;<a href=3D"mailto:perceval_arenou=3Dtrimble.com@lists.yo=
ctoproject.org">perceval_arenou=3Dtrimble.com@lists.yoctoproject.org</a>&gt=
; wrote:
<blockquote>=20
 Hello,
=20
 I'm building an image on the dunfell branch.
 I would like to add dataclasses module in python3. For that I know that I =
should add it to the python3-manifest.json.
 I tried to add my new manifest file in SRC_URI using a bbappend. It didn't=
 work as the manifest file is red by a anonymous python function on parsing=
:=20
=20
 filename =3D os.path.join(d.getVar('THISDIR'), 'python3', 'python3-manifes=
t.json')=20
=20
 What should I do to add dataclasses to my python3 installation? What is th=
e suggested method or best practice for that operation?=20
 I would like to avoid forking openembedded-core just for that.
</blockquote>
The manifest simply defines how the packages are split up, the dataclasses =
module is always packaged.

For some reason, it appears to be part of python3-profile in my build:

$ oe-pkgdata-util find-path /usr/lib/python3.12/dataclasses.py
python3-profile: /usr/lib/python3.12/dataclasses.py

That=FFs not right though, we should put that in a better package.

Ross</div></blockquote></div>
--=-2+mbb8rgozOlNij1L+tW--


