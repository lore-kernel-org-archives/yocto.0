Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F236E006AD
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 07:36:24 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Mar 2013 07:36:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="273003944"
Received: from unknown (HELO helios.localnet) ([10.255.13.154])
	by azsmga001.ch.intel.com with ESMTP; 19 Mar 2013 07:36:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?J=FCrgen?= Messerer <juergen.messerer@bbv.ch>
Date: Tue, 19 Mar 2013 14:36:21 +0000
Message-ID: <3430032.lNFuQVDR6k@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-25-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <A7B59F6D52627C44813C136D437B0832079834507C4C@TKSSREX01.outnet.ch>
References: <A7B59F6D52627C44813C136D437B0832079834507C4C@TKSSREX01.outnet.ch>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ti-xdctools fails with yocto 1.3 on ubuntu 64bit
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
X-List-Received-Date: Tue, 19 Mar 2013 14:36:24 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 19 March 2013 14:49:30 J=FCrgen Messerer wrote:
> I just tried to build an image for the beagleboard with Ti DSP suppor=
t.
> Unfortunately it failed with the message below.
> On a 32bit system it worked but on the Ubuntu 12.10 64bit it failed w=
ith the
> message below.
>=20
> Is this beacause of the missing ia32-libs?
>=20
> If yes can some one tell me exactly which 32bit-library is needed, be=
cause a
>  'apt-get install ia32-libs' will install 237MB of libraries. I think=
 it is
> not necessary to install all of those libs.
>=20
> Thanks for the help.
>=20
> Best regards
>=20
> Juergen
>=20
>=20
>=20
>=20
> testuser@ubuntu:~/myYocto/mybuilds/beagleboard-core-image-bbv$ bitbak=
e
> ti-xdctools Loading cache: 100%
> |####################################################################=
######
> #################| ETA:  00:00:00 Loaded 1267 entries from dependency=
 cache.
>=20
> Build Configuration:
> BB_VERSION        =3D "1.16.0"
> TARGET_ARCH       =3D "arm"
> TARGET_OS         =3D "linux-gnueabi"
> MACHINE           =3D "beagleboard"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.3"
> TUNE_FEATURES     =3D "armv7a vfp neon cortexa8"
> TARGET_FPU        =3D "vfp-neon"
> meta
> meta-yocto
> meta-bbv          =3D "danny:e89f812a0af56beda951c1dce6113a61d6db8cda=
"
> meta-ti           =3D "danny:900893454cc0639c767b3a2435097bdbfee28414=
"
>=20
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: TI installer requires 32bit glibc libraries for proper opera=
tion
> run 'yum install glibc.i686' on Fedora or 'apt-get install ia32-libs'=
 on
> Ubuntu/Debian ERROR: Command Error: exit status: 1  Output:
> Applying patch fix-hardcoded-paths.diff
> can't find file to patch at input line 4
> Perhaps you used the wrong -p or --strip option?
> The text leading up to this was:
> --------------------------
>=20
> |diff -ur a/packages/gnu/targets/ITarget.xs
> |b/packages/gnu/targets/ITarget.xs --- a/packages/gnu/targets/ITarget=
.xs=20
> |2011-08-06 13:24:44.000000000 +0200 +++ b/packages/gnu/targets/ITarg=
et.xs=20
> |             2011-08-06 13:23:37.000000000 +0200
> --------------------------
> No file to patch.  Skipping patch.
> 2 out of 2 hunks ignored
> Patch fix-hardcoded-paths.diff does not apply (enforce with -f)
> ERROR: Function failed: patch_do_patch
> ERROR: Logfile of failure stored in:
> /home/testuser/myYocto/mybuilds/beagleboard-core-image-bbv/tmp/work/a=
rmv7a-
> vfp-neon-poky-linux-gnueabi/ti-xdctools-3_23_00_32-r0/temp/log.do_pat=
ch.3144
> 9 ERROR: Task 1
> (/home/testuser/myYocto/poky_danny/meta-ti/recipes-ti/devtools/ti-xdc=
tools_
> 3.23.00.32.bb, do_patch) failed with exit code '1' NOTE: Tasks Summar=
y:
> Attempted 720 tasks of which 713 didn't need to be rerun and 1 failed=
.
> Waiting for 0 running tasks to finish:
>=20
> Summary: 1 task failed:
> =20
> /home/testuser/myYocto/poky_danny/meta-ti/recipes-ti/devtools/ti-xdct=
ools_3
> .23.00.32.bb, do_patch Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.

This is probably a question best posted to the meta-ti mailing list:

https://lists.yoctoproject.org/listinfo/meta-ti

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

