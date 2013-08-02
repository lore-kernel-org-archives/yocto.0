Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9720CE00405
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 10:57:42 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Fri, 2 Aug 2013 13:57:41 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 2 Aug 2013 13:57:40 -0400
Thread-Topic: [yocto] Creating a core-image-minimal image with package support
Thread-Index: Ac6PnXdikdUBhaKHQCql7/AkWYgLIQAC6Nvg
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153ADA9D77C@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC9FD@pluto.melinkcorp.local>
	<CALmOhg=kywWNAFeKac4kVT-f9QBTjKjV0Uqzr7it2Go5imO56g@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153ADA9D49E@pluto.melinkcorp.local>
	<29267744.MPX6MP22Kv@helios>
In-Reply-To: <29267744.MPX6MP22Kv@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 01655C2A004E7601655D77
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating a core-image-minimal image with package support
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
X-List-Received-Date: Fri, 02 Aug 2013 17:57:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Friday, August 02, 2013 12:29 PM
> To: Bryan Evenson
> Cc: Trevor Woerner; yocto@yoctoproject.org
> Subject: Re: [yocto] Creating a core-image-minimal image with package
> support
>=20
> On Thursday 01 August 2013 14:51:27 Bryan Evenson wrote:
> > Trevor Woerner wrote:
> > > Bryan Evenson wrote:
> > > > What more do I need to add to the image recipe so that the image
> > > > knows what packages were installed on it?  And what do I need to
> > > > add so that the /var/lib/opkg directory is created?
> > >
> > > Without "package-management" in the configuration opkg is not
> > > installed in the image (as expected). However, with
> > > "package-management" in the configuration the opkg tools are
> > > installed in the image, but /var/lib/opkg is still empty and the "$
> opkg list"
> > > command returns empty.
> >
> > I'm also working off of poky/dylan.  I added "opkg opkg-collateral"
> to
> > the IMAGE_INSTALL variable, in addition to having the "package-
> management"
> > feature in IMAGE_FEATURES.  With that setup, my image contains opkg
> > and has the list of packages installed.
>=20
> Er, I'm a bit confused. Weren't you already doing this in your original
> example? Is this a case where it fails in danny but not in dylan?
>=20

Huh, I hadn't looked at the original message I'd sent months ago.  That doe=
s look to be the same recipe I'm using today.  I'll take a look back throug=
h my local commit log and see if I can find something else that I changed w=
ith my setup.  But, the state recipe definitely is providing opkg support w=
ith my current build environment setup with poky/dylan-9.0.1.

Regards,
Bryan

> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

