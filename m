Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1211.1587778715903471614
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 18:38:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BrLNjPHE;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E744E01A69; Fri, 24 Apr 2020 18:38:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C76EE01A63
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 18:38:31 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id t4so4397858plq.12
        for <yocto@yoctoproject.org>; Fri, 24 Apr 2020 18:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:organization:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=brrSZUaXJMxceSqwBW0r/vJHGxnYXmhcyg7aO/urj/c=;
        b=BrLNjPHEU+m0GtRUyFIRSadrtLjBAxGprbmiKCq5FPuRP03qO2ifbPt0J5TL0YwatS
         EkSFbNZfy5/zcZ1ERPLX8c9r3T8/hE/ahgyXyEc5cpF875qDSw5ZRsvmS1wfm25WoYI/
         44oD6zCfxqxnfWByneZzuYcPnzy1V0dIJ1iS+VrGG3Y7fKYgPaKfy+8AUpcCGFyA+ef2
         WhQnVyJr1uNwW6rugxdLOsHMeroPGvAdPvNvcmGQN+XroER4M77r0jfJIU/ndDLysUfF
         K7UvfH5Cpy0O+QXiQ6k1izxbmafX/kW9YeJoX49HgBtdfXl+dKOUqzCMq4kbqsQg3UFX
         vAnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to;
        bh=brrSZUaXJMxceSqwBW0r/vJHGxnYXmhcyg7aO/urj/c=;
        b=FZa7ThGHA5NvtRiRjkHw2SOlEh9pLI4NJ66vhfCIp9N8WFj9+54/Ct4QTlO7Iakn05
         ByF2+RNoMB8Vv3eJwdewjDKSdkGQ8E8laJlx7SPGFQBNlvfsfNfQt4NT+gZZBykr6TBM
         Ex4nw/ewElB9iNCK3oFOzgxxPkhBf1n4eJrPiQR55PFoZxyE9r0+ODtQn8C1A5xa5uef
         fOZUuSop7BHCOritI0507X4jRQoqpxAM1E74YKPkaFoAYPa5yoCE72ex0xdBxg4phtIC
         jxNHTOQkD0usz4XTGkanJH3oz7TeqshOBf1xMHC3FdXxUYzTP8I8e8G46amFCIaaYXkZ
         /pnw==
X-Gm-Message-State: AGi0PuYN7xhlpjbynq+aVbiBA37FpZd3loegRfzOJlwNYyNvEdy0ToB3
	MGcOlH/2RyQypAfEYK8TZLXoZGf7MiU=
X-Google-Smtp-Source: APiQypLRmGh9J2jEYrn/yf4YJoHi2zqotDquUFV33h++8wVfjz4OW/+q1aa0ajR8EWz+i87OhdGl0g==
X-Received: by 2002:a17:90a:3450:: with SMTP id o74mr9596381pjb.159.1587778710912;
        Fri, 24 Apr 2020 18:38:30 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:4e0::ac76? ([2601:646:9200:4e0::ac76])
        by smtp.gmail.com with ESMTPSA id y186sm6818552pfy.66.2020.04.24.18.38.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 18:38:30 -0700 (PDT)
Subject: Re: [yocto] Can't find pyconfig.h with python3
To: Emily <easmith5555@gmail.com>, Yocto List <yocto@yoctoproject.org>
References: <CAAV2bM0wH85d97Td2dg=oQwSW3K5nTKF3604w7Y0Fz6tn=01Gw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Organization: HIMVIS LLC
Message-ID: <096aae34-df17-0aa0-8e3b-e9f740e9a54d@gmail.com>
Date: Fri, 24 Apr 2020 18:38:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAV2bM0wH85d97Td2dg=oQwSW3K5nTKF3604w7Y0Fz6tn=01Gw@mail.gmail.com>
X-Groupsio-MsgNum: 49231
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="q5LHLFGmdP0OJQ6zYgebGvqfyJENFUldr"

--q5LHLFGmdP0OJQ6zYgebGvqfyJENFUldr
Content-Type: multipart/mixed; boundary="Ab0IgQwAIeRXQvOqHtXtzCkRwdKY0xVkV";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Emily <easmith5555@gmail.com>, Yocto List <yocto@yoctoproject.org>
Message-ID: <096aae34-df17-0aa0-8e3b-e9f740e9a54d@gmail.com>
Subject: Re: [yocto] Can't find pyconfig.h with python3
References: <CAAV2bM0wH85d97Td2dg=oQwSW3K5nTKF3604w7Y0Fz6tn=01Gw@mail.gmail.com>
In-Reply-To: <CAAV2bM0wH85d97Td2dg=oQwSW3K5nTKF3604w7Y0Fz6tn=01Gw@mail.gmail.com>

--Ab0IgQwAIeRXQvOqHtXtzCkRwdKY0xVkV
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 4/24/20 4:17 PM, Emily wrote:
> Hi all -=C2=A0
>=20
> I'm trying to build an OS with a custom recipe
> (https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/o=
pc-ua/opc-ua-server-gfex_git.bb).
> I can build it as-is in the link above, but when actually trying to use
> the output of the recipe (Poverty.so) I get the below error in python3:=
=C2=A0
>=20
>>>> import Poverty Traceback (most recent call last): File "<stdin>", lin=
e 1, in <module> ImportError: /usr/bin/Poverty.so: undefined symbol: _ZN5bo=
ost6python6detail11init_moduleEPKcPFvvE
>=20
>=20
> I think that's because I built against python2 in some places. So I
> replaced essentially all of the python dependencies=C2=A0with their
> corresponding python3 dependencies, but that gives a build error in
> bitbake like:=C2=A0=C2=A0
>=20
> | /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linu=
x/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/includ=
e/boost/python/detail/wrap_python.hpp:50:11: fatal error: pyconfig.h: No su=
ch file or directory
> | =C2=A0# include <pyconfig.h>
> | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~~
> | compilation terminated.
>=20
>=20
> However, I checked and the offending file pyconfig.h is actually present
> at |
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/=
opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot/usr/include/=
python3.5m/.
> When I build with python2 dependencies the file is in the same location,
> just /python2.7/.
>=20
> I can't quite tell if this is a yocto problem, or a problem with my
> recipe and/or build files for that recipe. If anyone has suggestions
> they would be much appreciated!=20

this seems to be that it is needing python2, so yes it can perhaps be
ported to py3 but you might have to check if it needs some code changes

Looking at the recipe it is ineheriting py2 class here [1]

perhaps you should change that to python3native

[1]
https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-=
ua/opc-ua-server-gfex_git.bb#L15



>=20
> Thanks!
> Emily Smith
>=20
>=20
>=20
>=20


--Ab0IgQwAIeRXQvOqHtXtzCkRwdKY0xVkV--

--q5LHLFGmdP0OJQ6zYgebGvqfyJENFUldr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXqOUjwAKCRC7BTNVkZ0z
FH9/AKCB9OtXH5bqu2TrdViUL+axDPRAIgCgi8PN55yoB2OphN6tklS2SgnForQ=
=Zzzt
-----END PGP SIGNATURE-----

--q5LHLFGmdP0OJQ6zYgebGvqfyJENFUldr--
