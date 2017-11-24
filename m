Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5678E00D14; Fri, 24 Nov 2017 06:37:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B325E00D0B
	for <yocto@yoctoproject.org>; Fri, 24 Nov 2017 06:37:17 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 Nov 2017 06:37:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,447,1505804400"; 
   d="scan'208";a="9084623"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2017 06:37:16 -0800
To: "Koehler, Yannick" <yannick.koehler@hpe.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CS1PR8401MB084071ADF580BCCD624BF26DED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<1c666fce-c37f-efd8-6ad8-4400e4650e8a@linux.intel.com>
	<CS1PR8401MB0840B4C7DC656142180276BFED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<fb1def6f-9c04-dbfe-d15d-682a559e8cde@linux.intel.com>
	<CS1PR8401MB0840DD361F33937D9BD9DA71ED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <dc4f217e-cd05-efec-7044-53f5d9a49dcc@linux.intel.com>
Date: Fri, 24 Nov 2017 16:37:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB0840DD361F33937D9BD9DA71ED260@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: Executing ptest using image test ?
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
X-List-Received-Date: Fri, 24 Nov 2017 14:37:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/24/2017 04:30 PM, Koehler, Yannick wrote:
> I was not using -c testimage, and I also think the DISTRO_FEATURE may be incorrectly set in my case, I will try that, thanks for the pointer.

Do read the comments in testimage.bbclass, as they explain how to use 
it. Particularly, seems like ptests is actually not added to the list of 
runtime tests to run by default, so you need to do that in your 
local.conf (or in the image recipe). A lot of hoops to jump through, I 
know, but at least it's cleanly structured.

Alex

