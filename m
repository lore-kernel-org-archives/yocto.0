Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B25FE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 15:54:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Feb 2012 15:54:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119967364"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2012 15:54:46 -0800
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 2 Feb 2012 15:54:45 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.175]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.31]) with mapi id
	14.01.0355.002; Thu, 2 Feb 2012 15:54:43 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, James Abernathy
	<jfabernathy@gmail.com>
Thread-Topic: [yocto] Gaku music player
Thread-Index: AQHM4gRS97F0gVucS4aRnf5UhWJQpZYqRllA
Date: Thu, 2 Feb 2012 23:54:42 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49002A8A2@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
	<4F29B248.4060202@linux.intel.com> <1328132827.2304.149.camel@elmorro>
	<4F29BF30.80808@gmail.com> <1328140929.2304.157.camel@elmorro>
	<4F29DF85.9040605@gmail.com> <1328145634.2304.159.camel@elmorro>
	<CANFv2Emx6kbdEwnWkkORp7h-vZovGSExUnn45JORZ56MuNeEfQ@mail.gmail.com>
	<1328226148.2304.188.camel@elmorro>
In-Reply-To: <1328226148.2304.188.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gaku music player
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
X-List-Received-Date: Thu, 02 Feb 2012 23:54:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You can also use the graphical alsamixer=20
Just Include  alsa in MACHINE_FEATURES in meta-cedartrail/conf/cedartrail.c=
onf

Rahul

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Tom Zanussi
Sent: Thursday, February 02, 2012 3:42 PM
To: James Abernathy
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Gaku music player

On Thu, 2012-02-02 at 17:42 -0500, James Abernathy wrote:
>=20
>=20
> On Wed, Feb 1, 2012 at 8:20 PM, Tom Zanussi <tom.zanussi@intel.com>
> wrote:
>         On Wed, 2012-02-01 at 19:57 -0500, jfabernathy wrote:
>         > On 02/01/2012 07:02 PM, Tom Zanussi wrote:
>         > > On Wed, 2012-02-01 at 17:39 -0500, jfabernathy wrote:
>         > >> On 02/01/2012 04:47 PM, Tom Zanussi wrote:
>         > >>> On Wed, 2012-02-01 at 13:44 -0800, Darren Hart wrote:
>         > >>>> On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
>         > >>>>> Hi Darren,
>         > >>>>>
>         > >>>>> Thanks for the clarification.
>         > >>>>>
>         > >>>>> I am building on Edison.  I found that ogg music files
>         play
>         > >>>>> OK on my gaku player.  I think that should be good
>         enough, but just for my information purposes
>         > >>>>> can you help me understand how does one accept the
>         commercial iirc license ?
>         > >>>> This has changed relatively recently, and I'm not
>         finding the details in
>         > >>>> the current docs. For example, the gst-fluendo-mp3
>         recipe includes:
>         > >>>>
>         > >>>> LICENSE_FLAGS =3D "commercial"
>         > >>>>
>         > >>>> Taking a look at the git logs with "LICENSE_FLAGS" in
>         them, in order to
>         > >>>> allow for building of such recipes, you must include
>         "commercial" in the
>         > >>>> LICENSE_FLAGS_WHITELIST variable. I would attempt this
>         with something
>         > >>>> like the following in my local.conf:
>         > >>>>
>         > >>>> LICENSE_FLAGS_WHITELIST +=3D "commercial"
>         > >>>>
>         > >>>> Tom, can you confirm I've got this right?
>         > >>>>
>         > >>> Yeah, that's right.
>         > >>>
>         > >>> Tom
>         > >> I'm interested in this subject also.  If I use hob to
>         look at a nice
>         > >> display of packages, I see that their are a lot of
>         gst-fluendo-*
>         > >> pckages with MPLv1.1 Licenses. However, I don't see
>         gst-fluendo-mp3
>         > >> specifically.
>         > >>       1. Is that package not a part of Yocto and a recipe
>         has to be
>         > >>          written to get it from somewhere?
>         > > It is a part of yocto, it probably doesn't show up in HOB
>         because of the
>         > > restricted license (nothing has changed there, I guess
>         that also would
>         > > have been the case before with COMMERCIAL_LICENSE).
>         > >
>         > > Basically, the documentation hasn't caught up with the
>         change yet
>         > > (actually it (COMMERCIAL_LICENSE) was never documented, we
>         need to
>         > > change that in any case).
>         > >
>         > > The current 'documentation' for this, which I'll work with
>         Scott on
>         > > adapting to the actual documentation, is in the text of
>         this poky
>         > > commit:
>         > >
>         > > b68ea543603c35f4e3519d358e0d1e1e24bd5851
>         > >
>         > > and the set of packages that were changed from
>         COMMERCIAL_LICENSE to
>         > > LICENSE_FLAGS is here:
>         > >
>         > > 7b81ef8d95d82c55e3650981d3010000cd493832
>         > >
>         > > Tom
>         > Okay, I found gst-fluendo-mp3 in the
>         meta-recipes-multimedia. So is
>         > including it the same as other packages you want in the
>         image, putting
>         > the following statements in the local.conf:
>         >
>         > LICENSE_FLAGS_WHITELIST +=3D "commercial"
>         > POKY_EXTRA_INSTALL +=3D "gst-fluendo-mp3"
>         >
>         >
>         > I would think that specifying the media player in the image
>         would bring in the dependent CODECs if the licenses were
>         right, but what do I know.
>         >
>        =20
>        =20
>         Yes, that LICENSE_FLAGS_WHITELIST line would allow
>         gst-fluendo-mp3 in,
>         and that in turn bring in its dependencies.
>        =20
>         Tom
> =20
> FYI, I got this working fine. I could create a playlist with .ogg,
> mp3, m4a file types and all played.  I could not adjust the volume. =20
>=20
> Is there a mixer/volume app for Sato?
>=20

