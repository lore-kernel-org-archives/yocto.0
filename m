Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 706FFC433F5
	for <webhook@archiver.kernel.org>; Tue, 31 May 2022 15:55:28 +0000 (UTC)
Received: from esa1.hc324-48.eu.iphmx.com (esa1.hc324-48.eu.iphmx.com
 [207.54.68.119])
 by mx.groups.io with SMTP id smtpd.web10.51110.1654012518913139301
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 08:55:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=XLsMf7Hw;
 spf=pass (domain: bmw.de, ip: 207.54.68.119,
 mailfrom: prvs=1432dbbea=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1654012519; x=1685548519;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=Zyu5lP9PFhB317VDPcE2WAu1+wQoY98zaawTof9ZJZA=;
  b=XLsMf7HwIBsE455vTso3DwP6YEOWUStLs6GQe53wHO2BEoh0xMB5cL7y
   kuDrVHBQ2VnrVQAIt+X1EqCn7KEPmO90/iq47sd7t2Nh60FpenKuq18ck
   WEqtq4UeiLP4+Bx8QVEYDRqfxIaAs24N0R3cLBlkX1xVOfX+69r0X8tAg
   w=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa1.hc324-48.eu.iphmx.com with ESMTP/TLS; 31 May 2022 17:55:16 +0200
Received: from esabb5.muc ([160.50.100.47])  by esagw3.muc with ESMTP/TLS;
 31 May 2022 17:55:16 +0200
Received: from smucm04l.bmwgroup.net (HELO smucm04l.europe.bmw.corp)
 ([160.48.96.24])
 by esabb5.muc with ESMTP/TLS; 31 May 2022 17:55:17 +0200
Received: from SMUCMP08G.europe.bmw.corp (10.30.13.73) by
 smucm04l.europe.bmw.corp
 (160.48.96.24) with Microsoft SMTP Server (TLS;
 Tue, 31 May 2022 17:55:16 +0200
Received: from SMUCMP08E.europe.bmw.corp (2a03:1e80:a15:58f::1:24) by
 SMUCMP08G.europe.bmw.corp (2a03:1e80:a15:58f::2039) with Microsoft SMTP
 Server (version=TLS; Tue, 31 May 2022 17:55:16 +0200
Received: from SMUCMP08E.europe.bmw.corp ([10.30.13.71]) by
 SMUCMP08E.europe.bmw.corp ([10.30.13.71]) with mapi id 15.02.0922.027; Tue,
 31 May 2022 17:55:16 +0200
From: <Mikko.Rapeli@bmw.de>
To: <JPEWhacker@gmail.com>
CC: <richard.purdie@linuxfoundation.org>, <marius.vlad@collabora.com>,
	<scott.murray@konsulko.com>, <ticotimo@gmail.com>,
	<jsmoeller@linuxfoundation.org>, <luca.ceresoli@bootlin.com>,
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] meta-egl failure: Nothing RPROVIDES polkit
Thread-Topic: [yocto] meta-egl failure: Nothing RPROVIDES polkit
Thread-Index: 
 AQHYccEQp7g4SPq6jEaUe80pSGuRU60yhVQAgABB34CAAENxAIAF5Yo3///lPoCAADMsAA==
Date: Tue, 31 May 2022 15:55:16 +0000
Message-ID: <YpY6YideE/dMIbdr@korppu>
References: <20220527135751.54a29f24@melee>
 <CADja47NmNz+8es0ymHYxmozSPmMA1TCTFeDg7epCDoXMEgYzbA@mail.gmail.com>
 <CANx9H-D_w2hupHXMxqYvQ2JYgfEKdvw5A_+OBpJ_9LW81s8efA@mail.gmail.com>
 <4e629bf9-1cb7-f1b1-4ca7-b2e535aeeea0@spiteful.org>
 <YpGn2ltFe33urvHD@xpredator>
 <74a19bf1c3b4b88943a045fe6ba4e5a88d86db8e.camel@linuxfoundation.org>
 <CAJdd5GZ+zErV=uAzE7eaDw02gk+__7xjsppn5gc4jHEJAzznCw@mail.gmail.com>
In-Reply-To: 
 <CAJdd5GZ+zErV=uAzE7eaDw02gk+__7xjsppn5gc4jHEJAzznCw@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="us-ascii"
Content-ID: <13A9BD98B9CC634BA5FE12F4BEDE6BB2@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 May 2022 15:55:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57238

On Tue, May 31, 2022 at 07:52:05AM -0500, Joshua Watt wrote:
> On Tue, May 31, 2022 at 7:27 AM <richard.purdie@linuxfoundation.org> wrot=
e:
> >
> > On Sat, 2022-05-28 at 07:40 +0300, Marius Vlad wrote:
> > > On Fri, May 27, 2022 at 04:25:00PM -0400, Scott Murray wrote:
> > > > On Fri, 27 May 2022, Tim Orling wrote:
> > > >
> > > > > On Fri, May 27, 2022 at 9:18 AM Jan Simon Moeller <
> > > > > jsmoeller@linuxfoundation.org> wrote:
> > > > >
> > > > > > Hi !
> > > > > >
> > > > > > Yes, we need to look into this and likely change the location o=
f the
> > > > > > RDEPENDS.
> > > > > > Thanks for flagging.
> > > > > >
> > > > > > polkit needs to be in DISTRO_FEATURES and the recipe needs to h=
ave a check
> > > > > for that (and inherit features_check)
> > > > [snip]
> > > >
> > > > For an immediate fix I've moved the polkit addition to a bbappend a=
dded
> > > > via BBFILES_DYNAMIC, gated on meta-oe presence.  The current intent=
 is
> > > > that the meta-agl-core test on the autobuilder only need poky, so l=
etting
> > > > this slip in was a thinko on our part.  We may revisit making meta-=
oe a
> > > > required dependency when binary packagefeed prototyping starts in A=
GL.
> > > > Your comment re features_check is right on, I'll add that when I ge=
t a
> > > > chance over the weekend.  One thing I may bring up on the next dev =
call
> > > > is Weston does need polkit in some situations (hence the addition i=
n
> > > > AGL), so maybe shifting it to oe-core starts to make more sense now=
...
> > > Yes, when using the logind launcher, or the seatd launcher with the
> > > logind back-end, polkit is needed to activate the session.  There's n=
o
> > > more a direct launcher, weston-launch has been removed and upstream w=
eston
> > > can for some time now use systemd user sessions to starting-up.
> > >
> > > The seatd launcher with daemon or built-in back-end, appears to be do=
ing
> > > the activation on its own, but I reckon systemd-logind back-end will =
be
> > > the de-facto back-end if changing the launcher in weston to seatd, an=
d
> > > removing systemd-logind launcher (as we're currently working towards
> > > having just a single launcher).
> > >
> > > One thing to mention here is that while digging this up I've found a
> > > patch to systemd-logind [1] which supposedely should allow just login=
d
> > > to activate the session as a non-root user, just that either it wasn'=
t
> > > working or it is no longer present, as I haven't been able to activat=
e
> > > sessions without polkit installed.
> > >
> > > [1] https://github.com/openembedded/openembedded-core/commit/e42dd9cf=
f98f2149904e104f08bc3f19ee7b6fc0
> > >
> >
> > Adding Joshua, I'm hoping he might have some ideas here?
>=20
> That patch in question fixed a regression in systemd behavior that was
> introduced at some point that broke the non-polkit behavior. I was
> able to get it fixed, but I also suspect that fighting against using
> polkit isn't going to be productive in the long run and we should look
> at a way to pull it in..... preferably without needing mozjs (why a
> policy system decided to rely on javascript is beyond me). Eventually,
> we are going to want polkit-only features from systemd and there won't
> be grounds (like "This worked before polkit") to get upstream systemd
> to change to support it.

oe-core and poky master already switched from mozjs to duktape with polkit.
I've cherry-picked these changes for my own branches of older yocto release=
s.

-Mikko=

