Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 167C1E00EAC; Tue, 16 Jan 2018 06:47:24 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1255E00D7E
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 06:47:23 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Jan 2018 06:47:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,368,1511856000"; d="scan'208";a="166510573"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 16 Jan 2018 06:47:22 -0800
To: yocto@yoctoproject.org
References: <63725097-9b1b-ab15-56ce-192ae740333a@hm.edu>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <ac8e013d-f9ab-74f7-9cdf-7f78398923c7@linux.intel.com>
Date: Tue, 16 Jan 2018 16:47:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <63725097-9b1b-ab15-56ce-192ae740333a@hm.edu>
Subject: Re: Backport of oe-core patch 147074 to rocko
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
X-List-Received-Date: Tue, 16 Jan 2018 14:47:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/16/2018 04:32 PM, Jan Siegmund wrote:
> could commit 953f6d9a717945cc20228e7f75371adc27f4ffbe be added to branch rocko?
> It fixes breaking packaging when using lz4.

Certainly; prepare a patch, and send it to oe-core list with [rocko] prefix.

Alex

