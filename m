Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5356E00D2E; Mon, 25 Jul 2016 22:51:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 539FFE00D25
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 22:51:38 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id p64so71789790pfb.1
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 22:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ON9GpJpdk40WUVa8q2N+NbWUoZD3BwFHhtlT8LJ4mQg=;
	b=Nr2VPxRyekOGU/wy9Z5DHNV3B/8dSElN3o5ZTcfpB+tlgvfH46fCELm4zXfNqnGEdQ
	bLSuzk0vhL2pBH/S2BD+H/MGXV5qdIgzCQCGZmA5AYIdz4EdRNRq5MiontdvxmLnXT0q
	yNPkYMG+e8TXfzatSoEy/7wXbgwqJtZv3ya79Dm6DzYB2y8NxFRxrmi/1xS99/RpQmML
	hQqw+iodA8STef91AruTfoDli8hwqmExJ0OrnmfnpCEaaLtkC2C9wHOUdMwguyfCdpTL
	Td8UTBlAGL9vMsngC8x2TXprzv04Ffv/1q5fH4gTmJ4WzMhbBmpZt1h73f9Ov1LZ3/M/
	5vkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ON9GpJpdk40WUVa8q2N+NbWUoZD3BwFHhtlT8LJ4mQg=;
	b=gT+GnywL1+TVMyu4L7mMlO8tSSTkhJAkKAzSy9/hMz/OH5pRJR1fAuYT9SA+1piAqU
	A+GmdNwSjX+U2So3mtme4ZmGtvvh7vl49fAevC//nMR3NM1L4I2rpDaqrn7kyq+xgXZb
	7e3x6svWzVS78hxrqNq62eKdHtmufD6Uv7z50gfqvpUaVrDQsdTYlo0QfjGKZmxlYFfZ
	0sl43z5MtIXg+DUOydWvJG0ru0/0Ijc2Y9QyOu/MP6pixc3j8UMhXd7RzXBWq4oLU/uV
	IUgAdMZPQl0UFl3IQjaP9OMQ+Oz8A/T9T1fOfmN5/2UnkNXco/2kGzh2n4u1Lhc8C2xY
	bhGg==
X-Gm-Message-State: AEkoousFsQOred5sRSgkdWpJtzc04wm2HyCd12jdFoTJC5TW3aE2rASYxlano4TiYH+ziA==
X-Received: by 10.98.144.144 with SMTP id q16mr17425966pfk.98.1469512298093;
	Mon, 25 Jul 2016 22:51:38 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a441:ef41:242c:93c?
	([2601:646:8882:b8c:a441:ef41:242c:93c])
	by smtp.gmail.com with ESMTPSA id
	z10sm44158071pff.95.2016.07.25.22.51.37
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 25 Jul 2016 22:51:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1814307.50VheZsyPG@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 25 Jul 2016 22:51:30 -0700
Message-Id: <A45630F5-217D-4CD4-ABDE-DFD37637C0BF@gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAGMdoFmxkfLMO0nDqFQOkor2xmzhegGnYJvj4VnYXiwUy_3jbg@mail.gmail.com>
	<9A639589-3943-4E8B-B172-523AF03E038A@gmail.com>
	<1814307.50VheZsyPG@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Tue, 26 Jul 2016 05:51:40 -0000
X-Groupsio-MsgNum: 31232
Content-Type: multipart/signed;
	boundary="Apple-Mail=_ECB479A6-A231-4354-9CD0-B5FE52B7FD12";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_ECB479A6-A231-4354-9CD0-B5FE52B7FD12
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 25, 2016, at 10:00 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> On Mon, 25 Jul 2016 20:34:32 Khem Raj wrote:
>>> On Jul 25, 2016, at 8:31 PM, Edward Wingate <edwingate8@gmail.com> =
wrote:
>>>=20
>>> On Mon, Jul 25, 2016 at 1:27 AM, Nicolas Dechesne
>>>=20
>>> <nicolas.dechesne@linaro.org> wrote:
>>>> hmm. you shouldn't set DISTRO in conf/layer.conf, that doesn't =
sound
>>>> right. DISTRO needs to be set in local.conf (or any of the other =
build
>>>> specific conf files).
>>>=20
>>> I agree, I don't know why I had it in conf/layer.conf.  Just
>>> beginner's mistake.
>>>=20
>>> I moved DISTRO to local.conf (changed the existing DISTRO ?=3D =
"poky" to
>>> DISTRO ?=3D "mydistro") and it still works.  But if I remove DISTRO =
from
>>> conf/distro/mydistro.conf, DISTRO will revert to "poky", even though
>>> it is set to my "mydistro" in local.conf.  So it seems I have to =
have
>>> it in both places.
>>=20
>> in your mydistro.conf you should first set the settings that you want =
to
>> customize then include conf/distro/poky.conf not other way around. =
May be
>> we should change poky.conf to use ??=3D so the substitution happens =
at the
>> end of parsing. but thats for another time.
>=20
> I'm clearly missing something - why must it be done that way around? =
If you
> were to set the values you want *after* the include/require then that =
should
> work just fine, and would be the way I would recommend doing it - it's =
also
> the way poky-lsb distro does it.
>=20
> One thing to note is that poky.conf itself sets DISTRO, mostly for =
historical
> reasons I believe. Thus if you do include/require poky.conf then you =
may wish
> to set DISTRO back to whatever it should be and you'd have to do that =
after
> the include/require, not before it.

Those are valid assertions. However user is changing DISTRO ?=3D =
=E2=80=9Cpoky=E2=80=9D
which will take effect if DISTRO is unset before above is parsed.

>=20
> Another thing to consider is that any _poky overrides will only be =
applied if
> DISTRO =3D "poky", thus include/require of poky.conf won't incorporate =
those
> into your custom distro. You can set DISTROOVERRIDES to include "poky" =
to
> counter this. In practice though there aren't too many of these - in =
fact I
> can only see one in the psplash recipe.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


--Apple-Mail=_ECB479A6-A231-4354-9CD0-B5FE52B7FD12
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleW+mgACgkQuwUzVZGdMxR/RQCeJjSgMSnoFRpgl1HhEhL4jdBW
qfYAn1fikOeC0lQ9Wz1+envznwqVKhHT
=DOot
-----END PGP SIGNATURE-----

--Apple-Mail=_ECB479A6-A231-4354-9CD0-B5FE52B7FD12--
