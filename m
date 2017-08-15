Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18B6BE00D2A; Mon, 14 Aug 2017 23:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 902F0E00B67
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 23:29:30 -0700 (PDT)
X-Halon-ID: 13206722-8183-11e7-b276-005056917a89
Authorized-sender: petter@technux.se
Received: from petterarch (unknown [85.195.55.167])
	by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
	id 13206722-8183-11e7-b276-005056917a89;
	Tue, 15 Aug 2017 08:29:25 +0200 (CEST)
Message-ID: <1502778564.7630.25.camel@technux.se>
From: Petter Mabacker <petter@technux.se>
To: Khem Raj <raj.khem@gmail.com>
Date: Tue, 15 Aug 2017 08:29:24 +0200
In-Reply-To: <CAMKF1spVyE42CTQvbk0gzHoyUtqAYRyGdcAO3GcwLjts2T=0-Q@mail.gmail.com>
References: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
	<CAHiDW_FD0gJLh34H+qEZA5aSH8Q1-5uhVUtykRVd0dFtUOAReQ@mail.gmail.com>
	<CAGsrAHd6UirSR5A0pzG+wpYWvHSmzPbi13LwzFHRwz-Tkism1w@mail.gmail.com>
	<CAHiDW_E0POkBdC2Ss9jeUNFrN=LFP0ygcqCkf0vvkaL7muDHgg@mail.gmail.com>
	<1502606525.7630.13.camel@technux.se>
	<CAMKF1spVyE42CTQvbk0gzHoyUtqAYRyGdcAO3GcwLjts2T=0-Q@mail.gmail.com>
X-Mailer: Evolution 3.24.5 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>, mohammed aqdam <mohammedaqdam@gmail.com>
Subject: Re: Errors while tring rpi-test-image for rpi3
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
X-List-Received-Date: Tue, 15 Aug 2017 06:29:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2017-08-13 at 09:28 -0700, Khem Raj wrote:
> On Sat, Aug 12, 2017 at 11:42 PM, Petter Mabacker <petter@technux.se>
> wrote:
> > On Sat, 2017-08-12 at 15:10 +0300, Jussi Kukkonen wrote:
> > 
> > > ERROR: Nothing PROVIDES 'libav' (but
> > > 
> > > /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-
> > > multimedia/omxplayer/omxplayer_git.bb
> > > DEPENDS on or otherwise requires it)
> > > ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
> > > restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
> > 
> > Searching the Yocto reference manual for this term will lead to
> > http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html
> > #enabling-commercially-licensed-recipes
> > which should have the details you need to resolve the issue.
> > 
> > Jussi
> > 
> > 
> > Hi,
> > 
> > This info is actually also present in the meta-raspberrypi
> > documentation, in
> > 'docs/extra-apps.md':
> > 
> > $ cat docs/extra-apps.md
> > # Extra apps
> > 
> > ## omxplayer
> > 
> > omxplayer depends on libav which has a commercial license. So in
> > order to be
> > able to compile omxplayer you will need to whiteflag the commercial
> > license in your local.conf:
> > 
> >     LICENSE_FLAGS_WHITELIST = "commercial"
> > 
> 
> it is better to be cautious about it and enable what you want and
> ensure you can do so from licesning perspective.
> 
> LICENSE_FLAGS_WHITELIST_append = " commercial_libomxil "
> 
> e.g. will enable only for libomxil and keep adding to this list the
> licenses you want to white list.
> 
I agree, it sounds resonable. We should probably update the above
mentioned doc (docs/extra-apps.md) with this info..

BR Petter 
> > 
> > 
> > To make full use of the documentation I recommend that you are
> > generating
> > the documentation within docs/ in for example html format and make
> > use of
> > the searching functionality in there.
> > 
> > 
> > BR Petter
> > 
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 

