Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB76E00E33; Sat, 22 Oct 2016 12:01:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [188.165.39.161 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 11998 seconds by postgrey-1.32 at yocto-www;
	Sat, 22 Oct 2016 12:01:22 PDT
Received: from 15.mo6.mail-out.ovh.net (15.mo6.mail-out.ovh.net
	[188.165.39.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 470FAE00DC9
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 12:01:22 -0700 (PDT)
Received: from player786.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo6.mail-out.ovh.net (Postfix) with ESMTP id 6268F4CC53
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 17:26:13 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player786.ha.ovh.net (Postfix) with ESMTPSA id 2DA8B8006A;
	Sat, 22 Oct 2016 17:26:12 +0200 (CEST)
Date: Sat, 22 Oct 2016 16:26:10 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Karim ATIKI <karim_atiki@hotmail.com>
Message-ID: <20161022162610.28a9d1ed@nuc.betafive.co.uk>
In-Reply-To: <HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 9589570984837679520
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddriedvgdekiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
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
X-List-Received-Date: Sat, 22 Oct 2016 19:01:44 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 22 Oct 2016 15:16:18 +0000
Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Actually, it looks like the issue comes from gstreamer1.0-plugins-bad
> recipe.
> 
> 
> This function, graphics_get_display_size, comes from libbcm_host
> which seems to be present in sysroot.
> 
> 
> In log.doconfigure i found:
> 
> 
> checking for bcm_host_init in -lbcm_host... yes
> checking bcm_host.h usability... yes
> checking bcm_host.h presence... yes
> checking for bcm_host.h... yes
> 
> So it seems that it found the necessary library.
> 
> 
> However, in the logfile of the compile error, there is no
> "-lbcm_host" dependency at all.
> 
> 
> Any idea to solve it ?
> 

Could you post more of the compile log? It would be good to see the
full set of arguments being used for compiling/linking.

Thanks,
Paul

