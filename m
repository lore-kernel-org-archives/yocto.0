Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C31D6E0044D
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 13:56:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2012 13:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="125391503"
Received: from unknown (HELO [10.255.12.137]) ([10.255.12.137])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2012 13:56:46 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1204041614430.11031@oneiric>
References: <alpine.DEB.2.02.1204041614430.11031@oneiric>
Date: Wed, 04 Apr 2012 15:56:46 -0500
Message-ID: <1333573006.2011.12.camel@elnicho>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: are there more yocto-bsp commands other than "create" and "list"?
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
X-List-Received-Date: Wed, 04 Apr 2012 20:56:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-04 at 16:16 -0400, Robert P. J. Day wrote:
> help for yocto-bsp reads:
> 
>  The most commonly used 'yocto-bsp' commands are:
>     create            Create a new Yocto BSP
>     list              List available values for options and BSP properties
> 
> but from the script:
> 
> subcommands = {
>     "create": [yocto_bsp_create_subcommand,
>                yocto_bsp_create_usage,
>                yocto_bsp_create_help],
>     "list":   [yocto_bsp_list_subcommand,
>                yocto_bsp_list_usage,
>                yocto_bsp_list_help],
> }
> 
>   so it's not so much they're the most common commands, aren't they
> the *only* commands?  or am i misreading something?
> 

At the moment, they are the only commands, and I guess therefore also
the most commonly used.

The interface is modeled after git and perf, which both use the same
text.  I suppose that to avoid being misleading, we should replace 'most
commonly' with 'available', also since I also don't envision adding any
'rare' commands...

Tom

> rday
> 



