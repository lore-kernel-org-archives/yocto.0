Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3DB0E00D35; Thu, 29 Aug 2019 09:33:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 279B3E00C11
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 09:33:39 -0700 (PDT)
Received: by mail-pf1-f193.google.com with SMTP id w2so2425241pfi.3
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 09:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=houdoOPwEiyJM6X6jp2g8us2HKkbGE7fhr3pXu5zxEg=;
	b=aIbNQi04uRFRhqnGAnD2u7xn0JOZkh/Uy3EvG6Ec+DVJlkhKNP43R5FsrC39mA+k8z
	ocsSicrujwm9QDmD4lRm9EO6G4uAQFBHchZKZNHsvJXjqJRhYC96PylbSVikiOaawLFq
	A+UBWl8OJ3X6mfxIdz1uJH549U9rw3JCGwYPXpWE3x4lp3lmkpk99xuP8O2zL7ZFrszE
	+wQVyxfpjwrVubou57gefx36jrTApvmUsowjajSt4bAJATxDODcBlw0KX4G6L3qJr4ev
	4mXPvXiDdQ+V/M+moalbMN6kuAtZLfAqxnCgBJrE1OfgeC2EMxJcU79DCxbZLnVRX+0S
	sJIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=houdoOPwEiyJM6X6jp2g8us2HKkbGE7fhr3pXu5zxEg=;
	b=cH576SWvzpWKUfgtaPJMUMNIiRFfN+5mwVY6bJBcwNij/AO7KXFebo431lClIMGcmF
	ek/fZMBWTEM4KMvtwUJdhlJ6VqTvXEUDT0Sy9oAj0m4K2au6c3u4mLBHgvsyyyFO5W2J
	PFTGP6JNwqtlmysgWISD2Mq/TAoszYr6iTJLroAOqYh0DMPmajoSClbPK6p9J5doWOro
	wJiMHc/nr3wb+vSnLEjoymT+ZHPI1CNlgvlDrgMKP8ZidTgc6/NBtNQy/tEgV9/A6+UM
	ibsZrTAvApitbRsXKNdJ9aWZOR18h8cJEZUzGEwD1oPeD+iK3P3LdUs/jZgpNW8pqccn
	0Kmw==
X-Gm-Message-State: APjAAAWQ6btUq7uda2MVYKnAukliQrmdYOGYtoTP/Hy/XBoej02ZwS7K
	BeCX57lG/ehnIuDX8TeIpCH/8plh
X-Google-Smtp-Source: APXvYqzMJ4SCc3YEq8kwR5KNCIAEU3VFxwYZ4pUai4MnWHiI12kjJY2QhBJyuJDCJH/9JkTgRJontg==
X-Received: by 2002:a63:1046:: with SMTP id 6mr7274343pgq.111.1567096418304;
	Thu, 29 Aug 2019 09:33:38 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:e5a5:4b94:b3b5:f092?
	([2601:202:4180:c33:e5a5:4b94:b3b5:f092])
	by smtp.gmail.com with ESMTPSA id
	z63sm3172967pfb.163.2019.08.29.09.33.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Aug 2019 09:33:37 -0700 (PDT)
To: Joe MacDonald <joe@deserted.net>
References: <20190829054108.12642-1-yuanc.fnst@cn.fujitsu.com>
	<754c1003-89ef-cf33-2508-d58c55947b99@gmail.com>
	<20190829142551.GA34991@deserted.net>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <c52381d7-76c5-2edf-f0ac-e0384e3d61bd@gmail.com>
Date: Thu, 29 Aug 2019 09:33:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190829142551.GA34991@deserted.net>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] [PATCH] python-scapy: upgrade 2.4.2 -> 2.4.3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Aug 2019 16:33:39 -0000
X-Groupsio-MsgNum: 46445
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="EzSx7kr7pyuQv1235Rn3D1GjPOJtITwfT"

--EzSx7kr7pyuQv1235Rn3D1GjPOJtITwfT
Content-Type: multipart/mixed; boundary="wBpaqCxkPB5m4AB0zybWzIM4Y7Mg6VdEN";
 protected-headers="v1"
From: akuster808 <akuster808@gmail.com>
To: Joe MacDonald <joe@deserted.net>
Cc: Yuan Chao <yuanc.fnst@cn.fujitsu.com>, yocto@yoctoproject.org
Message-ID: <c52381d7-76c5-2edf-f0ac-e0384e3d61bd@gmail.com>
Subject: Re: [yocto] [meta-selinux] [PATCH] python-scapy: upgrade 2.4.2 ->
 2.4.3
References: <20190829054108.12642-1-yuanc.fnst@cn.fujitsu.com>
 <754c1003-89ef-cf33-2508-d58c55947b99@gmail.com>
 <20190829142551.GA34991@deserted.net>
In-Reply-To: <20190829142551.GA34991@deserted.net>

--wBpaqCxkPB5m4AB0zybWzIM4Y7Mg6VdEN
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US



On 8/29/19 7:25 AM, Joe MacDonald wrote:
> [Re: [yocto] [meta-selinux] [PATCH] python-scapy: upgrade 2.4.2 -> 2.4.=
3] On 19.08.29 (Thu 07:14) akuster808 wrote:
>
No v2 required. does not affect patchwork.

