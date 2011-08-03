Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C4FB4C8009A
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2011 23:32:14 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Aug 2011 21:32:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,308,1309762800"; d="scan'208";a="34542341"
Received: from unknown (HELO [10.255.14.155]) ([10.255.14.155])
	by azsmga001.ch.intel.com with ESMTP; 02 Aug 2011 21:32:13 -0700
Message-ID: <4E38CF4D.1080909@linux.intel.com>
Date: Tue, 02 Aug 2011 21:32:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <A8053892-60B6-485C-AE89-96157C57A8BE@kernel.crashing.org>
In-Reply-To: <A8053892-60B6-485C-AE89-96157C57A8BE@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: first stage not building in parallel?
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
X-List-Received-Date: Wed, 03 Aug 2011 04:32:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/27/2011 08:03 PM, Kumar Gala wrote:
> Is it normal that the first stage (native) portion does not seem to
> either deal with BB_NUMBER_THREADS or PARALLEL_MAKE?

Hi Kumar,

What do you see as evidence of this? If you're just seeing a less than
expected system load, I think you'll find the initial stages of the
build are just far more serialized due to build dependencies than much
of the rest of the build.

Thanks,


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

