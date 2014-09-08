Return-Path: <PStath@Axxcelera.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5379AE0056A; Mon,  8 Sep 2014 10:23:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from RIC-MS02.MWSG.int (static-96-253-69-114.rcmdva.fios.verizon.net
	[96.253.69.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D7FE0034C
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 10:23:38 -0700 (PDT)
Received: from RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845]) by
	RIC-MS02.MWSG.int ([fe80::169:5447:c281:e845%10]) with mapi id
	14.03.0123.003; Mon, 8 Sep 2014 13:23:37 -0400
From: "Stath, Paul" <PStath@Axxcelera.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Include PaX / GRSecurity
Thread-Index: AQHPy3ksOIU6mNZTj02t8b7jc3Fqbw==
Date: Mon, 8 Sep 2014 17:23:37 +0000
Message-ID: <5B5D636C5F0AA747B37D0EFC72B563C42D5CFA57@RIC-MS02.MWSG.int>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.10.129]
MIME-Version: 1.0
Subject: Re: Include PaX / GRSecurity
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
X-List-Received-Date: Mon, 08 Sep 2014 17:23:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jens Lecius <incnews@jenslucius.de> write:=0A=
=0A=
> I am trying to include the GRSecurity & PaX patches for the kernel in a Y=
octo build.=0A=
>=0A=
> The patch is applied to the kernel correctly, but when the build begins=
=0A=
> I get the following error:=0A=
=0A=
> | Makefile:686: *** Your gcc installation does not support plugins. If=0A=
> the necessary headers for plugin support are missing, they should be=0A=
> installed.  On Debian, apt-get install gcc-<ver>-plugin-dev.  If you=0A=
> choose to ignore this error and lessen the improvements provided by this=
=0A=
> patch, re-run make with the DISABLE_PAX_PLUGINS=3Dy argument..  Stop.=0A=
=0A=
> Any ideas how to solve this? (Compile is on an Intel machine crosscompile=
 for ARM)=0A=
=0A=
> Thanks,=0A=
> Jens=0A=
=0A=
By default, the gcc compiler built by Yocto is not configured with plug-in =
support.=0A=
=0A=
To resolve this, I added a bbappend file for the gcc-cross recipe in my cus=
tom layer, which simply contained:=0A=
=0A=
EXTRA_OECONF +=3D "--enable-plugin"=0A=
=0A=
This added the "--enable-plugin" flag to the do_configure task when configu=
ring/building the gcc-cross compiler.=0A=
=0A=
Note:  Where you add the "--enable-plugin" configure option will depend on =
which compiler needs plugin support.=0A=

