Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C61BE0044D
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 12:13:34 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Apr 2012 12:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="94719999"
Received: from unknown (HELO [10.255.12.127]) ([10.255.12.127])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Apr 2012 12:13:16 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: William Mills <wmills@ti.com>
In-Reply-To: <4F9ECC59.6070708@ti.com>
References: <e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>
	<266faf71ffdb15e1f6777b520fbe4acaeb26457d.1334784305.git.tom.zanussi@intel.com>
	<4F9B334D.9060508@linux.intel.com>  <4F9ECC59.6070708@ti.com>
Date: Mon, 30 Apr 2012 14:13:45 -0500
Message-ID: <1335813225.23549.58.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 2/2] yocto-bsp: clarify help with reference to meta-intel
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
X-List-Received-Date: Mon, 30 Apr 2012 19:13:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-04-30 at 13:31 -0400, William Mills wrote:
> nit of nit
> 
> On 04/27/2012 08:01 PM, Darren Hart wrote:
> > On 04/27/2012 12:00 PM, tom.zanussi@intel.com wrote:
> >> From: Tom Zanussi<tom.zanussi@intel.com>
> >>
> >> + NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
> >> + presence of the of the meta-intel layer, so you should also have a
> >> + meta-intel layer present and added to your bblayers.conf as well.
> > Consider:
> >
> > + NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
> > + presence of the of the meta-intel layer. Ensure the meta-intel layer
> > + is present and added to bblayers.conf.
> >
> 
> Unless I am really mis-reading this I think "presence of the of the" 
> should just be "presence of the"

Doh, you're correct, good catch.  Third version of the most perused help
text in history submitted...

Thanks,

Tom


