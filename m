Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79027E00D6B; Thu,  7 Dec 2017 04:57:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC3DE00D5F
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 04:57:56 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Dec 2017 04:57:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,373,1508828400"; 
   d="scan'208";a="686639"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2017 04:57:54 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b1f0b049-b78e-4009-20ac-979b82081b4e@linux.intel.com>
Date: Thu, 7 Dec 2017 14:58:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 08/12] upgradehelper.py: clean repo only once when recipes are specified
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
X-List-Received-Date: Thu, 07 Dec 2017 12:57:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/07/2017 09:37 AM, Robert Yang wrote:
> E.g.:
> $ upgradehelper.py less strace bash git
> 
> The commit is removed when failed, and kept when succeed, but it would be
> removed when next recipe runs, so only run clean_repo once can keep the commit,
> which is helpful for the user.

I have removed the logic that removes commits and manipulates branches 
altogether. AUH will always create a commit on the current branch, even 
if it caused a build or testimage failure, and otherwise won't touch git 
at all. If the user wants further repo manipulation, they can do it with 
an external script.

Alex

