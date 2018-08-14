Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7F84E00A38; Tue, 14 Aug 2018 08:01:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 442 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Aug 2018 08:01:18 PDT
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28588E00BB5
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 08:01:18 -0700 (PDT)
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id 017451629
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 14:53:56 +0000 (UTC)
Received: from g9t2301.houston.hpecorp.net (g9t2301.houston.hpecorp.net
	[16.220.97.129])
	by g9t5008.houston.hpe.com (Postfix) with ESMTP id F21E862;
	Tue, 14 Aug 2018 14:53:54 +0000 (UTC)
Received: from hpe.com (pmcmofc1bn.americas.hpqcorp.net [10.250.102.240])
	by g9t2301.houston.hpecorp.net (Postfix) with ESMTP id A9FCC67;
	Tue, 14 Aug 2018 14:53:54 +0000 (UTC)
Date: Tue, 14 Aug 2018 08:53:53 -0600
From: marcelo.magallon@hpe.com
To: Amol Lad <Amol.Lad@4rf.com>
Message-ID: <20180814144108.cyltyacodtjolovb@PMCMOFC1BN.americas.hpqcorp.net>
References: <df04ced4f6dc42808b725892b0a59aff@4rf-nz-exchange.local.4rf.com>
MIME-Version: 1.0
In-Reply-To: <df04ced4f6dc42808b725892b0a59aff@4rf-nz-exchange.local.4rf.com>
User-Agent: NeoMutt/20171215
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Creating multiple filesystem images
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
X-List-Received-Date: Tue, 14 Aug 2018 15:01:27 -0000
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On Mon, Aug 13, 2018 at 03:23:09PM +0000, Amol Lad wrote:

>Currently when we build say core-image-minimal, we get a root file system image (say ext4) after the build. However, I also need to create an ext4 image for /boot partition (which contains zImage and dtb). I do not want wic image. How I can do this? i.e. I want two ext4 images after build: one root file system and another with content of /boot folder. Please advise

An image is just a recipe. When you do:

	bitbake my-image

you are asking bitbake to build that particular recipe.

What you are saying is that you want two recipes: my-image.bb and
my-image-boot.bb. If you have that, you can do this:

	bitbake my-image my-image-boot

To simplify that, you could have another recipe (say "my-build.bb"),
with DEPENDS on the two images, so you could call:

	bitbake my-build

and that would create the two images.

Marcelo

