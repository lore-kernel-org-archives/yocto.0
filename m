Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF6BE00D6C; Thu,  7 Dec 2017 00:54:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Dec 2017 00:54:08 PST
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5B74E00D69
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 00:54:08 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Dec 2017 00:53:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,372,1508828400"; 
   d="scan'208";a="642817"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2017 00:53:04 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9c2dc236-58dd-c3d5-0643-8860030477b5@linux.intel.com>
Date: Thu, 7 Dec 2017 10:53:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 00/12] [auh] make it easy to use by recipe maintainer
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
X-List-Received-Date: Thu, 07 Dec 2017 08:54:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/07/2017 09:37 AM, Robert Yang wrote:
> Robert Yang (12):
>    upgradehelper.py: fix checking for do_checkpkg
>    upgradehelper.py: support upgrade multiple recipes
>    upgradehelper.py: use UniverseUpdater for all cases
>    modules/steps.py: fix warn when skip compilation
>    modules/steps.py: fix warn when skip compilation
>    upgradehelper.py: only check email settings when -e is specified
>    upgradehelper.py: always do upgrade when recipes are specified
>    upgradehelper.py: clean repo only once when recipes are specified
>    upgradehelper.py: use git user in commit when recipes are specified
>    upgradehelper.py: add --apply-failed option
>    upgradehelper.py: print info when recipe is skipped to upgrade
>    upgradehelper.py: don't build gcc-runtime when --skip-compilation

Thanks, these do make sense. I'll integrate them into my devtool (and 
other fixes) work - hope to publish it in the next few days.

Alex

