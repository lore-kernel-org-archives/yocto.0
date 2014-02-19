Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88991E007EF
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 10:42:00 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Feb 2014 10:37:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,507,1389772800"; d="scan'208";a="458275230"
Received: from justinda-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.135])
	by orsmga001.jf.intel.com with ESMTP; 19 Feb 2014 10:41:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Federico Vitali <fede.vitali@gmail.com>, yocto@yoctoproject.org
Date: Wed, 19 Feb 2014 18:41:54 +0000
Message-ID: <1740491.kMHWtVylMU@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.3-201.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <CAD78y+7_Dg34_VNuyTooWt_ikEJEKZTrm03Krpk80BVzmXQPAQ@mail.gmail.com>
References: <CAD78y+7qxqkdf1d1p6dFe5Cv9dFLHpgZ3uJfOD6JdmbScfX2+g@mail.gmail.com>
	<53048C4E.9050504@gmail.com>
	<CAD78y+7_Dg34_VNuyTooWt_ikEJEKZTrm03Krpk80BVzmXQPAQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: problem with yocto behind http_proxy
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
X-List-Received-Date: Wed, 19 Feb 2014 18:42:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Federico,

On Wednesday 19 February 2014 12:12:58 Federico Vitali wrote:
> sorry I forgot to reply also to yocto@yoctoproject.org. This was the reply
> 
> thank you Marco,
> I've tried but I'm still having problems:
> 
> WARNING: Failed to fetch URL git://
> git.yoctoproject.org/yocto-kernel-tools.git, attempting MIRRORS if available
> WARNING: Failed to fetch URL git://
> git.yoctoproject.org/linux-yocto-3.10.git;bareclone=1;branch=standard/base,m
> eta;name=machine,meta, attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> fatal: unable to connect to git.yoctoproject.org:
> git.yoctoproject.org: Name or service not known
> 
> I noticed that the url https://www.yoctoproject.org/sources is not working.

I think there are several issues occurring here, but FWIW I did ask Michael 
Halstead (who manages our infrastructure) to fix the website so that this 
documented URL above at least works, and he has now done that.

(It looks like you may have a solution to the overall problem now though, 
which is good.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

