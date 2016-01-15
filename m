Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C5DFE00978; Fri, 15 Jan 2016 10:23:39 -0800 (PST)
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
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 065DCE00928
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 10:23:37 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id uo6so383241404pac.1
	for <yocto@yoctoproject.org>; Fri, 15 Jan 2016 10:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=BRRFZs+FFiqq0o5uztIP0xGCWx07MM/3cJeyOLCAXg8=;
	b=z/OTsDdDPA5R3xL/w+L9qze1d2/lW6H1CNmRvV2JPr/uJCCWLqCGgAe1SxIVEGwZUf
	nfwXU1okRJZY4kAcLYSeBPKzRPyiCdETnXRm/neU/jo72mbQ/c20g6QgO4Av2iQ8yutE
	gB1T3DRiwqwZXyzBZxdsl9+nt+EBYh8ZTyo0Sifr1Xyj4V59e07fHnuLeUYDqYYnujsR
	lKO0cZ5ud7s1PvnpuPk72aAC9ZrnGr/2QH41dlVv+ZaBLhWH+z43qe0kg+NqRLiB64ha
	yC25hqOsinS71KAfTa9XVDDu35rXiYGBw8pygNh9/bw2Yk8nr6fc+e6vQNmk1Hchp+TG
	T2ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:content-type:from
	:in-reply-to:date:cc:message-id:references:to;
	bh=BRRFZs+FFiqq0o5uztIP0xGCWx07MM/3cJeyOLCAXg8=;
	b=lbmEW3ep7+cnC/tF8E8Ws2h4woWpBV1CcIAjMIOOHIgdz59Pc4fv8zAykqVFqMpZlo
	7MacTmTlhWkCV7a33VFoxHJnuP8DyywF1qPKoj0pI+yN0PGV+Vo1fyjcqlcYlAoHT2Gp
	cl++Z8jbuOli8egz8AuYUJ+e1zX+2WxfP2xMkcILyadp8VWh8S0fgqf97JGf3QoeaZ7M
	hWvqGt+8CMYYTW6UjUVhv1Vkpcxg0SffMkW/HGxV6yUkxlgOHj6AJNLZye9dwVcyzgH1
	9iLK0aQIBIeoJmIIqfq3bA8qF4Y65LQukZDNMvZ5E0qnVNtMGejXfvGw/WylQAIinHSm
	IwBg==
X-Gm-Message-State: ALoCoQlkRYAVFGmJU/4c0xRw8aLlZsRMK9RE7mJctyNsDKqziAzklb1BwQ6Ym2L+DGiiJFgY9cC9sWwu5FQXwgj4psXJorj+tw==
X-Received: by 10.67.3.170 with SMTP id bx10mr17096071pad.34.1452882216548;
	Fri, 15 Jan 2016 10:23:36 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:84eb:56dc:942:f0f5?
	([2601:646:8802:5d5c:84eb:56dc:942:f0f5])
	by smtp.gmail.com with ESMTPSA id
	t70sm17011793pfi.8.2016.01.15.10.23.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Jan 2016 10:23:35 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
X-Priority: 3 (Normal)
In-Reply-To: <1452870935.80157155@apps.rackspace.com>
Date: Fri, 15 Jan 2016 10:23:30 -0800
Message-Id: <0BD254ED-B494-4975-B6AB-58FA2E6BDBDA@gmail.com>
References: <1452783285.1696717@apps.rackspace.com>
	<E7570BB5-2C0C-4F99-BFF8-AC2924D5BB18@gmail.com>
	<1452870935.80157155@apps.rackspace.com>
To: Scott Ellis <scott@jumpnowtek.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][coreutils] Add attr build dependency
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
X-List-Received-Date: Fri, 15 Jan 2016 18:23:39 -0000
X-Groupsio-MsgNum: 28009
Content-Type: multipart/signed;
	boundary="Apple-Mail=_66C39485-0A6D-45CB-9A6D-2FB23337D3B2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_66C39485-0A6D-45CB-9A6D-2FB23337D3B2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jan 15, 2016, at 7:15 AM, Scott Ellis <scott@jumpnowtek.com> wrote:
>=20
> The 'something' would be 'xattr'
>=20
>  PACKAGECONFIG[attr] =3D "--enable-xattr,--disable-xattr,attr,"
>=20
> What should the default be?
>=20
> The acl option for coreutils looks in DISTRO_FEATURES.
>=20
> Should I do the same for this?

if it depends on some DISTRO_FEATURE then definitely yes. Otherwise =
define the packageconfig
and then weakly assign a default with ??=3D

>=20
> "Khem Raj" <raj.khem@gmail.com> said:
>=20
>> Scott
>>=20
>> Thanks for patch. You might want to send into to oe-core mailing =
list.
>>=20
>>> On Jan 14, 2016, at 6:54 AM, Scott Ellis <scott@jumpnowtek.com> =
wrote:
>>>=20
>>> Fixes this warning:
>>>=20
>>> WARNING: QA Issue: coreutils rdepends on libattr, but it isn't a =
build
>>> dependency? [build-deps]
>>>=20
>>> Signed-off-by: Scott Ellis <scott@jumpnowtek.com>
>>> ---
>>> meta/recipes-core/coreutils/coreutils_8.24.bb | 2 +-
>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>>=20
>>> diff --git a/meta/recipes-core/coreutils/coreutils_8.24.bb
>>> b/meta/recipes-core/coreutils/coreutils_8.24.bb
>>> index f042346..47a25f3 100644
>>> --- a/meta/recipes-core/coreutils/coreutils_8.24.bb
>>> +++ b/meta/recipes-core/coreutils/coreutils_8.24.bb
>>> @@ -7,7 +7,7 @@ BUGTRACKER =3D "http://debbugs.gnu.org/coreutils"
>>> LICENSE =3D "GPLv3+"
>>> LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504\
>>>                    =
file://src/ls.c;beginline=3D5;endline=3D16;md5=3D38b79785ca88537b75871782a=
2a3c6b8"
>>> -DEPENDS =3D "gmp libcap"
>>> +DEPENDS =3D "attr gmp lib cap=E2=80=9D
>>=20
>> while this fix is good. We can make this into a packageconfig knob
>>=20
>> PACKAGECONFIG[attr] =3D =
"--enable-something,--disable-something,attr,"
>>=20
>>> DEPENDS_class-native =3D ""
>>>=20
>>> inherit autotools gettext texinfo
>>> --
>>> 2.5.0
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_66C39485-0A6D-45CB-9A6D-2FB23337D3B2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlaZOSYACgkQuwUzVZGdMxQrWwCfaKrqdAvnC3kEv+4Bf8ei3U4j
EpAAn1yx2fICKx+ExT0f9OQ6Ow+5T+2U
=2M9k
-----END PGP SIGNATURE-----

--Apple-Mail=_66C39485-0A6D-45CB-9A6D-2FB23337D3B2--
