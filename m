Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF3C2E00959; Fri,  3 Apr 2015 01:17:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80841E0049A
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2015 01:17:42 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2015 01:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,516,1422950400"; d="scan'208";a="550556880"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by orsmga003.jf.intel.com with ESMTP; 03 Apr 2015 01:17:41 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.205]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.32]) with mapi id
	14.03.0224.002; Fri, 3 Apr 2015 16:16:44 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: "Chen, Qi (Wind River)" <qi.chen@windriver.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Kernel Panic: /sbin/init not found
Thread-Index: AdBtJJT1N+XghKcCR/iJRvDjeaehYv//o26A//4//jD//HpMcIAGi48A//95NED//uZcYA==
Date: Fri, 3 Apr 2015 08:16:44 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A28B087@PGSMSX101.gar.corp.intel.com>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
	<11611765.NtzfTBFTpN@peggleto-mobl.ger.corp.intel.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A28B04C@PGSMSX101.gar.corp.intel.com>
	<551E3B3C.9080306@windriver.com> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Fri, 03 Apr 2015 08:17:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Yu, Chan KitX
> Sent: Friday, April 03, 2015 3:06 PM
> To: Chen, Qi (Wind River); Paul Eggleton
> Cc: yocto@yoctoproject.org
> Subject: RE: [yocto] Kernel Panic: /sbin/init not found
>=20
>=20
>=20
> > -----Original Message-----
> > From: ChenQi [mailto:Qi.Chen@windriver.com]
> > Sent: Friday, April 03, 2015 3:03 PM
> > To: Yu, Chan KitX; Paul Eggleton
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Kernel Panic: /sbin/init not found
> >
> > On 04/03/2015 02:43 PM, Yu, Chan KitX wrote:
> > >
> > >> -----Original Message-----
> > >> From: Yu, Chan KitX
> > >> Sent: Friday, April 03, 2015 2:30 PM
> > >> To: 'Paul Eggleton'
> > >> Cc: yocto@yoctoproject.org
> > >> Subject: RE: [yocto] Kernel Panic: /sbin/init not found
> > >>
> > >>
> > >>
> > >>> -----Original Message-----
> > >>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > >>> Sent: Thursday, April 02, 2015 7:37 PM
> > >>> To: Yu, Chan KitX
> > >>> Cc: yocto@yoctoproject.org
> > >>> Subject: Re: [yocto] Kernel Panic: /sbin/init not found
> > >>>
> > >>> Hi Chan Kit,
> > >>>
> > >>> On Thursday 02 April 2015 09:25:35 Yu, Chan KitX wrote:
> > >>>> My Yocto build environment was working perfectly until last week
> > >>>> when I got kernel panic caused by missing/sbin/init. When I
> > >>>> examined the image, I found that /sbin/init is indeed absent from
> > >>>> the
> > root image.
> > >>>> To troubleshoot the issue, I tried building a stock Yocto whose
> > >>>> target platform is 64-bit machine using a  freshly installed
> > >>>> Ubuntu
> > >>>> 14.04 from
> > >>> another build machine.
> > >>>>   Despite that, the kernel panic still occurs and that's the main
> > >>>> reason I'm writing here; that is to see if anyone else has the
> > >>>> same issue. I did not make any change or any customization to
> > >>>> local.conf aside from setting MACHINE to 64 bit and adding the
> > >>>> following lines which
> > >>> enable multilib:
> > >>>> IMAGE_INSTALL =3D "lib32-connman"
> > >>>> require conf/multilib.conf
> > >>>> MULTILIBS =3D "multilib:lib32"
> > >>>> DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"
> > >>>>
> > >>>> I would be more than happy to provide necessary diagnostic
> > >>>> message shall you request so. Let me know if you guys are able to
> > >>>> reproduce this
> > >>> issue.
> > >>>
> > >>> What version of the build system are you using? What exact image
> > >>> are you building? What image output type are you trying this with
> > >>> (ext3 / live /
> > >> etc.)?
> > >>> What is your MACHINE value?
> > >> Build Configuration:
> > >> BB_VERSION        =3D "1.24.0"
> > >> BUILD_SYS         =3D "x86_64-linux"
> > >> NATIVELSBSTRING   =3D "Ubuntu-14.04"
> > >> TARGET_SYS        =3D "x86_64-poky-linux"
> > >> MACHINE           =3D "valleyisland-64"
> > >> DISTRO            =3D "poky"
> > >> DISTRO_VERSION    =3D "1.7.1"
> > >> TUNE_FEATURES     =3D "m64 corei7"
> > >> TARGET_FPU        =3D ""
> > >> meta
> > >> meta-yocto
> > >> meta-yocto-bsp    =3D
> "dizzy:ec75238f6cc2d2d8d40e0268f6d2acc070cbe9a4"
> > >> meta-intel
> > >> meta-valleyisland =3D "dizzy:c39a4bf4450845fca6f1b26ccfc0db192a4567e=
8"
> > >>
> > >> The above is the build configuration. As of the image that I was
> > >> trying to build, I did the hddimg and iso. I got the KP issue from
> > >> using the iso image. I thought the issue might have to do with the
> > >> meta-valleyisland so I switched to genericx86-64 instead. No luck.
> > >>
> > >>
> > >> Can you attach the manifest file for the image
> > >>> that is broken?
> > >> Attached.
> > >>
> > >> UPDATE: I tried disabling the multilib feature by commenting out
> > >> the following in local.conf:
> > >>
> > >> IMAGE_INSTALL =3D "lib32-connman"
> >
> > The problem is that you set IMAGE_INSTALL to "lib32-connman".
> >
> > You should use the following.
> > IMAGE_INSTALL_append =3D " lib32-connman"
> > (Note there's a white space before lib32-connman in the assignment
> > above.)
> >
> > Regards,
> > Chen Qi
>=20
> Trying that out now. Fingers crossed. Thank you sir.
>=20
> Chan Kit

OK, it turned out that prepending the space before lib32-connman does not d=
o any good. However, commenting out the line which contains the IMAGE_INSTA=
LL_append does. That begs the question; what does lib32-connman do?

Chan Kit


