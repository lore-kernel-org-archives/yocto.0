Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64AA3E00D21; Sun, 14 Feb 2016 22:54:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E5F6E00D1D
	for <yocto@yoctoproject.org>; Sun, 14 Feb 2016 22:54:23 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id a4so42297077wme.1
	for <yocto@yoctoproject.org>; Sun, 14 Feb 2016 22:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=H76cLbVYyIoLdUPQ03Ad5iOIiWb6II1VDjd17D0SHyA=;
	b=S6vBV1W9khgWQoF0csncQAzZenrfZooqgc0eW6LnAJ+rnOX4tQMBe9OeEBD1b9ZRon
	VhkrKaEWTZ0NbGi+ORbX6G4L4MmP+1g15oNg9lQuN9P9XuW9JWozDXzsb45pdg1h7jLN
	6hwNN/qSFn49OctfZoYSDU2yHJfLp5xBELqOW/2xRROYXX9vS7DUbxxnVcazcnCPqN7D
	pJjoV8fOXYD/LawHW5oor9BqHgR07R58uGalzc1A/8PudyWQ7YneoGAMGAj1quHUtUj1
	fZmuD8KHEcqtQwQsHjtA6xoP5F3mbeeNozXXhIHuX7G7IjvFM852l3XdTQE7F0LnFLmM
	F8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=H76cLbVYyIoLdUPQ03Ad5iOIiWb6II1VDjd17D0SHyA=;
	b=OzjaB9KSy4RE1FIzdMKh6Cb1K28RT7IkuYNkACdbsiZrB+GypG9KlBqNgzJVjEWZkR
	vvYOnW+mu1tj5+Gg20SbtkyS1aHjX0vY/u4xKzSnulohGYJFlF+TOhjwYMmjE4U+HYHJ
	YqcEyCdTbl9DdQvT6GMc8qwEkD7OSX/w9Ozxz4Epecv6odFlsgqMxFxG0jrTKNJJjUO2
	Mlwn9LzNjTx/ZaqcBV9PAfjxJX2yCnfvBdYRHRcVZlFPI0feC1yGoxpbeMRnaOe+FqaX
	XccsSPu5DoqNu35UZxBp5AjSaFsvQWmMHRm+tQKuEQVrc3k4gku6A7rUP+9vsLSgpdEs
	YGxQ==
X-Gm-Message-State: AG10YORobNy1tqGwKICQtqTclFF4iBmoaio5zH5kBAr8/2pAndEZ40jDQdnPn0xSB/YSyg==
X-Received: by 10.28.48.137 with SMTP id w131mr11330319wmw.73.1455519262754;
	Sun, 14 Feb 2016 22:54:22 -0800 (PST)
Received: from walter.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by smtp.gmail.com with ESMTPSA id
	v2sm14117915wmd.24.2016.02.14.22.54.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 14 Feb 2016 22:54:21 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <1455445493.16142.384.camel@linuxfoundation.org>
Date: Mon, 15 Feb 2016 07:54:19 +0100
Message-Id: <61D1E514-5AF5-4C5B-A3CD-6227A537CF3B@gmail.com>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
	<2ABA8704-6F76-49C0-8DD4-8C74295CF4EB@gmail.com>
	<1455384501.16142.372.camel@linuxfoundation.org>
	<CAMKF1spdna7gtQvgAR7KH584G4xj-DV8PzVrWYKRsvfnVfiQ-Q@mail.gmail.com>
	<1455445493.16142.384.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3112)
