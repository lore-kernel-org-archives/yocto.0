Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 657F0E00E09; Thu,  8 Oct 2015 09:43:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06CE6E006D5
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 09:43:19 -0700 (PDT)
Received: by pablk4 with SMTP id lk4so59462800pab.3
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 09:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=/9SCi+Fd8ludOulPE6IM1dDEh0Q6mCCDMGvVkh4GSic=;
	b=zHEhmA6caBxGnqZTtneERCWMb8BkdS8ihHqrHJfH+plrFrVLj43O4UIclmB3LSTh08
	gIqrwht7MR/TSTYg7VLwCpe+ti4ZPXOevdbDdddx8Oe7DD0fw3jYP5GLrz5jggz3wDs8
	T1L1UP0v9lsCiAw82zwKsohnTTsuSD4m9g+5w8D9XTJEHi4y8e92CAMGvjk/OsZiK9fk
	vJs1FvCgx0ALDpJMWJib2YdFDMorCUXCDta8n5zQ8U6r10mSRl01qtJEvgXagWAgvR0E
	ne/hdNsK+0/VLo4o0Sk/dYCJcZ2zxr8LMvdDahJu+PX3D976XMIPtej5y+K8G0xFFTOv
	C50A==
X-Received: by 10.66.121.195 with SMTP id lm3mr9309245pab.84.1444322599072;
	Thu, 08 Oct 2015 09:43:19 -0700 (PDT)
Received: from [192.168.0.4] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85]) by smtp.gmail.com with ESMTPSA id
	eg5sm46691451pac.30.2015.10.08.09.43.18
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 08 Oct 2015 09:43:18 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3095\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <2AAE1454-4C74-4639-AB5E-C49D77DA98B7@gmail.com>
Date: Thu, 8 Oct 2015 09:43:17 -0700
Message-Id: <D9E42333-6E09-4C07-B6B9-A64828201F3A@gmail.com>
References: <1739F874-791D-4371-B60A-B234370430A4@gmail.com>
	<69B07C73-5285-4201-BFEC-0C77E1883E61@gmail.com>
	<E36BFEC6-6F32-4F29-A200-4CE84A535043@gmail.com>
	<FD12338D-82E7-4A3A-84F1-5AA7E9EFA8CD@gmail.com>
	<2AAE1454-4C74-4639-AB5E-C49D77DA98B7@gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
X-Mailer: Apple Mail (2.3095)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/7][meta-openembedded] Update nginx to 1.9.5
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
X-List-Received-Date: Thu, 08 Oct 2015 16:43:20 -0000
X-Groupsio-MsgNum: 26758
Content-Type: multipart/signed;
	boundary="Apple-Mail=_632CF800-9FF3-4E4C-BF5C-ACC81076CBAA";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_632CF800-9FF3-4E4C-BF5C-ACC81076CBAA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 8, 2015, at 9:13 AM, Jens Rehsack <rehsack@gmail.com> wrote:
>=20
>=20
>> Am 08.10.2015 um 17:05 schrieb Khem Raj <raj.khem@gmail.com>:
>>=20
>>>> [...]
>>>> This is good info. Although a link to diff in cgit or web view of =
whatever SCM nginx uses would have done too.
>>>=20
>>> That's simply the Changelog. It's an update, not a fix for a =
critical issue.
>>> Do you really ask me to list each fixed bug from nginx' ticket list?
>>=20
>> No, on the contrary, I said if the release published the link for all =
this changes somewhere then just include the link
>> instead of enumerating changes here.
>=20
> Well, the Changelog changes depending what's published. Currently it's
> http://nginx.org/en/CHANGES - but when a 1.10 or a 2.0 will be =
released,
> it's going to be http://nginx.org/en/CHANGES-1.9 (but this file =
currently
> doesn't exists :/)
>=20
> Aaand - even if http://nginx.org/en/CHANGES-1.9 would exists, it will
> include even the changes for a potential 1.9.6, 1.9.7 ... regardless
> we have updated to those versions =E2=80=A6
>=20

sometimes they have them published within the source code repo and that =
could
be used but if thats not the case its ok.

> I replace the changelog by any URI you prefer - but I favor for
> such circumstances static text ;)
>=20

sure.

> Cheers
> --
> Jens Rehsack - rehsack@gmail.com
>=20


--Apple-Mail=_632CF800-9FF3-4E4C-BF5C-ACC81076CBAA
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYWnSUACgkQuwUzVZGdMxSpywCdFe4MrYTH4KYwVJGw5BUfOpHF
Pd8An1Ho655KvQXa8sZrfnEMG1S+UlEp
=/K87
-----END PGP SIGNATURE-----

--Apple-Mail=_632CF800-9FF3-4E4C-BF5C-ACC81076CBAA--
