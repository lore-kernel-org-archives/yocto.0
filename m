Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 811ABE00C2B; Fri,  7 Oct 2016 08:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3378AE00498
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 08:10:56 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id cd13so2868329pac.3
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 08:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=RXpdalvEVQ6qWfgPu9iLe7eGZ0hYxlHKX/RmS072Sdk=;
	b=wHP0Ew17FxIs/LgW0I4LDoAJeQn7MsZ5deOq6GZ3+jGEtWLrrtiAeNQ6TnMR1qjuWJ
	u8NbseEm7lzvRTv6gegGL+DRkr+Hgmr7BNf2Bad+DExp8j6wufNnuPA15DX//jnwp6OM
	yA4aBBIsfBIbe2Mu328tQ/GYUIxyit7ZIW8Wa7LFH2+WtAqEV1YkoinNPa2ExgvldAD8
	RyMtqbHnTTXx5mglXUFVeGSin20kEphLpv7n4hdpkh8xAvBK856g28PmXHQzjADQT63j
	POBwY6rqIY7eT1jF8pGr9sTpFVzotRwMiS141k66l8f3fN4V/imFhHmdOh5egy8MGDnK
	n6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=RXpdalvEVQ6qWfgPu9iLe7eGZ0hYxlHKX/RmS072Sdk=;
	b=WaFoEeZt1PZosasciPdbF/iAM9U0iXccWbXmyrYbMecx3lOFBOkEAfmHVRvqZxtJnl
	Elb5jI5AApngqlxva9E4rjEZHlHpLswGFXsaQTfeJftzB7mHmoRzVpdtWlWB09D/yLg/
	N14tEKUyvI+jBh0BaWo0VIOSI5iw/k+WdxbYkw1LXM37F+tjXqkOFhSxnvIeBDOnG2r0
	eOcRrEf/z8qEcnnL5PXf5CsnD3MoTaZ1oBfMsXKtacmJ9kwP6oCmsolsVu9gcoh09wOE
	18+fdGQkyQ3MUa0UlPS2NpSyQMDV34rWqHytIK2NDdWTFZ+ksw05sBdPqRMlThfPf31S
	l9Bg==
X-Gm-Message-State: AA6/9Rn3iz0cfY0JD0GdWAAncOTFxfAV9VP7FFa5Lkb8MdTT5DPRD2nyCrqaeJ6GxOMwpQ==
X-Received: by 10.66.12.199 with SMTP id a7mr12021934pac.28.1475853056188;
	Fri, 07 Oct 2016 08:10:56 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:cd9d:6261:adca:4b85?
	([2601:646:8882:b8c:cd9d:6261:adca:4b85])
	by smtp.gmail.com with ESMTPSA id t10sm341521pfa.3.2016.10.07.08.10.54
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 07 Oct 2016 08:10:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CABatt_z5wfmK74g9Qz9JHnctHk-DUqTgtFBXdqqyA3RnGX5UYg@mail.gmail.com>
Date: Fri, 7 Oct 2016 08:10:44 -0700
Message-Id: <F412D82E-FD1F-4979-85AD-6E0A9165FA00@gmail.com>
References: <CABatt_xfx-PXerUpGwk0Ru+wEvLfEgSfY4J9=+qqUg4XjvmFwQ@mail.gmail.com>
	<CABatt_wz7Xrtfd-diTYc+0q9rXcSNJXVK3f5LgmvNN5DMw0FCw@mail.gmail.com>
	<CBF86C33-C5DF-43AD-BC09-7A1D5BD5AD52@gmail.com>
	<CABatt_w8ZWSftBqwpfNLHGxNCdWDfocoR0Ao-0n=jWwECh8QgQ@mail.gmail.com>
	<CABatt_z5wfmK74g9Qz9JHnctHk-DUqTgtFBXdqqyA3RnGX5UYg@mail.gmail.com>
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
X-List-Received-Date: Fri, 07 Oct 2016 15:10:58 -0000
X-Groupsio-MsgNum: 32267
Content-Type: multipart/signed;
	boundary="Apple-Mail=_843ACAA4-4212-464A-9382-8E16BA98C277";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_843ACAA4-4212-464A-9382-8E16BA98C277
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 7, 2016, at 12:58 AM, Martin Townsend <mtownsend1973@gmail.com> =
wrote:
>=20
> On Fri, Oct 7, 2016 at 8:46 AM, Martin Townsend =
<mtownsend1973@gmail.com> wrote:
>> On Fri, Oct 7, 2016 at 5:32 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>=20
>>>> On Oct 6, 2016, at 12:09 PM, Martin Townsend =
<mtownsend1973@gmail.com> wrote:
>>>>=20
>>>> On Thu, Oct 6, 2016 at 7:57 PM, Martin Townsend =
<mtownsend1973@gmail.com> wrote:
>>>>> Hi,
>>>>>=20
>>>>> We have a poky sato distributions successfully built and running =
for
>>>>> our SuperH 4 processor board.  The problem is the SDK that is =
built
>>>>> when using -cpopulate_sdk doesn't.
>>>>>=20
>>>>> The simple Makefile:
>>>>> hellomake: HelloWorld.c
>>>>> $(CC) -o HelloWorld HelloWorld.c
>>>>=20
>>>> Hit send before I had chance to finish :)
>>>>=20
>>>> ignore the missing tab but when trying to compile (after sourcing =
the
>>>> SDK environment) I get
>>>> sh4-poky-linux-gcc  -ml -m4
>>>> --sysroot=3D/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux -o =
HelloWorld
>>>> HelloWorld.o
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find crt1.o: No such file or directory
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find crti.o: No such file or directory
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find crtbegin.o: No such file or directory
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find -lgcc
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find -lgcc_s
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find -lc
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find -lgcc
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find -lgcc_s
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find crtend.o: No such file or directory
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/libexec/sh4-poky-linu=
x/gcc/sh4-poky-linux/4.9.3/real-ld:
>>>> cannot find crtn.o: No such file or directory
>>>>=20
>>>> So I tried the compiler and sysroot from the build
>>>> =
CC=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/x86_64-linux/usr/b=
in/sh4-poky-linux/sh4-poky-linux-gcc
>>>> SYSROOT=3D/ws/vms/vms-rsc-yocto-build/build_vms/tmp/sysroots/sh7760
>>>>=20
>>>> hellomake: HelloWorld.c
>>>> $(CC) --sysroot=3D$(SYSROOT) -o HelloWorld HelloWorld.c
>>>>=20
>>>> and it compiles fine.
>>>>=20
>>>> So I ran $CC -print-search-dirs
>>>> install: =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gc=
c/sh4-poky-linux/4.9.3/
>>>> programs: =
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
>>>> libraries: =
=3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linu=
x/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../../../sh4-poky-=
linux/lib/sh4-poky-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk=
-linux/usr/lib/sh4-poky-linux/gcc/sh4-poky-linux/4.9.3/../../../../../sh4-=
poky-linux/lib/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/sh4-poky=
-linux/4.9.3/:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/:/opt/sdk/=
vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.9.3/:/opt/sd=
k/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/
>>>>=20
>>>> Then I checked that these files exist:
>>>> =
martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux$=

