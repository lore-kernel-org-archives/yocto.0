Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27B8AE00473; Mon, 26 Oct 2015 07:29:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	URIBL_BLACK,URIBL_JP_SURBL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.7 URIBL_BLACK Contains an URL listed in the URIBL blacklist
	*      [URIs: configure.ac]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: configure.ac]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1821E00343
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 07:29:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 26 Oct 2015 07:29:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,201,1444719600"; d="scan'208";a="819660851"
Received: from kknuutil-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.18.209])
	by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2015 07:29:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jim Schimpf <jim.schimpf@gmail.com>
Date: Mon, 26 Oct 2015 14:29:42 +0000
Message-ID: <43816726.rZz34WOpqq@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <78B5DEF9-516A-4367-B960-6BAB1EA1DF43@gmail.com>
References: <78B5DEF9-516A-4367-B960-6BAB1EA1DF43@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem with library recipe
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
X-List-Received-Date: Mon, 26 Oct 2015 14:29:50 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Jim

On Monday 26 October 2015 06:58:53 jim Schimpf wrote:
> Hi,
> =09I am attempting to add a recipe to build libmill (http://libmill.o=
rg
> <http://libmill.org/>).  So far my recipe does the fetch and config b=
ut
> fails the compile.
>=20
> The recipe is:
>=20
> # -----------------------------------------------------
> # Header Meta data
> SUMMARY =3D "Co-routine & Network Library"
> DESCRIPTION =3D "Easy network use and co-routine operation"
> AUTHOR =3D "Martin Sustrik"
> HOMEPAGE =3D "https://libmill.org"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D6d82245bd22227ca739abaf3dc=
d3b80d"
> PR =3D "1.0"
>=20
> # -----------------------------------------------------
> # Source data
> SRCREV =3D "cdbd5e24e99964fdf65e701df099155ff484667e"
> SRC_URI =3D
> "git://github.com/sustrik/libmill.git;user=3Djschimpf-pandora;protoco=
l=3Dhttp"
> inherit autotools gettext
>=20
> S =3D "${WORKDIR}/git=E2=80=9D
>=20
> The compile failure is:
>=20
> ./doltlibtool  --tag=3DCC   --mode=3Dlink arm-poky-linux-gnueabi-gcc=20=

> -march=3Darmv7-a -mthumb-interwork -mfloat-abi=3Dhard -mfpu=3Dneon
> -mtune=3Dcortex-a8 --sysroot=3D/home/jim/yocto/poky/BB1/tmp/sysroots/=
beaglebone
> -std=3Dgnu99 -fvisibility=3Dhidden -DMILL_EXPORTS -U_FORTIFY_SOURCE
> -D_FORTIFY_SOURCE=3D0 -O2 -pipe -g -feliminate-unused-debug-types
> -no-undefined -version-info 10:1:0 -Wl,-O1 -Wl,--hash-style=3Dgnu
> -Wl,--as-needed -o libmill.la -rpath /usr/lib libmill_la-chan.lo
> libmill_la-cr.lo libmill_la-debug.lo libmill_la-ip.lo libmill_la-list=
.lo
> libmill_la-poller.lo libmill_la-slist.lo libmill_la-stack.lo
> libmill_la-tcp.lo libmill_la-udp.lo libmill_la-unix.lo libmill_la-uti=
ls.lo=20
> -lanl -lrt ./doltlibtool: line 18:
> /home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnue=
abi/li
> bmill/1.0-1.0/git/libtool: No such file or directory make: *** [libmi=
ll.la]
> Error 127
> make: *** Waiting for unfinished jobs....
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile (log file is located at
> /home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnue=
abi/li
> bmill/1.0-1.0/temp/log.do_compile.6506)
>=20
> The failure of the script ./doitlibtool is that it cannot find the sc=
ript
> libtool which should be created (it=E2=80=99s not in the repository) =
in the git
> directory. When i run ./configure on OS X or Ubuntu that libtool appe=
ars
> but it does not when Yocto runs it.
>=20
> I guess the failure is really in the configure state and only errors =
in the
> compile step.

It looks like this library is using DOLT. Anyone remember how to deal w=
ith=20
that? Ross?

One thing to try would be to simply drop the DOLT line from configure.a=
c and=20
see if that helps.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

