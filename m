Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8C89E00A48; Thu, 17 Nov 2016 09:25:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1066AE00546
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 09:25:11 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id e9so17747124pgc.1
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2016 09:25:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=0/t7KMXl4uLL4OTZ1TMSHmkBa3MbqO5U9ZdMoORwu1I=;
	b=R6gId4eHcZ80CNMhvyGuqACeFViHIDJzvuUlyAQskUzTynQv2s8eaqz99JGAxuDiHK
	XP4N72mETf4yoYfyki0g4CeU5HGI5wweAjIiclDxFau7zv6cBsrdHCp47DCyb8KCUYsh
	UGHCiogk67Vpv6IDdC7FS2W5vIiaUQn/k5/wt2I9IljZibzPGG1jiglFKiLQ74XCpJ9m
	X4kt7DfHa+8/7eDf/ezkrkOD1n/MFTgdn7ldtqzc5nnnXA23wjk8PUIDmV7MEgq5awMl
	KmlVTQMfnbJlcqm9p49NKstHFsNmS2SVH6jTc+XM8nCYlnC7pCpqYVBQe3PxH/gmxT2w
	U3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=0/t7KMXl4uLL4OTZ1TMSHmkBa3MbqO5U9ZdMoORwu1I=;
	b=hUhzYhZKISZ+IxTayUJ/gg5db2lswFcRnFsEZm92B5Y1ZLe7q5nOgI8KsA+Qo92Wqt
	wYuRwQkZ2G+oTZuuYJsX0/8GMQ5Dk4QxA2JIxRPRMxpvljw1yVmmqMDKAaK5Pno5ZPsc
	DQFSJMAr9CCRRLBVkenH7IhjNDYxBpiyq0qcGKzsC1XwbbMJnkmJ8KXToAyvw7lwaL90
	s5+iMPWiVaJp01tWQYXNrh5fM2AnVN+Qvy8Qm2QsWRUzUMfDBVWTmx2MF/TPDkK96anx
	6gOZURgG2woJ3304/YrMM5sc1+XZZ4c7xrALs1dW1IJ9KqfdJjctGWqGp/58xfXl5i5L
	95OA==
X-Gm-Message-State: ABUngvcXePYgtN66A+A7IFzTtYn8QKaXhl96b6Y5oA9iZWGiCsJlC+Di8+RQKMDYiDq9lA==
X-Received: by 10.99.126.94 with SMTP id o30mr9931085pgn.66.1479403511118;
	Thu, 17 Nov 2016 09:25:11 -0800 (PST)
