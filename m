Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01093E005B7; Wed, 11 Nov 2015 12:14:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 858FEE00473
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 12:14:58 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Nov 2015 12:14:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,277,1444719600"; d="scan'208";a="848746958"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.171])
	([10.219.5.171])
	by fmsmga002.fm.intel.com with ESMTP; 11 Nov 2015 12:14:57 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
	<1447106501-470-6-git-send-email-anibal.limon@linux.intel.com>
	<1916635.N7SxKcgltD@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <5643A1E7.7070809@linux.intel.com>
Date: Wed, 11 Nov 2015 14:15:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1916635.N7SxKcgltD@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 05/10][AUH] upgradehelper.py: Add sanity test for ensure that git is configured.
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
X-List-Received-Date: Wed, 11 Nov 2015 20:14:59 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 11/10/2015 02:59 AM, Paul Eggleton wrote:
> On Monday 09 November 2015 16:01:36 Aníbal Limón wrote:
>> [YOCTO #8390]
>> 
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com> --- 
>> upgradehelper.py | 16 +++++++++++----- 1 file changed, 11
>> insertions(+), 5 deletions(-)
>> 
>> diff --git a/upgradehelper.py b/upgradehelper.py index
>> 9b321f6..ae40fb1 100755 --- a/upgradehelper.py +++
>> b/upgradehelper.py @@ -28,6 +28,7 @@
>> 
>> import argparse import os +from subprocess import call import
>> logging as log from logging import debug as D from logging import
>> info as I @@ -734,17 +735,22 @@ if __name__ == "__main__": global
>> settings global maintainer_override
>> 
>> +    if not os.getenv('BUILDDIR', False): +        E(" You must
>> source oe-init-build-env before running this script!\n") +
>> exit(1) + +    devnull = open(os.devnull, 'wb'); +    if
>> call(["git", "config", "user.name"], stdout=devnull,
>> stderr=devnull) or \ +        call(["git", "config",
>> "user.email"], stdout=devnull, stderr=devnull): +        E(" Git
>> isn't configure please configure user name and email\n") +
>> exit(1)
> 
> "isn't configure" -> "isn't configured"
> 
> Also, we're doing an awful lot of "from xxxx import yyyy" in this
> code which for the most part seems like poor style. For this
> addition can you simply import subprocess and then use
> subprocess.call() ?
> 

Ok.

> Cheers, Paul
> 

