Return-Path: <jae.hyun.yoo@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EC19E00DE2; Fri, 23 Aug 2019 09:48:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C93E00DB5
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2019 09:48:57 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Aug 2019 09:48:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; d="scan'208";a="354669284"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO [10.7.153.148])
	([10.7.153.148])
	by orsmga005.jf.intel.com with ESMTP; 23 Aug 2019 09:48:56 -0700
To: Brad Bishop <bradleyb@fuzziesquirrel.com>, akuster808@gmail.com
References: <038f49d9-099e-dabd-2957-d31e7b8bbf41@linux.intel.com>
	<628d5b4c-63d4-78b6-83d8-1781cbc86e0f@linux.intel.com>
	<7694CCA3-89BD-44FE-90D1-99569476E980@fuzziesquirrel.com>
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <c9c8e027-f907-63c6-bdfe-8c7cecfcd1bb@linux.intel.com>
Date: Fri, 23 Aug 2019 09:48:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7694CCA3-89BD-44FE-90D1-99569476E980@fuzziesquirrel.com>
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Cc: yocto@yoctoproject.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
	James Feist <james.feist@linux.intel.com>
Subject: Re: Build break in the latest openbmc tree.
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
X-List-Received-Date: Fri, 23 Aug 2019 16:48:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 8/22/2019 6:09 PM, Brad Bishop wrote:
> at 6:38 PM, James Feist <james.feist@linux.intel.com> wrote:
> 
>> On 8/22/19 3:35 PM, Jae Hyun Yoo wrote:
>>> Hi brad,
>>
>> + The mailing list
>>
>>> We met a build break while making Intel platform builds.
>>> ERROR: No recipes available for:
>>> /home/yoojae/workspace/openbmc/meta-security/recipes-kernel/linux/linux-stable_5.2.bbappend 
>>> It was added by the subtree update patch but there is no main recipe 
>>> for it. Did we miss something?
>>> Thanks,
>>> Jae
> 
> Hi Jae
> 
> linux-stable is in meta-odroid:
> https://lists.yoctoproject.org/pipermail/yocto/2019-August/046424.html
> 
> It isn’t clear to me if meta-security is supposed to have a hard 
> dependency on meta-odroid or not.

Hi Brad,

I checked that 'meta-odroid' isn't in OpenBMC tree. Should we add it
into our openembedded layer?

Thanks,
Jae

> Hi Armin
> 
> Could you suggest what the right thing to do here might be?
> 
> thx!
> brad
> 

