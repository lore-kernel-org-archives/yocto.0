Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 827FFE00C01; Tue, 17 Oct 2017 06:33:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08DC2E00B87
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 06:33:21 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Oct 2017 06:33:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,391,1503385200"; d="scan'208";a="910730878"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2017 06:33:20 -0700
To: yocto@yoctoproject.org
References: <1508218121.34337.17342@fedora25.yocto.io>
	<8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <eca7f625-f5d1-4b25-7ff5-1ab7d2e9531b@linux.intel.com>
Date: Tue, 17 Oct 2017 16:28:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <8653269a-f4c0-e7f4-1393-7c77ad18502d@gmail.com>
Subject: Re: minimize size of SW update bundle
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
X-List-Received-Date: Tue, 17 Oct 2017 13:33:22 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/17/2017 04:12 PM, Robert Berger wrote:
> Imagine you have only a limited bandwidth to your devices available for 
> SW update. So you would like to minimize what's uploaded (over the air) 
> to your devices.
> 
> How would you do this with yocto?
> 
> [1] and [2] might be able to do incremental updates, but maybe there are 
> more ideas out there.
> 
> Like how would you get a diff between two release builds...
> 
> [1] https://wiki.yoctoproject.org/wiki/Meta-swupd
> [2] https://github.com/advancedtelematic/meta-updater

If you want to stick with desktop-style rpm package feeds, then there's 
deltarpm, but YP doesn't currently support it, and I don't know if it's 
still used by anyone. From what I remember, it did cut down on the 
downloads time, but installation became much slower.

Alex

