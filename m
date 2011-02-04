Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8EC034C800B7
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 17:54:02 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Feb 2011 15:54:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,428,1291622400"; d="scan'208";a="384416572"
Received: from unknown (HELO [10.255.14.171]) ([10.255.14.171])
	by azsmga001.ch.intel.com with ESMTP; 04 Feb 2011 15:54:01 -0800
Message-ID: <4D4C919B.4000100@linux.intel.com>
Date: Fri, 04 Feb 2011 15:54:03 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D4B37F9.7080708@mlbassoc.com> <4D4BA607.3060006@linux.intel.com>
	<4D4C7BFC.60400@linux.intel.com> <4D4C7DE6.3010409@mlbassoc.com>
In-Reply-To: <4D4C7DE6.3010409@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-linaro woes continue
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
X-List-Received-Date: Fri, 04 Feb 2011 23:54:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2011 02:29 PM, Gary Thomas wrote:
> On 02/04/2011 03:21 PM, Darren Hart wrote:

>> I picked up your do_src_move change as it resolves the issue - but I
>> can't say that I really understand the problem being solved - can you
>> elaborate on why you took this approach?
>> I'll credit you properly in the commit in the final set of branches.
>
> I made this change because do_unpack_append() was being treated
> as a Python function, so the syntax was wrong. By using that
> function to run a shell function, the problem is solved. I patterned
> this after similar functions, e.g. in the eglibc recipe. It took me
> a while to find and understand this, but then it became obvious.

Ewww, that's pretty obfuscated. Did you determine why one function is 
treated as python and the other as bash?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

