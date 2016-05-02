Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D64E00D6D; Mon,  2 May 2016 06:13:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [46.105.58.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4208 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 May 2016 06:13:47 PDT
Received: from 3.mo2.mail-out.ovh.net (3.mo2.mail-out.ovh.net [46.105.58.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65AA4E00D67
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 06:13:47 -0700 (PDT)
Received: from player169.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo2.mail-out.ovh.net (Postfix) with ESMTP id 1E28910008C7
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 13:56:03 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player169.ha.ovh.net (Postfix) with ESMTPSA id 5327558007C;
	Mon,  2 May 2016 13:56:02 +0200 (CEST)
Date: Mon, 2 May 2016 12:57:23 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org, Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20160502125723.4b1b3e98@nuc.betafive.co.uk>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 4635048442797328809
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekkedrledugdeghecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Subject: [meta-raspberrypi] License of rpi-mkimage
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
X-List-Received-Date: Mon, 02 May 2016 13:13:50 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,

I'm looking at the license conditions for various bits of the software
required to build a Linux image using meta-raspberrypi.

I like to package up and redistribute everything I use to build an
image as this guarantees that people can re-build similar images. I
also think that in the case of RaspberyPi the GitHub repositories are
enormous and I'd like to package up small tar files of just the bits
that are actually needed to build an image. Before I do that I want to
make sure that this is allowed by the relevant licenses.

I'm confused by the RaspberryPi 'tools' repository
(https://github.com/raspberrypi/tools) and the rpi-mkimage recipe in
meta-raspberrypi (recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb) which
pulls from this repository. There is no clear license information in
the tools repository. The rpi-mkimage recipe contains a local License
file (recipes-bsp/rpi-mkimage/rpi-mkimage/License) which appears to be
the Broadcom MIT-style license. No files in the tools repository confirm
that this is the correct license for this software.

Two scripts in the tools repository which are installed by the
rpi-mkimage recipe, mkknlimg and knlinfo, have a header saying
"Licensed under the terms of the GNU General Public License." however
it's unclear which version of the GPL is meant here and I can't find a
copy of the full license text in the tools repository. It does look
like this code isn't under the Broadcom/MIT-style license which is
specified for the rpi-mkimage recipe though.

I've raised an issue upstream to clarify the licensing
(https://github.com/raspberrypi/tools/issues/58). However I wanted to
let you know what I've found.

Does anyone have any additional info on the license of this software?

Hope I've not poked too much of a wasps nest open here!

Thanks,
Paul Barker

