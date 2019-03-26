Return-Path: <jairo@futurasmus-knxlab.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91CECE00C1E; Tue, 26 Mar 2019 03:02:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [37.187.160.104 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.knx-group.net (www.futurasmus-knxgroup.org
	[37.187.160.104])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 15A8DE00BAF
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 03:02:09 -0700 (PDT)
Received: from PC-008 (200.red-79-155-111.dynamicip.rima-tde.net
	[79.155.111.200]) by mail.knx-group.net
	; Tue, 26 Mar 2019 11:02:10 +0100
Message-ID: <69cf9c37c7dc4a5e3243f3013294a39adefad5c5.camel@futurasmus-knxlab.es>
From: jairo <jairo@futurasmus-knxlab.es>
To: Patrick Boettcher <patrick.boettcher@posteo.de>
Date: Tue, 26 Mar 2019 11:02:08 +0100
In-Reply-To: <20190326091405.5017c931@posteo.de>
References: <f89d2fda94e3d046211d39d4b3adee9345962aae.camel@futurasmus-knxlab.es>
	<20190325172133.50597470@yaise-pc1>
	<2899bdb1698988b9ba9a6b8cdb8ccd89aa3d6325.camel@futurasmus-knxlab.es>
	<20190326091405.5017c931@posteo.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [rauc] create a rescue image
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
X-List-Received-Date: Tue, 26 Mar 2019 10:02:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

El mar, 26-03-2019 a las 09:14 +0100, Patrick Boettcher escribi=C3=B3:
> On Tue, 26 Mar 2019 09:05:47 +0100
> jairo <jairo@futurasmus-knxlab.es> wrote:
>=20
> > Thanks Patrick:
> >=20
> >=20
> > The idea is that when an update is going to be done, the system
> > will
> > restart in the rescue partition so that it updates the main
> > partition
> > and when it is updated it will restart the main partition again.
>=20
> This is a good idea when you want to keep a maximum of rootfs-space
> for
> one system and can be done with RAUC, bootchooser and barebox.
>=20
> However, there is a risk of when a system update (from the
> rescue-partition) installs a non-working image. Then you will stuck
> on
> your rescue system without a possibility to get back a working
> system.
>=20
> This is why "usually" there is system0 and a system1 which are
> switching over after an update and the system marks itself OK if it
> is
> - otherwise it is switching back to the previous system.

Yes, I know, it is somewhat risky, but I have only 512MB of nand
memory, and we are getting a lot of software. I think we have to
evaluate the move to a hardware with more memory, at the moment is what
we have. I think it is practically impossible to put 2 systems in so
little memory.

>=20
> Also check the latest phytec recipes in their distro, they integrated
> RAUC and barebox-state (in eeprom) and bootchooser. Though this is
> not
> yet releases for IMX6 - afaik.

Sure, they are going to release a new version this Friday. I'll have to
take a good look. :D

--
Jairo




