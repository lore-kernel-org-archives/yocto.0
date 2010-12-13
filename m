Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B70494C811F0
	for <yocto@yoctoproject.org>; Mon, 13 Dec 2010 10:47:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2010 08:47:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,336,1288594800"; d="scan'208";a="360961514"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 13 Dec 2010 08:47:35 -0800
Received: from [10.255.14.24] (10.255.14.24) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Mon, 13 Dec 2010 09:47:35 -0700
Message-ID: <4D064E22.8060003@intel.com>
Date: Mon, 13 Dec 2010 08:47:30 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <33AB447FBD802F4E932063B962385B35318F541B@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <33AB447FBD802F4E932063B962385B35318F541B@shsmsx501.ccr.corp.intel.com>
Subject: Re: Bug Verify
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
X-List-Received-Date: Mon, 13 Dec 2010 16:47:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/13/2010 01:20 AM, Yu, Ke wrote:
> Hi,
>
> I hate to raise this question, but there is still bunch of bugs that
> is fixed but not verified. According to the process, it is reporter's
> responsibility to verify the bug, so could I ask the reporter's help
> on this? Process is sometime tedious but helpful to quality
> assurance. Thanks a lot for your effort.

I have now verified all my bugs.

However, the process doesn't seem right to me. As the person who fixed 
the bug, presumably I performed verification that my fix actually works, 
which is why I marked the bug as fixed to begin with.

At every other company I've been with, bug verification is performed by 
the QA team - and I think the purpose of it is to ensure someone other 
than the developer who fixed the bug can independently verify the bug is 
indeed resolved. A second pair of eyes can spot new problems more easily.

JMO,

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

