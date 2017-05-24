Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC927E00524; Wed, 24 May 2017 09:45:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C13E00349
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 09:45:02 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga104.jf.intel.com with ESMTP; 24 May 2017 09:45:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,387,1491289200"; d="scan'208";a="265931949"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga004.fm.intel.com with ESMTP; 24 May 2017 09:45:00 -0700
To: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <50e98ce0-ba47-6071-062a-b2ca557c419c@linux.intel.com>
Date: Wed, 24 May 2017 19:43:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
Subject: Re: webkitgtk2 progress bar
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
X-List-Received-Date: Wed, 24 May 2017 16:45:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/24/2017 05:23 PM, Gary Thomas wrote:
> Now [tongue-in-cheek], can someone do something about the horrendous
> build times for such packages (webkitgtk2 can take up to 3 hours on
> my [no so slow] build host!)?

In order of decreasing tongue in cheekiness.

1. Rewrite webkit in something that is not C++ - by far the most awful 
language when it comes to compile times.

2. Use icecc.bbclass to 'borrow' computing power from colleagues 
(untested, unproven).

3. Invest into a serious CPU. I have 22 cores here, and it is not a 
luxury, but an absolute necessity to get anything done as far as oe-core 
maintenance goes. Webkit's do_compile takes about half an hour - I can 
almost see that progress bar move :)

Alex