>>>> find $SDKTARGETSYSROOT -name "crt*"
>>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crtn.o
>>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crti.o
>>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/crt1.o
>>>> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tendS.o
>>>> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tend.o
>>>> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tbeginT.o
>>>> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tbeginS.o
>>>> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/usr/lib/sh4-poky-linux/4.9.3/cr=
tbegin.o
>>>>=20
>>>> Putting the library search directories on a separate line
>>>> =
martin@martin-ubuntu-pconcepts:/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux$=

>>>> $CC -print-search-dirs | grep "^libraries:" | tr ':' '\n'
>>>> libraries
>>>> =
=3D/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux=
/gcc/sh4-poky-linux/4.9.3/
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gc=
c/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/sh4-poky-linux/4.=
9.3/
>>>> =
/opt/sdk/vms/2.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/sh4-poky-linux/gc=
c/sh4-poky-linux/4.9.3/../../../../../sh4-poky-linux/lib/
>>>> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/sh4-poky-linux/4.9.3/
>>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/lib/
>>>> =
/opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/sh4-poky-linux/4.9.3=
/
>>>> /opt/sdk/vms/2.0.2/sysroots/sh4-poky-linux/m4/usr/lib/
>>>>=20
>>>> So it looks like there is a spurious m4 is the library path.  =
Anyone
>>>> know why this has happened and how I can fix it before I wade into =
the
>>>> populate_sdk task.
>>>>=20
>>>=20
>>> Can you pass --disable-multilib to gcc cross canadian configure =
options ?
>>>=20
>>>> We are using the Jethro branch and we have fixed the GCC version to
>>>> 4.9.3 because this version works for SH4.
>>>>=20
>>>> Many Thanks,
>>>> Martin.
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>=20
>>=20
>> Thanks for the swift reply Khem.  I commented out the line from
>> gcc-cross-candian.inc
>> #GCCMULTILIB =3D "--enable-multilib"
>>=20
>> and tried
>> --disable-multilib
>> in the EXTRA_OECONF
>>=20
>> but I still get the same error when linking.  Let me know if there is
>> anything else I could try as I'm stumped.  Is there a workaround just
>> so I can get the developers up and running?
>>=20
>> Cheers, Martin.
>=20
> OK I have a workaround I create a symlink in the target sysroot
> /opt/vms/sdk/2.0.2/sysroots/sh4-poky-linux/m4 -> .
>=20
> And everything now compiles fine.
> Any ideas on how to fix this in the GCC cross canadian recipe?

there might be a bug in gcc if disabling multilib did not work. Or it =
might
be assuming m4 to be default but then not addressing the directory =
structure
issue

>=20
> Cheers, Martin.


--Apple-Mail=_843ACAA4-4212-464A-9382-8E16BA98C277
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlf3uv0ACgkQuwUzVZGdMxRimgCcCDc62LBXtEYT0qjX6u2hPEbB
TAkAn1IpGmRMt2e3ZZUbGP06BmtWCfur
=jcVe
-----END PGP SIGNATURE-----

--Apple-Mail=_843ACAA4-4212-464A-9382-8E16BA98C277--
