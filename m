Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B75CDE00AD0; Sun,  6 Aug 2017 23:49:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A2ADE009A4
	for <yocto@yoctoproject.org>; Sun,  6 Aug 2017 23:49:14 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 06 Aug 2017 23:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,336,1498546800"; d="scan'208";a="137084483"
Received: from peggleto-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.43.222])
	by fmsmga006.fm.intel.com with ESMTP; 06 Aug 2017 23:49:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: RUSSELL PETERSON <bluehills7@comcast.net>
Date: Mon, 07 Aug 2017 08:49:12 +0200
Message-ID: <2375676.dB7SvS9hsX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1944952060.249322.1501698853728@connect.xfinity.com>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
	<33807B63-4010-4E20-9200-92EA19FBED02@comcast.net>
	<1944952060.249322.1501698853728@connect.xfinity.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: extensible SDK build failure
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
X-List-Received-Date: Mon, 07 Aug 2017 06:49:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Russell,

On Wednesday, 2 August 2017 8:34:11 PM CEST RUSSELL PETERSON wrote:
> Frustrating in that I can't get the eSDK to fully build. I'm past the issue
> with kernel-devsrc and harfbuzz... but now I see hundreds of messages like
> below. Anyone seen this before? From what I can tell these tasks are being
> executed out of the run queue.  Not all the messages are from cve-check but
> most.

So there are certain classes that will interfere with the ability of the eSDK 
to lock down the configuration, I wasn't aware of it but cve-check.bbclass is 
apparently one of them. Try adding this to your configuration:

SDK_INHERIT_BLACKLIST = "buildhistory icecc cve-check"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

