Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B144BE00D6C; Fri,  8 Dec 2017 06:07:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95D31E00C45
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 06:07:08 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Dec 2017 06:07:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,377,1508828400"; 
   d="scan'208";a="969378"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 08 Dec 2017 06:07:06 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<348a1df0689fa954c0a8da46751bd5f9b0666b87.1512630627.git.liezhi.yang@windriver.com>
	<662dab3a-5e90-43a3-5962-07eed51bb7bc@linux.intel.com>
	<bf1a9396-7796-aabc-afc9-69b1976751ae@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <20ca1f3c-d99b-089e-8806-82101fc1a6e1@linux.intel.com>
Date: Fri, 8 Dec 2017 16:07:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <bf1a9396-7796-aabc-afc9-69b1976751ae@windriver.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 14:07:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/08/2017 03:51 AM, Robert Yang wrote:

>> I'm not sure about this one. Commits shouldn't be created 
>> automatically on a person's behalf and then also signed-off - I'd say 
>> you need to first look at them.
> 
> IMHO, Auh is a helper, when user run:
> $ auh less
> 
> It helps create commits, should be the same as user run "git commit", 
> and the
> user should responsible for it. Or how about add a -S option:
> 
> -S, --SOB    Use git user as the author and add SOB.

Yeah, as long as maintainers don't send those raw commits straight to 
mailing list, it's okay. It's rare that such an auto-created commit 
doesn't need further work (e.g. to explain changes in patches or 
license, or other adjustments).

Alex

