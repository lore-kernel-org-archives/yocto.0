Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF64EE00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 04:02:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Apr 2014 03:57:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,825,1389772800"; d="scan'208";a="489889815"
Received: from sleopold-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.72])
	by orsmga001.jf.intel.com with ESMTP; 09 Apr 2014 04:01:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Vali Cobelea <valentin.cobelea@enea.com>
Date: Wed, 09 Apr 2014 12:01:24 +0100
Message-ID: <33266524.grSQoK8z6t@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.8-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <53452733.2070806@enea.com>
References: <534416F0.10109@enea.com>
	<9507315.eLP4En45Q5@peggleto-mobl5.ger.corp.intel.com>
	<53452733.2070806@enea.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Wed, 09 Apr 2014 11:02:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 09 April 2014 13:55:47 Vali Cobelea wrote:
> On 04/09/2014 01:51 PM, Paul Eggleton wrote:
> > On Tuesday 08 April 2014 18:34:08 Vali Cobelea wrote:
> >> Here at ENEA we decided to take the initiative regarding the CGL
> >> compliance when it comes to the Yocto Project.
> >> For this we started the work on a dedicated layer called 'meta-cgl'
> >> 
> >> which can be accessed / cloned from here:
> >>    http://git.enea.com/git/?p=linux/meta-cgl.git
> >>    git clone git@git.enea.com:linux/meta-cgl
> >> 
> >> Have a look of the things we got there so far, please remember that
> >> there is still plenty of work to be done (layer architecture, CGL
> >> requirements coverage mode and so on).
> >> It is a little bit more than a stub layer, consider it a starting point
> >> for the direction we would like to have with this layer.
> >> 
> >> Any input is much appreciated, lets keep the discussion by this email
> >> thread and see where it goes.
> > 
> > I don't have anything to offer on the layer contents, but I would say in
> > order to make it easy for people to find this layer I would strongly
> > encourage you to> 
> > submit it to the OpenEmbedded layer index:
> >    http://layers.openembedded.org/layerindex/submit/
>
> Thank you for the input.
> We will keep the layer for a short period of time at the current
> location while getting other ideas regarding the content / architecture.
> The layer initiative will also be raised up in the board advisory
> meeting, in order to get even more input.
> After which we will make it easier to find, access and use for anyone,
> exactly as you suggested.

OK, as the maintainer it's totally up to you.

I would say though generally that I'd like to see more people adding their 
work-in-progress layers to the layer index, even if at some time later they 
will be moved elsewhere or absorbed into another layer - it just makes it 
easier to point people to the layer index so they can find recipes that have 
already been written, rather than having to re-write them from scratch.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

