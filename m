Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93BA94C81003
	for <yocto@yoctoproject.org>; Thu,  4 Nov 2010 17:32:24 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 04 Nov 2010 15:32:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,298,1286175600"; d="scan'208";a="344837409"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 04 Nov 2010 15:32:22 -0700
Received: from [10.24.145.77] (10.24.145.77) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 4 Nov 2010 16:32:21 -0600
Message-ID: <4CD33476.40106@intel.com>
Date: Thu, 4 Nov 2010 15:32:22 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4CCE8A82.7070000@intel.com> <1288609394.22875.133.camel@rex>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25BC34F068@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC34F068@orsmsx501.amr.corp.intel.com>
Subject: Re: nightly-release takes more than 24 hours to build.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Nov 2010 22:32:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/01/2010 06:35 AM, Stewart, David C wrote:
> I can buy another server and contribute it to the build effort. I had
> intended to buy one this quarter to begin hosting yoctoproject.org
> and a source mirror, but we could offload part of the builds to it as
> well.

Great, thanks Dave! :)

I have spec'ed out and initiated an order for our newest server. In case 
anyone likes to geek out on hardware specs, here they are:

Dell PowerEdge R710
2x Xeon X5680 @ 3.33Ghz
24 GB RAM
6x 1.5 TB hard drives for use in a RAID5 array

While it's not a 4-processor system, the additional resources should be 
sufficient for us to tackle our resource problems my distributing the 
workload more evenly.

The system will likely arrive and be set up around the end of the month.

Scott




