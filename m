Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 460C6E00948; Thu, 28 Jan 2016 05:23:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 262C2E008F5
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 05:23:43 -0800 (PST)
Received: from serv031.corp.eldorado.org.br (200.148.226.2) by
	smtp1.eldorado.org.br (200.148.226.10) with Microsoft SMTP Server (TLS)
	id 14.3.123.3; Thu, 28 Jan 2016 11:23:38 -0200
Received: from serv031.corp.eldorado.org.br (192.168.4.31) by
	serv031.corp.eldorado.org.br (192.168.4.31) with Microsoft SMTP Server
	(TLS) id 15.0.775.38; Thu, 28 Jan 2016 11:23:41 -0200
Received: from serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3]) by
	serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3%14]) with mapi
	id 15.00.0775.031; Thu, 28 Jan 2016 11:23:41 -0200
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] do_compile fails in Jethro
Thread-Index: AdFZHE6PhGmOY0MWROSiCB021ANIZAAK9/AAAB+saoAAAfUbEA==
Date: Thu, 28 Jan 2016 13:23:41 +0000
Message-ID: <13e655495baa4cb884e122765d0e1db5@serv031.corp.eldorado.org.br>
References: <14d020d8b9fa445d8094c9a4a7825750@serv031.corp.eldorado.org.br>
	<CAMKF1spKdbHLRKmdFbzQRPCcq99OVHRkWcd6=4uWX_pA7W6kFw@mail.gmail.com>
	<8e51c824353f4708921c79356987a837@serv031.corp.eldorado.org.br>
In-Reply-To: <8e51c824353f4708921c79356987a837@serv031.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [177.220.10.3]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAC+NgFjrNIsWRWlGSWpSXmKPExsVyYsojJt0osVVhBq/uvF7IZTHp5Ro2B0aP9hN9bAGMUayZeUn5FQmsGXPPPGQtOCxRceVTSgPjVZEuRi4OIYGdjBLHWvpZuxg5gZx9jBKfmrMhEqcZJf4vaWAHSbAJeEpcf9vGDGKLCJhKvDj2hQ3EFhbQl/i3YzEbRNxA4tnUyUwQtpPE0pPXwOpZBFQlnr/qBqvhFfCWmHbtDQvEgiuMEm/PHQQr4hTwkbi79R4LiM0oICsx989esMXMAuISt57MBxsqIaAtsf3VPlYIW0di07VVLBC2s8TP92+ZIWwBiSV7zkPZShK9t99B9YpKvHz8D6pXT2L/xd1sEHagxPTvN6BqTCXeLLkENdNW4sTav8ww839svQHVKy/x/959qBoHiRuH3kPVKEgcePYVak6AxI8Fv6DqgyX+P14Etatc4skHmL3BEtM3X2efwGg0C8mbELaOxILdn9ggbG2JZQtfM88Ch52gxMmZT1gWMLKsYpQqzi0pMNRLzi8q0EvNSckvSkzJ18svStdLKtrECEwQuz1WX93BeGG1+yFGJg7OW4zSHAeYhDjSEotLChKLi4VY8vLzUqWgCUeqgdFr3TdRQ9kcpZ6HoXcOP0/uFq5qioy8/M2D9+V5/ZhahSW5x3Y231p54nRbzd+dE3SK0lg+XDtWv4mFgf2RKWfqTQ2f1k82z8qzM85a9M1ztqpIjtItkpjSeP+r64PMEBf/o/I775VOkbNSclZeGF/zPSGo4J7HI5vZjoU/dQ1tZyi+Xa/5WImlOCPRUIu5qDgRAGmR/YHeAgAA
Subject: Re: do_compile fails in Jethro
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
X-List-Received-Date: Thu, 28 Jan 2016 13:23:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just clarifying , talloc recipe is presente in openembedded (r. 2.1.1) and =
bitbake talloc returns with no error.


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Alexandre Freire da Silva Osorio
Sent: quinta-feira, 28 de janeiro de 2016 10:31
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] do_compile fails in Jethro

Khem,

Yes, your suggestion solves the problem, I justo don't know why this was no=
t needed in Fido. Thanks for your help!

But now I'm facing a new error:

> bitbake core-image-lsb

ERROR: Function failed: do_rootfs

ERROR: Unable to install packages.

Computing transaction...warning: Can't install libtevent-dev-0.9.21-r0@core=
2_64: Can't install talloc-dev-2.1.1-r0@core2_64: no package provides tallo=
c =3D 2.1.1-r0


Do you have an idea of what could be happened?

Regards,
Alexandre




-----Original Message-----
From: Khem Raj [mailto:raj.khem@gmail.com]
Sent: quarta-feira, 27 de janeiro de 2016 17:18
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] do_compile fails in Jethro

On Wed, Jan 27, 2016 at 11:11 AM, Alexandre Freire da Silva Osorio <alexand=
re.osorio@eldorado.org.br> wrote:
> Hi!
>
> The first time I tried to upgrade my build to Jethro I received the follo=
wing error message while do_compiling krb5:
>
> (...)
> | .build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x
> | 86_64-poky-linux/5.2.0/ld: plugins.so: relocation R_X86_64_PC32=20
> | against symbol `krb5int_open_plugin' can not be used when making a=20
> | shared object; recompile with -fPIC=20
> | .build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x
> | 86_64-poky-linux/5.2.0/ld: final link failed: Bad value
> | collect2: error: ld returned 1 exit status
> | make[2]: *** [libkrb5support.so.0.1] Error 1
> | make[2]: Leaving directory `.build/tmp/work/core2-64-poky-linux/krb5/1.=
13.2-r0/krb5-1.13.2/src/util/support'
> | make[1]: *** [all-recurse] Error 1
> | make[1]: Leaving directory `.build/tmp/work/core2-64-poky-linux/krb5/1.=
13.2-r0/krb5-1.13.2/src/util'
> | make: *** [all-recurse] Error 1
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at=20
> | .build/tmp/work/core2-64-poky-linux/krb5/1.13.2-r0/temp/log.do_compi
> | le.9043)
> ERROR: Task 1764 (.meta-openembedded/meta-oe/recipes-connectivity/krb5/kr=
b5_1.13.2.bb, do_compile) failed with exit code '1'
>
>
> This error doesn't occur when I was using Fido. Please, could anyone give=
 me a help?

what happens if you add

CFLAGS +=3D "-fPIC -DPIC" to concerned .bb file.

>
> Thanks in advance.
>
> Regards,
> Alexandre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

