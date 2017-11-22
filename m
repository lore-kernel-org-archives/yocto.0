Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CC46E00C78; Wed, 22 Nov 2017 08:19:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7025E008A4
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 08:19:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Nov 2017 08:19:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,436,1505804400"; 
   d="scan'208";a="8320123"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 22 Nov 2017 08:19:57 -0800
To: "Koehler, Yannick" <yannick.koehler@hpe.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CS1PR8401MB0840E46221671FF3A69BA921ED220@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<f849e7ef-c733-18a2-3032-643b3ca476a4@linux.intel.com>
	<CS1PR8401MB08405B07B659CA7C8530654DED200@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <3fe1526b-7233-7011-ace2-12ef32252822@linux.intel.com>
Date: Wed, 22 Nov 2017 18:20:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB08405B07B659CA7C8530654DED200@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Generating Package/Image Developer Documentation
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
X-List-Received-Date: Wed, 22 Nov 2017 16:19:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/22/2017 06:16 PM, Koehler, Yannick wrote:

> I am using Yocto 1.9/2.0 and a quick grep doesn't seems to indicate support for this DISTRO_FEATURE.

This was added about a year ago and Yocto 1.9 is a lot older. If you 
want to submit your work upstream, you have to rebase it to the master 
branch first.

Alex

