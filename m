Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4414E00DA2; Mon,  8 Aug 2016 08:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6016FE00CA5
	for <yocto@yoctoproject.org>; Mon,  8 Aug 2016 08:21:05 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y134so25199313pfg.3
	for <yocto@yoctoproject.org>; Mon, 08 Aug 2016 08:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ljOUMyw3w+Pn8CAqlTkTpeS5VuJMm7JZMe3oQBsPvZM=;
	b=aUBrqz41/ZMrOiO7nU2tJort5pr9lCS2FvUVQKHWtfaOjsqyokzeh1TrBlZVGzNMWL
	xtLLiWuRowUB3JafIa6ntGqVAaVHQnIfdSwFm/vafETk8DNU0tJheMpHHg15bmNBBDT0
	0PRBU6fd8Eg+pgErW0BPQk7VPhkYAwIKN7a9yiy+9SlE2u1VsAAyXNlxwt4t+fMOhBQg
	CN8JZokoXge1HX+nWdrYTiSxM072y73gBSKDh0Vm3giD0rkOAs/6cQ3SkyFAzEMkKBC1
	QGYEYAJv9WBnpVjeJv9T+t54UhiiUkBwc3oI8yAJSObjf0maoiFbdgP7xyigsCqDVqPu
	VAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ljOUMyw3w+Pn8CAqlTkTpeS5VuJMm7JZMe3oQBsPvZM=;
	b=VoMnpy32w9YSOcOoI78j8XyzzmHP2UT1WN7eMAPanDH1N+Z4mpkp+jB70Sycek1iL3
	50aL/PZvI6kTJjMwjkC5dbFSQjLE7Zz9zENNNxjMzQrNpoMwVgwhcuuKhl9MsrhtDo6G
	R0yBIKJQbx84JrLiBc+0O42s78+nPViAcEZoSng7SNiIl2HTZ8COSnJwYlToDIK5lte1
	/3Nb8LwjvszXCQu+kNMioLR4QX/I0JWoYaVSgDcmdOHum/BFOmif0GnRbT406XNboAD0
	a1NpVkBU3BtnxsZ4wzopMxmjflx4FWVZz/r34/tWhSWUcSYhn18erIqtcN3mqi24QZB/
	a7GA==
X-Gm-Message-State: AEkoouszzMLULTpM2YAnEvOPtLC4kwWjFX9RpN3nxObq9M23Xl5a1nhTozdfFETfSDe03Q==
X-Received: by 10.98.79.27 with SMTP id d27mr163447748pfb.127.1470669665501;
	Mon, 08 Aug 2016 08:21:05 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ddaa:6f66:32b4:378?
	([2601:646:8882:b8c:ddaa:6f66:32b4:378])
	by smtp.gmail.com with ESMTPSA id 6sm39845373pab.11.2016.08.08.08.21.02
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 08 Aug 2016 08:21:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1470647765.4581.23.camel@andred.net>
Date: Mon, 8 Aug 2016 08:21:32 -0700
Message-Id: <ACB9AEF7-A7DF-4A88-9762-7569D91AD12D@gmail.com>
References: <CC61EFE1-5F39-4848-AD71-8E9C8DEC43C8@gmail.com>
	<1470637705.8166.29.camel@linuxfoundation.org>
	<8C207C42-3D61-4C3F-A1DE-F305AA6617BA@gmail.com>
	<1470644094.8166.37.camel@linuxfoundation.org>
	<1470646210.8166.38.camel@rpsys.net>
	<1470647765.4581.23.camel@andred.net>