- armin
>>
>> On 8/28/19 10:41 PM, Yuan Chao wrote:
>>> License file changed from bin/scapy to LICENSE
>> Is this the correct layer?
> There's no scapy in meta-selinux, AFAIK.  So proably this was destined
> for meta-security instead.
>
> -J.
>
>> -armin
>>> Signed-off-by: Yuan Chao <yuanc.fnst@cn.fujitsu.com>
>>> ---
>>>  recipes-security/scapy/python-scapy.inc                       | 4 ++=
--
>>>  .../scapy/{python-scapy_2.4.2.bb =3D> python-scapy_2.4.3.bb}    | 0
>>>  .../scapy/{python3-scapy_2.4.2.bb =3D> python3-scapy_2.4.3.bb}  | 0
>>>  3 files changed, 2 insertions(+), 2 deletions(-)
>>>  rename recipes-security/scapy/{python-scapy_2.4.2.bb =3D> python-sca=
py_2.4.3.bb} (100%)
>>>  rename recipes-security/scapy/{python3-scapy_2.4.2.bb =3D> python3-s=
capy_2.4.3.bb} (100%)
>>>
>>> diff --git a/recipes-security/scapy/python-scapy.inc b/recipes-securi=
ty/scapy/python-scapy.inc
>>> index baa69b2..28e13f2 100644
>>> --- a/recipes-security/scapy/python-scapy.inc
>>> +++ b/recipes-security/scapy/python-scapy.inc
>>> @@ -3,11 +3,11 @@ DESCRIPTION =3D "Scapy is a powerful interactive pa=
cket manipulation program. It i
>>>  SECTION =3D "security"
>>>  LICENSE =3D "GPLv2"
>>> =20
>>> -LIC_FILES_CHKSUM =3D "file://bin/scapy;beginline=3D9;endline=3D13;md=
5=3D1d5249872cc54cd4ca3d3879262d0c69"
>>> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Db234ee4d69f5fce4486a80fda=
f4a4263"
>>> =20
>>>  S =3D "${WORKDIR}/git"
>>> =20
>>> -SRCREV =3D "bad14cb1a5aee29f8107fbe8ad008d4645f14da7"
>>> +SRCREV =3D "3047580162a9407ef05fe981983cacfa698f1159"
>>>  SRC_URI =3D "git://github.com/secdev/scapy.git"
>>> =20
>>>  inherit ptest
>>> diff --git a/recipes-security/scapy/python-scapy_2.4.2.bb b/recipes-s=
ecurity/scapy/python-scapy_2.4.3.bb
>>> similarity index 100%
>>> rename from recipes-security/scapy/python-scapy_2.4.2.bb
>>> rename to recipes-security/scapy/python-scapy_2.4.3.bb
>>> diff --git a/recipes-security/scapy/python3-scapy_2.4.2.bb b/recipes-=
security/scapy/python3-scapy_2.4.3.bb
>>> similarity index 100%
>>> rename from recipes-security/scapy/python3-scapy_2.4.2.bb
>>> rename to recipes-security/scapy/python3-scapy_2.4.3.bb
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto



--wBpaqCxkPB5m4AB0zybWzIM4Y7Mg6VdEN--

--EzSx7kr7pyuQv1235Rn3D1GjPOJtITwfT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJdZ/5fAAoJEO6LtJn0Vuf5IjcP/1lxqufYRCJSC5+uXweRpYgO
hXky0dtU6Tif045kAgFMG0ptZJ6v45dfl30El3v62RZ1Rnu6ULy0vXlcYjm9blIs
NnghbhHDuYo3KHfLGCVdZAE5S1AqB4giBrLgrc5dhDccBJ4lqQQtU2G+m0Sn3JCf
DAZUHiJJg3mY7ZAJPhYSlCa2zgy3VknHaC6oncx328nIvyuurwMO0qNdBo1TtM5g
vABE7u0UDbQJQbS+9dU+kTxOOOmz6GPSGKFYTNTxv205tqDxMfzzGzXdNow9FI7y
7IWYQTvP+YOo05xrVwVMKU6caGLJUO05ckHznQgx4vu2WbjbtnX0D9wGduVJxCw2
FlZJ0/Lsiv8mRZyKTu5QOr4z6TU/tq9VTF+mondUpys+smCyeesbAz2NFN2q4Bhb
0E0nrrYlaLyB0jAYh6K9HxZ7vXAKMw+LVYKdaod+NnbGtiU1KilNWJl12e0stvRl
ZCjC5Fnl6/5dECCgAknjSn4HRLXLskSAEvLZiRvSlAyOVJI8wW0w/pc1MtLEPiif
19UUXk6pC6eTlcCUJp8dRGCHPwrPX32iRjMymukb+gymcVXz+CvQ9o4CPu164DLE
h2QEji4B1g/ofcYgA6Ld0edxusJh3ElYto5K29gyfkbm9LMx8DZfEMBC7zqAG4Cn
69RECLpFJG9fidawgjbk
=lmMu
-----END PGP SIGNATURE-----

--EzSx7kr7pyuQv1235Rn3D1GjPOJtITwfT--
