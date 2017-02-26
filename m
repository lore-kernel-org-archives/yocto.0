Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81CD7E0095F; Sat, 25 Feb 2017 18:00:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 290C5E00804
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 18:00:05 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 1so8216762pgz.2
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 18:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=cVpOdJTYqSTOkzbdF0Rza3Z/ukQAO7nSTcYjLN8L4cQ=;
	b=boGuys2uTtzQu5ASAZmaEUngd7WmYxLJcW1MQhgqgX88fRBFiKctSuVWsco6+2jrTh
	Bl2AJRMIifmZeNLZ8g8F5DooW6cunf6eYUCB2TrgrOkuzt4IfRdvZsSiPS5/ysNG/TCN
	KbzgWnwYvBp5AaLtrGtiZ26FXSeA08iBOM5v/C+Z7yGizm17BY1z15sNf3r/g9NqPWYq
	mdVAsjxG+Ua2Qmq28NxHIgStHIYcdY4lGGonX/qiQB+M0+dHrGh+xKq3jyg0js7vPkYB
	JE277fW4BV570LiwSTfH3mZPYa0JeZMMqvXz571gPTLIziclLdu5h1eIDTaBlPPDmo6g
	WQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=cVpOdJTYqSTOkzbdF0Rza3Z/ukQAO7nSTcYjLN8L4cQ=;
	b=dPrFfiSleWReu0UU8tR61mSbLCQwOMkzIILT2w91PgqhJ+wjSES5GzvYGyzzV810v3
	XAsOODKpkTmvAvfTv82QfphQ0yGEvGQaFw2MmY2ZI8Ec0sZAxhL9Gtk/T4yJWdkNzFu5
	r1Qto9fzn4SE4H/axa6KETtA/hzOArpwhYucpwAM0Qz73LsPFU+YskksODZsrsV9RDaM
	2XVPTtKzfVxjqQVD2xBN5jvLBpBPYWMquuhOQFuICk2aKLhGC3rzeOdzPcC3fkGVJmf5
	+IZ2AkE4wNuu+5soupY++7GWBh8ISNnjwoBItLPsyvZX+c9E+7mhPK8WghbCdLw5dLqc
	KUJg==
X-Gm-Message-State: AMke39nrSDfiHDUN0mYCcmJncZnBc8YmaX6yduWc+crk1aHTOStNvXy31df+S2v0V3EUug==
X-Received: by 10.99.107.136 with SMTP id g130mr12675577pgc.87.1488074404682; 
	Sat, 25 Feb 2017 18:00:04 -0800 (PST)
Received: from carbonA (c-73-109-7-33.hsd1.wa.comcast.net. [73.109.7.33])
	by smtp.gmail.com with ESMTPSA id
	b67sm22497161pfj.81.2017.02.25.18.00.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Feb 2017 18:00:03 -0800 (PST)
Date: Sat, 25 Feb 2017 18:00:00 -0800
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170226015948.GA9477@carbonA>
References: <20170225000359.29173-1-raj.khem@gmail.com>
	<20170225091103.5ebe6324@lap0>
	<CAMKF1srVyEa8_0BoS750zPoyNuhmVA6VEue4m--11petEqNj9g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srVyEa8_0BoS750zPoyNuhmVA6VEue4m--11petEqNj9g@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.12
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
X-List-Received-Date: Sun, 26 Feb 2017 02:00:07 -0000
X-Groupsio-MsgNum: 34701
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="c3bfwLpm8qysLVxt"
Content-Disposition: inline

--c3bfwLpm8qysLVxt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 25, 2017 at 10:16:24AM -0800, Khem Raj wrote:
> On Sat, Feb 25, 2017 at 1:11 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> > On Fri, 24 Feb 2017 16:03:59 -0800
> > Khem Raj <raj.khem@gmail.com> wrote:
> >
> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> ---
> >>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb index
> >> dcca369..b41a8ef 100644 ---
> >> a/recipes-kernel/linux/linux-raspberrypi_4.9.bb +++
> >> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb @@ -1,8 +1,8 @@
> >>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >>
> >> -LINUX_VERSION ?= "4.9.10"
> >> +LINUX_VERSION ?= "4.9.12"
> >>
> >> -SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
> >> +SRCREV = "c1271995832a090a94eb3b1c1678cb51b84ef1ca"
> >>  SRC_URI =
> >> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y
> >> \
> >> file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
> >> \ "
> >
> > rpi-4.9.y is now the default branch upstream and they've started
> > merging in new stable releases instead of rebasing. So how soon do we
> > want to make 4.9.y the default in meta-raspberrypi?
> >
> > I've already tested a 4.9 series kernel with u-boot on an rpi and an
> > rpi3 so I'm happy that it all looks good.
> >
> > I'm away this weekend so I can't send the patch right now myself. If
> > no-one else jumps on it I'll send a patch towards the end of the week
> > to change the default.
>
> Lets apply this patch so we get away from this rebasing business quickly.
> however I would like to wait for us to make it default may be a week or so
> I have some issues bringing up wlan0 with 4.9 and would like to see why I get
>
> ifup wlan0
> Successfully initialized wpa_supplicant
> rfkill: WLAN soft blocked
> Could not set interface wlan0 flags (UP): Operation not possible due to RF-kill

That is interesting. I've seen it on old kernel versions too. Everytime
disappeared by itself.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--c3bfwLpm8qysLVxt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAliyNqAACgkQJrqo2vax
FPZ8MA//fELGYisRFJZyHwkiABwCBUgAew5plLuzrVoB3Fh1dAMjIJJdiWrJfoXN
HGwMH4do0nbnq3TBFJzYh/9aw5+ISCm5sj+0gTiQoXn/6tZsSBYlbDdcjA36F7Os
M7qA7GENhVErYrBADpeEzofZoKFnsZ18lF/bY/+EtsUYQ6ak84rVBdAyKZjTPWoX
1M5U946YFlWTklzE6EAtv1qyb+3mz9SYXOo2Pq+8qTGYY9eWz4vIbnKcWY3gOGpe
B21EL1NexzaR74OKVxUC6A3SBiqq0zFCsfMtZVJjvP4+F6tMcB1tQC11jsYPourM
YMUcexcy1JxtetSltFaEz0xBJSzx0BCS0Y6+tzrFaXtQiCNScF4Je714nvbQ+/bw
kadNeI/KyiGw47rphQwq6xh7FAxDynVhUinRwV3A2SMJfiFQjQCA5gQpKRlEry1h
zv/2Kp9QGHTWZozcs5qClfZ662SrY/pMe47XF8BJPiviE3Ui1mm18JIFaDp56tKw
5bnSNd2HjuCPIsdEKftgNnKZ/4xw/u9P5ajRHLy9tB6gQ1195DPX513S9ppuhzUM
/VMKPiaMysRwxdfF2y/F1IU7shKMOVGrzwV5n7P6tLhC2akHmKf8nJ2zsHuh/jAK
1yw5DRDnCA4lm1spPpy1UsDIyRzRpUAEc1Z5/2LlW18gieMq4Pk=
=xZ1S
-----END PGP SIGNATURE-----

--c3bfwLpm8qysLVxt--
