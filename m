Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47DAFE00BFF; Thu, 21 Jul 2016 08:20:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0010]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [178.33.109.111 listed in list.dnswl.org]
X-Greylist: delayed 16799 seconds by postgrey-1.32 at yocto-www;
	Thu, 21 Jul 2016 08:20:40 PDT
Received: from 2.mo5.mail-out.ovh.net (2.mo5.mail-out.ovh.net [178.33.109.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05B90E009FA
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 08:20:40 -0700 (PDT)
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id B5901FF9BDB
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 09:02:40 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player763.ha.ovh.net (Postfix) with ESMTPSA id E1F293C007F;
	Thu, 21 Jul 2016 09:02:38 +0200 (CEST)
Date: Thu, 21 Jul 2016 08:02:36 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Message-ID: <20160721080236.0ed7287e@nuc.betafive.co.uk>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 8327155715087370665
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeeltddrheeggdduudekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Subject: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Thu, 21 Jul 2016 15:20:44 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi all,

I'm planning to look at the linux-raspberypi recipes once I've had time
to send V2 of my u-boot patches. I'd like to know people's thoughts on
the available kernel versions in the meta-raspberrypi layer:

Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
referenced in SRCREV is from June 2015. I think it's probably time to
retire this unless anyone has a reason to keep it around.

Is there any reason to keep linux-raspberrypi 4.1 as the default
recipe? The last commit to the 4.1 branch was in April and the
default branch on the linux-raspberrypi GitHub repository has been
4.4 since then. I think we should change the default version to 4.4
unless there's a good reason not to.

If there's no objections I'll send a couple of patches to drop 3.18 and
change the default to 4.4.

Thanks,
Paul Barker

