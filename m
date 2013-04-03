Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 714DCE01517
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 23:56:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Apr 2013 23:56:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,399,1363158000"; d="scan'208";a="312828765"
Received: from unknown (HELO helios.localnet) ([10.255.13.234])
	by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2013 23:56:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Wed, 03 Apr 2013 07:56:22 +0100
Message-ID: <5573599.m179gzsbCm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.1 (Linux/3.5.0-26-generic; KDE/4.10.1; i686; ; )
In-Reply-To: <60D429A1-E760-4284-90E9-151A76521FBC@gmail.com>
References: <1364965911-17324-1-git-send-email-raj.khem@gmail.com>
	<1991749.pLqSkOTN3J@helios>
	<60D429A1-E760-4284-90E9-151A76521FBC@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-yocto][PATCH] poky.conf: Use weaker assignment for PREMIRROR
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
X-List-Received-Date: Wed, 03 Apr 2013 06:56:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 02 April 2013 23:44:06 Khem Raj wrote:
> On Apr 2, 2013, at 11:41 PM, Paul Eggleton <paul.eggleton@linux.intel.com> 
wrote:
> > I'm not sure this is a path we should be going down; potentially we could
> > end up having to use ??= for just about everything.
> 
> whats is downside of using ??= instead of ?=

The volume of changes to the config that this will require, a minor memory 
usage increase (I suspect), but more importantly it increases the complexity 
for the end user. Right now ??= is used sparingly.

> > Wouldn't you be better off using your own separate distro config (perhaps
> > copying poky.conf instead of "require"ing it) and then the user can just
> > set it with "=" ?
> 
> yes. however you are then always on lookout for changes happening in poky
> policies then you need to mimic in your distro config

Wouldn't it be the reverse at the moment? We do add new things to the poky 
distro config when we need to test them and those new things might not be 
desirable in your configuration.

Distro configs should remain fairly static once initially set. FWIW, we do call 
out any needed changes between releases in the migration information within 
the documentation.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

