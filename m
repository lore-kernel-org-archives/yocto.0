Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34227E00CE8; Fri, 15 Dec 2017 05:34:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C969CE00AD7
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 05:34:54 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Dec 2017 05:34:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,404,1508828400"; 
   d="scan'208";a="2972535"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga007.jf.intel.com with ESMTP; 15 Dec 2017 05:34:52 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
	<b1f0b049-b78e-4009-20ac-979b82081b4e@linux.intel.com>
	<d8a9adca-7374-64da-8613-059034082943@windriver.com>
	<4af82364-f125-e6fd-ab12-8dd3a9f0dcbc@windriver.com>
	<91939990-5880-aba7-7ec6-7d24809694aa@linux.intel.com>
	<91a7f9ef-b0c2-68c5-ad8f-07309a3a9585@windriver.com>
	<9c635c45-b01a-3896-ad89-34b7ded040f6@linux.intel.com>
	<fb02ebb5-ba03-aab6-da5d-1a1194001edb@windriver.com>
	<f625cfd2-4f41-c287-284a-25a8469922f6@linux.intel.com>
	<6accc7dc-76b0-e132-40de-40ebe32c72e6@windriver.com>
	<95063787-5c17-3059-07cd-623e96273073@linux.intel.com>
Message-ID: <01e7cd60-6e6b-f22f-00e5-cd28268c9486@linux.intel.com>
Date: Fri, 15 Dec 2017 15:35:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <95063787-5c17-3059-07cd-623e96273073@linux.intel.com>
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
X-List-Received-Date: Fri, 15 Dec 2017 13:34:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/14/2017 06:38 PM, Alexander Kanavin wrote:

>> Got it, thanks.
> 
> I just sent the patches to yocto@ ML and published them on github - 
> please do try them out, and rebase your patchset on top (some of it may 
> no longer be relevant).

I did the rebase myself, and pushed the result here - please check and 
feel free to add anything else that you deem useful:

http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/log/?h=devel

Alex

