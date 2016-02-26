Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B696E00D46; Thu, 25 Feb 2016 23:52:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10733E00D3A
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 23:52:26 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id q63so47912790pfb.0
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 23:52:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=zolvohg3YiLHMwATtDlsXnCb7vO6tLw3/GaG9rTsHPQ=;
	b=anLLEMkTVH9P3rrJ7UnIqFZORQCrsp/MOagHsuIWq4YgphlttJX7fSJc53wx5zHIGm
	LdrbM9AG5JQnKA/6tkWPov1JRTiKb3z6NbDrVIbhshPbqrPY3bwEhyFo9qq65qWjnX6E
	vfNcS5fjpGHams6K/d76M3TTKTNwIISr+7JczUonH3aA02WEqVuCtdU1vsRkBLGAtFOC
	axMHzDiwqiOBNZz4lI6pNqlmnu1c8nTipub1YHcNdB9R9Nkn4sgnUPOetsdccdy7V7er
	SHIjKDef9+BbpTqsbUwxbWhzqG9wic3iTDfGGlFHeX4rHQtTqkxEAfYL5XIAyq2IXg8A
	TseQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=zolvohg3YiLHMwATtDlsXnCb7vO6tLw3/GaG9rTsHPQ=;
	b=boU/OWPVjAOaNu4X6+GnFjAkOIlR4TJ6erOHs9AR+j5+axMXhZoRE4ovwW0rRxBIJ7
	Eanio9cJQRHYOuh215lN6ZQHclneZWqHDV2aFRmVnfIsnuS83KQW3HZ4ZVGn3wAQ3sOQ
	bcmv9c22mrydJhsSn/OjVyH8YEi1g1OG1CrIjayq02GGk4a3LLDSakr+AI9CGCjmepg4
	r20OrTYklcinMPFWanH7YMdUGFjndtPo+a/5/3QHqrD6zxDFb7t/og1EpDvBYltP8ChH
	JbW3qqgliwhEAX0YCLyEGkckRbmCBSn+P5120mJ9L6yWlfz8NG8Vm7kBBp4982lqEkpD
	jsTw==
X-Gm-Message-State: AD7BkJIrm4cfp0ASJr1Q10NjjuYb0v3RLX6xr++BCIV374y6f8NKQS+IlShHn4NWOQERjA==
X-Received: by 10.98.16.85 with SMTP id y82mr213927pfi.90.1456473146025;
	Thu, 25 Feb 2016 23:52:26 -0800 (PST)
Received: from ?IPv6:2601:646:8800:5a9a:4537:747c:ca81:76b7?
	([2601:646:8800:5a9a:4537:747c:ca81:76b7])
	by smtp.gmail.com with ESMTPSA id
	dg1sm17105347pad.18.2016.02.25.23.52.24
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 25 Feb 2016 23:52:24 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5002400B-3C1E-4BA7-9A66-E52FC85BA07F@sierrawireless.com>
Date: Thu, 25 Feb 2016 23:52:18 -0800
Message-Id: <EE025BCE-0C29-44DB-83BD-8FED40604D70@gmail.com>
References: <1456255515.10581.2.camel@sierrawireless.com>
	<CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
	<56CCD461.1060505@windriver.com>
	<1456267969.27839.3.camel@sierrawireless.com>
	<56CCF5E8.3000005@gmail.com> <56CDDC73.1000000@windriver.com>
	<56CDDF64.3080508@gmail.com>
	<5002400B-3C1E-4BA7-9A66-E52FC85BA07F@sierrawireless.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Does CVE-2015-7547 affect eglibc?
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
X-List-Received-Date: Fri, 26 Feb 2016 07:52:30 -0000
X-Groupsio-MsgNum: 28629
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B7AA98DE-9A37-4961-8455-F42BCC13AFAA";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B7AA98DE-9A37-4961-8455-F42BCC13AFAA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Can you describe the regressions in some more detail

> On Feb 25, 2016, at 5:43 PM, Darcy Watkins =
<dwatkins@sierrawireless.com> wrote:
>=20
> Be careful about rushing out fixes. We are observing regressions in =
software triggered by changes in glibc  behaviour.
>=20
>=20
> ---
>=20
> Regards,
>=20
> Darcy
>=20
> Darcy Watkins
> Staff Engineer, Firmware
> Sierra Wireless
> http://sierrawireless.com
> [M3]
>=20
>> On Feb 24, 2016, at 8:57 AM, akuster808 <akuster808@gmail.com> wrote:
>>=20
>>=20
>>=20
>>> On 02/24/2016 08:38 AM, Mark Hatle wrote:
>>>> On 2/23/16 6:14 PM, akuster808 wrote:
>>>>=20
>>>>=20
>>>>> On 02/23/2016 02:52 PM, Darcy Watkins wrote:
>>>>>> On Tue, 2016-02-23 at 13:51 -0800, Mark Hatle wrote:
>>>>>>> On 2/23/16 1:53 PM, Khem Raj wrote:
>>>>>>> On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
>>>>>>>> CVE-2015-7547 glibc vulnerability has been published as =
affecting glibc
>>>>>>>> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
>>>>>>>>=20
>>>>>>>> Anyone know if we need the same security fixes in eglibc?
>>>>>>>=20
>>>>>>> yes you do. Eglibc was nothing but glibc+few fixes.
>>>>>>=20
>>>>>> Yes this affects all eglibc version 2.9 and newer up to glibc =
2.23.
>>>>>>=20
>>>>>> As far as I'm aware, this affects all Yocto Project versions up =
to 2.0.
>>>>>=20
>>>>> I will be interested in knowing which Yocto Project versions will
>>>>> receive the fixes.
>>>>=20
>>>> Master, 2.0 and 1.8 all have the fixes.
>>>> How far back do we go in matters like this?
>>>=20
>>> Official support is current (in development) and the last two =
releases.  So up
>>> to about a year and a half of support.
>>>=20
>>> After this point, it becomes community support.  This really means, =
if someone
>>> in the community wants to continue support past the YP's support =
guidelines they
>>> are welcome to do so -- but there won't be any official releases, =
only checkins
>>> to the repository.
>>=20
>> much better explanation than mine.
>>=20
>> thanks,
>> Armin
>>>=20
>>> We have done this on some OpenSSL fixes in the past, but it was =
based on
>>> specific requests and people submitting the fixes to be included =
with older
>>> versions.
>>>=20
>>>> 1.7 (dizzy) I plan on doing soon. beyond that I do not know. those =
are
>>>> all community supported.
>>>>=20
>>>> - armin
>>>>>=20
>>>>> Thanks in advance!
>>>>>=20
>>>>>> (The patch referenced by the security announcement applies to all =
of the
>>>>>> versions of glibc I've needed to apply it to for my customers.  A =
few per-line
>>>>>> tweaks might be necessary, but it was fairly easy.)
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B7AA98DE-9A37-4961-8455-F42BCC13AFAA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlbQBDcACgkQuwUzVZGdMxSRYwCcDI+HRKhZqi5wMg+SEgj3TnFF
o1EAnAqCrlpAm+wMkGVJwor9ThRZCtlH
=FDWc
-----END PGP SIGNATURE-----

--Apple-Mail=_B7AA98DE-9A37-4961-8455-F42BCC13AFAA--
