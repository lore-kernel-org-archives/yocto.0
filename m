Return-Path: <david.j.cobbley@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69D04E00D1C; Tue, 31 Oct 2017 14:51:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48972E00D18
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 14:51:07 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Oct 2017 14:51:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,326,1505804400"; d="scan'208";a="169661299"
Received: from parzival.jf.intel.com (HELO [10.54.51.76]) ([10.54.51.76])
	by fmsmga005.fm.intel.com with ESMTP; 31 Oct 2017 14:51:07 -0700
To: yocto@yoctoproject.org
From: Dave Cobbley <david.j.cobbley@linux.intel.com>
Message-ID: <587799c6-cd3f-59c0-4b04-792c0fa1de8b@linux.intel.com>
Date: Tue, 31 Oct 2017 14:51:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: ptest - single package
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
X-List-Received-Date: Tue, 31 Oct 2017 21:51:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hey,

I am trying to add a single ptest to my image without adding all ptests 
from all other packages in my distro.

https://wiki.yoctoproject.org/wiki/Ptest only has instructions to add 
ptest-pkgs, but this is too large for my embedded platform.

How can I install ptest-runner plus the single ptest from a specific recipe?


Thanks,

-Dave


