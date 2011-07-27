Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D6E94C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 09:06:54 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Jul 2011 07:06:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,276,1309762800"; d="scan'208";a="30705699"
Received: from unknown (HELO [10.255.14.104]) ([10.255.14.104])
	by orsmga002.jf.intel.com with ESMTP; 27 Jul 2011 07:06:53 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <05457C84-88D1-4D72-99B2-A750AFD52895@kernel.crashing.org>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
	<1311756356.2344.332.camel@rex>
	<66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
	<1311774620.3739.49.camel@elmorro>
	<05457C84-88D1-4D72-99B2-A750AFD52895@kernel.crashing.org>
Date: Wed, 27 Jul 2011 09:06:41 -0500
Message-ID: <1311775601.3739.57.camel@elmorro>
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
X-List-Received-Date: Wed, 27 Jul 2011 14:06:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-07-27 at 06:53 -0700, Kumar Gala wrote:
> On Jul 27, 2011, at 8:50 AM, Tom Zanussi wrote:
> 
> > Hi Kumar,
> > 
> > For meta-intel, it's pretty simple and is summarized by this blurb from
> > the meta-intel MAINTAINERS file: 
> > 
> > "Please submit any patches against meta-intel BSPs to the Yocto mailing
> > list (yocto@yoctoproject.org)."
> > 
> > Basically, new patches get submitted to the mailing list, go through the
> > standard on-list comment and review process, and then get pulled into
> > master by whoever maintains the BSP when everything looks good.
> > 
> > Hope that helps,
> > 
> > Tom
> 
> Ok, same model would work for meta-fsl-ppc.  The one question I have is if it make sense to migrate such patches over to 'yocto-bsp@yoctoproject.org' list.
> 

Hmm, I completely forgot about that list, and apparently everybody else
has too (no messages in it).  It's also not linked to from anywhere on
the Yocto site that I can see e.g. Community | Mailing Lists.

Personally I'd prefer less fragmentation of lists, and think it would
get better review and exposure on the yocto list, but if it makes more
sense to people to start using the yocto-bsp list, fine with me...

Tom

> - k



