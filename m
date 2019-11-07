Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B43CE00B65; Thu,  7 Nov 2019 01:15:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72E1AE008D9
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2019 01:15:25 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Nov 2019 01:15:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,277,1569308400"; d="scan'208";a="205620041"
Received: from felsner-mobl1.ger.corp.intel.com (HELO blackadder.local)
	([10.252.57.88])
	by orsmga003.jf.intel.com with ESMTP; 07 Nov 2019 01:15:22 -0800
To: yocto@yoctoproject.org
References: <ab96ec4a-5dcb-4d01-8519-13c00094a44c@www.fastmail.com>
	<20191106214108.GC14721@localhost>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <83b8f552-00df-7b9f-4fa9-a61bb1f61bbd@intel.com>
Date: Thu, 7 Nov 2019 09:15:21 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106214108.GC14721@localhost>
Subject: Re: Using GitLab for OE/Yocto layers
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
X-List-Received-Date: Thu, 07 Nov 2019 09:15:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 06/11/2019 21:41, Adrian Bunk wrote:
> 1. Patch review
> 
> Merge requests work well when there is one maintainer who reviews
> everything. For not regressing on the current level of review before
> something hits master, merging a merge request into master-next
> should then result in patch review emails sent to a list.
> Or a setup where creation of a merge request automatically generates
> review emails.
> 
> This is similar to all patches for stable branches now being sent for
> review to the mailing list a few days before they get merged into the
> stable branch, which has caught problematic patches due to more people
> reviewing them.

I've had discussions about this in the past too.  With merge requests it 
seems reasonable to automatically tag in relevant maintainers when the 
request is created to request review.  For example if oe-core was on 
GitLab then a MR touching GCC would automatically assign to Khem.

I agree that drive-by review is an important part for a core layer such 
as oe-core where a single maintainer can't know all of the details, so 
the ability to post at least new merge requests - and ideally all 
traffic - to a list for this is essential.

Ross

