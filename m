Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41DBBE00B01; Tue, 25 Apr 2017 17:44:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D315E00867
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 17:44:43 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id a188so33803821pfa.0
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 17:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=z+A42O04XT9oMGF+CozyMgRco9ncfSYgSXLq2eEFpu4=;
	b=mYyJx54O98x10YySsFGR4aFpWIHfIHFFB4tpqNdfqVQFAfox0gokNdfqQ4eW3wqr9v
	pkX+VU+Bjc7uJstyR0zDvMf2NnRdRBof7EWfurt7XT5TaLScJsPiLRuFFQT/otHA1Ycr
	d7rthNAc1BRV+ieQVFxbwi7Si+T3pcXymLTvEEyNqA+n16OpZ4YLHUr8D+FkHpKBDtfe
	Il99mqNm/JHouC5/oogeOXJIHONlNa0fbg1SzckB7jkoACnvkEWBOxET10yj5EL23Ou3
	uLxI0eTW5ls+MWq2JWfKsyVbnmDQltr/RJ26J2qeoVL/ldS1mWDnsQhzv6idyT1fUHB4
	25FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=z+A42O04XT9oMGF+CozyMgRco9ncfSYgSXLq2eEFpu4=;
	b=tH4QASTPCRtJQLoZ/PSCE9Z5EXO9s1vvCQJm6XSIx5rGil+QvXmNTfWb5HsloM0Kfb
	NFk+dr9CvPdUWxZpx1RBJNfl+oYGS5Ti7trCJw2Q942+b37wc9Peg5FP7PkiE77O8PTb
	uWuPNflc45bbaucb7eW7lCpqNdw0Oaxk417uV4e7vwln2A0471A4qzDRYyt9AZvORm/Y
	teMf4U8hMAwReGPTxNW37iRZyrYGX1SuLwhtsFrHgurkTVpa3E9EJipVW/FYjGMkFfp5
	fFV8pMVQwxmOM5mNgW3DBjPkpA20WJNhzrmbOCsIvPrOic76BTAjVddi3kGMVZvWsdDX
	C0LA==
X-Gm-Message-State: AN3rC/5DrQKzPNhxUzMlkxEYCQ0+NTThJcJUzTSYMHnMOWkVM9iXA8Vn
	tuw9zdDLn3gCR1LXOxk=
X-Received: by 10.99.56.84 with SMTP id h20mr29871390pgn.134.1493167483022;
	Tue, 25 Apr 2017 17:44:43 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d876:38a0:5ac:19e6])
	by smtp.gmail.com with ESMTPSA id
	y78sm38429275pff.107.2017.04.25.17.44.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Apr 2017 17:44:41 -0700 (PDT)
To: Martin Kelly <mkelly@xevo.com>, Yocto Project <yocto@yoctoproject.org>
References: <0c84e977-c53d-8703-fe34-839cd34900fa@xevo.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <201e0392-340d-a4ea-8676-b8d2a860538d@gmail.com>
Date: Tue, 25 Apr 2017 17:44:35 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0.1
MIME-Version: 1.0
In-Reply-To: <0c84e977-c53d-8703-fe34-839cd34900fa@xevo.com>
Subject: Re: How should we handle GCC 6 and -isystem /usr/include?
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
X-List-Received-Date: Wed, 26 Apr 2017 00:44:48 -0000
X-Groupsio-MsgNum: 35792
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="6PnMrdMFifJq2rUtt9CrcfSu5CUoXCowi"

--6PnMrdMFifJq2rUtt9CrcfSu5CUoXCowi
Content-Type: multipart/mixed; boundary="B9VrlGSkg6nl55PSAtbT12wFUvDaAPLVT";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Martin Kelly <mkelly@xevo.com>, Yocto Project <yocto@yoctoproject.org>
Message-ID: <201e0392-340d-a4ea-8676-b8d2a860538d@gmail.com>
Subject: Re: How should we handle GCC 6 and -isystem /usr/include?
References: <0c84e977-c53d-8703-fe34-839cd34900fa@xevo.com>
In-Reply-To: <0c84e977-c53d-8703-fe34-839cd34900fa@xevo.com>

--B9VrlGSkg6nl55PSAtbT12wFUvDaAPLVT
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 4/20/17 5:04 PM, Martin Kelly wrote:
> Hi,
>=20
> After compiling a package with GCC 6, I noticed the following error,
> which is a known issue:
>=20
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D70129
>=20
> The problem is caused by adding -isystem /usr/include, which breaks the=

> GCC 6's #include_next. I see that Khem Raj already removed this for the=

> nativesdk [1], but it seems we need a similar fix for other packages, a=
s
> we are still adding -isystem in meta/conf/bitbake.conf:
>=20
> [snip]
> BUILDSDK_CPPFLAGS =3D "-isystem${STAGING_INCDIR}"
> [snip]

You must be not using master since it has been fixed by
http://git.openembedded.org/openembedded-core/commit/meta/conf/bitbake.co=
nf?id=3D88ec93d152762aedeaa231d2732e9d4b9843795a

>=20
> I experimented with a few options:
>=20
> - Changing this to "-I${STAGING_INCDIR}". Although this works (and the
> poky repo will recompile with it), I believe it will break when a recip=
e
> does -Wall -Werror and hits an error in the standard include files
> (-isystem specifically ignores warnings for this reason.)
>=20
> - Changing this to just "". This breaks at least pbzip2-native, which
> can no longer find bzlib.h, since it uses the system g++ to do so and
> bzlib-dev is not installed.
>=20
> I'm guessing the right solution involves passing a --sysroot option to
> the native build instead of -isystem so that the builtin gcc/g++
> /usr/include will find the right files.
>=20
> Does this sound right, or do you have other ideas?
>=20
> Thanks,
> Martin
>=20
> [1] poky 54d06c080393785270313878bc4a15a9915571ba
>     https://patchwork.openembedded.org/patch/122285/


--B9VrlGSkg6nl55PSAtbT12wFUvDaAPLVT--

--6PnMrdMFifJq2rUtt9CrcfSu5CUoXCowi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlj/7XcACgkQuwUzVZGdMxQjIACeNwsowbzxnjO4eZ1p7fRFPfgd
OqUAnRB3fi4wB315KA8JvZI4v0TEyjPB
=6R+n
-----END PGP SIGNATURE-----

--6PnMrdMFifJq2rUtt9CrcfSu5CUoXCowi--
