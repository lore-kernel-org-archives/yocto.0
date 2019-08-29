Return-Path: <johannes.wiesboeck@tum.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75FAFE00D35; Thu, 29 Aug 2019 08:12:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [129.187.255.137 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 429 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Aug 2019 08:12:47 PDT
Received: from postout1.mail.lrz.de (postout1.mail.lrz.de [129.187.255.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A10EE00C9C
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 08:12:47 -0700 (PDT)
Received: from lxmhs51.srv.lrz.de (localhost [127.0.0.1])
	by postout1.mail.lrz.de (Postfix) with ESMTP id 46K5X06hCqzyT4
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 17:05:36 +0200 (CEST)
Authentication-Results: postout.lrz.de (amavisd-new); dkim=pass (2048-bit key)
	reason="pass (just generated,
	assumed good)" header.d=tum.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tum.de; h=
	user-agent:in-reply-to:content-disposition:content-type
	:content-type:mime-version:references:message-id:subject:subject
	:from:from:date:date:received:received; s=postout; t=1567091136;
	bh=RBYtXNElWJEE/Z7/Y7M2RqL/jJjYquoRJAFxBuayhKY=; b=BVnxSgqu83F4
	noe0wKVFSLzL6uiQOCu6rPZxazkorWvrAP0DV4YjMAVPN6lXFawpOgLCnGcErlOy
	BBLDUvAu6KaD8MNT5min06/Fg4NudJe1jQSF3n7UQhCfrkhBRKLPvGacwHJJgiap
	v8Y5oq96qHeoPwtka7KPyY9TzHefu/oDN+aVyKSh4CycYsMmIa18QELIakpSeZxA
	JmY4uVf9ZG01WhQUxalybrWnu2MCpwX2o3KVCXttd+XPG0qHnheHDg2bnSHW1SMU
	AVdTWd5F1QG2gvyiQv/7NhYGKF1OHxv6IJ0djhDT0Um4OqpR+jagpei4aZtiHtPY
	nqSaYetWvw==
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs51.srv.lrz.de
Received: from postout1.mail.lrz.de ([127.0.0.1])
	by lxmhs51.srv.lrz.de (lxmhs51.srv.lrz.de [127.0.0.1]) (amavisd-new,
	port 20024) with LMTP id KYKQftr1mugX for <yocto@yoctoproject.org>;
	Thu, 29 Aug 2019 17:05:36 +0200 (CEST)
Received: from localhost (mail.fortiss.org [178.15.138.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by postout1.mail.lrz.de (Postfix) with ESMTPSA id 46K5X0331rzySh
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2019 17:05:36 +0200 (CEST)
Date: Thu, 29 Aug 2019 17:05:35 +0200
From: Johannes =?utf-8?B?V2llc2LDtmNr?= <johannes.wiesboeck@tum.de>
To: yocto@yoctoproject.org
Message-ID: <20190829150535.2w2nir4bia4ze6ez@asterix>
References: <20190829143056.cvo7vk7tpghfjnyh@asterix>
	<20190829144027.whr2vf5lwnhoh4vk@asterix>
	<20190829144815.62iqd6tnf6qot74m@asterix>
MIME-Version: 1.0
In-Reply-To: <20190829144815.62iqd6tnf6qot74m@asterix>
User-Agent: NeoMutt/20180716
Subject: [help] Multiconfig - Depending on Recipe multiple times
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
X-List-Received-Date: Thu, 29 Aug 2019 15:12:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Everyone,

i am using Yocto on the thud branch to build images for a real-time
operating system based on FreeRTOS. I would like to run multiple images
on different CPU cores in an asynchronous multi-processing (AMP) configuration.
Each image will contain the software for only one single core. For
deployment, i would like to pack all images into one package.

Therefore, i would like to use multiconfig to build the same recipe four
times for the same hardware but with different compiler options,
determined by to core the image should run on. These builds are all based on
the same source code but differ in compiler options used for building. After
the images for all configurations are built, i would like to pack all images
into a single package for deployment.

I have created two recipes, one called amp-image, that should be built
once for every multiconfig. A second recipe called master-image,
depends on amp-image for every configuration, i.e. i have the line

do_compile[mcdepends] = "multiconfig:amp-c0:amp-c0:amp-image:do_build multiconfig:amp-c0:amp-c1:amp-image:do_build"

in my master-image.bb file. I also have set up my multiconfigs according
to [0].

When i try to build master-image with 

bitbake multiconfig:amp-c0:master-image

i get an error, which i have attached in [1].

My question is: Is it generally possible for a recipe to depend on one
recipe multiple times but from a different multiconfig, like shown above?
Also, if possible, are the sysroots of the dependencies automatically
populated to the recipe depending on them, like with the usual DEPENDS
variable.


Thanks for any help!
Johannes Wiesboeck

[0] https://www.yoctoproject.org/docs/2.6/dev-manual/dev-manual.html#dev-building-images-for-multiple-targets-using-multiple-configurations
[1] https://home.in.tum.de/~wiesboec/bitbake.txt

