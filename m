Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9893E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 09:50:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Oct 2011 09:50:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,335,1315206000"; d="scan'208";a="61552970"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by azsmga001.ch.intel.com with ESMTP; 12 Oct 2011 09:49:49 -0700
Message-ID: <4E95C52C.3040201@linux.intel.com>
Date: Wed, 12 Oct 2011 09:49:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4E933C41.4000207@linux.intel.com> <4E94DCD5.2060200@balister.org>
	<4E95B544.2020907@linux.intel.com>
	<201110121652.05343.paul.eggleton@linux.intel.com>
In-Reply-To: <201110121652.05343.paul.eggleton@linux.intel.com>
X-Enigmail-Version: 1.3.2
Cc: yocto@yoctoproject.org
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 16:50:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 10/12/2011 08:52 AM, Paul Eggleton wrote:
> On Wednesday 12 October 2011 16:41:56 Darren Hart wrote:
>> Hrm... the micro distro? What's this?
> 
> http://cgit.openembedded.org/meta-micro/
> 
> It's maintained by Phil Blundell. I believe he's been pretty successful in 
> reducing size of the resulting image whilst keeping the system fairly 
> functional. He is using uclibc however.

I wish I had run across this a few months ago. meta-micro in fact has
both an eglibc and a uclibc distro definition. I haven't tried a build,
but it does seem to be attempting the same basic thing as meta-tiny -
only in a more generally usable way.

This is fine as the end result of meta-tiny is likely to be some
improved configuration mechanisms for things like busybox, libc, and the
kernel, which should prove useful to meta-micro as well.

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

