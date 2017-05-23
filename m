Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1EF2E00901; Tue, 23 May 2017 06:35:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C4AE00710
	for <yocto@yoctoproject.org>; Tue, 23 May 2017 06:35:55 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 May 2017 06:35:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,382,1491289200"; d="scan'208";a="105910476"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 23 May 2017 06:35:53 -0700
To: Russell Peterson <bluehills7@comcast.net>
References: <3222F3C5-34FC-4373-B40F-5AA8EF9C904E@comcast.net>
	<151909c6-8fb5-e6b7-6695-6a1bfed1b0af@linux.intel.com>
	<E5A9D4EF-FB89-4A78-B78E-997BDECD307A@comcast.net>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9402d05d-cadc-fee1-4b74-a3e1d00506f8@linux.intel.com>
Date: Tue, 23 May 2017 16:33:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <E5A9D4EF-FB89-4A78-B78E-997BDECD307A@comcast.net>
Cc: yocto@yoctoproject.org
Subject: Re: unmodified binary RPM installed on rootfs?
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
X-List-Received-Date: Tue, 23 May 2017 13:35:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/23/2017 03:16 AM, Russell Peterson wrote:

> Of course, I decided to go for the gold and attempt to get this
> recipe to handle a binary .tgz file that contains itself multiple rpm
> files (one is binary, the other is a source rpm for the kernel
> modules).  I added a do_unpack_extra function to do an rpm2cpio |
> cpio operation on the binary rpm… and now see cpio malformed errors.
> My guess is the rpm uses compression… but shouldn’t the rpm2cpio
> handle that??

Does the same thing work on your host machine (using host's rpm2cpio)?

We have switched from rpm 5 to rpm4 recently, so you might be hit by the 
transition - can you try the same thing with pyro release, or master?

Also, can you copy-paste the recipe?

Alex

