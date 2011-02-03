Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BADBD4C800BC
	for <yocto@yoctoproject.org>; Thu,  3 Feb 2011 11:03:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2011 09:03:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,420,1291622400"; d="scan'208";a="884041983"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2011 09:03:32 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi; Thu, 3 Feb 2011
	09:03:32 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 3 Feb 2011 09:03:27 -0800
Thread-Topic: [yocto] Kernel Panics on armv4t with gcc.4.5.1
Thread-Index: AcvC7eT+lEC/YlhGQHeB0H/oWlxiCQA1fhJQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9411F4279C@orsmsx504.amr.corp.intel.com>
References: <AANLkTinBmzf=erJiuG+pxtXVD9Yd3z7bnC1yUuDvp5N2@mail.gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE940A5EBA78@orsmsx504.amr.corp.intel.com>
	<4D495FE0.7020507@mlbassoc.com> <4D497825.3010307@mlbassoc.com>
In-Reply-To: <4D497825.3010307@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Kernel Panics on armv4t with gcc.4.5.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Feb 2011 17:03:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Gary,
 I would look into the 4.5.2 branch and will try to get it to work.=20
BTW there is some workaround Diego Sueiro came up with in his email yday fo=
r 4.5.2 gcc.
Thanks,
Nitin



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Wednesday, February 02, 2011 7:29 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Kernel Panics on armv4t with gcc.4.5.1
>=20
> On 02/02/2011 06:45 AM, Gary Thomas wrote:
> > On 01/31/2011 05:41 PM, Kamble, Nitin A wrote:
> >> Diego,
> >>
> >> Can you try with 4.5.2 gcc from this branch:
> http://git.pokylinux.org/cgit/cgit.cgi/poky-
> contrib/log/?h=3Dnitin/khem_gcc_nitin
> >
> > I too am having trouble (OMAP-L138 =3D=3D armv5te/arm926ejs)
> >
> > Nitin, I tried using your branch, but it failed to build:
> >
> > NOTE: package gcc-cross-intermediate-4.5.2-r3: task
> do_populate_sysroot: Started
> > ERROR: Error executing a python function in /home/local/poky-
> contrib/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.2.bb:
> > OSError: [Errno 2] No such file or directory:
> > '/home/local/efacec_omap_4.5.2/tmp/work/armv5te-poky-linux-
> gnueabi/gcc-cross-intermediate-4.5.2-r3/sysroot-
> destdir///home/local/efacec_omap_4.5.2/tmp/sysroots/cobra-
> omapl138p78//lib'
> >
> > ERROR: The stack trace of python calls that resulted in this
> exception/failure was:
> > ERROR: File "sstate_task_postfunc", line 10, in <module>
> > ERROR:
> > ERROR: File "sstate_task_postfunc", line 4, in sstate_task_postfunc
> > ERROR:
> > ERROR: File "sstate.bbclass", line 17, in sstate_install
> > ERROR:
> > ERROR: File "/home/local/poky-contrib/meta/lib/oe/path.py", line 56,
> in copytree
> > ERROR: names =3D os.listdir(src)
> > ERROR:
> > ERROR: The code that was being executed was:
> > ERROR: 0006: bb.build.exec_func(intercept, d)
> > ERROR: 0007: sstate_package(shared_state, d)
> > ERROR: 0008:
> > ERROR: 0009:
> > ERROR: *** 0010:sstate_task_postfunc(d)
> > ERROR: 0011:
> > ERROR: (file: 'sstate_task_postfunc', lineno: 10, function: <module>)
> > ERROR: 0001:
> > ERROR: 0002:def sstate_task_postfunc(d):
> > ERROR: 0003: shared_state =3D sstate_state_fromvars(d)
> > ERROR: *** 0004: sstate_install(shared_state, d)
> > ERROR: 0005: for intercept in shared_state['interceptfuncs']:
> > ERROR: 0006: bb.build.exec_func(intercept, d)
> > ERROR: 0007: sstate_package(shared_state, d)
> > ERROR: 0008:
> > ERROR: (file: 'sstate_task_postfunc', lineno: 4, function:
> sstate_task_postfunc)
> > ERROR: Function 'sstate_task_postfunc' failed
> >
> >
> > Any ideas how to fix this?
>=20
> Just to check, I applied the patches from Nitin's contrib tree
> to poky/master and rebuilt - same results.  I used the sequence
>    5b7e96d852778f1164198040cbd165241ea51e40..HEAD
>=20
> >
> >> *From:*yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] *On Behalf Of *Diego Sueiro
> >> *Sent:* Monday, January 31, 2011 10:53 AM
> >> *To:* yocto@yoctoproject.org
> >> *Subject:* [yocto] Kernel Panics on armv4t with gcc.4.5.1
> >>
> >> Folks,
> >>
> >> I'm not a kernel and neither a gcc expert developer, and after
> searching for a solution for the last 2 weeks I've decided to appeal to
> the list.
> >>
> >> I'm trying to build a kernel image (2.6.32 and 2.6.30) for mini2440
> (armv4t) with Yocto Project (poky master branch) and I'm facing a
> strange issue.
> >>
> >> If I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the
> kernel will panic on init (console printed message is attached for
> kernel 2.6.30 and 2.6.32).
> >>
> >> But, if I compile the kernel with meta-oe gcc recipes (gcc 4.5)
> everything will be ok.
> >>
> >> Just for your reference these is the gcc recipes which I'm using:
> >>
> >> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-
> devtools/gcc
> >>
> >> http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes-
> devtools/gcc
> >>
> >> I've compiled with and without thumb instructions, but the issue
> remains.
> >>
> >> I've tried to apply the patches gcc-armv4-pass-fix-v4bx-to-ld.patch
> and gcc-arm-volatile-bitfield-fix.patch, but no success.
> >>
> >> Kind Regards,
> >>
> >> --
> >>
> >> *dS
> >> Diego Sueiro
> >>
> >> /*long live rock 'n roll*/
> >>
> >>
> >>
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

