Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38741E006C2
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 09:27:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jun 2013 09:27:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,808,1363158000"; d="scan'208";a="348597036"
Received: from unknown (HELO helios.localnet) ([10.252.121.228])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2013 09:27:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jon Szymaniak <jon.szymaniak+gpg@gmail.com>
Date: Wed, 05 Jun 2013 17:27:26 +0100
Message-ID: <2988518.NeGldAHcyY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-23-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CANge7vVxHxnAOwxRbFvhYSkuKJ3DqAMHbLRL+LQ_y__PyXL2Fw@mail.gmail.com>
References: <CANge7vVxHxnAOwxRbFvhYSkuKJ3DqAMHbLRL+LQ_y__PyXL2Fw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Correctly setting a package-specific RDEPENDS
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
X-List-Received-Date: Wed, 05 Jun 2013 16:27:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 June 2013 10:53:23 Jon Szymaniak wrote:
> I recently upgraded to the Dylan (9.0.0) release and am looking to
> clean up some QA issues associated with my RDEPENDS variables not
> being package-specific.
> 
> I'm a bit confused by a couple lines in the manual [1]:
> 
> "The names of the variables you list with RDEPENDS must be the names
> of other packages as listed in the PACKAGES variable. You should not
> list recipe names (PN)."

I think the mention of PN here is confusing. It's trying to explain that you 
should use package names and not recipe names, but perhaps the wording needs 
to be improved.

> It makes sense to me that you'd want to set the run-time deps on a
> per-package basis to avoid creating false-dependencies. However, I'm
> unsure as to how can simply not write RDEPENDS_${PN} in some cases.
> Furthermore, I feel like I'm not quite understanding what the
> consequences of using RDEPENDS_${PN} are.
> 
> Here's an example of what I'm trying to do -- perhaps someone will
> catch where I'm getting confused and offer some insight?
> 
> Let's say I have a program_a.bb and a program_b.bb. Both are simple
> recipes that compile and install ${D}/usr/bin/program_a and
> ${D}/usr/bin/program_b.
> 
> Because program_a forks and execs program_b, but otherwise does not
> depend upon it to compile, I thought I should place RDEPENDS_${PN} =
> "program_b " in program_a.bb.  However, this seems to violate the
> aforementioned snippet from the manual.

That is the expected usage; I guess the manual has confused you. All the QA 
warning is saying is you should do this:

RDEPENDS_${PN} = "somepackage"

and _not_ this:

RDEPENDS = "somepackage"

(The reason being, the latter would add a runtime dependency on "somepackage" 
to every package in the recipe's PACKAGES, which is almost never the desired 
result.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

