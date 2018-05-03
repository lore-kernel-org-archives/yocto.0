Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67C85E009DF; Thu,  3 May 2018 07:27:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F866E008D2
	for <yocto@yoctoproject.org>; Thu,  3 May 2018 07:27:47 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 May 2018 07:27:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,358,1520924400"; d="scan'208";a="52911701"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 03 May 2018 07:27:45 -0700
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	Paulo Neves <ptsneves@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
	<50b98492ad0d40a0b8f32933c371125f@XBOX02.axis.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <db9f3d8e-d24c-bf12-db37-084487e747de@linux.intel.com>
Date: Thu, 3 May 2018 17:21:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <50b98492ad0d40a0b8f32933c371125f@XBOX02.axis.com>
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
X-List-Received-Date: Thu, 03 May 2018 14:27:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/03/2018 04:37 PM, Peter Kjellerstedt wrote:
>>> # Have dnf always print in verbose mode and print the output to
>>> bb.debug instead of bb.note.
>>
>> I think this is the best solution actually.
> 
> I disagree with changing bb.note to bb.debug for this. It is very good
> to be able to look in log.do_rootfs to see what dnf has done (we have
> ROOTFS_RPM_DEBUG set by default). Changing the output to debug level
> would mean having to run bitbake with -D, which is anything but
> desirable.

If I'm reading the bitbake --help right, bb.debug (and bb.note) are 
always written to the log; setting -D level or -v only affects what is 
printed on stdout.


Alex

