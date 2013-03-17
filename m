Return-Path: <martin.jansa@gmail.com>
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 103DDE006C2
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 16:17:59 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id t2so2504284qcq.0
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2013 16:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=6Ve3pCeJ20V1SnTvN2A1P4bh2C0d30y+ANvAZJXfXbs=;
	b=pYY866A1H97qC5QC39AaHyZE52vbxsRPDah4xrFVZiiuuBT181deBI395wWiogyncC
	ONiLq86jboJVS6qkuAtf0EP3Kv7lFKdFq9ck1mbGEsUGkguJ/wmZpTMobb51k6puv1kL
	/9UTZCVSgzMOqjf7eEX0gaK/+2zgvmAa94qzG1VXIax0k0RnQkv4CrGbBPBA2859gdgb
	JWFmfSKhzdgWoKpInD0xFMTVvvIkZZnvGXXK5MCejc3xtFqpy1jA78pPxBA4Ek/N9tOV
	Yrcy8En2iYuvsgPulwXuC+I4k6lJfGSq/5YswPhwqslhi6/TCKmtOA7K5RjnLe+WuumW
	TkbA==
X-Received: by 10.224.179.205 with SMTP id br13mr17023560qab.37.1363562279163; 
	Sun, 17 Mar 2013 16:17:59 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id e3sm26567764qeo.0.2013.03.17.16.17.57
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sun, 17 Mar 2013 16:17:58 -0700 (PDT)
Date: Mon, 18 Mar 2013 00:17:56 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Insop Song <insop.song@gmail.com>
Message-ID: <20130317231756.GA3190@jama>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sun, 17 Mar 2013 23:18:00 -0000
X-Groupsio-MsgNum: 12635
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline

--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 15, 2013 at 10:37:56PM -0700, Insop Song wrote:
> Hi,
>=20
> I am using HEAD of master, and I have this error after I use commit

Please use better Subject next time, I was wondering what could be
broken by my patch to icecc and your question is quite unrelated to that
commit.

Something like "neard failing to build with latest poky" would be
better.

>=20
> "
> commit 1ceb13dda11645229053fc4840954333f8910ba4
> Author: Martin Jansa <martin.jansa@gmail.com>
> Date:   Wed Mar 13 20:04:51 2013 +0100
> "
>=20
> Could anyone know about this?
>=20
>=20
> - my config
>=20
> Build Configuration:
> BB_VERSION        =3D "1.17.1"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-12.04"
> TARGET_SYS        =3D "i586-poky-linux"
> MACHINE           =3D "qemux86"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.3+snapshot-20130316"
> TUNE_FEATURES     =3D "m32 i586"
> TARGET_FPU        =3D ""
> meta
> meta-yocto        =3D "master:1ceb13dda11645229053fc4840954333f8910ba4"
> meta-realtime     =3D "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
> meta-yocto-bsp    =3D "master:1ceb13dda11645229053fc4840954333f8910ba4"
>=20
>=20
> - error output:
> ERROR: Function failed: BUILDSPEC (see
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-git=
AUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_wri=
te_rpm.31563
> for further information)
> ERROR: Logfile of failure stored in:
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-git=
AUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_wri=
te_rpm.31563
>=20
>=20
>=20
> - full output:
>=20
> ~/mybuilds/meta-realtime $ time bitbake core-image-realtime
> Loading cache: 100%
> |########################################################################=
########################|
> ETA:  00:00:00
> Loaded 1121 entries from dependency cache.
> Parsing recipes: 100%
> |########################################################################=
######################|
> Time: 00:00:00
> Parsing of 813 .bb files complete (812 cached, 1 parsed). 1121
> targets, 27 skipped, 0 masked, 0 errors.
>=20
> Build Configuration:
> BB_VERSION        =3D "1.17.1"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-12.04"
> TARGET_SYS        =3D "i586-poky-linux"
> MACHINE           =3D "qemux86"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.3+snapshot-20130316"
> TUNE_FEATURES     =3D "m32 i586"
> TARGET_FPU        =3D ""
> meta
> meta-yocto        =3D "master:1ceb13dda11645229053fc4840954333f8910ba4"
> meta-realtime     =3D "schedtool:a766d16a1cf4da3c2dd13b8c7e53f89775733187"
> meta-yocto-bsp    =3D "master:1ceb13dda11645229053fc4840954333f8910ba4"
>=20
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Function failed: BUILDSPEC (see
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-git=
AUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_wri=
te_rpm.31563
> for further information)
> ERROR: Logfile of failure stored in:
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-git=
AUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_wri=
te_rpm.31563
> Log data follows:
> | DEBUG: Executing python function sstate_task_prefunc
> | DEBUG: Python function sstate_task_prefunc finished
> | DEBUG: Executing python function do_package_write_rpm
> | DEBUG: Executing python function read_subpackage_metadata
> | DEBUG: Python function read_subpackage_metadata finished
> | DEBUG: Executing python function do_package_rpm
> | DEBUG: Executing python function write_specfile
> | NOTE: Not creating empty RPM package for neard-tests
> | NOTE: Creating RPM package for neard-dbg
> | NOTE: Not creating empty RPM package for neard-staticdev
> | NOTE: Creating RPM package for neard-dev
> | NOTE: Not creating empty RPM package for neard-doc
> | NOTE: Not creating empty RPM package for neard-locale
> | NOTE: Creating RPM package for neard
> | NOTE: Creating RPM package for neard
> | DEBUG: Python function write_specfile finished
> | DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
> 'common-linux', 'common-glibc', 'i586-linux', 'common']
> | DEBUG: Executing shell function BUILDSPEC
> | error: line 152: Illegal char '-' in EVR: Suggests: neard =3D
> 0.9-git0+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1
> | error: Package has no %description: neard-dbg.i586
> | Building target platforms: i586-poky-linux
> | DEBUG: Python function do_package_rpm finished
> | DEBUG: Python function do_package_write_rpm finished
> | ERROR: Function failed: BUILDSPEC (see
> /home/insop/mybuilds/meta-realtime/tmp/work/i586-poky-linux/neard/0.9-git=
AUTOINC+1e20e396cb837017b7e5ef822bfdab6ce060d2cf-r1/temp/log.do_package_wri=
te_rpm.31563
> for further information)
> ERROR: Task 1370
> (/home/insop/poky/meta/recipes-connectivity/neard/neard_0.9.bb,
> do_package_write_rpm) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3322 tasks of which 3281 didn't need to
> be rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>=20
> Summary: 1 task failed:
>   /home/insop/poky/meta/recipes-connectivity/neard/neard_0.9.bb,
> do_package_write_rpm
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>=20
> real	0m27.611s
> user	0m30.158s
> sys	0m4.900s

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--IS0zKkzwUGydFO0o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFGTyQACgkQN1Ujt2V2gBzkNgCgiL8JkYKZ83Ri4pYaVAPGYcsb
2qMAn2hFRc/zwMgLnipABWjendrjPh8t
=PkbD
-----END PGP SIGNATURE-----

--IS0zKkzwUGydFO0o--
