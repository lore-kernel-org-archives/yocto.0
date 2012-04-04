Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 794ADE0132F
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 00:59:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Apr 2012 00:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="125147256"
Received: from unknown (HELO helios.localnet) ([10.252.120.20])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2012 00:59:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bob Cochran <yocto@mindchasers.com>
Date: Wed, 04 Apr 2012 08:59:45 +0100
Message-ID: <1429780.v52SXIBKRC@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <4F7BC4C0.10601@mindchasers.com>
References: <4F7BC4C0.10601@mindchasers.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: beta bug? MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS doesn't seem to work right...
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
X-List-Received-Date: Wed, 04 Apr 2012 07:59:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 April 2012 23:49:20 Bob Cochran wrote:
> I set MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "bogus" in my local.conf.
> 
> This var is used in core-image-minimal; it's assigned to
> RRECOMMENDS_task-core-boot inside task-core-boot.bb.
> 
> Per the yocto glossary: "... the image will build if a file in this list
> is not found. "
> 
> But it doesn't build:
> 
> **********************
> 
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'bogus' (but
> /opt/beta/yp-beta/meta/recipes-core/tasks/task-core-boot.bb RDEPENDS on
> or otherwise requires it)
> NOTE: Runtime target 'bogus' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['bogus']
> NOTE: Runtime target 'task-core-boot' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['task-core-boot', 'bogus']
> ERROR: Required build target 'core-image-minimal' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal',
> 'task-core-boot', 'bogus']
> 
> ************************
> 
> 
> Seems like a bug?

No, this is not how the RRECOMMENDS mechanism works. There must be at least a 
possibility that the item in there exists (i.e., there must be a recipe that 
has it in its RPROVIDES, PACKAGES or an expression that would match it in 
PACKAGES_DYNAMIC). However, if a package corresponding to that item doesn't 
actually get produced, that is the situation that is ignored.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

