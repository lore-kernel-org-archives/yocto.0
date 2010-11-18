Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFF984C80FA7
	for <yocto@yoctoproject.org>; Thu, 18 Nov 2010 10:54:13 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2010 08:54:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="575160601"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 18 Nov 2010 08:54:13 -0800
Received: from [10.255.13.107] (10.255.13.107) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 18 Nov 2010 09:54:12 -0700
Message-ID: <4CE55A33.1050407@intel.com>
Date: Thu, 18 Nov 2010 08:54:11 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <33AB447FBD802F4E932063B962385B3530383DDA@shsmsx501.ccr.corp.intel.com>	<4CE4B536.7020802@linux.intel.com>	<4CE4B9DC.9050003@intel.com>
	<4CE4BB39.1060709@linux.intel.com>
In-Reply-To: <4CE4BB39.1060709@linux.intel.com>
Subject: Re: BKM on add SRC_URI MD5 and SHA256 checksum
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
X-List-Received-Date: Thu, 18 Nov 2010 16:54:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 09:35 PM, Saul Wold wrote:
>> The reason you see many OE files with the checksums at the end of the
>> file is that at one point a member of the OE community wrote a script to
>> append the values to a ton of recipes and then checked it in.
>>
> Can we borrow that script?  That's what I would be doing also!
>
> If you know where it is, it would save some of the work I need to do.

I believe Martin Jansa wrote it, based on his OE commits around this 
time frame:

http://git.openembedded.org/cgit.cgi/openembedded/commit/?id=01daac1be0f89f00495f920359edc4b39c7a100f

I'd recommend emailing him directly and asking if he still has it.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

