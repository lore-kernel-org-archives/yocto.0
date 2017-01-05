Return-Path: <jussi.laako@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8836AE00566; Thu,  5 Jan 2017 00:35:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9695E0043F
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 00:35:56 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga105.jf.intel.com with ESMTP; 05 Jan 2017 00:35:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,320,1477983600"; d="scan'208";a="209880615"
Received: from jlaako-mobl.ger.corp.intel.com (HELO [10.252.21.149])
	([10.252.21.149])
	by fmsmga004.fm.intel.com with ESMTP; 05 Jan 2017 00:35:54 -0800
To: Bruce Ashfield <bruce.ashfield@windriver.com>, yocto@yoctoproject.org
References: <20170104151937.14632-1-jussi.laako@linux.intel.com>
	<905ec5b9-3c6f-9466-168d-c9e1306f5981@windriver.com>
From: Jussi Laako <jussi.laako@linux.intel.com>
Message-ID: <9e71a49a-3476-a82c-d185-e00150c08829@linux.intel.com>
Date: Thu, 5 Jan 2017 10:35:53 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <905ec5b9-3c6f-9466-168d-c9e1306f5981@windriver.com>
Subject: Re: [PATCH 0/2] yocto-kernel-cache: Update audio support and add Firewire support
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
X-List-Received-Date: Thu, 05 Jan 2017 08:35:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05.01.2017 05:24, Bruce Ashfield wrote:
> On 2017-01-04 10:19 AM, Jussi Laako wrote:
>> Here are two patches for yocto-kernel-cache:
>
> What are the target branches for this ?

At the moment I'm targeting master, but maybe this could be material 
also for 4.9 branch. I'm going to look into some other areas that I 
believe could benefit small updates. I believe this audio part was the 
biggest...


