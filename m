Return-Path: <mats.liljegren@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2FD9FE0146B
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 23:41:49 -0700 (PDT)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.02.0318.001; Tue, 16 Apr 2013 08:41:43 +0200
From: Mats Liljegren <mats.liljegren@enea.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Thread-Topic: [yocto] How to archive source for a single package
Thread-Index: AQHON7JvRe2MRuGHr0SPS8wx7jTSqpjYGi57gABRJWA=
Date: Tue, 16 Apr 2013 06:41:43 +0000
Message-ID: <0247700D01F14443B9209F90AD938CC52425B6FE@sestoex09.enea.se>
References: <CA+xJJ19kDS-444AsV1esV_QRbqf+GRwsVgf+E498CQVNxxYAGA@mail.gmail.com>
	<20130412191507.GA32099@wrk>
	<CA+xJJ1-gQst69uEivqCteJWyRPyEkcFrjNrPKLd9c1Lv8UEF2Q@mail.gmail.com>
	<20130416014746.GB2583@wrk>
In-Reply-To: <20130416014746.GB2583@wrk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.52]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 16 Apr 2013 07:00:53 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to archive source for a single package
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
X-List-Received-Date: Tue, 16 Apr 2013 06:41:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yep, that worked! Thanks, you saved my day!

/Mats

-----Original Message-----
From: Kevin Strasser [mailto:kevin.strasser@linux.intel.com]=20
Sent: den 16 april 2013 03:48
To: Mats Liljegren
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to archive source for a single package

On Mon, Apr 15, 2013 at 09:39:48AM +0200, Mats Liljegren wrote:
> I tried that but got the error shown below. This made me believe that=20
> archive-patched-source wasn't built for being included from a recipe:

Sorry, I had assumed you weren't using code that was any newer than danny r=
elease. Lately we have been working on adding sstate support to the various=
 archive-*-source classes, so they are a bit more complicated than they use=
d to be.

I think your best bet is to inherit directly from archiver.bbclass and manu=
ally add the archive task in your kernel recipe.
For example:

  inherit archiver
  do_patch[postfuncs] +=3D "do_archive_patched_sources "

Let me know if this does the trick.

-Kevin

