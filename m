Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1599DE00E85; Thu, 10 May 2018 17:05:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB61E009CF
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 17:05:50 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 May 2018 17:05:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,387,1520924400"; d="scan'208";a="40046489"
Received: from lilyfoo-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.109])
	by orsmga007.jf.intel.com with ESMTP; 10 May 2018 17:05:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 11 May 2018 12:04:13 +1200
Message-ID: <3277264.MICTcM6872@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <20180510150603.m2u5s53z6c7zc3uh@nyx.americas.hpqcorp.net>
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
	<CAJTo0LaOOAhnPbUJ2DfWyaty5GM4JBNrGS-+44jt8p+iO4+kqA@mail.gmail.com>
	<20180510150603.m2u5s53z6c7zc3uh@nyx.americas.hpqcorp.net>
MIME-Version: 1.0
Cc: Piotr Piwko <piotr.piwko@gmail.com>
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
X-List-Received-Date: Fri, 11 May 2018 00:05:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, 11 May 2018 3:06:11 AM NZST Marcelo E. Magallon wrote:
> On Thu, May 10, 2018 at 10:22:34AM +0100, Burton, Ross wrote:
> 
> >$ bitbake image-foo image-bar
> >
> >image-foo and image-bar both contain recipe-flob.  recipe-flob will be
> >built *once* to generate the packages, and those packages used to build
> >both images.  If image-foo is read-only and image-bar is read/write, the
> >*same packages* will be reused.  recipe-flob has no idea that foo is
> >read-only and bar is read/write because the IMAGE_FEATURES assignments are
> >specific to those image recipes.
> 
> When dealing with a somewhat similar problem, what I've done is 
> that my-recipe.bb generates two packages (my-package-a, 
> my-package-b) and the images select which of the two packages 
> they want to use.

Right, that's another solution.

FYI I have covered these in the technical FAQ:

  https://wiki.yoctoproject.org/wiki/Technical_FAQ#How_do_I_change_how_my_recipe_is_built_depending_on_what_image_I.27m_building.3F

(One day we'll figure out how to place this somewhere where people can more
easily find it).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



