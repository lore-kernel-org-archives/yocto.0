Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B1AFE00BF6; Thu,  8 Jun 2017 04:02:51 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A29D2E00BE6
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 04:02:49 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jun 2017 04:02:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,314,1493708400"; d="scan'208";a="95907713"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 08 Jun 2017 04:02:46 -0700
To: "Burton, Ross" <ross.burton@intel.com>,
	Craig McQueen <craig.mcqueen@innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40295F079EEFF@IR-CENTRAL.corp.innerrange.com>
	<CAJTo0LbPvhZehFQsEJMZU72SQvxbNupHVsjpJ_8RLjS9hNYRkg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <2dcac9da-5dbb-c93c-0c2d-3a9bec5ecabc@linux.intel.com>
Date: Thu, 8 Jun 2017 14:02:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbPvhZehFQsEJMZU72SQvxbNupHVsjpJ_8RLjS9hNYRkg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python 3 internal package dependencies
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
X-List-Received-Date: Thu, 08 Jun 2017 11:02:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/08/2017 11:50 AM, Burton, Ross wrote:

>     Is it worth trying to improve the internal package RDEPENDS in the
>     Python 3 recipe, or is it better for recipes for Python apps to just
>     manually list all the sub-dependencies as needed?
>
>
> Definitely worth improving the internal dependencies, they're generated
> by the scripts in oe-core/scripts/contrib/python.

I'll bite: should we just drop the the splitting of Python modules into 
their own packages? In 2017, this is more trouble than it's worth, IMO.


Alex


