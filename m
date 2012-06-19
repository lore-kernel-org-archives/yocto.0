Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7559FE0070B
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 10:52:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Jun 2012 10:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="155574093"
Received: from unknown (HELO helios.localnet) ([10.252.120.169])
	by orsmga001.jf.intel.com with ESMTP; 19 Jun 2012 10:52:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 19 Jun 2012 18:52:21 +0100
Message-ID: <2266259.lx4CelsjGA@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1206190818420.30655@oneiric>
References: <alpine.DEB.2.02.1206190818420.30655@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: is it "IMAGE_INSTALL +=" or "IMAGE_INSTALL_append ="?
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
X-List-Received-Date: Tue, 19 Jun 2012 17:52:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 19 June 2012 08:22:00 Robert P. J. Day wrote:
>   currently, the dev manual (Section 4.2.1) proposes the use of
> 
>   IMAGE_INSTALL += "strace"
> 
> but the poky ref manual in the variable glossary explicitly
> discourages that form, and instead recommends
> 
>   IMAGE_INSTALL_append = " package-name"
> 
>   can we agree that the "_append" form is preferred?  thoughts?

The reference manual is a little unclear on what "ordering issues" means. += 
works just fine, it's just that if you happen to use it at some point before 
core-image.bbclass line sets it with ?= (i.e. either in local.conf or before 
the "inherit core-image" line in your image recipe) the ?= line in core-
image.bbclass will do nothing and you'll end up with much less in the 
IMAGE_INSTALL list than you expected. If you use _append, you can have that 
anywhere you like and it will always work, with the caveat that if you forget 
to add a leading space in the value to be appended, things will break.

Note that the part of 4.2.1 in the dev manual you refer to is specifically 
talking about making a copy of an image recipe and putting the IMAGE_INSTALL 
+= at the end, which will always work and won't suffer from any leading space 
issues. I'm not sure what we should change to improve this...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

