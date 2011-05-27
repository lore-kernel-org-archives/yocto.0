Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 284034C80889
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 17:37:19 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 May 2011 15:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,283,1304319600"; 
   d="scan'208";a="6041087"
Received: from unknown (HELO [10.255.12.115]) ([10.255.12.115])
	by orsmga001.jf.intel.com with ESMTP; 27 May 2011 15:37:17 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jeremy Puhlman <jpuhlman@gmail.com>
In-Reply-To: <4DE0234A.2070808@gmail.com>
References: <cover.1306420608.git.tom.zanussi@intel.com>
	<f113449eb132df7c8a4c45ad8719ecc3ec84a6b5.1306420608.git.tom.zanussi@intel.com>
	<4DE01DD3.80506@linux.intel.com> <1306533682.23639.18.camel@elmorro>
	<4DE0234A.2070808@gmail.com>
Date: Fri, 27 May 2011 17:36:27 -0500
Message-ID: <1306535787.23639.25.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 1/1] meta-intel: fix BBFILE_COLLECTIONS overrides
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
X-List-Received-Date: Fri, 27 May 2011 22:37:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-27 at 15:18 -0700, Jeremy Puhlman wrote:
> > The crownbay has two BBFILE_COLLECTIONS in the same file, one for
> > crownbay and one for crownbay-noemgd.  The conditional append allows
> > them to be selected based on the machine selected.
> 
> The BBFILE_COLLECTIONS var basically give you a hook so you can find:
> 
> BBFILE_PATTERN_<value set in BBFILE_COLLECTIONS>
> BBFILE_PRIORITY_<value set in BBFILE_COLLECTIONS>
> 
> 
> While it certainly is true you could have different sets, for different
> machines, you set those subsequent values identically. At the moment
> there appears to be no need unless your using the value in some other
> manner else where. FWIW it probably doesn't matter either way, but it
> doesn't appear to be needed by the way you are configuring it.
> 

Yeah, you're right - it probably isn't necessary, though not broken
either.

Another thing to put on my list of cleanups for meta-intel that I never
seem to get to...

Thanks for your comments,

Tom

> Jeremy Puhlman
> Montavista Sofware, LLC.
> 



