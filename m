Return-Path: <Michael.Fainstein@ecitele.com>
Received: from ilptbmg01-out.ecitele.com (ilptbmg01-out.ecitele.com
	[147.234.242.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48260E00576
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 07:33:24 -0800 (PST)
X-AuditID: 93eaf2e7-b7fbb8e00000242d-a2-528e364097a0
Received: from ILPTWPVEXCA01.ecitele.com ( [172.31.244.224])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	29.07.09261.0463E825; Thu, 21 Nov 2013 18:35:12 +0200 (IST)
Received: from ILPTWPVEXMB01.ecitele.com ([fe80::f152:8eaf:8fb0:a5da]) by
	ILPTWPVEXCA01.ecitele.com ([fe80::ac15:43ab:d541:dfa7%12]) with mapi id
	14.03.0123.003; Thu, 21 Nov 2013 17:33:19 +0200
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Thread-Topic: [yocto] Compile on recipe works the second time
Thread-Index: Ac7lL0/O+LQ58zHlRNSE9luea/qKcv///RaAgAAI4QD//MlI8A==
Date: Thu, 21 Nov 2013 15:33:19 +0000
Message-ID: <62673661A504604B856269DAADA8BC285F4E81C7@ILPTWPVEXMB01.ecitele.com>
References: <91586D499ADFD74FBCFB8425266A5DE40153BB2BE35F@pluto.melinkcorp.local>
	<1458984.Xc2zfu3l73@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153BB2BE43A@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153BB2BE43A@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.62.6]
content-transfer-encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCJsWRmVeSWpSXmKPExsUy+dWnL7qOZn1BBr3TGS0mXFWzmPRyDZsD
	k8eCmU3MHu0n+tgCmKIaGG0S8/LySxJLUhVSUouTbZUCijLLEpMrlRQyU2yVDJUUCnISk1Nz
	U/NKbJUSCwpS81KU7LgUMIANUFlmnkJqXnJ+SmZeuq2SZ7C/roWFqaWuoZKdmrKhsTVXSEZm
	sUKqbm5iZo5CbmpxcWJ6qgJQJGELc8buCW3MBVe0Kzoe9rA1MM5T6WLk5JAQMJF4MecVM4Qt
	JnHh3nq2LkYuDiGBg4wST86dYQNJCAkcZZT4+CQPxGYTMJc4v/A9O4gtIqAtcXprH1gNs4Cp
	xOQZLWCDhAVsJA4+nMcEUWMrcXjORyCbA8h2kvi+kwckzCKgKtGxfhUjiM0rECDR9L2JFWLv
	dkaJ1c1rwOZwCgRJTL/9HWwXI9Bx30+tYYLYJS5x68l8JoijBSSW7DkP9YCoxMvH/1ghbFmJ
	D9OvQd1mIHFu+0Z2CFtbYtnC18wQiwUlTs58wgJRLylxcMUNlgmM4rOQrJiFpH0WkvZZSNoX
	MLKsYhTNzCkoScpNNzDUS03OLEnNSdVLzs/dxAhJIs93MP6ar3KIUYCDUYmH98PnniAh1sSy
	4srcQ4ySHExKorxPVPqChPiS8lMqMxKLM+KLSnNSiw8xSnAwK4nwFioB5XhTEiurUovyYVKu
	wCCcyCzFnZwPTIx5JfHGBga4OUrivMsbwv2FBNKBKTA7NbUgtQhmjgwHh5IEr4A60ArBotT0
	1Iq0zJwShDQTByfIGTxAZ4SA1PAWFyTmFmemQ+RPMSpKifPeALldACSRUZoH1wvLHK8YxYGe
	FuY1AWnnAWYduO5XQIOZgAazS3aDDAbmDriUVANj/aR+abko500KJhs26xQeu898onvnipaw
	XU9qTl1a/Gv9h6+/NXQUH/5q27nGT5L14q0IqbDYMD+marn+kIks27crfD5v4dn53PhKZJ7l
	F96TGx+6Z0Q2rNgZGm2nuuLUoSuRi7ZsE3+58FCF48OtzX7Sv6/JF1t1F6U2XbRP/GLD4eQt
	WayvxFKckWioxVxUnAgAtqNU+fcDAAA=
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compile on recipe works the second time
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
X-List-Received-Date: Thu, 21 Nov 2013 15:33:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="windows-1255"



See below

Michael


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: =E9=E5=ED=A0=E2 19 =F0=E5=E1=EE=E1=F8 2013 18:19
> To: Paul Eggleton
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Compile on recipe works the second time
> 
> Paul,
> 
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Tuesday, November 19, 2013 10:47 AM
> > To: Bryan Evenson
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Compile on recipe works the second time
> >
> > Hi Bryan,
> >
> > On Tuesday 19 November 2013 08:57:40 Bryan Evenson wrote:
> > > I'm on poky/dylan-9.0.1 and I've created a layer for a separate open
> > > source project to include in my image.  The layer is at
> > > https://github.com/evensonbryan/meta-bacnet for those of you who
> want
> > > to try and duplicate my results.  Just add this layer to your setup
> > > and build the recipe "bacnet-stack".
> > >
> > > I have a very odd build issue.  The first time I build the recipe,
> > the
> > > build fails during the compile step.  However, if I then build the
> > > recipe again, the compile completes without errors.  For example:
> > >
> > > 1. bitbake -c clean bacnet-stack
> > > 2. bitbake bacnet-stack (compile fails) 3. bitbake bacnet-stack
> > > (compile succeeds, rest of image packaging works)
> > >
> > > Additionally, the following order compiles without error:
> > > 1. bitbake -c clean bacnet-stack
> > > 2. bitbake -c devshell bacnet-stack
> > > 3. (from devshell) make all (compile succeeds)
> > >
> > > This project is divided into a static library and multiple demo
> > > applications.  The static library needs to be built first, and then
> > > the demo applications include the static library in their build.  I
> > > suspect I have an issue with either populating the static library or
> > > the related include files in the sysroot which causes the demo
> > > applications to fail to build the first time but work the second.
> > > However, I can't figure out how to fix the issue.  Any pointers on
> > what is setup wrong with this recipe?
> >
> > From bacnet-stack.inc:
> > > do_install () {
> > >     install -d ${D}${bindir} ${D}${datadir} ${D}${libdir} >
> > ${STAGING_INCDIR}/${PN}
> > >     ...
> > >     install -m 0644 ${S}/include/* ${STAGING_INCDIR}/${PN} }
> >
> > Don't poke files directly into the sysroot like this. Install the
> > headers to ${D}${incdir} instead, and they will be staged to the
> > sysroot for you.
> 
> I made the suggested change and I'm still having the same build issue.  I
> pulled the applicable lines from the compile log when I get the failure.
> 
> ...
> make[3]: *** No rule to make target `../../ports/linux/bip-init.o', needed=
 by
> `libbacnet.a'.  Stop.
> make[3]: Leaving directory `/media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/lib'
> make[2]: *** [../../lib/libbacnet.a] Error 2
> make[2]: Leaving directory `/media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/demo/readprop'
> make[1]: *** [readprop.all] Error 2
> make[1]: Leaving directory `/media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/demo'
> make: *** [demos] Error 2
> make: *** Waiting for unfinished jobs....
> arm-poky-linux-gnueabi-gcc  -march=3Darmv5te -marm -mthumb-interwork -
> mtune=3Darm926ej-s -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed --
> sysroot=3D/media/sda3/poky/poky-build/tmp/sysroots/at91sam9x5ek -c -Wall
> -Wmissing-prototypes  -Os  -I/media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/ports/linux -I/media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/demo/object -I/media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/demo/handler -Iusr/include/glib-2.0 -I/media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/include `pkg-config --cflags --libs glib-2.0 uuid` -
> DPRINT_ENABLED=3D1 -DBACAPP_ALL -DBACFILE -DINTRINSIC_REPORTING -
> DBAC_ROUTING -DBACDL_BIP=3D1 -DBBMD_ENABLED=3D1 -DWEAK_FUNC=3D  -O2
> -pipe -g -feliminate-unused-debug-types /media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-
>  stack/bacnet-stack-0-7-1/ports/linux/bip-init.c -o /media/sda3/poky/poky-
> build/tmp/work/arm926ejste-poky-linux-gnueabi/bacnet-stack/bacnet-
> stack-0-7-1/ports/linux/bip-init.o
> ...
> 
> If I'm reading this right, the build of the static library fails because i=
t doesn't
> know how to build bip-init.o, but immediately after the static library bui=
ld
> fails then bip-init.o gets built.  Any thoughts on what could be wrong?
> 
> Thanks,
> Bryan
> 

 Try disabling parallel build : add to your recipe 
PARALLEL_MAKE =3D ""

Another option: create 2 recipes: one to build and install library and anoth=
er to build demo application. Make demo application dependent on library.

Cheers,
Michael 

> >
> > Cheers,
> > Paul
> >
> > --
> >
> > Paul Eggleton
> > Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


