Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C051CE0120B
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 09:06:33 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Oct 2011 09:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,524,1312182000"; d="scan'208";a="72410908"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by fmsmga001.fm.intel.com with ESMTP; 11 Oct 2011 09:06:24 -0700
Message-ID: <4E946980.3000001@linux.intel.com>
Date: Tue, 11 Oct 2011 09:06:24 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4E933C41.4000207@linux.intel.com>
	<CAEsOVNc8=_PSwh29Dw8TMDHd5biqpaXQo6Ce_n4kkJ4KdAAsQg@mail.gmail.com>
In-Reply-To: <CAEsOVNc8=_PSwh29Dw8TMDHd5biqpaXQo6Ce_n4kkJ4KdAAsQg@mail.gmail.com>
X-Enigmail-Version: 1.3.2
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 11 Oct 2011 16:06:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 10/11/2011 08:53 AM, McClintock Matthew-B29882 wrote:
> On Mon, Oct 10, 2011 at 1:41 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> I would want this to affect linux-yocto-tiny by dropping the vt.cfg and
>> inet.cfg fragments from the SRC_URI (or from the .scc descriptor files
>> assembled by the linux-yocto meta indrastructure).
>>
>> Busybox would need a similar configuration mechanism, and would also
>> need to add a "no-vt-support.patch" patch to the SRC_URI to avoid a
>> bug/oversight in the busybox init routine.
> 
> Just chiming in on this point - I think busybox will need something
> very similar to config fragments. It has a lot of functionality that
> should be configurable.

Agreed, and it can probably use a very similar mechanism to what I've
been working to get into the upstream Linux kernel.

I've been looking at the uclibc recipe configuration functions. It looks
like it tries to solve a similar problem using feature lists and
programatically modifying the .config. More research needed there...

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

