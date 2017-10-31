Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C82B4E00CA6; Tue, 31 Oct 2017 02:27:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62EB7E00C62
	for <yocto@yoctoproject.org>; Tue, 31 Oct 2017 02:27:35 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP; 31 Oct 2017 02:27:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,323,1505804400"; d="scan'208";a="169938079"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 31 Oct 2017 02:27:34 -0700
To: Craig McQueen <craig.mcqueen@innerrange.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5500469A22567C4BAF673A6E86AFA3A40295F094B8EC@IR-CENTRAL.corp.innerrange.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <732a94f9-4219-b49d-0218-1e0d26b1c3de@linux.intel.com>
Date: Tue, 31 Oct 2017 11:27:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40295F094B8EC@IR-CENTRAL.corp.innerrange.com>
Subject: Re: linux-firmware: build failure
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
X-List-Received-Date: Tue, 31 Oct 2017 09:27:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/31/2017 09:04 AM, Craig McQueen wrote:
> Would the following be a suitable fix? --

This needs to go to oe-core list. Just one comment...

>          # Remove python script used to check the WHENCE file
> -       rm ${D}${nonarch_base_libdir}/firmware/check_whence.py
> +       rm ${D}${nonarch_base_libdir}/firmware/check_whence.py -rf
>   

You need to either remove the file, or remove the line that does the 
removal. Don't do a 'remove if present', it's better to be deterministic.

Alex

