Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 33C2D4C80039
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 14:44:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Dec 2010 12:44:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="582236764"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 09 Dec 2010 12:44:14 -0800
Received: from [10.255.13.43] (10.255.13.43) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 9 Dec 2010 13:44:14 -0700
Message-ID: <4D013F9C.2010404@intel.com>
Date: Thu, 9 Dec 2010 12:44:12 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: "Ke, Liping" <liping.ke@intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659733104D391@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Purdie,
	Richard" <richard.purdie@intel.com>
Subject: Re: Add extra parameters for qemu script
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
X-List-Received-Date: Thu, 09 Dec 2010 20:44:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2010 12:44 AM, Ke, Liping wrote:
> Hi, Scott
>
> The patch is in the attachment for your review. Below is some notes:
>
> 1) Basically I wouldn't like to change any logic of the original code.
> 2) -serial stdio and -nographic options are removed since they're be covered by the extra parameters.
> 3) User input would be $poky-qemu qemux86 "<-nographic -m 300>"
> 4) -m input will be checked still. If it exceeds 128 for arm, it will be changed back to
>     128M, same logic as before. And after parsing, -m option will be removed and replaced by
>      Kernel options mem=128M for avoiding some instability issue.
>
> Generally I modified very few, just add an extra parameters with least intrusion of
> Current logic.
>
> Any comments are welcomed.
> I will conduct more test with latest code in parallel.

Hi Criping,

Thanks for the patch. Overall I think this looks good.

However, one thing I feel the need to run by Richard, as he expressed 
some preferences with how the poky-qemu script would work with regard to 
options.

Richard: Criping's patch would remove the standalone options we had to 
the poky-qemu script (e.g, nographic, serial) and instead requires the 
user to specify them in one command option which can take any qemu 
command switch.

So for example:

poky-qemu qemux86 nographic

would become:

poky-qemu qemux86 "<-nographic>"

The benefit of this is that this allows the user to specify any qemu 
option they wish. Previously they were limited by the options we allowed 
them to specify (which were quite limited).

I tend to feel that this approach is more flexible, and scales better 
than having to support each and every qemu option with our own script 
syntax. Is this acceptable, or should we continue to support our own 
custom options in addition to Criping's new approach?

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

