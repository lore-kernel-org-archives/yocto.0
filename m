Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F5FDE00596
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 04:24:23 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2012 04:24:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="116929729"
Received: from unknown (HELO helios.localnet) ([10.252.123.96])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2012 04:23:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 02 Mar 2012 12:23:21 +0000
Message-ID: <2719498.jaIID8MHL8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1203020713480.12193@oneiric>
References: <alpine.DEB.2.02.1203020530280.8202@oneiric>
	<1620680.bZkznn7mE0@helios>
	<alpine.DEB.2.02.1203020713480.12193@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: simplest recipe for running yocto qemu images?
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
X-List-Received-Date: Fri, 02 Mar 2012 12:24:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 02 March 2012 07:16:08 Robert P. J. Day wrote:
>   i gathered that.  but is it unreasonable to suggest that this is
> something that *should* be easy to do?  if new users simply want to
> see what a yocto-generated image looks like under qemu, shouldn't
> there be a way to let them do that without going through an entire
> build?

I see what you're saying, but the problem with this is the qemu version we 
build is not the same as qemu that might be installed on the host machine. We 
apply quite a number of patches to qemu in order to support features we need 
(such as GL); if you allow beginners to easily use something else then it just 
makes support harder because certain things that normally work in the current 
setup will not work when the host tools are being used instead.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

