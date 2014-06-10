Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDA87E00BE1; Tue, 10 Jun 2014 09:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5EB7E00B83
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 09:09:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Jun 2014 09:09:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,1009,1392192000"; d="scan'208";a="526286243"
Received: from cgwithan-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.176])
	by orsmga001.jf.intel.com with ESMTP; 10 Jun 2014 09:09:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>,
	Pierre Yves MORDRET <pierre-yves.mordret@st.com>
Date: Tue, 10 Jun 2014 17:09:18 +0100
Message-ID: <7086666.QbsYtmnLcv@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.5-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <53972C83.2090100@windriver.com>
References: <888B7DC5D4899F46A9721989283666969C1E50A2A2@SAFEX1MAIL5.st.com>
	<53972C83.2090100@windriver.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional Configuration Fragments
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
X-List-Received-Date: Tue, 10 Jun 2014 16:09:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 June 2014 12:04:19 Bruce Ashfield wrote:
> On 14-06-10 11:11 AM, Pierre Yves MORDRET wrote:
> > On Monday 09 June 2014 09:56:20 Paul Eggleton 
<paul.eggleton@linux.intel.com> wrote:
> >> On Monday 09 June 2014 12:41:36 Bruce Ashfield wrote:
> >>> On 14-06-09 11:26 AM, Pierre Yves MORDRET wrote:
> >>>> Hello,
> >>>> 
> >>>> I really don't know whether this is feasible or not, but I'm trying to
> >>>> build a yocto image (custom image) with conditional configuration
> >>>> fragments.
> >>>> 
> >>>> Today I have 2 image type: one for deployment purpose and another for
> >>>> debug purpose. Debug images is only a superset of deployment image with
> >>>> additional debug capabilities: nothing else.
> >>>> 
> >>>> However now I would like to add additional linux kernel features to
> >>>> this
> >>>> debug image (ex: CONFIG_DEBUG_INFO=y).
> >>>> 
> >>>> I want to add this feature into debug image, but NOT in deployment
> >>>> image.
> >>>> 
> >>>> I was thinking to create a .bbappend to my linux .bb file, but again I
> >>>> don't see how to use .bbappend in a conditional way (based on image
> >>>> name
> >>>> for instance)
> >>>> 
> >>>> Do you have any idea to perform such request ?
> >>> 
> >>> Fragments are either just added to the SRC_URI or KERNEL_FEATURES via
> >>> the normal variable assignment rules.
> >>> 
> >>> So if you have something that you can test on (image/distro feature as
> >>> an example), you can use anonymous python and do a conditional
> >>> assignment.
> >>> 
> >>> Others on the list may have more elegant suggestions!
> >> 
> >> This can't work for what Pierre is asking for. You can't have a single
> >> recipe built differently depending on what image is being built - our
> >> system does not work that way. At a basic level, recipes create
> >> packages, and then the image recipe selects which packages should go
> >> into the image.
> >> 
> >> Given that the kernel does not produce named packages in our system, I'm
> >> not sure we currently have a way to build two different kernel recipes
> >> and select one in one image and another in another image (which is the
> >> way we normally handle this kind of requirement with other recipes.)
> >> Probably the only way to do this is to have two completely separate
> >> build directories.
> > 
> > Many Thanks for your answers.
> > Thus I was thinking of making 2 separate linux.bb, one for deployment and
> > the other for debug (i.e. linux-debug.bb) and update
> > PREFERRED_PROVIDER_virtual/kernel accordingly. But is there an automatic
> > way to select proper .bb (linux.bb or linux-debug.bb) file like setting
> > this variable(PREFERRED_PROVIDER_virtual/kernel) within the .bb image
> > file ? Won't it work ?
> > 
> > Another option which is coming on top of my mind:
> > SRC_URI_append_<image-name> = " file://configuration_segment.cfg"
> > Is it something realistic and working ?
> 
> The image name would have to be an OVERRIDE value for variables.
> Last I checked it wasn't, but perhaps Paul can straighten out that
> point as well :)

No, you can't do this, nor can you select PREFERRED_PROVIDER from the image. 
You cannot influence the building of other recipes from the image recipe at 
all.

As I said before, the only way to make this work would be if the kernel 
produced uniquely named packages that could be selected from the image; our 
kernel recipes don't currently do that though, and it would be a fairly major 
change in order to do that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

