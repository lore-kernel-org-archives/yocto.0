Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDE84E009B3; Thu, 23 Jul 2015 15:45:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp21.services.sfr.fr (smtp21.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC314E0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 15:45:39 -0700 (PDT)
Received: from filter.sfr.fr (localhost [1.169.170.132])
	by msfrf2109.sfr.fr (SMTP Server) with ESMTP id 73E8C7000083;
	Fri, 24 Jul 2015 00:45:37 +0200 (CEST)
Authentication-Results: sfrmc.priv.atos.fr; dkim=none (no signature);
	dkim-adsp=none (no policy) header.from=herve.jourdain@neuf.fr
Received: from hjo-pc (1-169-170-132.dynamic.hinet.net [1.169.170.132])	(using
	TLSv1 with cipher AES128-SHA (128/128 bits))	(No client certificate
	requested)
	by msfrf2109.sfr.fr (SMTP Server) with ESMTP id 016937000081;
	Fri, 24 Jul 2015 00:45:34 +0200 (CEST)
X-SFR-UUID: 20150723224535587.016937000081@msfrf2109.sfr.fr
Received: from hjopc
	by hjo-pc (PGP Universal service);  Fri, 24 Jul 2015 00:45:35 +0100
X-PGP-Universal: processed;	by hjo-pc on Fri, 24 Jul 2015 00:45:35 +0100
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Mauro Carvalho Chehab' <mchehab@osg.samsung.com>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
	<20150723130029.1268067b@recife.lan>
	<007301d0c564$360d30e0$a22792a0$@neuf.fr>
	<20150723152821.352e1a52@recife.lan>
In-Reply-To: <20150723152821.352e1a52@recife.lan>
Date: Fri, 24 Jul 2015 00:45:29 +0200
Message-ID: <021e01d0c599$4a106140$de3123c0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQFnXKxyRAcEzfeDEFvGsDtkXP+9rgCtpmStAQi5nHoBWLTH7J6j/H3g
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] Add networkd as default for RaspberryPi
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
X-List-Received-Date: Thu, 23 Jul 2015 22:45:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Well, I'm using Poky as a "distribution", at least for my tests...
But there might be a reason why it's not included there, I believe.
The problem to include it at the distribution level is you need to make =
assumptions as to what kind of network/network interfaces will be found.
On a raspberrypi, we know there will be at least an Ethernet available, =
so starting networkd and resolved makes sense.
But at the Poky distribution level, it can run on any kind of hardware, =
including those without any network capability.
So I believe it can't really be easily done at the distribution layer =
itself either, unless there is some kind of understanding networking =
will be required.

Therefore, my problem: if we want raspberrypi to start network out of =
the box, because we know it has the HW to support it, then we should do =
something at the raspberrypi layer, if it can not be supported at the =
distribution layer.

As I mentioned, I had initially kept that in a custom layer of mine.
But if it stays there, that means anyone starting poky on a raspberrypi =
using system will have to do its own layer with the bbappend, similar to =
that.
So I'm trying to find a way to make this work out of the box, with =
systemd, on raspberrypi, for everyone, and I'm not sure what's the best =
way to achieve this indeed.

BR,

Herve

-----Original Message-----
From: Mauro Carvalho Chehab [mailto:mchehab@osg.samsung.com]=20
Sent: jeudi 23 juillet 2015 20:28
To: Herve Jourdain
Cc: 'Andrei Gherzan'; 'Petter Mab=C3=A4cker'; yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH] Add networkd as default =
for RaspberryPi

Em Thu, 23 Jul 2015 18:25:29 +0200
Herve Jourdain <herve.jourdain@neuf.fr> escreveu:

> Hi Mauro,
>=20
> Well, that's precisely one of my concerns. I believe that one of the =
Tizen layers might do just that.=20

Yes, it does. It is at the meta-tizen layer.

