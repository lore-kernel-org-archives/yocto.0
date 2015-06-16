Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 327B4E00A4C; Tue, 16 Jun 2015 06:46:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99976E009E6
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 06:46:35 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 16 Jun 2015 06:46:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,626,1427785200"; d="scan'208";a="747656223"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.25.227])
	by orsmga002.jf.intel.com with ESMTP; 16 Jun 2015 06:46:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 16 Jun 2015 14:46:34 +0100
Message-ID: <4659917.UVOVbpnmtp@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <558022C1.7080006@mlbassoc.com>
References: <557ED498.50406@mlbassoc.com>
	<1986608.cqN5gJUDst@peggleto-mobl.ger.corp.intel.com>
	<558022C1.7080006@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: sstate black hole?
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
X-List-Received-Date: Tue, 16 Jun 2015 13:46:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 16 June 2015 07:21:05 Gary Thomas wrote:
> On 2015-06-16 06:36, Paul Eggleton wrote:
> > On Tuesday 16 June 2015 04:47:53 Gary Thomas wrote:
> >> On 2015-06-16 02:37, Paul Eggleton wrote:
> >>> On Monday 15 June 2015 18:19:21 Gary Thomas wrote:
> >>>> I followed this down to an i.MX6 specific package which is
> >>>> 
> >>>> in DEPENDS:
> >>>>      Variable PROVIDES value changed from
> >>>>      '${PN}  virtual/wayland-egl virtual/libgal-x11 virtual/egl
> >>>> 
> >>>> virtual/libopenvg virtual/libg2d virtual/libgl virtual/libgles1
> >>>> virtual/libgles2' to
> >>>> 
> >>>>      '${PN}  virtual/wayland-egl virtual/libgal-x11 virtual/egl
> >>>> 
> >>>> virtual/libopenvg virtual/libg2d virtual/libgl virtual/libgles1
> >>>> virtual/libgles2 virtual/libgl virtual/libgles1 virtual/libgles2'
> >>>> 
> >>>> Why aren't these considered the same (duplicate elements and/or order)
> >>>> should not matter for PROVIDES.  Is there some way we could get bitbake
> >>>> to collapse this and remove the duplicates?
> >>>> 
> >>>> I found that this happens in
> >>>> meta-fsl-arm:recipes-graphics/imx-gpu-viv/imx-gpu-viv.inc which
> >>>> contains
> >>>> 
> >>>> these lines:
> >>>>      PROVIDES += "virtual/wayland-egl virtual/libgal-x11 virtual/egl
> >>>> 
> >>>> virtual/libopenvg virtual/libg2d"
> >>>> PROVIDES_append_mx6q  = " virtual/libgl virtual/libgles1
> >>>> virtual/libgles2"
> >>>> PROVIDES_append_mx6dl  = " virtual/libgl virtual/libgles1
> >>>> virtual/libgles2"
> >>>> PROVIDES_append_mx6sx  = " virtual/libgl virtual/libgles1
> >>>> virtual/libgles2"
> >>>> 
> >>>> Some i.MX6 targets, nitrogen6x in particular, has overrides for both
> >>>> mx6q
> >>>> and mx6dl, hence the duplication.
> >>>> 
> >>>> Note: I removed the extra override (for testing) and found that
> >>>> now the packages built by target A can be shared via sstate with
> >>>> target B (at least the few I tested)
> >>> 
> >>> I agree this would be nice, but for this to work we'd probably need to
> >>> introduce a typing system within bitbake so that it can understand that
> >>> this variable is a space-separated list. That is something we will
> >>> probably do at some point for a variety of reasons, but I don't know
> >>> that
> >>> it's something we will get to soon.
> >> 
> >> Is there some way to solve this in the recipe itself?  I can see that
> >> it needs to make sure that those values are provided for each of the
> >> [sub]class of processor, but is there a way to write it so that they
> >> are only added once?  Perhaps a little bit of Python magic?
> > 
> > Sure, you could use an anonymous python function with actual conditional
> > statements instead of overrides to set PROVIDES here.
> 
> Thanks.  I found a much simpler way - I replaced the previous version by:
>    EXTRA_PROVIDES = ""
>    EXTRA_PROVIDES_mx6q  = " virtual/libgl virtual/libgles1 virtual/libgles2"
> EXTRA_PROVIDES_mx6dl  = " virtual/libgl virtual/libgles1 virtual/libgles2"
> EXTRA_PROVIDES_mx6sx  = " virtual/libgl virtual/libgles1 virtual/libgles2"
> PROVIDES += "virtual/wayland-egl virtual/libgal-x11 virtual/egl
> virtual/libopenvg virtual/libg2d ${EXTRA_PROVIDES}"
> 
> If the additions were unique, i.e. _mx6q was somehow different from _mx6dl,
> I would have had to use the python function, but since they are all the same
> this simpler way works just fine.

Yep, that will work too - good job :)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

