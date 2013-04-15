Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com
	[149.32.232.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B3DDE013CA
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 10:36:48 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,476,1363132800"; 
   d="scan'208";a="5659975"
X-IronPort-AV: E=Sophos;i="4.87,476,1363132800"; 
   d="scan'208";a="9528682"
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Config fragment not being picked up
Thread-Index: AQHOOezUciO3n1vSLEGHMocqsqv435jXh64Q
Date: Mon, 15 Apr 2013 17:36:44 +0000
In-Reply-To: <516C1ADA.8050908@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Config fragment not being picked up
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
X-List-Received-Date: Mon, 15 Apr 2013 17:36:49 -0000
Message-ID: <MADEUP.15D9585E2E943436.15037@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >>>>>>> Think I've followed the example in the manual correctly. My
> >>>>>>> append file
> >>>> is
> >>>>>> pretty simple:
> >>>>>>>
> >>>>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}"
> >>>>>>
> >>>>>> It looks like you forgot the colon at the end of the path.
> >>>>>> Try this:
> >>>>>>      FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >>>>>>
> >>>>>> -Kevin
> >>>>>
> >>>>> Good eye, but afraid that didn't help (maybe the path was empty
> >>>> before???). I think the files are getting picked up, since fetch
> >>>> will fail if change the file name to force a not found error.
> >>>>>
> >>>>
> >>>> What release are you using ? I tested this just last night before
> >>>> the
> >>>> 1.4 release final RC .. so it definitely still works!
> >>>>
> >>>> How are you determining that it isn't being picked up?
> >>>
> >>> I believe the SDK is based on Yocto 1.2 / Poky 7.0 -- bitbake is 1.15=
.2.
> >>> kernel.bbclass kernel_do_configure() looks like it only does a make
> >> oldconfig on defconfig...?
> >>> Should I expect to see the .cfg files being eppended there?
> >>>
> >>> The .config I end up with doesn't have the definitions from my .cfg
> >> fragment files.
> >>
> >> Fragments are processed later in the build procedure. Assuming this
> >> is a linux-yocto based bbappend, they'll be added in the
> >> kernel_configme task, and will modify the base BSP configuration.
> >>
> >> That doesn't mean that all the settings will make it to the final
> >> .config, since normal LKC processing and missing dependencies would
> >> drop invalid/incorrect settings.
> >
> > The SDK .bb inherits directly from kernel & doesn't use linux-yocto.bb.=
 So
> listtask doesn't show configme.
> > I see an addtask for it in linux-yocto.inc, but am guessing that trying=
 to
> shoehorn that in on top of the SDK (in my append file) is probably more
> trouble than it's worth.
> > Guess I'm better off trying to figure out how to patch the defconfig?
>=20
> The ability to use fragments requires that you at least use the linux-yoc=
to
> bbclass, it will work with non linux-yocto recipes, but you need to follo=
w the
> example in meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
>=20
> The 1.2 vintage fragments aren't as feature rich as 1.3 and 1.4, but they
> should work to add simple fragment modifications.
>=20
> I hate to see anyone hacking a defconfig unless nothing else works :)

Thanks for all the help. The skeleton example isn't in 1.2. Based on 1.3 I =
tried adding=20

	require recipes-kernel/linux/linux-yocto.inc

to my append, but ran into other errors (looks like it adds 5 tasks includi=
ng kernel_configme). Did a brute-force override of do_kernel_checkout() to =
get around my 1st error, but then do_patch() failed, so think I'm going to =
punt & hack defconfig.
Thanks again for all the help.

>=20
> Bruce
>=20
> >
> >
> >>
> >> Cheers,
> >>
> >> Bruce
> >>
> >>>
> >>>>
> >>>> Cheers,
> >>>>
> >>>> Bruce
> >


