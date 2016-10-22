Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E18E00BC1; Sat, 22 Oct 2016 14:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.105.59.63 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 21703 seconds by postgrey-1.32 at yocto-www;
	Sat, 22 Oct 2016 14:27:57 PDT
Received: from 4.mo68.mail-out.ovh.net (4.mo68.mail-out.ovh.net [46.105.59.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72E0BE00A6D
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 14:27:57 -0700 (PDT)
Received: from player711.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo68.mail-out.ovh.net (Postfix) with ESMTP id 77470881D
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 23:27:55 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player711.ha.ovh.net (Postfix) with ESMTPSA id E339438008A;
	Sat, 22 Oct 2016 23:27:53 +0200 (CEST)
Date: Sat, 22 Oct 2016 22:27:52 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Karim ATIKI <karim_atiki@hotmail.com>
Message-ID: <20161022222752.4d2b2039@nuc.betafive.co.uk>
In-Reply-To: <HE1PR01MB18837C50555202631BDE3F9792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<682A676C-7174-476C-B845-13329DC857F9@gmail.com>
	<HE1PR01MB18830215696B2C95CA18945F92D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883F24DAFB37D6ED3C5956792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB18837C50555202631BDE3F9792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 15698140929245350304
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddriedvgdduiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Sat, 22 Oct 2016 21:27:59 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 22 Oct 2016 18:59:39 +0000
Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Hi ,
> 
> 
> I just found out something interesting.
> 
> I setup a build with poky-krogoth, I didn't include any of my custom
> recipes.
> 
> 
> I've jsut included meta-raspberrypi in the layers.
> 
> Setup a machine "raspberrypi3"
> 
> 
> Launched: bitbake gstreamer1.0-plugins-bad
> 
> 
> It worked successfully.
> 
> Then, I deleted the tmp and sstate directories.
> 
> 
> And I added in the local.conf:
> 
> DISTRO_FEATURES_remove = " x11 wayland".
> 
> 
> Launched: bitbake gstreamer1.0-plugins-bad
> 
> 
> >>>> It failed at the exact step (see below in the conversation)
> 
> 
> Is there a problem with this configuration ?
> 
> 
> Cheers,
> 
> 
> Karim
> 

I can't reproduce this on master. gstreamer1.0-plugins-bad compiles
without error for raspberrypi3 without x11 or wayland in
DISTRO_FEATURES on my machine.

Are you using krogoth branches of all your layers? Could you retry this
on a clean checkout of master, using the minimal set of layers
(oe-core, meta-oe, meta-multimedia and meta-raspberrypi) and see if you
see the same problem?

Thanks,
Paul Barker

