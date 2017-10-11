Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07A50E00BE8; Wed, 11 Oct 2017 05:32:40 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0B98E008A4
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 05:32:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP; 11 Oct 2017 05:32:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,361,1503385200"; d="scan'208";a="1204661294"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 11 Oct 2017 05:32:36 -0700
To: Umamahesh Yelchuruvenkata <umamahesh.y@hcl.com>,
	"Maxin B. John" <maxin.john@intel.com>
References: <HK2PR04MB0995028C6AD9F658017BCB29E64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
	<20171011121345.GA5587@mbabyjoh-desk.ger.corp.intel.com>
	<HK2PR04MB0995F1E36FF064CE210289EEE64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <e84f0fab-4fbe-980a-5b06-1884a082b5c8@linux.intel.com>
Date: Wed, 11 Oct 2017 15:29:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <HK2PR04MB0995F1E36FF064CE210289EEE64A0@HK2PR04MB0995.apcprd04.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test case in LTP in Yocto
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
X-List-Received-Date: Wed, 11 Oct 2017 12:32:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/11/2017 03:28 PM, Umamahesh Yelchuruvenkata wrote:
> Hi Maxin,
> 
> Thanks for the reply. Before sending it for review, I have to test via LTP/Yocto.  I am new to yocto /LTP, trying to understand how to add it.
> It is that only way to add my files is through patch files?.
> 
> Please suggest.

You can use 'devtool modify ltp' to get a local copy of ltp source tree, 
and then modify it as needed. Then issue 'bitbake <image>' as usual to 
build an image with the local modifications to ltp. When you are happy, 
create commits using git in the local source tree of ltp, and issue 
'devtool update-recipe ltp' to get them added as patches to the ltp recipe.

Alex

