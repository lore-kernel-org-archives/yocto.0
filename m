Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3C5FE00A6A; Thu,  3 May 2018 06:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90487E00948
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 06:09:34 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 May 2018 06:09:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,358,1520924400"; d="scan'208";a="52894208"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2018 06:09:33 -0700
To: Paulo Neves <ptsneves@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
Date: Thu, 3 May 2018 16:03:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
Subject: Re: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Thu, 03 May 2018 13:09:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/03/2018 01:42 PM, Paulo Neves wrote:
> # Add ROOTFS_RPM_DEBUG to the documentation;

I'd rather get rid of it, the less variables the better :)

> # Detect if we are running with debug output and enable the debugging
> output. This is the most elegant solution but I do not know how to
> detect if debug log level is turned on;

I don't think you are meant to detect that; bitbake's debug level is not 
meant to affect what is being printed, but merely whether it's printed 
or discarded.

> # Have dnf always print in verbose mode and print the output to
> bb.debug instead of bb.note.

I think this is the best solution actually.

> I am happy to provide a patch upon decision or suggestions.

Thank you :) Do measure the performance before and after as we don't 
want to introduce a significant slowdown here.


Alex

