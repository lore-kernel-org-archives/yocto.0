Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A52EFE00DA7; Fri, 16 Dec 2016 09:31:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39F34E00D4E
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 09:31:10 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2016 09:31:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,358,1477983600"; d="scan'208";a="43158463"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 16 Dec 2016 09:31:03 -0800
To: yocto@yoctoproject.org
References: <20161216150617.GA21846@openSUSE-i7.site>
	<ba7b7f02-aaff-cd8d-20ee-8619b6201ede@linux.intel.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <691e2e48-7c53-99e3-4b5e-bf0afce9f48d@linux.intel.com>
Date: Fri, 16 Dec 2016 19:31:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <ba7b7f02-aaff-cd8d-20ee-8619b6201ede@linux.intel.com>
Subject: Re: PSA for anyone using openSUSE 42.2 (or similar)
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
X-List-Received-Date: Fri, 16 Dec 2016 17:31:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/2016 06:06 PM, Alexander Kanavin wrote:
> On 12/16/2016 05:06 PM, Trevor Woerner wrote:
>> I just made this adjustment but given it only happened once or twice a
>> week on
>> a reasonably busy build machine it might be hard to confirm. I'm also
>> not sure
>> if setting it to "infinity" is sensible ;-)
>>
>> I'm guessing other host distros probably also fall into this category.
>
> I've seen this on Debian Testing as well. Care to submit a documentation
> bug?
>
> https://bugzilla.yoctoproject.org/enter_bug.cgi?product=General%20Docs

Actually, scratch that; if bitbake can detect that the limit is not 
optimal at runtime, then it probably should. Direct the bug accordingly.

Alex


