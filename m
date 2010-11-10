Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C5B5A4C81001
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 12:32:53 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Nov 2010 10:32:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,179,1288594800"; d="scan'208";a="625482383"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2010 10:32:53 -0800
Received: from [10.255.13.64] (10.255.13.64) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 10 Nov 2010 11:32:52 -0700
Message-ID: <4CDAE553.7040304@intel.com>
Date: Wed, 10 Nov 2010 10:32:51 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <BA703559-6EAC-43D9-BB84-E95DDCB1ED62@kernel.crashing.org>	<625BA99ED14B2D499DC4E29D8138F1504D2271119D@shsmsx502.ccr.corp.intel.com>	<401A3267-606A-4A1E-9F45-18F75B6B3FB7@kernel.crashing.org>	<1289395789.1272.260.camel@rex>
	<D10D6A3E-F997-489A-8921-83E5B33EE764@kernel.crashing.org>
In-Reply-To: <D10D6A3E-F997-489A-8921-83E5B33EE764@kernel.crashing.org>
Subject: Re: problem with fetching?
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
X-List-Received-Date: Wed, 10 Nov 2010 18:32:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/10/2010 05:31 AM, Kumar Gala wrote:
>
> On Nov 10, 2010, at 7:29 AM, Richard Purdie wrote:
>
>> On Wed, 2010-11-10 at 06:32 -0600, Kumar Gala wrote:
>>> ERROR: Task failed: Fetch failed: Unable to fetch URL cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123 from any source.
>>> NOTE: package gnu-config-native-0.1+cvs20080123-r1: task do_fetch: Failed
>>> ERROR: Task 211 (virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb, do_fetch) failed with 1
>>> ERROR: 'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb' failed
>>>
>>> Attached is the full log.
>>
>> Are you behind some kind of proxy/firewall? Its interesting its a cvs
>> based recipe that is failing so it could be your cvs setup.
>
> Yes, behind a proxy/firewall.  cvs is not normally allowed out.

If you're behind a SOCKS proxy, these instructions might be helpful to 
get CVS checkouts working:

https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

