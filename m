Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECAB3E0059F; Tue, 31 Mar 2015 14:16:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520B8E003A8
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 14:16:25 -0700 (PDT)
Received: by pactp5 with SMTP id tp5so30987600pac.1
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 14:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=2k+xFs0GOdZDJ80OGVapz6g2/0Up+xZBLsiNVu9A7ds=;
	b=DFkNiAxjWdXsmKdELevZHyPk7nPcoqjKnRdfH07vwolIRpI4SJDpCSh6l5QXgIIpD+
	WwgvAIpsmcdnfaj516FOd5lDe8lPw2SWS/X7oHaoduMjOthXB3HmBBGq3J6vzm3VMFxE
	okKfLpA9OnL8iVLsBZBz7ej9k5NhMQ9SLqNciFOojBmphXMDLKnjdgeP/WoMbEWkmhNe
	pu9AEZphZtw9OUF+S3rhWUrJqxQzp6Cy6Wk9zODlc/QGWrkLfNMj2TZTMhNsv1Zhub1P
	wGgFSJUJtziEkP5XRSSoW2AJzKKdeRVzt7SP1N1WWsw0zYN2qNIqJ6rDzG3Mj0dZGPh5
	aN2A==
X-Received: by 10.68.226.161 with SMTP id rt1mr70528618pbc.101.1427836585619; 
	Tue, 31 Mar 2015 14:16:25 -0700 (PDT)
Received: from ?IPv6:2601:9:500:ece:a8d0:5a8e:b265:dcbf?
	([2601:9:500:ece:a8d0:5a8e:b265:dcbf])
	by mx.google.com with ESMTPSA id t8sm1857256pbs.59.2015.03.31.14.16.24
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 31 Mar 2015 14:16:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <alpine.LFD.2.11.1503311547440.7527@localhost>
Date: Tue, 31 Mar 2015 14:16:23 -0700
Message-Id: <8AC664C9-4035-4A3C-9AD2-A9D442C6E6EF@gmail.com>
References: <alpine.LFD.2.11.1503311547440.7527@localhost>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.2070.6)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what is the proper way to build with fedora rawhide/gcc-5.0?
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
X-List-Received-Date: Tue, 31 Mar 2015 21:16:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Mar 31, 2015, at 12:54 PM, Robert P. J. Day <rpjday@crashcourse.ca> =
wrote:
>=20
>=20
>  i asked about this a few weeks ago, finally getting back to it ...
> for better or worse, i'm running fedora rawhide, updated to the point
> where i have gcc-5.0.0:
>=20
> $ gcc --version
> gcc (GCC) 5.0.0 20150208 (Red Hat 5.0.0-0.10)
> Copyright (C) 2015 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There =
is NO
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR =
PURPOSE.
> $
>=20
> which causes a number of build issues trying to build for something as
> simple as qemux86.
>=20
>  first, there is a linemarkers issue with gcc-5.0 that i got around
> by adding to local.conf:
>=20
>  CPPFLAGS_append=3D " -P=E2=80=9D

This should not be required. Can you post the failing package with error =
details
it should be fixed.

>=20
> and there were two native build issues due to gcc-5.0 being far
> pickier with warnings that i sidestepped with the cheap hack:
>=20
>  ASSUME_PROVIDED +=3D "elfutils-native"
>  ASSUME_PROVIDED +=3D "binutils-native=E2=80=9D

There is 2.25 update available on my contrib tree.
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/master=

should help with binutils.

>=20
> at this point, the build was almost complete when i hit another
> compile error for udev on the target:
>=20
> DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> DEBUG: Executing shell function do_compile
> NOTE: make -j 8
> make: *** No rule to make target '/linux/input.h', needed by
> 'src/keymap/keys.txt'.  Stop.

that seems to be unrelated to gcc 5.0 on host. May be you have a =
different issue there.

> ERROR: oe_runmake failed
> WARNING:
> =
/home/rpjday/oe/builds/qemux86/tmp/work/i586-poky-linux/udev/182-r9/temp/r=
un.do_compile.30377:1
> exit 1 from
>  exit 1
> ERROR: Function failed: do_compile (log file is located at
> =
/home/rpjday/oe/builds/qemux86/tmp/work/i586-poky-linux/udev/182-r9/temp/l=
og.do_compile.30377)
>=20
>  in any event, is there a *preferred* way to build using fedora
> rawide at this point?

I think people will care when fedora 22 comes out later this summer or =
may be when they have beta=E2=80=99s coming out.

>=20
> rday
>=20
> --=20
>=20
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, =
CANADA
>                        http://crashcourse.ca
>=20
> Twitter:                                       =
http://twitter.com/rpjday
> LinkedIn:                               =
http://ca.linkedin.com/in/rpjday
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


