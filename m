Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 957AFE00E4F; Thu, 14 Nov 2019 11:05:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E85A3E00E24
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 11:05:55 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Nov 2019 11:05:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="214600175"
Received: from bhatavin-mobl1.ger.corp.intel.com (HELO blackadder.local)
	([10.249.42.178])
	by fmsmga001.fm.intel.com with ESMTP; 14 Nov 2019 11:05:54 -0800
To: yocto@yoctoproject.org
References: <edcdaba6-5163-418b-ea0f-0ae4a0896651@gmail.com>
	<CAMKF1sp32eek6prtbubAB46hpz4jG9UviPgJ3wBzi4jBfwArmw@mail.gmail.com>
	<5fc26e48-9555-bd75-1ce5-4023162e6154@gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <81cf1717-fef5-4691-ba4f-887515d1f4b3@intel.com>
Date: Thu, 14 Nov 2019 19:05:53 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <5fc26e48-9555-bd75-1ce5-4023162e6154@gmail.com>
Subject: Re: Collaboration on Testing GCC/LLVM Toolchains
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
X-List-Received-Date: Thu, 14 Nov 2019 19:05:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 14/11/2019 18:05, Nicholas Krause wrote:
>> I think its a good idea. Currently, we test released versions mostly,
>> however, there is
>> a class to switch to git versions and primarily be able to use tip of
>> master for a given
>> recipe, this would be something I wish we had but so far we have not
>> fully completed it
>> I know Ross had started this work and created initial skeleton, So
>> step one would be to
>> complete that class so we can easily switch recipes to use dev
>> versions of packages
>> this will go beyond GCC but certainly will be a tremendous achievement.
> 
> Does Ross have a copy of the skeleton or someone else as I would
> 
> like to take a look at it. Don't think I will be much help writing it as
> 
> I'm not too familiar with bitbake recipes or classes themselves.
Fixing devupstream.bbclass (already integrated into oe-core) to also 
extend native recipes is a non-trivial engineering effort sadly.

Ross

