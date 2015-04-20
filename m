Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38436E00932; Mon, 20 Apr 2015 11:08:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [216.205.24.105 listed in list.dnswl.org]
X-Greylist: delayed 87 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Apr 2015 11:08:02 PDT
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [216.205.24.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B64EFE003A8
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 11:08:02 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-23.us.mimecast.lan; Mon, 20 Apr 2015 14:06:33 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 20 Apr 2015 11:06:27 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Mon, 20 Apr 2015 11:06:24 -0700
Thread-Topic: [yocto] Problems enabling systemd
Thread-Index: AdB7erFCJh463TKURV2DNC8Z9GQNXwAGddSg
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDCA586B4@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDCA585B2@MSXBEBVT12.planar.net>
	<20150420084300.GC11779@ad.chargestorm.se>
	<5535128C.6010701@windriver.com>
In-Reply-To: <5535128C.6010701@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: cX_tQK8yTE-j6d9eZSg9yg-3
Subject: Re: Problems enabling systemd
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
X-List-Received-Date: Mon, 20 Apr 2015 18:08:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Monday, April 20, 2015 7:52 AM
> To: Matt Schuckmann; Yocto Project
> Subject: Re: [yocto] Problems enabling systemd
>=20
> On 04/20/2015 04:43 AM, Anders Darander wrote:
> > * Matt Schuckmann <Matt.Schuckmann@planar.com> [150417 23:27]:
> >> I've got an image for a AM3352 system based on Dylan and Arago and
> >> I'm trying to switch to systemd for init.
> >
> >> So far I haven't had much luck.
> >> First off I'm getting different results depending on where I turn it
> on.
> >> I'm turning it on via the following 2 lines:
> >
> >> DISTRO_FEATURES_append =3D " systemd"
> >> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> >
> > These two lines looks correct, though, if you're building a
> > systemd-only distro & image, you migth want to add:
> >
> > DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
> >
> >> If I place these lines in my_image.bb file I seem to get a partial
> >> install of systemd, systemd_udev is there and seems to run but
> that's
> >> about it, there is no systemctrl journalctl and the sysvinit init
> >> scripts still seem to be called.
>=20
>=20
> And also on this point, make sure to check your PACKAGECONFIG values
> for systemd. The optional utilities like networkd are not enabled by
> default, and a bbapend of the systemd recipe is needed to enable them
> via PACKAGECONFIG.
>=20
> Cheers,
>=20
> Bruce

Thanks for the info, Bruce I'll try a take a look. Are there any good examp=
les for what to do with PACKAGECONFIG? the Yocto manual doesn't mention thi=
s at all for systemd.=20

>=20
> >
> > DISTRO_FEATURES is a distro (policy) configuration, and thus, can't
> be
> > modfied in a recipe. The correct way would be to add this in your own
> > my_distro.conf.
> >
> >> If I place these lines in either local.conf or my_distrobution.conf
> >> all of the systemd utility seem to get installed and systemd
> startups
> >> up but it's clearly not configured correctly.
> >
> > Good that it seems to be installed OK.
> >
> >> For starters the systemd dbus isn't getting created and that seems
> to
> >> lead to a whole host of other problems, including journald constant
> >> spewing the following error messages:
> >
> >> [   55.926223] systemd-journald[715]: Failed to write entry,
> ignoring: Argument list too long
> >> [   55.936931] systemd-journald[715]: Failed to rotate
> /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No
> such file or directory
> >> [   55.950911] systemd-journald[715]: Failed to write entry,
> ignoring: Argument list too long
> >> [   55.961580] systemd-journald[715]: Failed to rotate
> /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No
> such file or directory
> >> [   55.975568] systemd-journald[715]: Failed to write entry,
> ignoring: Argument list too long
> >> [   55.986329] systemd-journald[715]: Failed to rotate
> /run/log/journal/c37feca280b74ec583564afcc2a93f0a/system.journal: No
> such file or directory
> >
> >> I don't know if it matters but this system has no display at all,
> >> it's a strictly embedded installation.
> >
> > That shouldn't really matter, I'm running systemd in headless setups.
> >
> > I'd guess that you're getting some errors earlier than this in the
> > bootlog? Could you paste them?
> >
> > Cheers,
> > Anders
> >
> >





