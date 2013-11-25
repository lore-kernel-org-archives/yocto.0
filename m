Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17C95E00510
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 07:59:35 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 25 Nov 2013 10:59:34 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Date: Mon, 25 Nov 2013 10:56:17 -0500
Thread-Topic: stupid question about post-installation scripts
Thread-Index: AQHO6QEijnn9qoGtOECZtPlRt2hplZo2EeeAgAAIVkA=
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153C1156096@pluto.melinkcorp.local>
References: <alpine.DEB.2.02.1311240533220.32547@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: stupid question about post-installation scripts
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
X-List-Received-Date: Mon, 25 Nov 2013 15:59:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,

That's how it works in my experience.  I have some packages for my system t=
hat have a postinst piece that needs to run during image creation, and othe=
r pieces that need to run only on a package upgrade.  By checking whether "=
x${D}" =3D "${D}", I am filtering out whether the postinst script is runnin=
g during image creation or on the actual hardware.  Been working great so f=
ar.

-Bryan

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
> Sent: Monday, November 25, 2013 10:22 AM
> To: Robert P. J. Day
> Cc: Yocto discussion list
> Subject: [yocto] FW: stupid question about post-installation scripts
>=20
> Robert,
>=20
> I don't know... I am forwarding to the discussion list.
>=20
> Scott
>=20
> >-----Original Message-----
> >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> >Sent: Sunday, November 24, 2013 2:37 AM
> >To: Rifenbark, Scott M
> >Subject: stupid question about post-installation scripts
> >
> >
> >  when one defines pkg_postinst scripts, are those scripts invoked at
> >*both* root filesystem creation time and first boot time? so that one
> >needs to manually check the value of ${D} to decide whether to run
> >them, say, at first boot time?
> >
> >  i'm reading the section here:
> >
> >http://www.yoctoproject.org/docs/latest/dev-manual/dev-
> >manual.html#post-installation-scripts
> >
> >and i know i've seen elsewhere scripts explicitly checking the value
> of
> >the ${D} prefix to determine when they're being invoked. it *seems*
> >like that's what's happening, but if that's the case, it can probably
> be said much more clearly.
> >
> >rday
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

