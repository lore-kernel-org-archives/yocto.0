Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51ABEE00CE2; Thu, 16 Nov 2017 23:03:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F089DE00C59
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 23:03:19 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Nov 2017 23:03:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,407,1505804400"; 
   d="scan'208";a="6005530"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2017 23:03:18 -0800
To: Matt Schepers <mschepers@telspandata.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CY4PR04MB11772AED5F3BDE6D4259158AB02E0@CY4PR04MB1177.namprd04.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <1a2f7573-f74b-b2f0-3efc-0223f17e4f11@linux.intel.com>
Date: Fri, 17 Nov 2017 09:03:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CY4PR04MB11772AED5F3BDE6D4259158AB02E0@CY4PR04MB1177.namprd04.prod.outlook.com>
Subject: Re: Trying to filter out 2 strings from EXTRA_OECONF, why doesn't this work?
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
X-List-Received-Date: Fri, 17 Nov 2017 07:03:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/17/2017 12:37 AM, Matt Schepers wrote:
>      What do I have to do to filter out BOTH configure flags. I realize I can just write a new recipe, but I don't think that's the "correct" answer.

The best way to fix this is to modify the original recipe so that all 
three options become PACKAGECONFIG-configurable, and submit the patch to 
whoever maintains the recipe.

Alex

