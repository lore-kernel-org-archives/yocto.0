Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4F9CE00901
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 09:12:28 -0800 (PST)
Received: by mail-pb0-f53.google.com with SMTP id rp16so1010912pbb.26
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 09:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=79vlDSbppLTghzpM0iGA+yUnagPFR714hIkQbz2C9JY=;
	b=N16Y+gbc1uVTRrrnUbz1TBeQDNyMIAEkZwidBEMqYbKzxRTw7xbTxoo8Si84qpYCYS
	+odFLfDR4RKYGJin1qDQo1C4i5EacZ9opy13+69l0p9tQZzX6hN42uvNBwl61xmUcGtP
	NP25E6LMHY/oz+SW0cA2muQ1lO7TkadZNOamiMNXBI1+/7arPcuxpw1mRhBo83k3EJyO
	N9OspOynxPlcMJrclf0Q1dBvHznrnhsOgdIPF4PmtbYFNMKgn93KrsHVDJ5rNAFs525V
	Uqj6BBv21pRnHTZHDjisevJLGKtCiflo5kWELzRPcF4u6atR9iv+1CvXGSawH+Sfc8Xy
	3h3A==
X-Received: by 10.66.139.100 with SMTP id qx4mr16361319pab.141.1393521148069; 
	Thu, 27 Feb 2014 09:12:28 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	ac5sm15311405pbc.37.2014.02.27.09.12.26 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 09:12:27 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1600678.J4ox3s7bCg@peggleto-mobl5.ger.corp.intel.com>
Date: Thu, 27 Feb 2014 09:12:25 -0800
Message-Id: <F538A39C-F6AE-4CAD-813D-FDF4DEBD2A42@gmail.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<530F60C9.7090204@dynamicdevices.co.uk>
	<6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com>
	<1600678.J4ox3s7bCg@peggleto-mobl5.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1827)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 17:12:29 -0000
X-Groupsio-MsgNum: 18246
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C7EA5702-F3B6-4F1C-9F17-82F1E8C8B577";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C7EA5702-F3B6-4F1C-9F17-82F1E8C8B577
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Feb 27, 2014, at 9:09 AM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:

> On Thursday 27 February 2014 08:30:10 Khem Raj wrote:
>> On Feb 27, 2014, at 7:59 AM, Alex J Lennon =
<ajlennon@dynamicdevices.co.uk>
>> wrote:
>>> On 27/02/2014 15:50, Khem Raj wrote:
>>>> On Feb 27, 2014, at 6:16 AM, Alex J Lennon
>>>=20
>>>      <ajlennon@dynamicdevices.co.uk> wrote:
>>>>> +PR =3D "r1"
>>>>>=20
>>>>> +
>>>>=20
>>>> get rid of that
>>>=20
>>> Why is that Khem?
>>=20
>> we have automatic PR server now a days, its enabled by default.
>=20
> FWIW, I don't think it's enabled by default,

yes its not enabled however is way forward

> at least not in OE-Core/Poky. The=20
> point still stands though, it's the way PR should be managed rather =
than=20
> manual bumping.
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


--Apple-Mail=_C7EA5702-F3B6-4F1C-9F17-82F1E8C8B577
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlMPcfkACgkQuwUzVZGdMxT/RQCbB5GnmPqpUT4X+yA+l0wpJHOJ
4UoAn05f4HGMOsM3XJ+Q1ghV/AI9V4aK
=lcSj
-----END PGP SIGNATURE-----

--Apple-Mail=_C7EA5702-F3B6-4F1C-9F17-82F1E8C8B577--
