Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F32B5E013A8
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2012 10:40:09 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Mar 2012 10:40:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="145156047"
Received: from unknown (HELO [10.255.12.49]) ([10.255.12.49])
	by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2012 10:40:08 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1203251319170.24022@oneiric>
References: <alpine.DEB.2.02.1203251319170.24022@oneiric>
Date: Sun, 25 Mar 2012 12:40:24 -0500
Message-ID: <1332697224.23802.50.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: does a meta-intel (sub)layer require adding the meta-intel layer to bblayers.conf?
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
X-List-Received-Date: Sun, 25 Mar 2012 17:40:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-03-25 at 13:23 -0400, Robert P. J. Day wrote:
> again, a discrepancy between the docs and the source files.  i
> checked out the entire meta-intel layer, and below that the file
> meta-crownbay/README clearly states:
> 
> "Having done that, and assuming you extracted the BSP tarball contents
> at the top-level of your yocto build tree, you can build a crownbay
> image by adding the location of the meta-crownbay layer to
> bblayers.conf, along with the meta-intel layer itself (to access
> common metadata shared between BSPs) e.g.:
> 
>   yocto/meta-intel \
>   yocto/meta-intel/meta-crownbay \"
> 
>   however, the ref manual, Section 4.1, "BSP Layers", suggests only:
> 
>      BBLAYERS = " \
>         /usr/local/src/yocto/meta \
>         /usr/local/src/yocto/meta-yocto \
>         /usr/local/src/yocto/meta-<bsp_name> \
>         "
> 
> note no mention of including "meta-intel" layer.  clarification?
> 

Yes, I think that's as it should be - the general-purpose documentation
shouldn't mention specific layers.  meta-intel has its own layering
requirements as mentioned in the READMEs for those BSPs.  Also I think
the text mentions it's an example, but I guess I'm a bit confused since
I'm finding that in section 5.1. Example Filesystem Layout here:

http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html

Am I looking at the wrong thing?

In either case, possibly a note that this is just an example and that a
given layer may have its own requirements?

Tom

> rday
> 



