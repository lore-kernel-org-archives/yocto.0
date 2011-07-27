Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E76404C800A1
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 08:50:38 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 27 Jul 2011 06:50:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,276,1309762800"; d="scan'208";a="32063903"
Received: from unknown (HELO [10.255.14.104]) ([10.255.14.104])
	by azsmga001.ch.intel.com with ESMTP; 27 Jul 2011 06:50:32 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
	<1311756356.2344.332.camel@rex>
	<66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
Date: Wed, 27 Jul 2011 08:50:20 -0500
Message-ID: <1311774620.3739.49.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
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
X-List-Received-Date: Wed, 27 Jul 2011 13:50:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 05:40 -0700, Kumar Gala wrote:
> On Jul 27, 2011, at 3:45 AM, Richard Purdie wrote:
> 
> > On Wed, 2011-07-27 at 00:21 -0500, Kumar Gala wrote:
> >> Who is the best person to ask about adding new BSPs into yocto.  What
> >> I mean by this is having a meta layer hosted on git.yoctoproject.org
> >> like meta-intel and the mechanics associated with this (getting new
> >> repo on git server, autobuilder support, webpage details, etc.).
> > 
> > This list is as good a place as any! :)
> > 
> > Its relatively easy to arrange for a git repository. The main things we
> > ask are that it has clearly defined maintainership (a clear maintainer
> > and submission process) and a clear scope. Do you have any specific BSPs
> > in mind?
> 
> Maintainership would be straight forward.  Not sure about submissions process, what is done for meta-intel today?
> 

Hi Kumar,

For meta-intel, it's pretty simple and is summarized by this blurb from
the meta-intel MAINTAINERS file: 

"Please submit any patches against meta-intel BSPs to the Yocto mailing
list (yocto@yoctoproject.org)."

Basically, new patches get submitted to the mailing list, go through the
standard on-list comment and review process, and then get pulled into
master by whoever maintains the BSP when everything looks good.

Hope that helps,

Tom

> BSP would be for Freescale PowerPC SoC and the reference designs produced by FSL for them.
> 
> > The wiki is available to host information and we can work out links on
> > the website as the specific needs come up. Autobuilder support is
> > something we need to figure out since its a finite resource but we can
> > likely figure something out there once we understand what kind of BSPs
> > we're talking about.
> > 
> > Beth Flanagan <elizabeth.flanagan@intel.com> is the person who'd handle
> > the mechanics of setting up the repository, the name is likely the
> > hardest bit!
> 
> meta-fsl-ppc ;)
> 
> - k
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



