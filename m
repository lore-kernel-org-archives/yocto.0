Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBD68E0030F
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 09:04:45 -0800 (PST)
Received: from mail-gx0-f180.google.com ([209.85.161.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 03 Feb 2012 09:04:37 -0800
Received: by ggnr1 with SMTP id r1so1919497ggn.25
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 09:04:35 -0800 (PST)
Received: by 10.50.179.6 with SMTP id dc6mr3702874igc.15.1328288675786;
	Fri, 03 Feb 2012 09:04:35 -0800 (PST)
Received: from [10.1.10.192] (c-71-236-172-220.hsd1.or.comcast.net.
	[71.236.172.220])
	by mx.google.com with ESMTPS id e17sm5320436ibe.0.2012.02.03.09.04.34
	(version=SSLv3 cipher=OTHER); Fri, 03 Feb 2012 09:04:34 -0800 (PST)
Message-ID: <4F2C13A1.2050802@intel.com>
Date: Fri, 03 Feb 2012 09:04:33 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CB507144.6E40%belen.barros.pena@intel.com>
	<4F2B057D.6000905@linux.intel.com>
	<4F2B07BA.1040204@linux.intel.com>
In-Reply-To: <4F2B07BA.1040204@linux.intel.com>
Subject: Re: Hob 1.2 design - Settings dialogue
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
X-List-Received-Date: Fri, 03 Feb 2012 17:04:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2012 02:01 PM, Joshua Lock wrote:
>
>
> On 02/02/12 13:51, Joshua Lock wrote:
>> Hi Belen,
>>
>> Sorry this is so long, I don't know how to turn off my verbose switch.
>>
>> On page 4 you mention Shane's intention to have proxy settings in the UI
>> - I just want to point out that this is usually an OS level
>> configuration and we should be wary about how we implement it.
>> I'd suggest we go so far as to just have a "Change system proxy
>> settings" button which launches the OS's network configuration settings.
>>
>> Of course, this opens us up to potential issues around supporting the
>> multitude of available network configuration tools on Linux but I'd
>> suggest we start with a lowest common denominator approach and have the
>> program behave intelligently.
>>
>> Explicitly we can detect whether the binary gnome-control-center and the
>> so file /usr/lib64/control-center-1/panels/libnetwork.so exist (being
>> clever about that path, too) and if so we can execute:
>>
>> "gnome-control-center display network"
>>
>> Which will display the network configuration (and therefore proxy)
>> settings for stock Fedora and Ubuntu desktops.
>>
>
> The above is all moot if we're just going to configure the proxy through
> sites.conf as per Saul's recent mail.

Will sites.conf setup proxy settings for git, subversion, and cvs?

The proxy situation is a mess under Linux. This is likely to be a 
non-trivial problem.

http://www.yoctoproject.org/blogs/sgarman/2011/proxy-problem

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

