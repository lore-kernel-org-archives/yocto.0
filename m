Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A4DBE01443;
	Fri,  1 Jun 2012 14:33:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jun 2012 14:33:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173816530"
Received: from unknown (HELO [10.255.12.175]) ([10.255.12.175])
	by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2012 14:33:27 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FC8FFBC.6060002@linux.intel.com>
References: <4FC009CD.9030201@yoctoproject.org>
	<4FC7B80E.1020802@linux.intel.com> <4FC83910.9050302@windriver.com>
	<4FC8FFBC.6060002@linux.intel.com>
Date: Fri, 01 Jun 2012 16:33:34 -0500
Message-ID: <1338586414.28421.11.camel@elmorro>
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
X-List-Received-Date: Fri, 01 Jun 2012 21:33:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-06-01 at 10:45 -0700, Darren Hart wrote:
> 
> On 05/31/2012 08:37 PM, Bruce Ashfield wrote:
> > On 12-05-31 2:27 PM, Darren Hart wrote:
> >>
> >>
> >> On 05/25/2012 03:38 PM, Michael Halstead wrote:
> >>> The first draft of the reorganized bugzilla is available for feedback
> >>> now at https://bugzilla.yoctodev.org/. Outgoing e-mail is currently
> >>> disabled on this preview copy. Please feel free to take a look and see
> >>> if you spot any errors. Additional refinement of  product or component
> >>> descriptions will be helpful as well.
> >>>
> >>
> >> It seems to me one should be able to find the linux-yocto kernel itself
> >> under the Yocto Project Components from the basic search page. Currently
> >> there is Kernel Tooling and BSPs, but there are times when the bug is
> >> not BSP specific and is in the kernel itself, not the tooling. For this,
> >> a hierarchy like the following might be preferable:
> >>
> >> Yocto Project Components
> >>    BSPs
> >>      bsps
> >>    Kernel
> >>      linux-yocto
> >>      configuration
> >>      kernel-tooling
> > 
> > +1. I completely agree with this.
> > 
> >>
> >> I am still not sure how best to deal with BSPs here and BSPs in Build
> >> System&  Metadata. I think We should pick one or the other as the
> >> distinction between the two is non-obvious (actually I have no idea what
> >> it would be).
> > 
> > Agreed .. that this is hard. If we used 'configuration' for the kernel
> > category, could the build system + meta data fall into that as well
> > under BSPs ?
> > 
> > i.e.
> > 
> >     BSPs
> >       bsps - runtime
> >       bsps - configuration
> 
> I think so. I like this better.
> 
> Tom, any objections?
> 

No objections, this all looks fine to me.

> Yocto Project Components
>    BSPs
>      bsps-runtime
>      bsps-configuration
>    Kernel
>      linux-yocto
>      kernel-configuration
>      kernel-tooling
> 
> The other Kernel related path would include
> Build System & Metadata
>   Layers - OpenEmbedded-Core
>     kernel
> 
> This would be for the kernel.bbclass and other recipes and classes.
> 

It would be nice to have that fact reflected in the name somehow, to
avoid confusion for users with Yocto Project Components->Kernel, but I'm
not coming up with anything wieldy.

> I think we should just kill:
> Build System & Metadata
>   Layers - BSPs
> 
> and move all the BSP components under Yocto Project Components->BSPs
> 

I agree, it would just add confusion to keep this.

> Finally there is:
> 
> Build System & Metadata
>   Layers - meta-yocto
>     machines
> 
> Which should just go away and be replaced witha BSPs->meta-yocto
> component, if anything.
> 

Better known as 'core BSPs', which might be more clear to some...

> So, the final layout would be:
> 
> Yocto Project Components
>    BSPs
>      bsps-runtime
>      bsps-configuration (these top too being "generic" buckets)
>      bsps-meta-yocto

On the other hand this naming is clean and consistent with the rest, so
is probably better.

>      bsps-meta-fsl-ppc
>      bsps-meta-intel
>      bsps-meta-ti
>      bsps-tools
>      bsps-xilinx (meta-xilinx?)
> 
>    Kernel
>      linux-yocto
>      kernel-configuration
>      kernel-tooling
> 
> I believe this would make it much easier for us to manage Kernel related
> issues across the project.
> 

I agree. Acked-by-me...

Tom

> --
> Darren
> 
> 
> > 
> > ?
> > 
> > Bruce
> > 
> >>
> >> Tom, Bruce: opinions on the above?
> >>
> >>
> >> "Build System&  Metadata" and "Yocto Metadata Layers" use different
> >> naming schemes for the components in the various layers products. Some
> >> use meta- others do not.
> >>
> >>
> > 
> 



