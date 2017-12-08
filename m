Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62C86E00D6E; Fri,  8 Dec 2017 06:18:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4AFBE00C45
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 06:18:09 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Dec 2017 06:18:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,377,1508828400"; 
   d="scan'208";a="971509"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 08 Dec 2017 06:18:07 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
	<b1f0b049-b78e-4009-20ac-979b82081b4e@linux.intel.com>
	<d8a9adca-7374-64da-8613-059034082943@windriver.com>
	<4af82364-f125-e6fd-ab12-8dd3a9f0dcbc@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <91939990-5880-aba7-7ec6-7d24809694aa@linux.intel.com>
Date: Fri, 8 Dec 2017 16:18:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <4af82364-f125-e6fd-ab12-8dd3a9f0dcbc@windriver.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 14:18:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/08/2017 04:00 AM, Robert Yang wrote:
> 
>> I'm not sure, the logical *without* this patch is:
>> 1) Do the commit when succeed or failed.
>> 2) git format-patch
>> 3) Remove the commit if failed, and leave the commit there if succeed
> 
> Sorry, "remove the comit if failed" is added by this patch, and why I 
> did this
> was because:
> $ auh glibc less bash gzip bzip2
> 
> All of them will be failed to upgrade if glibc fails since others 
> depends on
> glibc, so leave a failed commit in the repo would cause troubles when 
> upgrade
> multiple recipes, so we have to remove it when failed to let others can 
> upgrade, and then apply the failed commit back (if -f is specified) 
> after all of the
> recipes are done.

In my branch I've changed the approach altogether. Here's how it works:

1) attempt to upgrade the recipe using 'devtool upgrade'.
2) If that failed (usually because custom patches couldn't be 
auto-rebased), save the diagnostic info and move to the next recipe.
3) if succeeded, create a commit with changes and try to build the recipe
4) save the build diagnostic info (regardless of whether build succeeded 
or failed) and move on to next recipe

So two things happen:
1) commits are never removed, only created, even if the recipe then 
fails to build
2) after AUH is done, it produces a sequence of update commits and 
information on what couldn't be updated, and what couldn't be build. The 
maintainer then can choose to fix the build failures, or take the 
commits that cause build failures out of the branch or revert them. AUH 
does not anymore manipulate branches or commits.

I think it's a simpler and easier to understand approach. Yes, this 
means that an updated recipe that is close to the root of dependency 
tree can cause a cascade of build failures (e.g. glibc), but the update 
commits for everything else will still be created, and the maintainer 
can easily revert the failing updates, and re-run the build. What you think?

I can publish the code for you to look at, even though it's still work 
in progress, and I'd like to fix up a few more things first.


Alex

