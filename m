Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFD03E0096C; Fri,  2 May 2014 06:28:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 635F3E00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 06:28:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 May 2014 06:28:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,972,1389772800"; d="scan'208";a="426786566"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.53])
	by azsmga001.ch.intel.com with ESMTP; 02 May 2014 06:28:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Date: Fri, 02 May 2014 14:28 +0100
Message-ID: <6862482.1nOq8lDhIt@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.13.10-200.fc20.x86_64; KDE/4.12.4; x86_64; ;
	)
In-Reply-To: <CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
References: <5362171B.8010000@dynamicdevices.co.uk>
	<53639996.4090604@dynamicdevices.co.uk>
	<CAP9ODKopDnkSC8mPsDMk95n_Ws+KOoFEeD1YUWyPojnmS2Xzjw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Undefining a variable in a recipe?
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
X-List-Received-Date: Fri, 02 May 2014 13:28:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 02 May 2014 10:23:10 Otavio Salvador wrote:
> On Fri, May 2, 2014 at 10:11 AM, Alex J Lennon
> 
> <ajlennon@dynamicdevices.co.uk> wrote:
> > On 02/05/2014 14:07, Otavio Salvador wrote:
> >> On Fri, May 2, 2014 at 10:01 AM, Alex J Lennon
> >> 
> >> <ajlennon@dynamicdevices.co.uk> wrote:
> >>> On 02/05/2014 13:56, Otavio Salvador wrote:
> >>>> On Fri, May 2, 2014 at 2:24 AM, Alex J Lennon
> >>>> <ajlennon@dynamicdevices.co.uk> wrote:
> >>>> ...
> >>>> 
> >>>>> So I guess I'm at the point where I'm wondering if a getVar() with a
> >>>>> flag is behaving as you would expect it to,
> >>>>> or how I might go about ensuring either UBOOT_MACHINE or UBOOT_CONFIG
> >>>>> isn't defined?
> >>>>> 
> >>>>> Thanks in advance for any advice,
> >>>> 
> >>>> I think we have a simple error error. You are mixing a recipe, which
> >>>> is old and a metadata layer with new concepts.
> >>>> 
> >>>> The u-boot-imx, in 2009.08 recipe, used to set the UBOOT_MACHINE in
> >>>> the recipe as it was left as a fallback in case user needed it and the
> >>>> value was different from newer releases.
> >>>> 
> >>>> In your case, the easier is to make a new yourmachine.conf and use the
> >>>> UBOOT_CONFIG or UBOOT_MACHINE setting there so it will work just fine.
> >>> 
> >>> If I have to do that, then I have to do that.
> >>> 
> >>> However if I could just undefine one of the two variables defined in the
> >>> meta-fsl-arm
> >>> layer then I could continue with what I am doing without having to spend
> >>> the time
> >>> right now to rework the configuration, which is wasted effort for me, as
> >>> I will be moving
> >>> up to the new version of u-boot in the near future.
> >>> 
> >>> Is there no simple way to undefine a variable in a recipe?
> >> 
> >> You can change the recipe byhand. This is ugly and I wouldn't do it. I
> >> do think you are wasting more time trying to 'workaround' it than
> >> fixing it.
> > 
> > Or indeed, would be not be reasonable to modify the uboot-config.bbclass
> > such that
> > it tested for and discarded empty strings in UBOOT_MACHINE / UBOOT_CONFIG
> > which would seem to be a more complete test and would eliminate the
> > problem ?
> 
> Like: http://privatepaste.com/8046479967

"if len(x) > 0", "if len(x)",  and "if x" are all equivalent tests for empty 
strings in Python, so this part of the change does nothing but make the code  
slightly harder to read. This part of the test is not where the problem lies.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

