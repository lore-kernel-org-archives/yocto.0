Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1976FE00AE4; Wed,  2 May 2018 14:19:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5D63E00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 14:19:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 May 2018 14:19:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,356,1520924400"; d="scan'208";a="47823248"
Received: from ongsoone-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.130.151])
	by orsmga003.jf.intel.com with ESMTP; 02 May 2018 14:19:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Siegumfeldt <mns@gomspace.com>
Date: Thu, 03 May 2018 09:19:27 +1200
Message-ID: <2272489.8VKhpn1Y3m@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW1U42nj0aoDd56Vzi2-1Bpto0JDmtpSx2p8pmDgV7PB-g@mail.gmail.com>
References: <AM5PR0402MB2721B2D61F1D3477AEE59DFEC4820@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<AM5PR0402MB27213A743A419B0D00E4AD63C4800@AM5PR0402MB2721.eurprd04.prod.outlook.com>
	<CAC+thW1U42nj0aoDd56Vzi2-1Bpto0JDmtpSx2p8pmDgV7PB-g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Recipe availability through eSDK (cppzmq)
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
X-List-Received-Date: Wed, 02 May 2018 21:19:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 2 May 2018 8:33:12 PM NZST Andrea Galbusera wrote:
> On Wed, May 2, 2018 at 9:52 AM, Martin Siegumfeldt <mns@gomspace.com> wrote:
> > Hacking the recipe according to:
> > martin@dell:~/work/z7000-distro-zcu102/meta-openembedded$ git diff
> > diff --git a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> > b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> > index a64745c94..aba1d6edb 100644
> > --- a/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> > +++ b/meta-oe/recipes-connectivity/zeromq/cppzmq_git.bb
> > @@ -13,9 +13,11 @@ S = "${WORKDIR}/git"
> >
> >  do_install () {
> >          install -d ${D}/usr/include
> > +        install -d ${D}/etc
> >          install -m 0755 ${S}/zmq.hpp ${D}/usr/include/
> > +        install -m 0755 ${S}/zmq.hpp ${D}/etc
> >  }
> >
> > -PACKAGES = "${PN}-dev"
> > +PACKAGES = "${PN}-dev ${PN}"
> 
> If you go down the patch-the-recipe way, you can probably leave
> PACKAGES at its default: both ${PN} and ${PN}-dev are there by
> default.
> 
> > RDEPENDS_${PN}-dev = "zeromq-dev"
> >
> > triggers both ${PN}-dev and ${PN} variants to be packaged and included by
> > the image. Leaving out the installation into /etc causes ${PN} package not
> > to be generated and the image generation does not pick up the ${PN}-dev
> > variant.
> 
> Better would be adding:
> 
> ALLOW_EMPTY_${PN} = "1"
> 
> This way it's cleaner and should work as well. However, you'll need to
> force your image to depend upon an empty package to be added
> (meaningless for the target), for the sake of the corresponding -dev
> package to be part of the tailored eSDK... Maybe there's a better way
> to achieve this, possibly by adding cppzmq-dev to the SDK explicitly
> with something like TOOLCHAIN_TARGET_TASK_append (never used it in
> practice though). Hopefully someone can further comment on this to add
> some wisdom.
> 
> > In essence, it looks like image generation disregards recipes residing
> > exclusively in the ${PN}-dev variant - question is whether this is
> > intended
> > or not?
> 
> Yes it is. -dev packages are not intended to be installed into target
> image by design.

Rather than "by design" I would say "by default" - you can certainly install 
them explicitly (or for the whole image via IMAGE_FEATURES += "dev-pkgs" and 
that is intended - but out of the box it's not expected that you would be 
doing compilation on the target and thus the expectation is that the 
development files aren't needed.

A couple of other things worth mentioning from earlier in the discussion:


1) If you want the cppzmq development files to be available *within* the eSDK 
(so you can write code to use them using the eSDK), even if they are not 
brought in by way of the image containing a package from the cppzmq recipe, 
you can install them into the eSDK by running this within the eSDK 
environment:

devtool sdk-install -s cppzmq

Alternatively you can add them to the built eSDK by setting this before you 
build it:

SDK_TARGETS += "cppzmq:do_populate_sysroot"

FWIW there is a bug open to make this more friendly:

 https://bugzilla.yoctoproject.org/show_bug.cgi?id=10600


2) To add packages to the image when doing devtool build-image within the eSDK 
you would use the -p option (rather than trying to set IMAGE_INSTALL on the 
command line), so you could do the following for this situation:

devtool build-image -p cppzmq-dev

(This should work regardless of whether or not you do #1 above)


Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



