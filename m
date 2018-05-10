Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C16CE009F4; Thu, 10 May 2018 08:15:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 526 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 May 2018 08:15:00 PDT
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 999F9E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 08:15:00 -0700 (PDT)
Received: from g2t2352.austin.hpe.com (g2t2352.austin.hpe.com [15.233.44.25])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id B87E461CC9
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 15:06:13 +0000 (UTC)
Received: from g2t2360.austin.hpecorp.net (g2t2360.austin.hpecorp.net
	[16.196.225.135])
	by g2t2352.austin.hpe.com (Postfix) with ESMTP id 748EE91;
	Thu, 10 May 2018 15:06:12 +0000 (UTC)
Received: from hpe.com (unknown [10.250.102.240])
	by g2t2360.austin.hpecorp.net (Postfix) with ESMTP id 2B2A337;
	Thu, 10 May 2018 15:06:12 +0000 (UTC)
Date: Thu, 10 May 2018 09:06:11 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20180510150603.m2u5s53z6c7zc3uh@nyx.americas.hpqcorp.net>
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
	<d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
	<CAMTWR-Np4pd8tytDdOoabzEZsqU=2w95Y9ddh6UOsD4-F4eDCw@mail.gmail.com>
	<CAJTo0LaOOAhnPbUJ2DfWyaty5GM4JBNrGS-+44jt8p+iO4+kqA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaOOAhnPbUJ2DfWyaty5GM4JBNrGS-+44jt8p+iO4+kqA@mail.gmail.com>
User-Agent: NeoMutt/20180323
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	Piotr Piwko <piotr.piwko@gmail.com>
Subject: Re: Check IMAGE_FEATURES content in recipe
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
X-List-Received-Date: Thu, 10 May 2018 15:15:01 -0000
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On Thu, May 10, 2018 at 10:22:34AM +0100, Burton, Ross wrote:

>$ bitbake image-foo image-bar
>
>image-foo and image-bar both contain recipe-flob.  recipe-flob will be
>built *once* to generate the packages, and those packages used to build
>both images.  If image-foo is read-only and image-bar is read/write, the
>*same packages* will be reused.  recipe-flob has no idea that foo is
>read-only and bar is read/write because the IMAGE_FEATURES assignments are
>specific to those image recipes.

When dealing with a somewhat similar problem, what I've done is 
that my-recipe.bb generates two packages (my-package-a, 
my-package-b) and the images select which of the two packages 
they want to use.

Marcelo