Something like:

# amixer set Master on
# amixer set Master 75

has worked for me in the past...

Tom

>=20
> Jim A
>=20
>=20
>         > Jim A
>         >
>         >
>         >
>         > >>       1. I know I can get the fluendo MP3 for Ubuntu with
>         a
>         > >>          click-through license for personal use.
>         > >>>> Scott, once Tom confirms, this is a mechanism we need
>         to get documented
>         > >>>> in the reference manual.
>         > >>>>
>         > >>>> --
>         > >>>> Darren
>         > >>>>
>         > >>>>
>         > >>>>> Thanks
>         > >>>>> Rahul
>         > >>>>>
>         > >>>>> -----Original Message-----
>         > >>>>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>         > >>>>> Sent: Wednesday, February 01, 2012 10:54 AM
>         > >>>>> To: Saxena, Rahul
>         > >>>>> Cc: yocto@yoctoproject.org
>         > >>>>> Subject: Re: [yocto] Gaku music player
>         > >>>>>
>         > >>>>>
>         > >>>>>
>         > >>>>> On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
>         > >>>>>> Hello,
>         > >>>>>>
>         > >>>>>>
>         > >>>>>>
>         > >>>>>> What type of music files is the Gaku music player on
>         Sato desk top
>         > >>>>>> supposed to play ?
>         > >>>>>>
>         > >>>>>> For me it did not work with mp3 files..however it is
>         playing the
>         > >>>>>> soundtrack from a .ogg video file
>         > >>>>> It depends on which licenses you allow (the gstreamer
>         mp3 plugin
>         > >>>>> requires acceptance of the commercial license iirc).
>         Are you building on
>         > >>>>> edison or master?
>         > >>>>>
>         > >>>>> --
>         > >>>>> Darren Hart
>         > >>>>> Intel Open Source Technology Center
>         > >>>>> Yocto Project - Linux Kernel
>         > >>> _______________________________________________
>         > >>> yocto mailing list
>         > >>> yocto@yoctoproject.org
>         > >>> https://lists.yoctoproject.org/listinfo/yocto
>         > >> _______________________________________________
>         > >> yocto mailing list
>         > >> yocto@yoctoproject.org
>         > >> https://lists.yoctoproject.org/listinfo/yocto
>         > >
>         >
>        =20
>        =20
>        =20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

