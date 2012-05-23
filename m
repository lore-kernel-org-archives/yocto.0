Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48B5AE0030B
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 12:03:01 -0700 (PDT)
Received: from [109.224.129.17] (port=10905
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SXGpn-00067Z-VL; Wed, 23 May 2012 20:03:00 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4FBCA07F.1050001@r-finger.com>
Date: Wed, 23 May 2012 20:02:59 +0100
Message-Id: <AF8AFB37-5583-4531-8C0E-CA4073699EAD@keylevel.com>
References: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
	<4904220.mFpDsjEpuq@helios>
	<850EEF2D-6A67-4987-B202-A24461737544@keylevel.com>
	<8363795.7bU7lvsc4a@helios>
	<2B5CA5ED-EFE8-4F53-B592-55BCDA9AA8FD@keylevel.com>
	<4FBCA07F.1050001@r-finger.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Per-machine DEPENDS
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
X-List-Received-Date: Wed, 23 May 2012 19:03:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Firstly, I should have said I was using the m-rpi as an example only ;-)

On 23 May 2012, at 09:31, Tomas Frydrych wrote:

> On 23/05/12 08:55, Chris Tapp wrote:
>> Do overrides work with any variable? The RPi layer is using BBMASK to
>> filter out some recipes when building against Yocto. This has to be
>> manually added to local.conf.=20
>=20
> It does not have to be local.conf; if you are adding meta-raspberrypi,
> you have to set up the layer configuration at minimum, and probably
> other things, so you can set it up somewhere more appropriate.
> local.conf is really just for changes when testing things, etc.
>=20
>> Would it be possible to do this
>> automatically in the layer using an override based on the distro
>> name/version? e.g. could something like the following be added to the
>> layer.conf file?
>>=20
>> BBMASK_poky_7.0? +=3D " ${LAYERDIR}/stuff-i-dont-want"
>=20
> I don't know if the overrides work with this variable in particular, =
but
> even if they did, it is not a good idea for a layer of any kind to be
> changing the BBMASK value, because the layer cannot make any =
assumptions
> about what might or might not be appropriate to mask out.

Ok. Is there some other way that the addition of a layer can be =
'intelligent' so that it adapts itself to the build? For example, I have =
a layer that was designed to work with 4.x. It needed some minor changes =
to make it work with 5.x, some more for 6.x, etc. I would like to have a =
single meta-layer that will work with them all so that I only have to =
maintain a single version and not have branches for the different poky =
versions.

I can probably do what needs to be done using BBMASK, but it would be =
nice if DISTRO and DISTRO_VERSION could be used to automate this. Would =
it not be appropriate for the layer to decide what it offers to a =
distro? i.e. not offer things it knows aren't compatible.

> (Also note that BBMASK is pyton regex, so BBMASK +=3D "
> ${LAYERDIR}/stuff-i-dont-want" will not work, it would need, e.g., to
> include the '|' operator)
>=20
>>=20
>> Or would it be better to have distro-specific recipe trees
>=20
> Specifically to the m-rpi, there are only two problematic recipes, the
> libav.bbappend, but you only know on the distro level whether you need
> to mask this out or now (i.e., someone's poky-derrived distro might =
well
> include libav).
>=20
> The second is the rpi-zram-service which needs systemd.
> This recipe needs to be reworked so it produces both -systemd and =
-initd
> packages, from which the distro can then pull in the appropriate one;
> one of the packages can even be a dummy (which for poky could be
> achieved by adding systemd.bbclass stub).
>=20
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




