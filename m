Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17CFCE01444;
	Fri,  1 Jun 2012 14:47:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Jun 2012 14:47:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="147168895"
Received: from unknown (HELO [10.255.12.175]) ([10.255.12.175])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2012 14:47:14 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FC93751.4060606@linux.intel.com>
References: <4FC009CD.9030201@yoctoproject.org>
	<4FC7B80E.1020802@linux.intel.com> <4FC83910.9050302@windriver.com>
	<4FC8FFBC.6060002@linux.intel.com> <1338586414.28421.11.camel@elmorro>
	<4FC93751.4060606@linux.intel.com>
Date: Fri, 01 Jun 2012 16:47:20 -0500
Message-ID: <1338587240.28421.13.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	yocto-infrastructure@yoctoproject.org
Subject: Re: Bugzilla Re-organization
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Jun 2012 21:47:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-06-01 at 14:42 -0700, Darren Hart wrote:
> 
> On 06/01/2012 02:33 PM, Tom Zanussi wrote:
> > On Fri, 2012-06-01 at 10:45 -0700, Darren Hart wrote:
> 
> >> The other Kernel related path would include
> >> Build System & Metadata
> >>   Layers - OpenEmbedded-Core
> >>     kernel
> >>
> >> This would be for the kernel.bbclass and other recipes and classes.
> >>
> > 
> > It would be nice to have that fact reflected in the name somehow, to
> > avoid confusion for users with Yocto Project Components->Kernel, but I'm
> > not coming up with anything wieldy.
> 
> kernel-recipes ?
> 

It doesn't really capture the 'classes' part, but I suppose that would
be implied and close enough.

Tom

> >> So, the final layout would be:
> >>
> >> Yocto Project Components
> >>    BSPs
> >>      bsps-runtime
> >>      bsps-configuration (these top too being "generic" buckets)
> >>      bsps-meta-yocto
> > 
> > On the other hand this naming is clean and consistent with the rest, so
> > is probably better.
> 
> Ah, but you remind me that we probably also need:
> 
>         bsps-oe-core
> 
> > 
> >>      bsps-meta-fsl-ppc
> >>      bsps-meta-intel
> >>      bsps-meta-ti
> >>      bsps-tools
> >>      bsps-xilinx (meta-xilinx?)
> >>
> >>    Kernel
> >>      linux-yocto
> >>      kernel-configuration
> >>      kernel-tooling
> >>
> >> I believe this would make it much easier for us to manage Kernel related
> >> issues across the project.
> >>
> > 
> > I agree. Acked-by-me...
> 
> Great. Michael, the kernel-team is now in agreement.
> 



