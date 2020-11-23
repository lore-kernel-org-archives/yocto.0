Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.40599.1606159225496006816
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Nov 2020 11:20:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gS7RMr4k;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A9A9938C087E
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2020 19:20:24 +0000 (UTC)
Received: by mail-pf1-f174.google.com with SMTP id n137so5811352pfd.3
        for <yocto@yoctoproject.org>; Mon, 23 Nov 2020 11:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=etGCoIGwFf8Y8aVsSkuvzEDWOfGWTLUvLATMK9vCk7c=;
        b=gS7RMr4ko3t7QhpS/RWlNmfJYMMrSN8DzuRrrTREybeESEVBCmVIBU5Wmy3yrJDpxN
         Cbp57S7LZ7GorISF9jZcuPKggzmd8/WxguKEn7aw9SLwb3S6z4oJfjhwpzqQahr//UvD
         eV/w/4PJiTbWjPCc/q+JNSXq2DY7l/OFfwCqDoD5f1/tZvmfaixVmfCdtGxTga1nsmnE
         E22Q0n+RaDXRIFzn97tzgGaeTds9QEMxeogDyUA0Ab2q29f072z05KPQYa/FDtdcatuG
         0h5AXkAaw67LwcMjs87kS8GGEzwlGaDSTZk4kUklFjfKgCM6xcx0zuT68XtPD6YggStM
         Ep6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=etGCoIGwFf8Y8aVsSkuvzEDWOfGWTLUvLATMK9vCk7c=;
        b=DQAG/Whwb3vc/5cqGAf3BcvpRCjtoOx4YjlAxaCugjqHycV7Q+6XjxHCpCpqQrf0fB
         0r4I5dp1pbtI3l/2yvkn+NgSXZyxBRULQslh6tavPj+/NfK+go8VQk56JB7/z6riCj/c
         Pd2C4ar/I7S8iVkikRCT7xkAD9BYENaDXQhZbiXsfboUxfgsfW4BhYSH2of1d2bTPqg0
         R0BXlFL7cAGta4/qI+j6tV8ee9hblCTIzZcrI0dDMGapDSaJHYfSIMqETZXJljEcXnyO
         22SevfHj/XSDvdvrOWTbwh+x8CO1ysanqxlNtiwn1Qph9npBrrcrTYIliy5KiZ9+yvJz
         +tYQ==
X-Gm-Message-State: AOAM531n70QYTo5KSMdGDFUy7chAOuplwVOWqg9NuQH8OKqEL8mVocgT
	/nRDN8co8arnEP0KijOfgJPtsao1EwM=
X-Google-Smtp-Source: ABdhPJyGA6WNiKCRgqSbWm0XBDeTrpQdYngWCNL0mG1Hq+IgEKcXgjFMttnleiipOhKtYmHI4cvGDQ==
X-Received: by 2002:a17:90a:e009:: with SMTP id u9mr471407pjy.12.1606159223951;
        Mon, 23 Nov 2020 11:20:23 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:55a3:5ef5:c2ab:7e5b? ([2601:202:4180:a5c0:55a3:5ef5:c2ab:7e5b])
        by smtp.gmail.com with ESMTPSA id e141sm5332076pfh.13.2020.11.23.11.20.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Nov 2020 11:20:23 -0800 (PST)
Subject: Re: [yocto] strange meta-security bbappend file with two percent signs
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <701784e8-a16e-8fc4-bd0-587a2019b5ba@crashcourse.ca>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <c1ded1d6-ec45-0dd5-e30e-859dea687bc9@gmail.com>
Date: Mon, 23 Nov 2020 11:20:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <701784e8-a16e-8fc4-bd0-587a2019b5ba@crashcourse.ca>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 11/21/20 1:56 PM, Robert P. J. Day wrote:
>   while the bitbake user manual insists:
>
> "The use of the =E2=80=9D % =E2=80=9D character is limited in that it on=
ly works
> directly in front of the .bbappend portion of the append file=E2=80=99s =
name.
> You cannot use the wildcard character in any other location of the
> name."
>
> i just ran across this in the meta-security layer:
>
>   recipes-kernel/linux/linux-%_5.%.bbappend
>
> what is one supposed to make of that?
please send a patch to make to correct the situation.

-armin


>
> rday
>
>=20
>


