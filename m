Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E3FDE00FE2; Thu, 28 Jul 2016 18:42:34 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C45EE00FDC
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:42:32 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id g202so4565353pfb.1
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=w6mUda4/rPxz0zd+S7o569Ov92RSH0rgBnFNf/wkAJY=;
	b=MgsLLXNEUG8rihM0eYspP2mBYvH5m/M7qjksLHr8mYWJ0t0oqSfidcc7GZhHFwE8AA
	+eRaNqiJ5UCYuXI9UqbdSFoesQss9G3iqxPJnQ8k96wz2YRQ9d9Air+P/Ipskwop9akW
	pSEWfwvpExERS1GnmJyKRAP/XCKzPwE9xBZ08bEsd8jmZKeU5kBGlQlbpzQ1XmTAFFrf
	XBoVPrgrMI+ghl3VmOuK4wPkzp97SXkv1GTcbLzRNQicf3kUBbH7OGoXLBrzMS2hcxOl
	rWdx89jZ28IEXSObhC9eo1HKRaqI5CyDS7CJmj3uAUSCVX35XF9Dn0uUZ6fxKe2iQOKP
	OsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=w6mUda4/rPxz0zd+S7o569Ov92RSH0rgBnFNf/wkAJY=;
	b=c5HETY3ADwkUnXCB5IX3KnYY0vyzH692BSFGBUh5JLYJ9Ixl6GKxNWD+L3pKeS2Kj4
	CfOImonHQqzi9IghaE9LrbhHIktgcGeWh8wW+k1cduwCQycUynf04i1G+XGVH+rm0NFf
	KZDoExxL/X0Brq+x5tCwS4J9pgcApu42UDhRqNl54+RwbDkSg43Nm1PMJ51045zOpFnM
	fGgyh5U23bdWf9Xpdvh/MUHW6mgbwv1ADbCLt0GJ3TW6JB+AMgE3jDNy55K4Z2E42is3
	C/4bktYMv6oDYkwJpf+NBa1pzaVD1RSrXcVe9XpsD4e3DS+kZ1F07HzIonbvnebzIyBE
	6TmQ==
X-Gm-Message-State: AEkooutIF5txmKrnIletV4yxupSEhU3D8HiurRDzuyTyuzJd4u8HSzGA3lCP/pTXIpcZgQ==
X-Received: by 10.98.22.212 with SMTP id 203mr64333655pfw.74.1469756551790;
	Thu, 28 Jul 2016 18:42:31 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:5170:19b0:da08:b7e9?
	([2601:646:8882:b8c:5170:19b0:da08:b7e9])
	by smtp.gmail.com with ESMTPSA id
	k78sm19927474pfa.78.2016.07.28.18.42.30
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jul 2016 18:42:30 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <F20EA7BC-B517-47D9-9117-7CF34B4E75DA@spotwise.com>
Date: Thu, 28 Jul 2016 18:42:29 -0700
Message-Id: <7E57C9F8-2ABC-42DE-93E5-BD29EEDB221D@gmail.com>
References: <20160721080236.0ed7287e@nuc.betafive.co.uk>
	<F20EA7BC-B517-47D9-9117-7CF34B4E75DA@spotwise.com>
To: Martin Bergek <martin@spotwise.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Fri, 29 Jul 2016 01:42:34 -0000
X-Groupsio-MsgNum: 31285
Content-Type: multipart/signed;
	boundary="Apple-Mail=_1350E613-9CC1-4AB7-B5BB-740B5A534598";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_1350E613-9CC1-4AB7-B5BB-740B5A534598
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 22, 2016, at 6:16 AM, Martin Bergek <martin@spotwise.com> =
wrote:
>=20
> Paul,
>=20
> I am having stability issues with the USB subsystem on Raspberry Pi 3 =
under 4.4 that I can=E2=80=99t reproduce under 4.1. I assume 4.1 will =
still remain in the recipe when 4.4 is made the default option. How long =
would the 4.1 version stay so that those that want to can keep the old =
kernel version?
>=20
> For more information about my issue please see: =
https://www.mail-archive.com/yocto@yoctoproject.org/msg30362.html

I have pushed 4.7 recipe to my staging branch

https://github.com/kraj/meta-raspberrypi kraj/master

its lightly tested. Would be good if you can try and see if this helps =
your case.

>=20
> Thanks,
> Martin Bergek
>=20
>=20
>=20
>> On 21 Jul 2016, at 09:02, Paul Barker <paul@paulbarker.me.uk> wrote:
>>=20
>> Hi all,
>>=20
>> I'm planning to look at the linux-raspberypi recipes once I've had =
time
>> to send V2 of my u-boot patches. I'd like to know people's thoughts =
on
>> the available kernel versions in the meta-raspberrypi layer:
>>=20
>> Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
>> referenced in SRCREV is from June 2015. I think it's probably time to
>> retire this unless anyone has a reason to keep it around.
>>=20
>> Is there any reason to keep linux-raspberrypi 4.1 as the default
>> recipe? The last commit to the 4.1 branch was in April and the
>> default branch on the linux-raspberrypi GitHub repository has been
>> 4.4 since then. I think we should change the default version to 4.4
>> unless there's a good reason not to.
>>=20
>> If there's no objections I'll send a couple of patches to drop 3.18 =
and
>> change the default to 4.4.
>>=20
>> Thanks,
>> Paul Barker
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_1350E613-9CC1-4AB7-B5BB-740B5A534598
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleatIYACgkQuwUzVZGdMxQ1/ACfXc6wJVcb4NF1cLXemgxiWgze
R9gAoI7eJl0/nQhXaAlsLUN9gwPIrWRD
=x97x
-----END PGP SIGNATURE-----

--Apple-Mail=_1350E613-9CC1-4AB7-B5BB-740B5A534598--
