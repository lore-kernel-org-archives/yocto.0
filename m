Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C136E00F83; Tue,  6 Sep 2016 10:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCC9BE00D5A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 10:28:36 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id pp5so4756295pac.2
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 10:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=tP42qCdTqbdlGEuy0HJKKJjXS9238Kx1PDVpL/qBHwA=;
	b=1Ei1AvtlpRDlMHu9h4mCXYP6ClzNujLnO2NSXCT5yedhF+zOUsbRuzf7y0lNaskKLX
	peY5NbvljzMU5Vmd8dEH70i1ugptIIiBtconJSZzfFXua0+o20c8RhGMxGgsCys2aAJP
	SRiYHCbRGiIx1qFbK47QXr76mCLaavbX8f5E5R2li4gGMDvrBd3Gk3BBjJfq00AjR/iK
	8V6t0tdLBGCkZR9zydRMsNMLb+3RiFnnn5C2+ZQb1vYeeAtcqK9sB1hTw5GZoXxnVpoK
	I1JZVtomaFgOcp1yJY1nWRfamSuOTgzUU3ON9O8jvNFs6zM5L3CY+HmoZwN8fcGUyWQJ
	PTBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=tP42qCdTqbdlGEuy0HJKKJjXS9238Kx1PDVpL/qBHwA=;
	b=mo6CjuW0lnfH4XnI3Ll+b187R1IV3VxbO1zBKUL/0ZRiA5q+C5rjFhtTjFtLP5+rcq
	W80rfg3l2UALFmr+3eGmBhIcJMPDPIjC+YTwgKkgKX7sybFts9esnVd34rFzaOkJLIPm
	vu17I02e6XemQoTd0JTHZBx2+keu5DBb3RQPNEFYjkeIhT1jldqIWkMoKufFW1N3r0SE
	5gakWtyDLla7gH71ho4s07+hqfNe/Zizmi7F3MyrdINxbgsqlRKWhugRZqADVEg0h/9N
	AmdHc5bGEBQEd4Ailq0y9NPmQkXbesK/DsWkTi/F6wN4TptT/GZ2wlSUwErkFzUNfM1k
	Pi1g==
X-Gm-Message-State: AE9vXwMnh2A7ytOzpbsrncvpFJ/vK9kZwpr3b8GgnF3xk+uWtt9e066c1k7RRPPpTp0OrQ==
X-Received: by 10.66.83.72 with SMTP id o8mr41707660pay.54.1473182916106;
	Tue, 06 Sep 2016 10:28:36 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99d4:c55f:fbd3:66fa?
	([2601:647:4c00:3edf:99d4:c55f:fbd3:66fa])
	by smtp.gmail.com with ESMTPSA id
	b64sm42439550pfa.82.2016.09.06.10.28.35
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Sep 2016 10:28:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <87wpiq8psf.fsf@posteo.net>
Date: Tue, 6 Sep 2016 10:28:32 -0700
Message-Id: <BA617E8C-BB3C-44ED-9FB2-C95211B22003@gmail.com>
References: <871t0ya6co.fsf@posteo.net>
	<CAF3SDA44veF1YgepzyN0L-ntKGTr9Z4NwwMFGb4yw9XW_RNokw@mail.gmail.com>
	<87wpiq8psf.fsf@posteo.net>
To: Pietro <pulsarpietro@posteo.net>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: arm-*-linux-gnueabi : unrecognized option -Wl, -soname
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
X-List-Received-Date: Tue, 06 Sep 2016 17:28:38 -0000
X-Groupsio-MsgNum: 31805
Content-Type: multipart/signed;
	boundary="Apple-Mail=_78E92FA8-CAC0-4F80-8699-4EDFB9FBCB86";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_78E92FA8-CAC0-4F80-8699-4EDFB9FBCB86
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 5, 2016, at 6:00 AM, Pietro <pulsarpietro@posteo.net> wrote:
>=20
> Well,
>=20
> I am cross-compiling the gRPC using the Yocto build system, I have
> created a recipe for a new package which generates the gRPC
> library(ies).
>=20
> The error comes from here *guess* :
> ifeq ($(SYSTEM),Darwin)
>     $(Q) $(LD) $(LDFLAGS) -L$(LIBDIR)/$(CONFIG) -install_name
>     $(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT) -dynamiclib -o
>     $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).$(SHARED_EXT)
>     $(LIBGPR_OBJS) $(LDLIBS) $(ZLIB_MERGE_LIBS)
>     else
>        $(Q) $(LD) $(LDFLAGS) -L$(LIBDIR)/$(CONFIG) -shared
>        -Wl,-soname,libgpr.so.1 -o
>        $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).$(SHARED_EXT)
>        $(LIBGPR_OBJS) $(LDLIBS) $(ZLIB_MERGE_LIBS)
>                       $(Q) ln -sf
>                       =
$(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT)
>                       $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).so.1
>                        $(Q) ln -sf
>                        =
$(SHARED_PREFIX)gpr$(SHARED_VERSION).$(SHARED_EXT)
>                        $(LIBDIR)/$(CONFIG)/libgpr$(SHARED_VERSION).so
>                        endif
>=20
> What's puzzles me is that the same source code builds without problem =
on
> my machine (not cross compiled).
>=20
> It might be a question for gRPC developers though


that option -Wl,-soname,xxxx assumes LD =3D =E2=80=9Cgcc driver=E2=80=9D
however when using OE, that may not be case LD variable may point to
bare ld. So in your recipe you should take care of the assumption
your makefile is making and set LD =3D CC

>=20
> "Daniel." <danielhilst@gmail.com> writes:
>=20
>> I *guess* that it should be -Wl,-soname=3Dlibgpr.so.1 intead of
>> -Wl,-soname,libgpr.so.1. Now from where this flags are comming is a
>> good question..
>>=20
>> 2016-09-05 9:17 GMT-03:00 Pietro <pulsarpietro@posteo.net>:
>>>=20
>>> Hi all,
>>>=20
>>> I want to cross compile the gRPC library for ARM and I am using the
>>> Yocto build system.
>>>=20
>>> The build fails for the following error, which I am suspicious has
>>> something to do with the compiler being used:
>>>=20
>>>=20
>>> [LD]      Linking
>>> =
/export/arm/xxx/PD15.1/build/tmp-glibc/work/cortexa8t2hf-vfp-neon-phytec-l=
inux-gnueabi/libgrpc/1.0.0-r0/git/libs/opt/libgpr.so.1.0.0-pre1
>>>=20
>>> arm-phytec-linux-gnueabi-ld
>>> : unrecognized option '
>>> -Wl,-soname,libgpr.so.1
>>>=20
>>>=20
>>> arm-phytec-linux-gnueabi-ld
>>> : use the --help option for usage information
>>>=20
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>=20
>>=20
>>=20
>> --
>> "Do or do not. There is no try"
>>  Yoda Master
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_78E92FA8-CAC0-4F80-8699-4EDFB9FBCB86
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfO/MUACgkQuwUzVZGdMxQ+YQCbBEOh4KzFNKtYGBVTIZnWZrzC
mHEAmwSkBfeOse6SEJdVbo5uD8VxIHx9
=fIiR
-----END PGP SIGNATURE-----

--Apple-Mail=_78E92FA8-CAC0-4F80-8699-4EDFB9FBCB86--
