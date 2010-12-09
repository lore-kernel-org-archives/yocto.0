Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3493C4C8123C
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 19:31:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 17:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,318,1288594800"; d="scan'208";a="581953113"
Received: from unknown (HELO [10.255.13.45]) ([10.255.13.45])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 17:31:06 -0800
Message-ID: <4D003159.2000604@linux.intel.com>
Date: Wed, 08 Dec 2010 17:31:05 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1291786378.git.bruce.ashfield@windriver.com>
	<64f083b7e51bae434b4ae449edc81795e89f9f1c.1291786378.git.bruce.ashfield@windriver.com>
	<4CFFE88D.4000105@windriver.com>
In-Reply-To: <4CFFE88D.4000105@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] yocto-kernel: factor common routes, update to 2.6.37 and branch renaming
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
X-List-Received-Date: Thu, 09 Dec 2010 01:31:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2010 12:20 PM, Bruce Ashfield wrote:
> On 10-12-08 09:35 AM, Bruce Ashfield wrote:
>> In order to extend and create more kernel recipes based on the
>> supported yocto kernel common routines need to be placed in
>> re-usable blocks.
>
> There may be a minor problem with this, stay tuned.
>
> I just had a strange failure when I built the 2.6.37
> kernel .. it blew up in the SRCREVs for the -stable
> kernel. Looking into it.

I was just about to report this :-). I also see these sorts of issues 
when working with other kernel recipes, and I haven't gotten to the 
bottom of it yet. I see this with the linux-linaro for instance (the 
error occurs while parsing the linux-yocto_git.bb - it was 
linux-wrs_git.bb at the time).

Please let us know if what you find if you get the bottom of it first.

-- 
Darren Hart
Yocto Linux Kernel