Received: from CACSVMO-14452.local (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m19sm9577043pfi.24.2016.11.17.09.25.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 Nov 2016 09:25:10 -0800 (PST)
To: Elazar Leibovich <elazarl@gmail.com>, yocto@yoctoproject.org
References: <CAHNTFm+FxmRv5OOf9geKdQ_hPfzcoi-chviAWDmy1jK_aDTHnQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <2e4225b6-42ed-26f4-d158-75c96214d98f@gmail.com>
Date: Thu, 17 Nov 2016 09:23:47 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <CAHNTFm+FxmRv5OOf9geKdQ_hPfzcoi-chviAWDmy1jK_aDTHnQ@mail.gmail.com>
Subject: Re: undefined references to `__dso_handle'
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
X-List-Received-Date: Thu, 17 Nov 2016 17:25:37 -0000
X-Groupsio-MsgNum: 33014
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="SbT1222h2gjTQAkG4wgDr6k0lEXCMgRkk"

--SbT1222h2gjTQAkG4wgDr6k0lEXCMgRkk
Content-Type: multipart/mixed; boundary="qll5dwAKW6dRrUDjTJOP1SAjrB1AptqdH";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Elazar Leibovich <elazarl@gmail.com>, yocto@yoctoproject.org
Message-ID: <2e4225b6-42ed-26f4-d158-75c96214d98f@gmail.com>
Subject: Re: [yocto] undefined references to `__dso_handle'
References: <CAHNTFm+FxmRv5OOf9geKdQ_hPfzcoi-chviAWDmy1jK_aDTHnQ@mail.gmail.com>
In-Reply-To: <CAHNTFm+FxmRv5OOf9geKdQ_hPfzcoi-chviAWDmy1jK_aDTHnQ@mail.gmail.com>

--qll5dwAKW6dRrUDjTJOP1SAjrB1AptqdH
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/16/16 2:05 AM, Elazar Leibovich wrote:
> Hi,
>=20
> I followed the quickstart tutorial, branch morty, to create the most ba=
sic
> image on local QEMU, and I got compilation errors for __dso_handle miss=
ing.
> I'm using ubuntu 16.
> Here is an example output:
> ++ -nostdlib++  -fPIC -DPIC -D_GLIBCXX_SHARED -shared -nostdlib
> /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr=
/lib/crti.o
> /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr=
/lib/arm-poky-linux-gnueabi/6.2.0/crtbeginS.o
>  .libs/compatibility.o .libs/compatibility-debug_list.o
> .libs/compatibility-debug_list-2.o .libs/compatibility-c++0x.o
> .libs/compatibility-atomic-c++0x.o .libs/compatibility-thread-c++0x.o
> .libs/compatibility-chrono.o .libs/compatibility-condvar.o
>  -Wl,--whole-archive ../libsupc++/.libs/libsupc++convenience.a
> ../src/c++98/.libs/libc++98convenience.a
> ../src/c++11/.libs/libc++11convenience.a -Wl,--no-whole-archive  -lm
> -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/x86_64-linux/u=
sr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/6.2.0
> -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/l=
ib
> -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/u=
sr/lib/arm-poky-linux-gnueabi/6.2.0
> -L/media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/u=
sr/lib
> -lc -lgcc_s
> /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr=
/lib/arm-poky-linux-gnueabi/6.2.0/crtendS.o
> /media/elazar/788854CC88548B10/poky/build/tmp/sysroots/raspberrypi3/usr=
/lib/crtn.o
>  -march=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dc=
ortex-a7
> -Wl,-O1 -Wl,-z -Wl,relro -Wl,--gc-sections -Wl,-O1 -Wl,--hash-style=3Dg=
nu
> -Wl,--as-needed -Wl,--version-script=3Dlibstdc++-symbols.ver   -Wl,-son=
ame
> -Wl,libstdc++.so.6 -o .libs/libstdc++.so.6.0.22
> | .libs/compatibility-c++0x.o: In function
> `__static_initialization_and_destruction_0':
> |
> /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnue=
abi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/../../=
=2E./../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/sr=
c/c++11/compatibility-c++0x.cc:215:
> undefined reference to `__dso_handle'
> | ../src/c++11/.libs/libc++11convenience.a(system_error.o): In function=

> `__static_initialization_and_destruction_0':
> |
> /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnue=
abi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++11/=
=2E./../../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstd=
c++-v3/src/c++11/system_error.cc:71:
> undefined reference to `__dso_handle'
> | ../src/c++98/.libs/libc++98convenience.a(mt_allocator.o): In function=

> `get_freelist':
> |
> /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnue=
abi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++98/=
=2E./../../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstd=
c++-v3/src/c++98/mt_allocator.cc:64:
> undefined reference to `__dso_handle'
> | ../src/c++98/.libs/libc++98convenience.a(c++locale.o): In function
> `std::get_catalogs()':
> |
> /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnue=
abi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++98/=
c++locale.cc:251:
> undefined reference to `__dso_handle'
> | ../src/c++11/.libs/libc++11convenience.a(condition_variable.o): In fu=
nction
> `key_init':
> |
> /usr/src/debug/gcc-runtime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnue=
abi.arm-poky-linux-gnueabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++11/=
=2E./../../../../../../../../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstd=
c++-v3/src/c++11/condition_variable.cc:133:
> undefined reference to `__dso_handle'
> |
> ../src/c++11/.libs/libc++11convenience.a(future.o):/usr/src/debug/gcc-r=
untime/6.2.0-r0/gcc-6.2.0/build.arm-poky-linux-gnueabi.arm-poky-linux-gnu=
eabi/arm-poky-linux-gnueabi/libstdc++-v3/src/c++11/../../../../../../../.=
=2E/../../work-shared/gcc-6.2.0-r0/gcc-6.2.0/libstdc++-v3/src/c++11/futur=
e.cc:64:
> more undefined references to `__dso_handle' follow
> | collect2: error: ld returned 1 exit status
>=20
> I'll be happy for help, haven't found similar error when searching the =
web

is it pristine ubuntu 16.04 or do you have any customization, new package=
s etc
installed on top

>=20
>=20


--qll5dwAKW6dRrUDjTJOP1SAjrB1AptqdH--

--SbT1222h2gjTQAkG4wgDr6k0lEXCMgRkk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgt56YACgkQuwUzVZGdMxTlmgCgjWIfJ2fwC5OKF+hcCqZGjbnW
fvYAn01WF5UjzZlOhxRIJDYDHTOgLln/
=lmzt
-----END PGP SIGNATURE-----

--SbT1222h2gjTQAkG4wgDr6k0lEXCMgRkk--
