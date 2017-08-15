Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91980E00851; Tue, 15 Aug 2017 07:04:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76ABCE00851
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 07:04:12 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 15 Aug 2017 07:04:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,377,1498546800"; d="scan'208";a="139820257"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga005.fm.intel.com with ESMTP; 15 Aug 2017 07:04:11 -0700
Message-ID: <1502806378.28941.32.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Riko <antonius.riko@gmail.com>
Date: Tue, 15 Aug 2017 09:12:58 -0500
In-Reply-To: <299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
	<299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Tue, 15 Aug 2017 14:04:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-08-15 at 09:09 +0800, Riko wrote:
> Dear Team Yocto Members,
> 
> I continue compiling, and got :
> 
> ERROR: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/build-appliance-image_15.0.0.bb: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'wic.vmdk' - possibly invalid type name or missing support class
> ERROR: Failed to parse
> recipe: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/build-appliance-image_15.0.0.bb
> 

would be better if you start another thread with this issue. BTW, I just
built a build-appliance without any change at local.conf and all went
fine so you may have included something that you are not referring to
(IMAGE_FILES?)



> How can I fix it ?
> 
> regards,
> 
> Riko
> 
> 
> 
> On 14/08/17 23:56, Christopher Larson wrote:
> 
> > The openembedded-core root isn’t a layer, openembedded-core/meta is.
> > 
> > On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval
> > <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> >         On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
> >         > Dear Yocto Members,
> >         >
> >         > How can I find this file ?
> >         
> >         
> >         this is a pretty general question. are you running bitbake
> >         from the
> >         build directory? double check your conf/bblayers.conf and
> >         make sure
> >         paths there are pointing correctly.
> >         
> >         
> >         >
> >         > ==
> >         >
> >         > ERROR: Unable to parse
> >         > /home/bianchi/poky/openembedded-core/conf/layer.conf:
> >         [Errno 2] file
> >         > /home/bianchi/poky/openembedded-core/conf/layer.conf not
> >         found
> >         >
> >         >
> >         > Thanks,
> >         >
> >         > Riko
> >         >
> >         
> >         
> >         --
> >         _______________________________________________
> >         yocto mailing list
> >         yocto@yoctoproject.org
> >         https://lists.yoctoproject.org/listinfo/yocto
> >         
> > 
> > 
> > 
> > 
> > -- 
> > Christopher Larson
> > kergoth at gmail dot com
> > Founder - BitBake, OpenEmbedded, OpenZaurus
> > Senior Software Engineer, Mentor Graphics
> 



