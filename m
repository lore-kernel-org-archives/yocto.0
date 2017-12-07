Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C22BE00D6B; Thu,  7 Dec 2017 05:01:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ECF2E00D5F
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 05:01:51 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Dec 2017 05:01:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,373,1508828400"; 
   d="scan'208";a="687655"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2017 05:01:50 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<348a1df0689fa954c0a8da46751bd5f9b0666b87.1512630627.git.liezhi.yang@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <662dab3a-5e90-43a3-5962-07eed51bb7bc@linux.intel.com>
Date: Thu, 7 Dec 2017 15:02:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <348a1df0689fa954c0a8da46751bd5f9b0666b87.1512630627.git.liezhi.yang@windriver.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 09/12] upgradehelper.py: use git user in commit when recipes are specified
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
X-List-Received-Date: Thu, 07 Dec 2017 13:01:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/07/2017 09:37 AM, Robert Yang wrote:
> E.g.,:
> $ upgradehelper.py less
> 
> commit d9b551438037e105eebabbbcb2da6d8b8cae7504
> Author: Robert Yang <liezhi.yang@windriver.com>
> Date:   Wed Dec 6 16:38:55 2017 +0800
> 
>      less: upgrade to 529
> 
>      Signed-off-by: Robert Yang <liezhi.yang@windriver.com>

I'm not sure about this one. Commits shouldn't be created automatically 
on a person's behalf and then also signed-off - I'd say you need to 
first look at them.

Alex

