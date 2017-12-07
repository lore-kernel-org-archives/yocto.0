Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19ECFE00D75; Thu,  7 Dec 2017 12:28:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EED99E00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 12:28:05 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Dec 2017 12:28:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,374,1508828400"; 
   d="scan'208";a="781442"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2017 12:28:04 -0800
To: Paul Knopf <pauldotknopf@gmail.com>
References: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
	<CAKmWj-0_JS5WTDC+ih2oW9_MPTnZJZurHj0cRy4N1jXcH5vSPg@mail.gmail.com>
	<95676e99-422b-8ab4-131f-de9878d3b3e8@linux.intel.com>
	<CAKmWj-1PzW29FUnWTeuJh6=hRghQ-7vi+PKst5K1cL4Tg1LQyw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <43b0281e-9d30-a07f-6b6d-048f91326c32@linux.intel.com>
Date: Thu, 7 Dec 2017 22:28:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAKmWj-1PzW29FUnWTeuJh6=hRghQ-7vi+PKst5K1cL4Tg1LQyw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preventing a variable from being cached
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
X-List-Received-Date: Thu, 07 Dec 2017 20:28:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/07/2017 10:22 PM, Paul Knopf wrote:
> I have all my meta-layers and build conf files checked into a single 
> repository (submodules for layers). I want a recipe to look at the git 
> repository, and place a file in the build. I'd like this repository to 
> read the HEAD, and decide if it needs to be rebuilt (to put new file in 
> image) based off of HEAD/branch location.


Use the file: fetcher for the file in SRC_URI, and the fetcher will 
detect if the file has changed and trigger a rebuild accordingly.

Alex


