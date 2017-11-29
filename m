Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3833DE00C0F; Wed, 29 Nov 2017 02:09:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E739E00B5F
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 02:09:39 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Nov 2017 02:09:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,472,1505804400"; d="scan'208";a="10928553"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2017 02:09:38 -0800
To: Anton Gerasimov <anton@advancedtelematic.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <7085a873-0594-f4e4-03ba-c72fc156d6c9@advancedtelematic.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <cbe07fed-c51d-d663-4914-6a247171b86e@linux.intel.com>
Date: Wed, 29 Nov 2017 12:10:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <7085a873-0594-f4e4-03ba-c72fc156d6c9@advancedtelematic.com>
Subject: Re: Invalidating tasks
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
X-List-Received-Date: Wed, 29 Nov 2017 10:09:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/29/2017 11:29 AM, Anton Gerasimov wrote:
> I've got two tasks, `do_A` and `do_B` (they are really IMAGE_CMDs if
> it's important). Now I want to introduce a third task,
> `do_check_A_and_B`, that will test that `do_A` and `do_B` have produced
> a correct result. If the test fails, I want to invalidate results of A
> and B, so that they re-run next time I run `bitbake some-image`. Is it
> possible? I've seen some "invalidate_task" functions in bb.siggen and in
> bb.runqueue, but I'm not sure about how to use them in a recipe/bbclass.

That would be a gross hack that goes against bitbake philosophy - which 
is that once a task completes successfully, you never need to re-run it 
again, unless the task content (or its dependencies) changes.

What are you doing in do_A and do_B, and why the outcome can vary 
without the tasks themselves changing? Are you fetching something from 
the network?

Alex

