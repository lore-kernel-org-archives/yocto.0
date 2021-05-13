Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.13948.1620915075727448488
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 07:11:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=nqKOT0lG;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CF5D438C03D5
	for <yocto@yoctoproject.org>; Thu, 13 May 2021 14:11:14 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id h20so14452471plr.4
        for <yocto@yoctoproject.org>; Thu, 13 May 2021 07:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7vJ6SuaLpZCXJ+Vlj9b0JFjPjJnNk4kOKRM5zi9NGBs=;
        b=nqKOT0lGYHAvNpYyFtQ9vwWZga+nQDdY0u6uXW3fJypny/U8l7xITNoNtEsWYIEIzM
         btsSbDbDsh9lIgJfYHg6J9jqY+KSF1Nid7kcYfsguOvWRn8Yts7mYpgrk6Fvrc7L6uPv
         kCPNtosC9lQbu1H9WeDUEkAgVKo+JA3CjgrZrR5Z63hi4lSigjB/+IkQGuG+NeJySrnE
         TZz+vEV18YKvlPeJj8M14PaUdQM9oPMRarCS8n//yZpG0ELNlzPgY5Po7WlzjEqxN+oy
         VoRUETlLe7BQcjVshmz+d1Ps4vkc2ISuZIKihavVj+rkRujb2kxGM6Fz9XfjcKBaChyU
         8EDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=7vJ6SuaLpZCXJ+Vlj9b0JFjPjJnNk4kOKRM5zi9NGBs=;
        b=kCE6vN4qrRu9PB37kcZwfDrQ9I3+JwuLwZrOOB6A17aD1LfNREK+ZekYgExpQpyDg4
         ljN/x2cQYEJguqN4br9wc3Ta3sS0rAXOCrK870s6dHggaM/FjKoXuYHI+7sDmzqWwMJh
         9YJ5UXbFGDlHundeiTBIWNDAuKyfNq9lH30Ve6hkrMPOWotwLyPrlVJTgYQo/lqBcitb
         zh0H5uGiynQkmb+K6Kw38R/jzpruXujgBnwq5LgPuBnbBCvQjvuVdexQ7vjzALizBk1H
         101H7/8jSjXi31aVf9yfWOGlN6GVoaPqwoEzPI/OLgENQ+QQ5IFjY9X4lUncZN4NA5EK
         0ggQ==
X-Gm-Message-State: AOAM532SsIGbniTCuLuzJSQn2a1I4856v0kZpKsVnCWpZ4tv59YYxOyz
	HKLqqbYURpidbJ2FZa5k8Pcy4fLRDMeP9g==
X-Google-Smtp-Source: ABdhPJxBLw16Ctcg/DpYutIroTWc6k1pAl7SeWzMsnNfnh2eV4PX7lYkaKzm8RL4bx3vQgmFO23K8Q==
X-Received: by 2002:a17:902:e302:b029:ee:9596:8e7a with SMTP id q2-20020a170902e302b02900ee95968e7amr40143405plc.37.1620915073985;
        Thu, 13 May 2021 07:11:13 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:a0f0::c947? ([2601:646:9200:a0f0::c947])
        by smtp.gmail.com with ESMTPSA id h1sm2311771pfh.72.2021.05.13.07.11.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 07:11:13 -0700 (PDT)
Subject: Re: [yocto] Yocto with xtensa
To: Jack Daniels <onyx22574@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
References: <CAF2aNtzrjYOUYdevN83fJ-Dn6Jjp1SsNh1Q5zO0MXFEjW4xcUg@mail.gmail.com>
 <CAMKF1sqxa+F4POAOb78tZd2ArPPk9ZTjfRMWSWEXyDyXxug9Pw@mail.gmail.com>
 <CAF2aNtyY+xM2Oj4w8Mf+hZmr47wTpb+ibYDQK=fFinj4Cue=jQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <8f8587c8-1f11-e1f7-8f43-d4e8fb6bf9b0@gmail.com>
Date: Thu, 13 May 2021 07:11:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAF2aNtyY+xM2Oj4w8Mf+hZmr47wTpb+ibYDQK=fFinj4Cue=jQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 5/12/21 11:45 PM, Jack Daniels wrote:
> Hello Khem,
>=20
> Thank you for the information.
> Is it about adding support for the xtensa build system (toolchain)? Is=
=20
> it work for=C2=A0heterogeneous=C2=A0SoC (CPU/ARM=C2=A0+=C2=A0DSP/xtensa)=
 as well?
>=20

I can think of few ways

build your Xtensa firmware outside yocto and let yocto package it via=20
recipes for prebuilts and build ARM system with yocto should work well

second option is to integrate Xtensa support into OE and then use=20
multiconfig feature to build firmware for heterogenous systems.
this will be preferred and forward looking for future but it will be
more work

> Thank you.
> BR/J
>=20
> On Thu, May 13, 2021 at 1:07 AM Khem Raj <raj.khem@gmail.com=20
> <mailto:raj.khem@gmail.com>> wrote:
>=20
>     Hello Jack,
>=20
>     I think we do not have support for Xtensa architecture working out o=
f
>     box upstream. Although it should be possible to add it with little
>     effort, but no one has spun patches to do so
>     thus far.
>=20
>     Thanks
>     -Khem
>=20
>     On Wed, May 12, 2021 at 1:29 PM Jack Daniels <onyx22574@gmail.com
>     <mailto:onyx22574@gmail.com>> wrote:
>      >
>      > Dears,
>      >
>      > I am looking for a way to include sample code for DSP (xtensa)
>     with Yocto/Linux. what would be the procedure to include such a code
>     and eventually interprocessor communication between xtensa core and
>     CPU under Yocto/Linux?
>      >
>      > Thank you.
>      > BR/J
>      >
>      >
>      >=20
>      >
>=20
