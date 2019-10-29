Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F514E00D98; Tue, 29 Oct 2019 03:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96E4FE00D85
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2019 03:50:38 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Oct 2019 03:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="401106798"
Received: from koernerm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.41.216])
	by fmsmga006.fm.intel.com with ESMTP; 29 Oct 2019 03:50:36 -0700
To: Robert Joslyn <robert.joslyn@redrectangle.org>, yocto@yoctoproject.org
References: <5ed5-5db71680-7f-1be36200@40858189>
	<acd179f3-b31e-905d-81e6-bb9f8f4a58c3@intel.com>
	<d88b9f08c99863d5479e5c9c98a83c991da22d12.camel@redrectangle.org>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <3cb7a48c-fdd6-5fc8-ab7f-e93c6cf3482e@intel.com>
Date: Tue, 29 Oct 2019 10:50:35 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d88b9f08c99863d5479e5c9c98a83c991da22d12.camel@redrectangle.org>
Subject: Re: systemd Version Going Backwards on Warrior
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
X-List-Received-Date: Tue, 29 Oct 2019 10:50:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 29/10/2019 04:41, Robert Joslyn wrote:
> On Mon, 2019-10-28 at 19:06 +0000, Ross Burton wrote:
>> On 28/10/2019 16:25, robert.joslyn@redrectangle.org wrote:
>>> I'm using buildhistory in one of my builds that creates a package
>>> feed, and a recent update to systemd on warrior triggered version-
>>> going-backwards errors:
>>>
>>> ERROR: systemd-conf-241+AUTOINC+511646b8ac-r0 do_packagedata: QA
>>> Issue: Package version for package systemd-conf-src went backwards
>>> which would break package feeds from (0:241+0+c1f8ff8d0d-r0 to
>>> 0:241+0+511646b8ac-r0) [version-going-backwards]
>>>
>>> Should PE have been updated at the same time due to the hash making
>>> the version number go backwards? I can send a patch if that's all
>>> that's missing. Or is a PR server enough to prevent this? My debug
>>> builds do not use a PR server, but my production builds do use a PR
>>> server.
>>
>> If you're using feeds, you need to use a PR server.  This is *exactly*
>> what they are for.
 >

> The part I wasn't sure about was if the PR server helped in the case where
> PV went backwards. I know it works when PV stays the same but the package
> was rebuilt. But if it keeps the versions going forward no matter how PV
> changes, then I should be good. I should probably setup a separate PR
> server on my debug builds to avoid this kind of error.

If the PV actually goes backwards then the PR service isn't useful, as 
PV sorts before PR.

However in this case the problem is that SRCREV should have a 
incrementing counter (the +0+ should be +1+ in the rebuild) which I 
believe comes from the PR service.  I may be wrong...

Ross

