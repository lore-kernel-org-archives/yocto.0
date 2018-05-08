Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C17E4E0086B; Tue,  8 May 2018 03:35:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D29E005A9
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 03:35:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 May 2018 03:35:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,377,1520924400"; d="scan'208";a="54115841"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 08 May 2018 03:35:36 -0700
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	Mirza Krak <mirza.krak@gmail.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
	<CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
	<ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
	<CALw8SCW8hYUE4pz2CfHprZT-9+4c8wYP2rudWwj9rJC71E58ug@mail.gmail.com>
	<d21584ce-ab80-ee64-16bc-81fa1a07d978@linux.intel.com>
	<166e9515231b4c9da6395957d58a75bb@XBOX02.axis.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f58fc6cd-43fb-4fc6-c196-1aeb9ea7288d@linux.intel.com>
Date: Tue, 8 May 2018 13:29:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <166e9515231b4c9da6395957d58a75bb@XBOX02.axis.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 08 May 2018 10:35:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/08/2018 12:33 PM, Peter Kjellerstedt wrote:
> FYI, the already applied patch only solves half the problem. I have an
> updated version that solves all of it that I am preparing for publication.
> I only need to make some verifications first...

I just found that out as well. Lua is not relevant, we don't even enable 
or build it. Anyway, I've been fighting*scratch*convincing upstream all 
morning that fcntl bombs are a real problem under Docker, you are 
welcome to join :)

https://bugzilla.redhat.com/show_bug.cgi?id=1537564

Alex

