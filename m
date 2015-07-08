Return-Path: <knopper@knopper.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99043E00978; Wed,  8 Jul 2015 09:35:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [85.214.68.145 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from knopper.net (knopper.net [85.214.68.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A43E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 09:35:44 -0700 (PDT)
Received: by knopper.net (Postfix, from userid 26015)
	id 4AE305D39; Wed,  8 Jul 2015 18:35:39 +0200 (CEST)
Date: Wed, 8 Jul 2015 18:36:05 +0200
From: Klaus Knopper <yocto@knopper.net>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <20150708163604.GQ5636@knopper.net>
References: <20150708145002.GO5636@knopper.net>
	<559D445A.4010308@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <559D445A.4010308@linux.intel.com>
Organization: Knopper Networks
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Mailinglist <yocto@yoctoproject.org>
Subject: Re: Selecting different kernel inside an image recipe
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
X-List-Received-Date: Wed, 08 Jul 2015 16:35:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Leonardo,

On Wed, Jul 08, 2015 at 10:40:10AM -0500, Leonardo Sandoval wrote:
> On 07/08/2015 09:50 AM, Klaus Knopper wrote:
> >Hello list,
> >
> >I'm trying to build variantions/brands of an image that only differ in
> >kernel configuration and kernel modules included, but everything else stays
> >the same, for the exact same board, as in the main image.
> >
> >Setting PREFERRED_PROVIDER_virtual/kernel = "different_kernel"
> >right inside in the new image recipe does not have any effect, as that
> >variable seems to be evaluated exclusively in the local.conf machine
> >file, which is read by all recipes.
> 
> This variable is commonly used inside configuration metadata (machine or
> distro conf files). You may try it there.

Please help me to understand your answer: You are saying that I do have
to change the machine or distro config used for ALL recipes, to be able
to use a different kernel configuration in ONE recipe, right?

I was really trying to avoid that. :-(

So it is really not possible to just select a different kernel config
within a normal recipe without changing the global configuration?

Regards
-Klaus

