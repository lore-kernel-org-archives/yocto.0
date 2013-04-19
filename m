Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86D61E01410
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 15:07:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Apr 2013 15:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,512,1363158000"; d="scan'208";a="321936555"
Received: from unknown (HELO [10.255.13.221]) ([10.255.13.221])
	by fmsmga001.fm.intel.com with ESMTP; 19 Apr 2013 15:07:51 -0700
Message-ID: <1366409274.27207.69.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 19 Apr 2013 17:07:54 -0500
In-Reply-To: <alpine.DEB.2.02.1304190827410.4247@oneiric>
References: <alpine.DEB.2.02.1304190827410.4247@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: clarification about BSP layer names and bblayers.conf file?
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
X-List-Received-Date: Fri, 19 Apr 2013 22:07:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-04-19 at 08:37 -0400, Robert P. J. Day wrote:
> from section 1.1 of BSP developers guide:
> 
> http://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html#bsp-layers
> 
> first, it's not actually *required* that a layer name start with the
> prefix "meta-", is it?  pretty sure it's not and, if it isn't, that
> should be made abundantly clear. it's fine to point out that it's a
> well-established convention but it should still be mentioned
> explicitly that it's not necessary.
> 

Right, the naming isn't required and it would make sense to make that
clear, I agree.

>   second, the BBLAYERS example there seems overly complicated and
> potentially confusing to beginners. the fact that meta-yocto is listed
> as NON_REMOVABLE might make readers wonder how they're supposed to
> know that. why not go with something a lot more people will see, like,
> say:
> 
>      BBLAYERS = ?" \                  <-- and that looks like a typo
>        /usr/local/src/yocto/meta \
>        /usr/local/src/yocto/meta-ti \
>        "
> 
>      BBLAYERS_NON_REMOVABLE ?= " \
>        /usr/local/src/yocto/meta \
>        "
> 

I agree - the whole NON_REMOVABLE thing doesn't add anything and should
be removed - the example is just trying to show how to add a BSP layer -
the rest just adds potential confusion.  And, yeah, it's a typo..

>   finally, the passing reference to layers that contain sub-BSP-layers
> is good, but show an example, such as the fact that the meta-crownbay
> layer.conf file has a dependency on meta-intel:
> 
> ...
> LAYERDEPENDS_crownbay = "intel"
> 
>   never pass up the opportunity to reinforce an idea with a few lines
> of actual code. :-)
> 

Agreed, but on the other hand we don't really want to be too
intel-specific (I know, we have crownbay everywhere else, but anyway..)

Tom

>   more shortly ...
> 
> rday
> 