To: =?utf-8?Q?Andr=C3=A9_Draszik?= <git@andred.net>
X-Mailer: Apple Mail (2.3124)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Richard Purdie <rpurdie@rpsys.net>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] binutils 2.27
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
X-List-Received-Date: Mon, 08 Aug 2016 15:21:38 -0000
X-Groupsio-MsgNum: 31414
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1D7B7889-4F56-4E84-B8CA-955F4BE9C89C";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1D7B7889-4F56-4E84-B8CA-955F4BE9C89C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Aug 8, 2016, at 2:16 AM, Andr=C3=A9 Draszik <git@andred.net> wrote:
>=20
> On Mon, 2016-08-08 at 09:50 +0100, Richard Purdie wrote:
>> On Mon, 2016-08-08 at 09:14 +0100, Richard Purdie wrote:
>>>=20
>>> On Mon, 2016-08-08 at 00:24 -0700, Khem Raj wrote:
>>>>=20
>>>>>=20
>>>>> On Aug 7, 2016, at 11:28 PM, Richard Purdie <
>>>>> richard.purdie@linuxfoundation.org> wrote:
>>>>>=20
>>>>> On Sun, 2016-08-07 at 01:39 -0700, Khem Raj wrote:
>>>>>>=20
>>>>>> I have put together upgrade for binutils 2.27 here (
>>>>>> kraj/master
>>>>>> branch )
>>>>>>=20
>>>>>> https://github.com/kraj/openembedded-core/commit/b98f5761d2285f
>>>>>> fd
>>>>>> 773e
>>>>>> c6ecb901b799302ebd6b
>>>>>>=20
>>>>>> I have started bunch of test builds. but I would appreciate any
>>>>>> help
>>>>>> in testing it out in your
>>>>>> environments and report any issues you see.
>>>>>=20
>>>>> I ran this through the autobuilder:
>>>>>=20
>>>>> bitbake world shows issues in libunwind (from gold?):
>>>>>=20
>>>>=20
>>>> yes, however, use of gold for libunwind in OE was an escape route
>>>> where we were relying upon gold=E2=80=99s inability to detect this =
issue
>>>> while BFD linker
>>>> was detecting it earlier. Now in 2.27 gold has caught up as well.
>>>>=20
>>>> see
>>>> https://sourceware.org/git/gitweb.cgi?p=3Dbinutils-gdb.git;h=3D6eeb01=
70
>>>> bb
>>>> b43ffb73e8f01b8b481adde8194c21
>>>>=20
>>>> so now we have to get to nub of this issue to resolve it.
>>>=20
>>> Ok. I think we also have:
>>>=20
>>> =
https://autobuilder.yoctoproject.org/main/builders/nightly-ppc/builds
>>> /8
>>> 96
>>> =
https://autobuilder.yoctoproject.org/main/builders/nightly-ppc/builds
>>> /8
>>> 96
>>>=20
>>> in that "connmand --help" is segfaulting on ppc. I've not 100%
>>> confirmed its the binutils patch but its seeming likely at this
>>> point.
>>=20
>> Its also sefgaulting on all mips builds:
>>=20
>> =
https://autobuilder.yoctoproject.org/main/builders/nightly-mips/builds/883=

>> =
https://autobuilder.yoctoproject.org/main/builders/nightly-mips-lsb/builds=

>> /863
>> =
https://autobuilder.yoctoproject.org/main/builders/nightly-mips64/builds/5=

>> 28
>>=20
>> :(
>=20
> binutils 2.27 brings GOLD to mips, but debian has disabled GOLD on all =
MIPS
> for now due to segfaulting... Maybe the same issue=E2=80=A6

They are different issues. for OE ppc also shows same errors with =
libunwind.

>=20
>=20
> A.
>=20
>=20


--Apple-Mail=_1D7B7889-4F56-4E84-B8CA-955F4BE9C89C
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleoo4EACgkQuwUzVZGdMxTCUwCdH4BNyk+k073SzKYQyvyw2nK7
E+oAnjRU1QEo/OQLZa4TFWiOrgtgzuC6
=cd+s
-----END PGP SIGNATURE-----

--Apple-Mail=_1D7B7889-4F56-4E84-B8CA-955F4BE9C89C--