> Maybe it should be at the Yocto layer.
>
> But it seems not to be with the one I'm using. And just enabling =
system - which can be done at distro level - is not enough, there is a =
need for a bbappend and a config file.
> So honestly, since I was experimenting with system, I stumbled on this =
one, and I had initially put that patch in another layer - custom one.
>=20
> The question that remains is how do we make sure that Poky on =
raspberry pi has network enabled by default when people switch to =
system? Since I don't know where else to put it, I decided to propose =
the patch for the raspberrypi layer, knowing it probably makes more =
sense to put it somewhere else.

I'd say that it should not be at the Yocto layer, but at the layer =
specific for your distribution.

>=20
> BR,
>=20
> Herve
>=20
> -----Original Message-----
> From: Mauro Carvalho Chehab [mailto:mchehab@osg.samsung.com]
> Sent: jeudi 23 juillet 2015 18:00
> To: Herve Jourdain
> Cc: 'Andrei Gherzan'; 'Petter Mab=C3=A4cker'; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH] Add networkd as default =

> for RaspberryPi
>=20
> Em Thu, 23 Jul 2015 17:32:35 +0200
> Herve Jourdain <herve.jourdain@neuf.fr> escreveu:
>=20
> > This patch adds systemd-networkd for RaspberryPi in the=20
> > meta-raspberrypi layer, in order to have Ethernet and Networking =
work out of the box.
> >=20
> > =20
> >=20
> > This said, I=E2=80=99m not 100% sure if it should be enabled in=20
> > meta-raspberrypi, instead of another custom layer.
> >=20
> > But something similar needs to be added somewhere, and with the=20
> > current version of Yocto on RaspberryPi, without this patch, network =

> > just doesn=E2=80=99t start=E2=80=A6
>=20
> I guess putting it at BSP is not right. Ethernet network does work on =
Tizen on Yocto:
> 	http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/
>=20
> Regards,
> Mauro
>=20
>=20
> >=20
> > =20
> >=20
> > Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr=20
> > <mailto:herve.jourdain@neuf.fr> >
> >=20
> > ---
> >=20
> > diff -Naur
> > meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> > meta-raspberrypi/recipes-core/systemd/files/eth.network
> >=20
> > --- meta-raspberrypi.orig/recipes-core/systemd/files/eth.network
> > 1970-01-01 08:00:00.000000000 +0800
> >=20
> > +++ meta-raspberrypi/recipes-core/systemd/files/eth.network    =
2015-07-22
> > 12:01:53.587830690 +0800
> >=20
> > @@ -0,0 +1,6 @@
> >=20
> > +[Match]
> >=20
> > +Name=3Deth*
> >=20
> > +
> >=20
> > +[Network]
> >=20
> > +DHCP=3Dv4
> >=20
> > +
> >=20
> > diff -Naur
> > meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
> > meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend
> >=20
> > --- meta-raspberrypi.orig/recipes-core/systemd/systemd_%.bbappend
> > 1970-01-01 08:00:00.000000000 +0800
> >=20
> > +++ meta-raspberrypi/recipes-core/systemd/systemd_%.bbappend
> > 2015-07-22 12:05:07.307838546 +0800
> >=20
> > @@ -0,0 +1,17 @@
> >=20
> > +FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> >=20
> > +
> >=20
> > +EXTRA_OECONF +=3D "--disable-ldconfig"
> >=20
> > +
> >=20
> > +PACKAGECONFIG +=3D "networkd resolved"
> >=20
> > +
> >=20
> > +CFLAGS_append_arm =3D " -fno-lto"
> >=20
> > +
> >=20
> > +SRC_URI +=3D "file://eth.network"
> >=20
> > +
> >=20
> > +FILES_${PN} +=3D "{sysconfdir}/systemd/network/*"
> >=20
> > +
> >=20
> > +do_install_append() {
> >=20
> > +    install -d ${D}${sysconfdir}/systemd/network/
> >=20
> > +    install -m 0644 ${WORKDIR}/*.network=20
> > + ${D}${sysconfdir}/systemd/network/
> >=20
> > +}
> >=20
> > +
> >=20
> > =20
> >=20
>=20