Cc: Nick Leverton <nick@leverton.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Mon, 15 Feb 2016 06:54:27 -0000
X-Groupsio-MsgNum: 28479
Content-Type: multipart/signed;
	boundary="Apple-Mail=_88AB840F-AB1E-4674-A91A-3EF340F17B69";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_88AB840F-AB1E-4674-A91A-3EF340F17B69
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> Am 14.02.2016 um 11:24 schrieb Richard Purdie =
<richard.purdie@linuxfoundation.org>:
>=20
> On Sat, 2016-02-13 at 10:12 -0800, Khem Raj wrote:
>> On Sat, Feb 13, 2016 at 9:28 AM, Richard Purdie
>> <richard.purdie@linuxfoundation.org> wrote:
>>> On Sat, 2016-02-13 at 15:30 +0100, Jens Rehsack wrote:
>>>>> Am 11.02.2016 um 15:32 schrieb Burton, Ross <
>>>>> ross.burton@intel.com>
>>>>> :
>>>>>=20
>>>>>=20
>>>>> On 11 February 2016 at 14:21, Nick Leverton <nick@leverton.org>
>>>>> wrote:
>>>>> Possibly a little early - Debian 7 will be going onto LTS
>>>>> security
>>>>> support for
>>>>> two years, starting some time this month.  Quoting from
>>>>> https://wiki.debian.org/LTS
>>>>>=20
>>>>> Ah yes, I'd forgotten about the LTS project and was looking at
>>>>> the
>>>>> security team.
>>>>>=20
>>>>> This does make it less clear, but it's still an old release and
>>>>> we
>>>>> can't support/test on everything.
>>>>=20
>>>> Sure, but are there some serious/expensive maintaining efforts
>>>> continuing support Debian 7?
>>>> Or is it an approach to kick Debian from list of supported
>>>> distributions for (above?) reasons?
>>>>=20
>>>> Since I run some build instances on a Debian 7 machine which is
>>>> not
>>>> going to be upgraded that
>>>> soon (don't want Debian 8, but don't want to reinstall from
>>>> scratch
>>>> and migrate my Xen VM's ...),
>>>> dropping support for "it's just time to move on" is more a
>>>> Desktop
>>>> philosophy, not for embedded/datacenter
>>>> approaches ...
>>>=20
>>> For example, we'd like to use the sparse option when building
>>> rootfs:
>>>=20
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9099
>>>=20
>>> This support isn't available in the version of dd in debian 7. Our
>>> options are:
>>>=20
>>> * Build a dd -native

That's something complete different than "End of regular support, =
switching
to LTS" - so based on missing features, any distribution which doesn't
fulfill the required features should be discarded from list of supported
distributions unless the required features are Yocto patches in =
upstream.
In such a case the drop smells like misusing power (then a smoother way
should be found),

>> For core feature like sparse files its better to control our own
>> destiny and use dd-native regardless.
>=20
> There are certain core utilities which its very hard to add into the
> dependency chains correctly. With xz, I recently gave up trying to get
> the patches right. I'm sure it could be done, it didn't seem worth the
> effort though. dd and other coreutils fall into the same category, =
very
> hard to get right without races. There is probably a redesign of the
> some of the way staging happens needed to make it work and that is a
> low priority right now.

Having an implicit xy.bbclass adding dependency to =
yocto-coreutils-native
isn't a way? As said several times, my pkgsrc background leads me to
Yocto for embedded Linux development - and this background educated add
nb* utilities for each host utility which is incompatible to the
infrastructure.

>> But that does not mean we should
>> not drop debian7 or arcane centos distros that we keep supporting for
>> ever. I still see patches for centos 5.8 in metadata.
>=20
> We did retire centos 6 recently (qemu wouldn't run there correctly for
> any of the automated tests).

Which is again a good reason for retiring support for a dedicated
distribution. I'm a bit torn regarding the lifecycle of RHEL/Cent OS,
which is 10 years after release - dropping support for enterprise
grade distribution to quick leaves a taste/smell ... (don't know how to
express).

Don't get me wrong - it is absolutely reasonable to retire distributions
lacking important features which can't be added with reasonable effort
into build chain. Deciding which important feature requires such a
retirement should be proved with an eye of lifecycle of server =
distributions.

Cheers
--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_88AB840F-AB1E-4674-A91A-3EF340F17B69
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAEBCgAGBQJWwXYcAAoJEESZlq7c5Qqd1NUP/3+1G3RH/3qYsgn8PsTs3AKZ
0ZP4CfiaCD0gKcDk8i+DyhJEiGTCvZwJTv2uOwk8ExYrjQNQpvGo0Z8op3YZ9p3D
lJZOUCngeHRdK+ZzHvIw7UtKGvofmPghkBjscsOfLJDMgJbfPe3DsbeV41DITvXD
E80Obx1dZc3nPVdeJAEofv04p8eoMQOST3Ai8c9XYcC6w3F8h4/T7i6BaWsbxgUe
K81gJMAZZC6XKH7erzO6kaL6Gs8stsECiqNmRsugvYyo+8BgeZUNoJKnaNhNyF8Z
x5jSk3yDdtZcs0574nzeWueE1rZWsFKPnO4i5WC3qUJV2HzuZ7c8jbE0qWdTkN4V
4OS2+b1mVaAuZiJUEND7B0gLYx9AadTthWrH1kb696QUNWe3h2D6g5RL9gKbDTB/
MhdLV69t7BsGlfI1rzv6Z7nnHWLfPDpqQRt81Jhk7CqFNNMz+80RjjziEaTWA0Dz
sQ8iswBBgPnbhw2ioxGEYfpUOYStDwZlv75R66A9lLB5wNbeFZkD9KPuS7E3Ixs8
NGsQuktnhJOg2wO8/wduszgaauQadip/moo92Wr+BBfeyGE6pgIKNGWcXE0dPxok
EuXl4Mr2yswwD9i0QzMgvd67Ykr0BLpt5B3CCZDQEUaKb0Cxj592T1H6lmA0w9RH
WzwTR/3PVnpze75WiGL9
=nOne
-----END PGP SIGNATURE-----

--Apple-Mail=_88AB840F-AB1E-4674-A91A-3EF340F17B69--
