Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
	[149.32.232.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7180E00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 08:17:32 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.87,476,1363132800"; 
   d="scan'208";a="4845601"
X-IronPort-AV: E=Sophos;i="4.87,476,1363132800"; d="scan'208";a="305480765"
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Config fragment not being picked up
Thread-Index: AQHONxaPciO3n1vSLEGHMocqsqv435jXWHfAgABP1wD//79pgA==
Date: Mon, 15 Apr 2013 15:17:27 +0000
In-Reply-To: <516C15A0.3080505@windriver.com>
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
X-List-Received-Date: Mon, 15 Apr 2013 15:17:32 -0000
Message-ID: <MADEUP.15D9585E1AEC7AE1.15037@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >>>>> Think I've followed the example in the manual correctly. My append
> >>>>> file
> >> is
> >>>> pretty simple:
> >>>>>
> >>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}"
> >>>>
> >>>> It looks like you forgot the colon at the end of the path.
> >>>> Try this:
> >>>>     FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >>>>
> >>>> -Kevin
> >>>
> >>> Good eye, but afraid that didn't help (maybe the path was empty
> >> before???). I think the files are getting picked up, since fetch will
> >> fail if change the file name to force a not found error.
> >>>
> >>
> >> What release are you using ? I tested this just last night before the
> >> 1.4 release final RC .. so it definitely still works!
> >>
> >> How are you determining that it isn't being picked up?
> >
> > I believe the SDK is based on Yocto 1.2 / Poky 7.0 -- bitbake is 1.15.2=
.
> > kernel.bbclass kernel_do_configure() looks like it only does a make
> oldconfig on defconfig...?
> > Should I expect to see the .cfg files being eppended there?
> >
> > The .config I end up with doesn't have the definitions from my .cfg
> fragment files.
>=20
> Fragments are processed later in the build procedure. Assuming this is a
> linux-yocto based bbappend, they'll be added in the kernel_configme task,
> and will modify the base BSP configuration.
>=20
> That doesn't mean that all the settings will make it to the final .config=
, since
> normal LKC processing and missing dependencies would drop
> invalid/incorrect settings.

The SDK .bb inherits directly from kernel & doesn't use linux-yocto.bb. So =
listtask doesn't show configme.
I see an addtask for it in linux-yocto.inc, but am guessing that trying to =
shoehorn that in on top of the SDK (in my append file) is probably more tro=
uble than it's worth.=20
Guess I'm better off trying to figure out how to patch the defconfig?


>=20
> Cheers,
>=20
> Bruce
>=20
> >
> >>
> >> Cheers,
> >>
> >> Bruce


