Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7359E00C20; Fri, 27 Nov 2015 08:50:46 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BACEE00C11
	for <yocto@yoctoproject.org>; Fri, 27 Nov 2015 08:50:35 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Nov 2015 08:50:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,352,1444719600"; d="scan'208";a="861128843"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.171])
	([10.219.5.171])
	by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2015 08:50:35 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
	<1448496046-13186-14-git-send-email-anibal.limon@linux.intel.com>
	<2258863.sRT7riDxl6@peggleto-mobl.ger.corp.intel.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <56588A0E.1020909@linux.intel.com>
Date: Fri, 27 Nov 2015 10:51:26 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <2258863.sRT7riDxl6@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [[AUH] 13/17] upgradehelper: Add testimage feature.
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
X-List-Received-Date: Fri, 27 Nov 2015 16:50:46 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Sure,
	alimon

On 11/26/2015 02:29 PM, Paul Eggleton wrote:
> On Wednesday 25 November 2015 18:00:42 Aníbal Limón wrote:
>> Testimage module implements usage of testimage class, a integration
>> branch is created with succesful recipe upgrades and then the next
>> tests are run for every machine configured,
>>
>>     - ptest: Recipes that support ptest are run and retrive
>>              the result after upgrade.
>>     - sato: Runs core-image-sato -c testimage.
> 
> Can we avoid hardcoding sato anywhere here? It would be ideal if the image 
> could be configured or passed in instead.
> 
> Cheers,
> Paul
> 

