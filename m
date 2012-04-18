Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A39EAE0030B
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 13:27:34 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:62282
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SKbTR-000589-GA; Wed, 18 Apr 2012 21:27:33 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <E3DA5E46-34FB-449B-BDE2-E5E0F8EFECFD@keylevel.com>
Date: Wed, 18 Apr 2012 21:27:30 +0100
Message-Id: <53BEF679-2316-44D0-A627-D81A6D419FE2@keylevel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com>
	<9AE35C40-C519-49ED-9790-0E4BC9A42F39@keylevel.com>
	<4F875D98.7020100@linux.intel.com>
	<E3DA5E46-34FB-449B-BDE2-E5E0F8EFECFD@keylevel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1257)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Wed, 18 Apr 2012 20:27:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

On 18 Apr 2012, at 20:41, Chris Tapp wrote:

> On 12 Apr 2012, at 23:56, Darren Hart wrote:
>> Get back to us with times, and we'll build up a wiki page.
> 
> <snip>
> 
> I also tried rebuilding the kernel:
>   bitbake -c clean linux-yocto
>   rm -rf the sstate bits for the above
>   bitbake linux-yocto
> 
> and got the following times:

(CORRECT TIMES INSERTED):

> Real   : 11m
> User   : 15m
> System : 2m


The comments about low load averages during kernel build still stand.

Chris Tapp

opensource@keylevel.com
www.keylevel.com

