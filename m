Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71EEFE0151F
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 01:58:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 03 Apr 2013 01:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,399,1363158000"; d="scan'208";a="280094273"
Received: from unknown (HELO helios.localnet) ([10.255.13.234])
	by azsmga001.ch.intel.com with ESMTP; 03 Apr 2013 01:58:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
Date: Wed, 03 Apr 2013 09:58:12 +0100
Message-ID: <6064664.vH6NInnK1q@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A4639B30171@IRSMSX101.ger.corp.intel.com>
References: <1363104333-15085-1-git-send-email-ioanax.grigoropol@intel.com>
	<2562063.qdqmlPHIqx@helios>
	<3E179CF0D7162B4AA4E2B324209A4639B30171@IRSMSX101.ger.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Remove clutter project templates
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
X-List-Received-Date: Wed, 03 Apr 2013 08:58:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 03 April 2013 08:42:23 Grigoropol, IoanaX wrote:
> Paul Eggleton wrote:
> > On Tuesday 12 March 2013 18:05:33 Ioana Grigoropol wrote:
> > > - support for clutter was removed from core-image-sato along with
> > > clutter-box2d and thus the project templates in Eclipse should not be
> > > supported anymore; gtk templates should be used instead
> >  
> > The removal of clutter-box2d doesn't signal that clutter itself is
> > unsupported, so I think maybe we shouldn't be removing these templates
> > just yet.
>
> In my opinion, since clutter was only brought in core-image-sato and
> core-image-sato-sdk by clutter-box2d, and not independently, it means it
> was not really intended to support it.

Possibly; the other alternative is that nobody had really considered the 
question of whether or not it should be included. I'm unsure as to which is 
the case here.

> Do you think there should be support for clutter in the sdk images ?

I would say it depends on whether we believe it will be useful to new 
application developers, or we're just keeping it around for compatibility with 
existing applications. I can see it being useful but I'd probably like to hear 
from Jessica and others as well.

> Clutter + dependencies is not a small package and was only getting into
> images through testapps feature, and we could use gtk templates instead.

True, but Gtk+ and Clutter aren't quite the same thing. I'm not an expert on 
Clutter by any means but I believe it provides a much better framework for 
animations and non-traditional UIs than Gtk+ does.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

