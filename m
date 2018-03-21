Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 271EBE00944; Wed, 21 Mar 2018 07:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F657E005A9
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 07:06:50 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2018 07:06:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,340,1517904000"; d="scan'208";a="44062131"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2018 07:06:48 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: Svein Seldal <sveinse@seldal.com>, yocto@yoctoproject.org
References: <ad09d45b8456613da24304c00a2c2273@webmail.domeneshop.no>
	<67ee7cc2-3ff6-464e-ea81-c3ad2ec8756f@linux.intel.com>
Message-ID: <6a9c245c-955b-49ae-5b40-268f9b12d9e2@linux.intel.com>
Date: Wed, 21 Mar 2018 16:00:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <67ee7cc2-3ff6-464e-ea81-c3ad2ec8756f@linux.intel.com>
Subject: Re: Yocto and NPM issues
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
X-List-Received-Date: Wed, 21 Mar 2018 14:06:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 03/21/2018 03:54 PM, Alexander Kanavin wrote:

>> I'm attempting to package a npm-based js application into a Rocko 
>> image, and I'm having some issues. For testing I use the official poky 
>> repo and the meta-openembedded repo (for installing nodejs 8.4.0). I'm 
>> building for qemux86-64.
> 
> I know this is not an answer to your specific issues, but npm is a bit 
> of maintenance nightmare as its workflow (downloading random stuff off 
> the internet as an integral part of the build) clashes badly with how 
> bitbake, and embedded world in general handle builds. We've discussed 
> what to do about it, with no clear outcome, but we would like to have 
> something that doesn't require constant fixing and hacks:
> 
> http://lists.openembedded.org/pipermail/openembedded-architecture/2017-March/000480.html 

Oh, and you might have more success using meta-nodejs, as it doesn't try 
to implement a custom fetcher, and just runs npm directly during the 
build. If you don't mind that that makes the build outcome essentially 
random from one invocation to the next.

https://github.com/imyller/meta-nodejs


Alex

