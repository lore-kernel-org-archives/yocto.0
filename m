Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D71BFE00D6A; Thu,  7 Dec 2017 09:08:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.140.78 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 94887 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Dec 2017 09:08:57 PST
Received: from g4t3425.houston.hpe.com (g4t3425.houston.hpe.com
	[15.241.140.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2A37E008CE
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 09:08:57 -0800 (PST)
Received: from g4t3433.houston.hpecorp.net (g4t3433.houston.hpecorp.net
	[16.208.49.245])
	by g4t3425.houston.hpe.com (Postfix) with ESMTP id B6D705F
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 17:08:56 +0000 (UTC)
Received: from hpe.com (nyx.americas.hpqcorp.net [10.250.101.104])
	by g4t3433.houston.hpecorp.net (Postfix) with ESMTP id 7286545
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 17:08:56 +0000 (UTC)
Date: Thu, 7 Dec 2017 11:08:55 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: yocto@yoctoproject.org
Message-ID: <20171207170850.ovivl4gtxi3bhxzg@nyx.americas.hpqcorp.net>
MIME-Version: 1.0
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Good example of bbclass customization? maintainer
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
X-List-Received-Date: Thu, 07 Dec 2017 17:08:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I'm in the process of cleaning up our usage of Yocto with the goal of
improving longer-term maintainability, basically implementing something
like this:

http://events.linuxfoundation.org/sites/events/files/slides/Yocto-upgrades-ELC-2017.pdf

Right now I'm looking at several .bbclass files which have been
customized (meaning "someone edited the poky version directly"). My
general idea is that to support something like the above, I need to take
customizations to a different layer. In this way when poky-next's
foo.bbclass overlays poky's foo.bbclass, customizations aren't lost.

The simplest example of this that I have at hand is editting
image.bbclass to add:

	IMAGE_FEATURES[validitems] += "foo"
	FEATURE_PACKAGES_foo = "bar baz"

The practical effect of this modification can be accomplished in a
different way: I can have custom-image.bbclass "inherit image",
customize there and have my-image.bb "inherit custom-image" instead of
"inherit image". This works with the above, as custom-image.bbclass
would be customizing poky-next's image.bbclass, right?

My concern right now is a *different* case, where your goal is to modify
the class in order to affect all the recipes already inheriting from it.
For example, where there's a modification to a function in the class.

Is there a good example out there as to how to implement such a thing?

Thanks!

Marcelo