>=20
> $ bitbake virtual/kernel
> Loading cache: 100%
> |#####################################################################
> |##|
> ETA:  00:00:00
> Loaded 1234 entries from dependency cache.
> Parsing recipes: 100%
> |#####################################################################
> ||
> Time: 00:00:00
> Parsing of 921 .bb files complete (920 cached, 1 parsed). 1232=20
> targets, 86 skipped, 7 masked, 0 errors.
> WARNING: No recipes available for:
>=20
> /media/sdb1/fb/mlil/poky/meta-enea/recipes-append/hv-cfg/hv-cfg_git.bb
> append
>=20
> /media/sdb1/fb/mlil/poky/meta-enea/recipes-kernel/linux/linux-davinci-
> mainline.bbappend
>=20
> /media/sdb1/fb/mlil/poky/meta-enea/recipes-kernel/linux/linux-qoriq-sd
> k.bbappend
>=20
> Build Configuration:
> BB_VERSION        =3D "1.18.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-12.10"
> TARGET_SYS        =3D "arm-enea-linux-gnueabi"
> MACHINE           =3D "pandaboard"
> DISTRO            =3D "enea-lwrt-demo"
> DISTRO_VERSION    =3D "2.0"
> TUNE_FEATURES     =3D "armv7a vfp neon"
> TARGET_FPU        =3D "vfp-neon"
> meta              =3D "master-enea:312d568ef126816b1497cc097c93d8152b8937=
32"
> meta-enea         =3D "master-enea:e81e7fe27b8ab3f9fe32faf2d6f95565d84945=
c0"
> meta-enea-lwrt    =3D "master-enea:b97c23337c29eb7b1fa72486ba67430a2975c9=
8d"
> meta-ti           =3D "master:c14c386946e1ea341faeea292580e37d538d645d"
>=20
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> ERROR: An uncaught exception occured in runqueue, please see the=20
> failure
> below:
> ERROR: Running idle function
> Traceback (most recent call last):
>   File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/runqueue.py", line=20
> 887, in
> RunQueue._execute_runqueue():
>                  else:
>     >                self.rqexe =3D RunQueueExecuteScenequeue(self)
>=20
>   File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/runqueue.py", line=20
> 1610, in RunQueueExecuteScenequeue.__init__(rq=3D<bb.runqueue.RunQueue=20
> instance at
> 0x89b1ab8>):
>                  locs =3D { "sq_fn" : sq_fn, "sq_task" : sq_taskname,=20
> "sq_hash" : sq_hash, "sq_hashfn" : sq_hashfn, "d" :
> self.cooker.configuration.data }
>     >            valid =3D bb.utils.better_eval(call, locs)
>=20
>   File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/utils.py", line 341,=20
> in better_eval(source=3D'sstate_checkhashes(sq_fn, sq_task, sq_hash,=20
> sq_hashfn, d)', locals=3D{'sq_fn':
> ['/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb'], 'sq_task': ['do_populate_sysroot', 'do_deploy',=20
> 'do_packagedata', 'do_package', 'do_package_write_ipk',=20
> 'do_dumpdata_create_diff_gz'], 'sq_hash':
> ['d701160f5f90ad867344decaa45e850c',=20
> '0e83bfbb44dd5f9bc1aab965401eafae',
> 'a043b351409fd10d0df4f4ef70ef5721',=20
> 'cccb256c759ec8ab2b45b033a8fd6fcb',
> '965fd06e4464ed8a1322b04c69e1e487',=20
> 'b71395177e7741c4182f3628ca82f6b9'],
> 'sq_hashfn': ['
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-'
> ],
> 'd': <bb.data_smart.DataSmart object at 0x28f31d0>}):
>      def better_eval(source, locals):
>     >    return eval(source, _context, locals)
>=20
>   File "<string>", line 1, in <module>
>   File "sstate.bbclass", line 15, in
> sstate_checkhashes(sq_fn=3D['/media/sdb1/fb/mlil/poky/meta-enea-lwrt/rec
> ipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb'], sq_task=3D['do_populate_sysroot', 'do_deploy',=20
> 'do_packagedata', 'do_package', 'do_package_write_ipk',=20
> 'do_dumpdata_create_diff_gz'],=20
> sq_hash=3D['d701160f5f90ad867344decaa45e850c',
> '0e83bfbb44dd5f9bc1aab965401eafae',=20
> 'a043b351409fd10d0df4f4ef70ef5721',
> 'cccb256c759ec8ab2b45b033a8fd6fcb',=20
> '965fd06e4464ed8a1322b04c69e1e487',
> 'b71395177e7741c4182f3628ca82f6b9'], sq_hashfn=3D['
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-'
> ], d=3D<bb.data_smart.DataSmart object at 0x28f31d0>)
> KeyError: 'do_dumpdata_create_diff_gz'
>=20
> NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn't need to be=20
> rerun and all succeeded.
>=20
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
> $
>=20
> /Mats
>=20
>=20
> On Fri, Apr 12, 2013 at 9:15 PM, Kevin Strasser <=20
> kevin.strasser@linux.intel.com> wrote:
>=20
> > Hi Mats,
> >
> > On Fri, Apr 12, 2013 at 03:58:01PM +0200, Mats Liljegren wrote:
> > > I need to archive source for virtual/kernel when building. This is=20
> > > needed for other builds that uses the bitbake build result.
> > >
> > > I saw that there is archive-patched-source class, which seems to=20
> > > do what
> > I
> > > want plus a lot more. The problem with it is that it seems to be=20
> > > intended for other use case than mine, which means that it does a=20
> > > lot more work
> > than
> > > I need.
> > >
> > The archive-*-source classes are primarily intended to assist in=20
> > providing materials for license compliance for the entire target=20
> > image. That being said, it shouldn't be too difficult to apply them=20
> > to a single package.
> >
> > > Is there a way to either tame archive-patched-source to only be
> > applicable
> > > for virtual/kernel, or is there other ways of accomplishing what I wa=
nt?
> > >
> > I assume you have a line in your local.conf that looks something like:
> >
> >   INHERIT +=3D "archive-patched-source"
> >
> > This means that the class will be inherited at the global level and=20
> > therefor applied to all packages. It's perfectly reasonable to=20
> > inherit the class in any specific package, by adding this line to its r=
ecipe:
> >
> >   inherit archive-patched-source
> >
> > I hope this gives you what you're looking for. Take a look at the=20
> > Yocto Project dev manual[1] for further information on the source=20
> > archiver.
> >
> > -Kevin
> >
> > [1]
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#
> > maintaining-open-source-license-compliance-during-your-products-life
> > cycle
> >
> > > Regards
> > >   Mats
> >
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >

