Return-Path: <knopper@knopper.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EAB9E00A4C; Mon,  3 Aug 2015 21:14:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAFDCE00A28
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 21:14:44 -0700 (PDT)
Received: by knopper.net (Postfix, from userid 26015)
	id E694D442D; Tue,  4 Aug 2015 06:14:40 +0200 (CEST)
Date: Tue, 4 Aug 2015 06:15:02 +0200
From: Klaus Knopper <yocto@knopper.net>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Yocto Mailinglist <yocto@yoctoproject.org>
Message-ID: <20150804041502.GN10184@knopper.net>
References: <20150708145002.GO5636@knopper.net>
	<559D445A.4010308@linux.intel.com>
	<20150708163604.GQ5636@knopper.net>
	<559D5E4E.8020001@windriver.com>
MIME-Version: 1.0
In-Reply-To: <559D5E4E.8020001@windriver.com>
Organization: Knopper Networks
User-Agent: Mutt/1.5.23 (2014-03-12)
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
X-List-Received-Date: Tue, 04 Aug 2015 04:14:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Bruce & list,

I need to come back to the topic after quite some failed attempts to
solve the problem of switching kernel configurations specific to an
image recipe.

On Wed, Jul 08, 2015 at 01:30:54PM -0400, Bruce Ashfield wrote:
> On 2015-07-08 12:36 PM, Klaus Knopper wrote:
> >Hello Leonardo,
> >
> >On Wed, Jul 08, 2015 at 10:40:10AM -0500, Leonardo Sandoval wrote:
> >>On 07/08/2015 09:50 AM, Klaus Knopper wrote:
> >>>Hello list,
> >>>
> >>>I'm trying to build variantions/brands of an image that only differ in
> >>>kernel configuration and kernel modules included, but everything else stays
> >>>the same, for the exact same board, as in the main image.
> >>>
> >>>Setting PREFERRED_PROVIDER_virtual/kernel = "different_kernel"
> >>>right inside in the new image recipe does not have any effect, as that
> >>>variable seems to be evaluated exclusively in the local.conf machine
> >>>file, which is read by all recipes.
> >>
> >>This variable is commonly used inside configuration metadata (machine or
> >>distro conf files). You may try it there.
> >
> >Please help me to understand your answer: You are saying that I do have
> >to change the machine or distro config used for ALL recipes, to be able
> >to use a different kernel configuration in ONE recipe, right?
> >
> >I was really trying to avoid that. :-(
> >
> >So it is really not possible to just select a different kernel config
> >within a normal recipe without changing the global configuration?
> 
> You really want a different kernel recipe to provide that different
> kernel configuration.  Which looks to be what you are describing, and
> you just want to switch the provider (again, what you are saying).

Yes, and I had indeed already added a new kernel recipe, which builds
the desired kernel as uImage when calling "bitbake kernel-recipename"
directly, but it's ignored by the image recipes. All of them use only
the kernel that's defined in build/conf/local.conf as
PREFERRED_PROVIDER_virtual/kernel . Redefining the variable in the image
recipes has no effect.

> Changing the included kernel via that different kernel recipe/package
> name, and setting it via the preferred provider is the same as any
> bitbake variable.

I thought so, but apparently I'mmissing something. It looks like
PREFERRED_PROVIDER_virtual/kernel only works in local.conf, i.e. I need
to fork the project or change the local.conf file each time I want to
use a different kernel. Is this a known or desired behavior?

> So you should be able to set it in any .conf file, and then have what
> you want.

So, can you confirm that it is not possible to set
PREFERRED_PROVIDER_virtual/kernel inside an image recipe?

> I've used layers with layer.conf files, and similar mechanisms
> to do what you are trying in the past .. but the longer serving oe/bitbake
> folks may have a better example to point at.

If there are examples for a more convenient way to switch kernels in a
recipe rather than inside a .conf file, please point me to the right
direction.

Regards
-Klaus

