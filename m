Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ACA1E002AB
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 22:43:01 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Jul 2012 22:43:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="172069185"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 26 Jul 2012 22:43:00 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 26 Jul 2012 22:43:00 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.44]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.166]) with mapi id
	14.01.0355.002; Thu, 26 Jul 2012 22:42:59 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>, Darren Hart
	<dvhart@linux.intel.com>
Thread-Topic: [yocto] [PATCH 2/6] crownbay: customize the xorg.conf for the
	flat panel on the corwnbay kit
Thread-Index: AQHNa2r9XwwvdBFLnUeifBa0FZ6xkpc8gU0wgAB2mwD//5z/gIAACIKA
Date: Fri, 27 Jul 2012 05:42:58 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C0318EA5C@ORSMSX106.amr.corp.intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<118e9c4c78b61e5debac285efa420486c145993b.1343037893.git.nitin.a.kamble@intel.com>
	<5011A43F.50904@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318E9CE@ORSMSX106.amr.corp.intel.com>
	<501212EE.8030507@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318EA3C@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C0318EA3C@ORSMSX106.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/6] crownbay: customize the xorg.conf for the flat panel on the corwnbay kit
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
X-List-Received-Date: Fri, 27 Jul 2012 05:43:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Kamble, Nitin A
> Sent: Friday, July 27, 2012 11:02 AM
> To: Darren Hart
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH 2/6] crownbay: customize the xorg.conf for th=
e
> flat panel on the corwnbay kit
>=20
> > >> On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> > >>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> > >>>
> > >>> The kit has Auo 800x600 LCD screen. Configuring Xorg for it.
> > >>
> > >> I presume the crownbay has additional display options? how does
> > >> this impact those?
> > >>
> > > This change sets the resolution of the screen to 800x600. And this
> > > is applicable to LCD screen on the kit as well as external monitor.
> > >   I will add a note about it in the log.
> >
> > I presume that without this change it was able to detect the
> > appropriate resolution of the connected monitor, but not of the LCD?
> >
> > If so, this change effectively breaks that autodetection and forces
> > everything to the 800x600 display which is arguably very
> > low-resolution by today's standards. Why should this be the default?
> > When you refer to "the kit", what exactly are you referring to?
> >
> > Also, is this a discussion you have already had with Tom? I don't want
> > to contradict what he has said regarding this BSP.
>=20
>=20
> EMGD driver on crownbay gives few resolutions as options. By default it t=
ries
> to set 1366x768 resolution for both LCD and external monitor.
> The Crownbay kit is a suitcase kind of box, which has builtin LCD screen =
of
> resolution 800x600. This LCD screen shows only 800x600 of the default
> 1366x768 area. So The LCD is not able to show all the screen, and IMO it =
is a
> functional issue.
>=20
> For my Dell 1704FPTi monitor which has 1280x1024 native resolution; When
> connected to the crownbay,  X cannot find a working mode for this monitor=
.
> But if I set 800x600 in the xorg.conf as this commit does, then both LCD =
&
> external monitor can show the X screen without any issues.
>=20
> I guess if a 1366x768 resolution monitor is connected to crownbay, it wil=
l
> show the X screen fine, but I don't have such monitor now. And also I thi=
nk a
> BSP should not have such resolution requirement for the attached monitor,
> and attached LCD screen of the kit work without issues.
>=20
> So the point of this commit is, make default config such that it will wor=
k for
> the LCD screen on the kit as well as any monitor attached. And if someone
> wants to get better resolution with their external monitor then they need=
 to
> adjust the xorg.conf accordingly.
>=20
> BTW I did not have much discussion with Tom on this topic.
>=20

Correction: the Dell 1704FPTi monitor can work with 1280x1024 resolution wi=
th crownbay, only if I specify the HorizSync and VertRefresh & resolution m=
ode parameters for monitor in the xorg.conf

Nitin


