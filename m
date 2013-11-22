Return-Path: <paul.eggleton@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30EE4E006BE
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 03:21:48 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2013 03:21:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,751,1378882800"; d="scan'208";a="437930583"
Received: from pauljbro-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.218])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2013 03:21:01 -0800
From: Paul Eggleton <paul.eggleton@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 22 Nov 2013 11:21:01 +0000
Message-ID: <1423409.HTN22GAagW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311220548170.5474@oneiric>
References: <alpine.DEB.2.02.1311211327360.10963@oneiric>
	<CAP71WjyfTp3RvhQFrg937dOdREsaO8PUPq7GmaY6m=a=47wJmg@mail.gmail.com>
	<alpine.DEB.2.02.1311220548170.5474@oneiric>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 22 Nov 2013 05:11:59 -0800
Cc: yocto@yoctoproject.org
Subject: Re: FW: strange explanation of how to add a package to an existing recipe
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
X-List-Received-Date: Fri, 22 Nov 2013 11:21:49 -0000
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Friday 22 November 2013 05:50:39 Robert P. J. Day wrote:
> On Thu, 21 Nov 2013, Nicolas Dechesne wrote:
> > On Thu, Nov 21, 2013 at 7:35 PM, Rifenbark, Scott M 
<scott.m.rifenbark@intel.com> wrote:
> >       >suggests that, to customize an image, you should copy the existing
> >       >.bb file for>       >
> >       >that image to another name and add a line like:
> >       >  IMAGE_INSTALL += "strace"
> >       >
> >       >but rather than *copy* the entire image file, isn't it easier to
> >       >use what's
> >       >already being used; that is, just "include" or "require" the
> >       >existing .bb file.> 
> >       >example: core-image-minimal-mtdutils.bb contains:
> > i would agree with the doc. while it is tempting to include/require
> > a 'minimal' image, and it is simpler at first sight, eventually you
> > will need to have full control of all your image. especially when
> > your 'image' is your 'product' that gets deployed. In such
> > circumstances I believe it is more appropriate to not rely on an
> > external recipe. e.g. if the minimal image you include change, all
> > your derived images change too... 
> > 
> > it's kind of a 'taste' choice, and you might want to choose to do
> > differently, but still the best recommendation to me is to own your
> > image recipes completely...
> 
>   your logic is sound; however, it's also reasonable to suspect that
> if someone is going to create a new, initial image over which they
> want full control, they may very well want to create some subtle
> variants of that image (as is done with all those core images).
> 
>   so perhaps both approaches should be documented with the appropriate
> caveats?

Maybe, but this is really no different than any other type of recipe. I'd much 
rather us have some documentation on how to share commonality between recipes 
(where we discuss the usage and relative merits of include/require and bbclass 
files, for example) and just note in the image recipe section that image 
recipes are recipes and point to that generic documentation.

I had a hand in writing this section so I'm completely biased, but I agree 
with Nicolas - including any of the core-image-* in your own recipe isn't 
giving you much of an advantage and may in fact cause unexpected changes when 
you come to upgrade. Image recipes tend to be fairly trivial, so it's simplest 
to just have your own discrete recipe (although if you want to have variants 
of that recipe that you also control, by all means use includes or classes to 
share the common parts.)

Cheers,
Paul

Cheers,
Paul

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


