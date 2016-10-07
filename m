Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F0C3E00B45; Thu,  6 Oct 2016 21:32:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A87C5E00AAB
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 21:32:23 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id qn10so2089649pac.2
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 21:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=tnPCl27gqkVltFLinX43lozBqN9A8KnYKQ3FB0jjw0I=;
	b=ejUcK/aIpOttBPoi2OQ48Xvdy70xpq7lzWfUEAdI7YmriXF7Cbwx4xA5cWjWEscA3U
	WcIloj+iD9iJqU9+BBSQLepTDlqxPxUo+F5TwqUQ5WZrhLIUiRlrJJVj5oNjl7iQs7wp
	npFkGowk5uYSmPpbI0pYNOTuSrnmkC8tZf0tfLVjIrRvGz2fPXQgZvEmpbaMN//eW0xw
	BjeEHSJV76ynVjC1ZEMBU8EOSOopEfa8SMWOMSL8Qx15LDHWBWVufGI3DVkoJSpQF9fW
	Gy0OBU8Rl0C4MN7/ovV3Vx1LbKDc4bY2ihhPMyCqsNnk/GZEGM9mb+bo9UHjH8TXFgAx
	MB0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=tnPCl27gqkVltFLinX43lozBqN9A8KnYKQ3FB0jjw0I=;
	b=C/WWXWQ4iaQdf5x2VvXZofE87Ij+fTWko0URDMLhiojbiWN86VxvznxWOYXwRmsqBW
	RHbhwiwewztKOpkVir1kCoPfYIRqxejk/SILpIHenD4bwocCPPnnI/hhPX8uuhd4JdLL
	1as4Id7Cbh/yJZaceyRuwVNOqWyY8U+2KF+jt2Uiq3M+HDGgV89MAyXS/ofikmCnIzTX
	t2F0Yugx4KsLihxcmi/T5BaG4Lb5ruHocB4qvagkZidamYU2HmzYavRdbKDy2g8P2APO
	QSbxpsH7hQFIKpNOXtTB0pMQVC68o5FuHEUBZuM9hvYBfWHtbpR1drgXwygYyPAUYB0B
	bALg==
X-Gm-Message-State: AA6/9RmMS9+FMpwLXuas3B8NzbzCpeS4GLSeqLhghi6douHkhjej+4Q1VbT9zvTj6lZwCA==
X-Received: by 10.66.48.170 with SMTP id m10mr27641315pan.43.1475814742962;
	Thu, 06 Oct 2016 21:32:22 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:cd9d:6261:adca:4b85?
	([2601:646:8882:b8c:cd9d:6261:adca:4b85])
	by smtp.gmail.com with ESMTPSA id 28sm9522977pft.76.2016.10.06.21.32.21
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 06 Oct 2016 21:32:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABatt_wz7Xrtfd-diTYc+0q9rXcSNJXVK3f5LgmvNN5DMw0FCw@mail.gmail.com>
Date: Thu, 6 Oct 2016 21:32:16 -0700
Message-Id: <CBF86C33-C5DF-43AD-BC09-7A1D5BD5AD52@gmail.com>
References: <CABatt_xfx-PXerUpGwk0Ru+wEvLfEgSfY4J9=+qqUg4XjvmFwQ@mail.gmail.com>
	<CABatt_wz7Xrtfd-diTYc+0q9rXcSNJXVK3f5LgmvNN5DMw0FCw@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: SDK Problems for SuperH 4
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
X-List-Received-Date: Fri, 07 Oct 2016 04:32:25 -0000
X-Groupsio-MsgNum: 32261
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E089E695-A27D-43FF-A9B3-DDDD196D2048";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E089E695-A27D-43FF-A9B3-DDDD196D2048
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 6, 2016, at 12:09 PM, Martin Townsend <mtownsend1973@gmail.com> =
wrote:
>=20
> On Thu, Oct 6, 2016 at 7:57 PM, Martin Townsend =
<mtownsend1973@gmail.com> wrote:
>> Hi,
>>=20
>> We have a poky sato distributions successfully built and running for
>> our SuperH 4 processor board.  The problem is the SDK that is built
>> when using -cpopulate_sdk doesn't.
>>=20
>> The simple Makefile:
>> hellomake: HelloWorld.c
>> $(CC) -o HelloWorld HelloWorld.c
>=20
> Hit send before I had chance to finish :)
>=20
> ignore the missing tab but when trying to compile (after sourcing the
> SDK environment) I get
> sh4-poky-linux-gcc  -ml -m4
> --sysroot=3D/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux -o HelloWorld
> HelloWorld.o
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find crt1.o: No such file or directory
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find crti.o: No such file or directory
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find crtbegin.o: No such file or directory
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find -lgcc
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find -lgcc_s
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find -lc
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find -lgcc
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find -lgcc_s
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find crtend.o: No such file or directory
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
> cannot find crtn.o: No such file or directory
>=20
> So I tried the compiler and sysroot from the build
> =
CC=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/x86_64-linux/usr/b=
in/sh4-poky-linux/sh4-poky-linux-gcc
> SYSROOT=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/sh7760
>=20
> hellomake: HelloWorld.c
> $(CC) --sysroot=3D$(SYSROOT) -o HelloWorld HelloWorld.c
>=20
> and it compiles fine.
>=20
> So I ran $CC -print-search-dirs
> install: =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gc=
c/sh4-poky-linux/4.9.3/
> programs: =
=3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-=
linux/usr/libexec/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.=
0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linux/gcc/sh4-poky-=
linux/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-l=
inux/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-=
linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/:/opt/sdk/vms/2.0.2/sysroo=
ts/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/..=
/../../../../sh4-poky-linux/bin/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/s=
ysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9=
.3/../../../../../sh4-poky-linux/bin/
> libraries: =
=3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linu=
x/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../../../sh4-poky-=
linux/lib/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk=
-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../../../sh4-=
poky-linux/lib/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/sh4-poky=
-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/:/opt/sdk/=
vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.9.3/:/opt/sd=
k/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/
>=20
> Then I checked that these files exist:
> =
martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux$=

> find $SDKTARGETSYSROOT -name "crt*"
> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crtn.o
> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crti.o
> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crt1.o
> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tendS.o
> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tend.o
> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tbeginT.o
> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tbeginS.o
> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tbegin.o
>=20
> Putting the library search directories on a separate line
> =
martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux$=

> $CC -print-search-dirs | grep "^libraries:" | tr ':' '\n'
> libraries
> =
=3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gc=
c/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/sh4-poky-linux/4.=
9.3/
> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gc=
c/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/
> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/sh4-poky-linux/4.9.3/
> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/
> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.9.3=
/
> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/
>=20
> So it looks like there is a spurious m4 is the library path.  Anyone
> know why this has happened and how I can fix it before I wade into the
> populate_sdk task.
>=20

Can you pass --disable-multilib to gcc cross canadian configure options =
?

> We are using the Jethro branch and we have fixed the GCC version to
> 4.9.3 because this version works for SH4.
>=20
> Many Thanks,
> Martin.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_E089E695-A27D-43FF-A9B3-DDDD196D2048
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf3JVQACgkQuwUzVZGdMxSkvgCeJZjjb+yloQlpBkX3K2Xfio11
HhIAnj/dUPGGHJB6s8xTTEVX2yHl68cV
=dS4B
-----END PGP SIGNATURE-----

--Apple-Mail=_E089E695-A27D-43FF-A9B3-DDDD196D2048--
