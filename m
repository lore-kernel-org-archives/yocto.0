Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACBC5E00BDF; Thu,  8 Jun 2017 04:09:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BAFBE00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 04:09:18 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP; 08 Jun 2017 04:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,314,1493708400"; d="scan'208";a="112409725"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 08 Jun 2017 04:09:17 -0700
To: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <395f03fe-7c6c-820b-5562-f98388cae49a@mlbassoc.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f510d100-faa6-d0a2-c4c8-19bf613fbc8c@linux.intel.com>
Date: Thu, 8 Jun 2017 14:09:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <395f03fe-7c6c-820b-5562-f98388cae49a@mlbassoc.com>
Subject: Re: What's up with python3
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
X-List-Received-Date: Thu, 08 Jun 2017 11:09:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/08/2017 10:28 AM, Gary Thomas wrote:
> I'm building using Poky/Yocto master
> 576821ea0a7558b626ccc87e9ae0e9ee40864956
> and I've noticed that python3 (target) is being built for my image, but it
> doesn't end up in the actual image.  None of my own recipes mention python3
> at all, yet virtually every recipe that's used in the build depend on it.
>
> I've listed all the recipes used in my build (from bitbake -g =>
> recipe-depends.dot)
> and sucked out the ones that claim to depend on python3.  I don't see
> why, for
> example, python(2) depends on python3?
>
> Can someone explain this?  I've added the appropriate files to this email.
>
> I'm mostly curious, but also a bit concerned that my builds are doing more
> than they need (and hence just taking longer than they might need to)

Typically for two reasons:

a) a recipe needs to execute python during build, and host python is not 
suitable for some reason - so native python is built and used;

b) a supplementary package needs python, while the main package does not 
- most often this is the -ptest package, which will not end up in the 
image, unless you ask.

Alex


