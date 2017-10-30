Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAFD8E00D95; Mon, 30 Oct 2017 02:37:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 914A6E00D8C
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 02:37:54 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga104.jf.intel.com with ESMTP; 30 Oct 2017 02:37:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,319,1505804400"; d="scan'208";a="169446055"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 30 Oct 2017 02:37:46 -0700
To: Vineeth Karumanchi <vineethchowz.chowdary@xilinx.com>,
	yocto@yoctoproject.org
References: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <3d885b18-f114-fcf1-0600-0903935bd1ab@linux.intel.com>
Date: Mon, 30 Oct 2017 11:37:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
Subject: Re: Checking sstate mirror is hanging at 100%
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
X-List-Received-Date: Mon, 30 Oct 2017 09:37:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/30/2017 07:54 AM, Vineeth Karumanchi wrote:

> In this case i would expect bitbake to "check for sstate mirrors" for 
> some time and rebuild from scratch. Is there any approach to over come 
> this ?

The approach is to fix your infrastructure so that fetching from network 
doesn't fail. We've gotten a similar request recently for enabling 'soft 
sstate cache failure', and RP is firmly against it:

http://lists.openembedded.org/pipermail/openembedded-core/2017-August/141593.html

Alex

