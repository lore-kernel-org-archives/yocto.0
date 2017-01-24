Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 232E7E00480; Tue, 24 Jan 2017 05:33:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7321E003C1
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 05:33:23 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 24 Jan 2017 05:33:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,278,1477983600"; d="scan'208";a="926055255"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 24 Jan 2017 05:33:19 -0800
To: yocto@yoctoproject.org
References: <CY1PR0101MB1594E1B1C5D6CACBD2A3E75CB6750@CY1PR0101MB1594.prod.exchangelabs.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <23668006-b491-882e-0326-e6925a8afea7@linux.intel.com>
Date: Tue, 24 Jan 2017 15:33:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CY1PR0101MB1594E1B1C5D6CACBD2A3E75CB6750@CY1PR0101MB1594.prod.exchangelabs.com>
Subject: Re: SRC_URI patch slection
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
X-List-Received-Date: Tue, 24 Jan 2017 13:33:27 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2017 06:37 AM, Takashi Matsuzawa wrote:

> In other words, in my iii) recipe I could say SRC_URI_remove =
> "file://xxxx.patch", but I want to make it only for specific SRCREV
> revisions.
>
> Or any other way of writing my iii) recipe for this?

I would remove ii) altogether in the local layer tree, and copy-paste 
necessary bits and pieces from it into iii). Alternatively, remove iii) 
and make necessary changes to ii). Either way, you'll have to maintain a 
local fork of files maintained by other people, at least until 
maintainer of i) updates SRCREV to something that suits everybody.

Alex

