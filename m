Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EA20E00ECB; Wed,  7 Feb 2018 22:32:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E542E00E02
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 22:32:30 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Feb 2018 22:32:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,477,1511856000"; d="scan'208";a="16208101"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 07 Feb 2018 22:32:29 -0800
To: Russell Peterson <bluehills7@comcast.net>, yocto@yoctoproject.org
References: <1B4071C2-44F7-452F-A62A-EF163C7231BE@comcast.net>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <5c999223-a181-fbb1-17fd-3e0dc81096dc@linux.intel.com>
Date: Thu, 8 Feb 2018 08:26:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <1B4071C2-44F7-452F-A62A-EF163C7231BE@comcast.net>
Subject: Re: dnf error
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
X-List-Received-Date: Thu, 08 Feb 2018 06:32:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 02/08/2018 03:17 AM, Russell Peterson wrote:
> core-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf
> Last metadata expiration check: 0:00:00 ago on Thu 08 Feb 2018 12:07:06 
> AM UTC.
> Error:
>   Problem: conflicting requests
>    - nothing provides <xxxxxxx>/hosttools/python needed by 
> ofa-kernel-4.2-r0.mymachine
> ERROR: core-image-initramfs-1.0-r0 do_rootfs: Function failed: do_rootfs
> 


Something in ofa-kernel rpm package is erroneously referring to 
.../hosttools/python. Rpm takes that as a dependency that must be satisfied.

Find out what it is and how it happens.

Alex

