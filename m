Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73EC2E00C43; Fri,  4 Aug 2017 04:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11851E00C35
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 04:57:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Aug 2017 04:57:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,321,1498546800"; d="scan'208";a="1159156556"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 04 Aug 2017 04:57:47 -0700
To: Gianfranco Costamagna <costamagnagianfranco@yahoo.it>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1280838053.2327487.1501829336917.ref@mail.yahoo.com>
	<1280838053.2327487.1501829336917@mail.yahoo.com>
	<1452600482.2586512.1501844336709@mail.yahoo.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b557614f-2f57-e5f0-ed12-1d1158ee883f@linux.intel.com>
Date: Fri, 4 Aug 2017 14:54:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1452600482.2586512.1501844336709@mail.yahoo.com>
Subject: Re: [feature request] avoid getting the server stuck because of high "-j" value
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Aug 2017 11:57:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 08/04/2017 01:58 PM, Gianfranco Costamagna wrote:

> recently I found a really nice make feature, that tunes at runtime the number of parallel
> 
> execution jobs, according to the current system load [1].
> 
> 
> I think such a feature would be really nice on server were multiple yocto builds are run in parallel,
> 
> and when people forgets to put the correct number of parallel build jobs.
> 
> 
> E.g., a number around CPU+1 is nice, but sometimes CPU*2 gives better results.
> 
> Unfortunately if somebody else starts a build in parallel, that CPU*2 locks really hard the server, specially
> 
> when building qt-based projects (e.g. qtbase, qtwebengine).

If the cause of the slowdown with qt stuff is that RAM is fully 
utilized, and swap has to be taken into use, does checking load average 
help with that? My understanding is that it does not. You simply have to 
introduce per-recipe limits:

PARALLEL_MAKE_pn-qtwebengine  = "-j 8"


Also, many projects are moving away from makefiles towards ninja build 
system, which does not have support for -l at all.


Alex

