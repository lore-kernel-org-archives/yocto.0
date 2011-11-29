Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 045ABE006B0
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 08:37:33 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Nov 2011 08:37:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,591,1315206000"; d="scan'208";a="80266736"
Received: from unknown (HELO envy.home) ([10.255.15.150])
	by azsmga001.ch.intel.com with ESMTP; 29 Nov 2011 08:37:33 -0800
Message-ID: <4ED50A51.30106@intel.com>
Date: Tue, 29 Nov 2011 08:37:37 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	"Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <4ECFAE1F.7030207@linux.intel.com>
In-Reply-To: <4ECFAE1F.7030207@linux.intel.com>
Subject: Re: libgdbus do_unpack failing in master
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
X-List-Received-Date: Tue, 29 Nov 2011 16:37:34 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/25/2011 07:02 AM, Darren Hart wrote:
> libgdbus is hitting an unpack failure. Fetch completes, but do_unpack
> fails complaining that we appear to have checked out an empty repository.
> 
> I get the same when I clone manually from the SRC_URI (a kernel.org repo
> that appears to not have been fully restored):
> 
> $ git clone git://git.kernel.org/pub/scm/bluetooth/libgdbus.git
> Cloning into libgdbus...
> warning: You appear to have cloned an empty repository.
> 
> I was able to find a functional fetch in an older download to get going
> again.
> 
> Can we somehow mark this as needing to fetch from the mirror for the
> time being?
> 
> Beth, are we performing a do_unpack on every fetch without using mirrors
> on the autobuilder? If not, could we add a single world build which
> doesn't share the downloads dir with the other builds? As dependent as
> we are on the upstream URLs, it would be good to catch this sort of
> thing earlier.

Bump,

Any thoughts here Beth?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

