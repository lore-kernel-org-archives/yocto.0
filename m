Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75A284C80FAD
	for <yocto@yoctoproject.org>; Wed,  5 Jan 2011 11:23:07 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 09:22:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="693868369"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2011 09:22:51 -0800
Received: from [10.255.14.56] (10.255.14.56) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 5 Jan 2011 10:22:50 -0700
Message-ID: <4D24A8E9.4000901@intel.com>
Date: Wed, 5 Jan 2011 09:22:49 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <cover.1294102657.git.elizabeth.flanagan@intel.com>,
	<201101051156.09408.paul.eggleton@linux.intel.com>
	<DC74E0187B44084E9AD28300B75DFE300557D6F3@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6F3@orsmsx504.amr.corp.intel.com>
Subject: Re: [PATCH 0/1] Autobuilder fixes and added functionality
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
X-List-Received-Date: Wed, 05 Jan 2011 17:23:07 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2011 08:30 AM, Flanagan, Elizabeth wrote:
>> 3) BuildBot 0.8.2 unfortunately suffers from buildbot bug #1697 on
>> my system, making it not very useful (as you can't view any of the
>> build logs through the web interface). It's fixed in 0.8.3. More
>> details:
>>
>> http://trac.buildbot.net/ticket/1697
>
> I hadn't run into this, so thanks for pointing it out. I'm tempted to
> wait for 0.8.3p1 which should have the fix for this, rather than
> trying to pull the fix out to patch 0.8.2

Hi Beth,

Do you want me to merge this patchset into master now, or should I wait 
for a respin based on Buildbot 0.8.3p1 (which should be out by the end 
of the week, I think)?

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

