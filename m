Return-Path: <jairo@futurasmus-knxlab.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59AA0E00B5E; Wed, 31 Oct 2018 07:00:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [37.187.160.104 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.knx-group.net (www.futurasmus-knxgroup.org
	[37.187.160.104])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 9A54EE00AE0
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 07:00:57 -0700 (PDT)
Received: from PC-008 (215.red-88-0-69.dynamicip.rima-tde.net [88.0.69.215])
	by mail.knx-group.net ; Wed, 31 Oct 2018 15:00:54 +0100
Message-ID: <2d4fc304068a8bd6e6559cdb5a86a02d458f295e.camel@futurasmus-knxlab.es>
From: Jairo <jairo@futurasmus-knxlab.es>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, Dimitris Tassopoulos
	<dimtass@gmail.com>, yocto@yoctoproject.org
Date: Wed, 31 Oct 2018 15:00:49 +0100
In-Reply-To: <a0b30c78-7a0f-582b-07dc-23c989dc2f36@windriver.com>
References: <ac25a5b004fb50f504cb455375de268710121957.camel@futurasmus-knxlab.es>
	<a0b30c78-7a0f-582b-07dc-23c989dc2f36@windriver.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Subject: Re: [avahi] add service into rocko
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
X-List-Received-Date: Wed, 31 Oct 2018 14:00:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wow thank you.
with:
IMAGE_INSTALL_append =3D "avahi-daemon"
it seems to work, it's a bit confusing but I think I got it, hehehe,
thanks Bruce and Dimitris


El mi=C3=A9, 31-10-2018 a las 08:57 -0400, Bruce Ashfield escribi=C3=B3:
> On 10/31/18 7:03 AM, Jairo wrote:
> > Hi all,
> >=20
> > I need to install an avahi service on rocko for (a node of) node-
> > red.
> >=20
> > OK, I have an avahi_0.6.32.bb recipe at 'sources/poky/meta/recipes-
> > connectivity/avahi/' which path is added at bblayers.conf file.
> >=20
> > but if I add the package at local.conf file like this:
> >=20
> > IMAGE_INSTALL_append =3D " avahi"
> >=20
> > when I try to make an image, bitbake can't find avahi
> >=20
> >     Collected errors:
> >      * opkg_prepare_url_for_install: Couldn't find anything to
> > satisfy
> > 'avahi'.
> >=20
> > What I'm doing wrong?
>=20
> The recipe name and the packages that you install are not (always)
> the same thing.
>=20
> i.e. in the recipe:
>=20
> PACKAGES =3D+ "libavahi-gobject avahi-daemon libavahi-common libavahi-
> core=20
> libavahi-client avahi-dnsconfd libavahi-glib avahi-autoipd avahi-
> utils"
>=20
>=20
> So depending on the functionality that you want, you'd be installing
> one or more of those packages to your image. (I'm betting you just
> want avahi-daemon).
>=20
> Bruce
>=20
> >=20
> > Thanks,
> > Jairo
> >=20
> >=20
>=20
>=20



