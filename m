Return-Path: <cristian.iorga@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED8CE014DF
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 22:22:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Apr 2013 22:22:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,490,1363158000"; d="scan'208";a="296058173"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 16 Apr 2013 22:22:11 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.73]) with mapi id
	14.01.0355.002; Wed, 17 Apr 2013 06:22:10 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, 'Paul Eggleton'
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Why isn't USB MIDI working?
Thread-Index: Ac45s+aJjagHEDNTS3SPdNMicZv4hQBSLReQAAusuWA=
Date: Wed, 17 Apr 2013 05:22:09 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB162258E2@IRSMSX102.ger.corp.intel.com>
References: <8B6CDD4DF052424F91A0C447C50E3614@PAULD>
	<7992156.jO3X0cFusz@helios> <A15A95348D8546D1BAD5997203ECF01D@PAULD>
In-Reply-To: <A15A95348D8546D1BAD5997203ECF01D@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why isn't USB MIDI working?
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
X-List-Received-Date: Wed, 17 Apr 2013 05:22:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Please file in a bug report as an enhancement regarding USB MIDI support.
We will see what we can do for 1.5.

Regards,
Cristian

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul D. DeRocco
Sent: Wednesday, April 17, 2013 3:51 AM
To: 'Paul Eggleton'
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Why isn't USB MIDI working?

> From: Paul Eggleton
>=20
> On Sunday 14 April 2013 15:49:12 Paul D. DeRocco wrote:
> > I've built core-image-base-cedartrail-nopvr, which includes ALSA.=20
> > /dev/snd properly contains the devices for my mobo, and=20
> > /proc/asound/devices lists them as well. If I plug in a USB MIDI=20
> > device (a USB to MIDI converter), I see the USB connect message on=20
> > the console, but no device is added to /dev/snd or=20
> > /proc/asound/devices. Anyone have any idea why?
> > I've tried an
> > eMu XMidi1x1, and a cheap generic converter. Both work fine under=20
> > Ubuntu, on the same mobo.
>=20
> Typically two things are required for a USB device to work - a driver,=20
> and an appropriate udev rule to associate the driver with the device.=20
> Do you have USB midi support enabled in the kernel? If so, is there a=20
> udev rule for USB midi devices? If there isn't, presumably you could=20
> just use Ubuntu as a reference for that.

I apologize for my ignorance, but I really don't know how to go about figur=
ing this out.

There is a file called /lib/udev/rules.d/60-persistent-alsa.rules, which is=
 full of cryptic stuff that I don't understand, including two lines referri=
ng to usb, but nothing specifically about MIDI. I compared it to the file o=
n Ubuntu, and it's similar but not the same, but I have no idea whether any=
 of the differences are meaningful. They're both small, so I've attached th=
em.

Also, I see that while the alsa-utils recipe is being built, the resulting =
image only seems to have a couple of alsa utilities: alsamixer and alsactl,=
 even though there are a whole lot more listed in meta/recipes-multimedia/a=
lsa/alsa-utils_1.0.25.bb.

And when I run the system, there is no /dev/snd/seq device, which is the ma=
in interface to all MIDI devices. I don't plan on using that, preferring to=
 use the /dev/snd/midi* OSS emulation device which is supposed to appear wh=
en an individual device is connected, but that's not happening, either.

How do I find out if USB MIDI support is enabled in the kernel?

This is plain vanilla core-image-base-cedartrail-nopvr, without any modific=
ations. ALSA is part of it. Isn't it supposed to just work?

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com=20

