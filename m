Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D21ACE00BB5; Thu, 10 Oct 2019 09:45:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69F3EE0053F
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 09:45:20 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Oct 2019 09:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="198414474"
Received: from unknown (HELO blackadder.local) ([10.252.56.237])
	by orsmga006.jf.intel.com with ESMTP; 10 Oct 2019 09:45:18 -0700
To: yocto@yoctoproject.org
References: <35d0e6da-7111-9c9f-dbbf-fec0ce0f9afe@faresoftware.it>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <38f825e0-df99-4f52-84ad-dcbfd18019cd@intel.com>
Date: Thu, 10 Oct 2019 17:45:17 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <35d0e6da-7111-9c9f-dbbf-fec0ce0f9afe@faresoftware.it>
Subject: Re: Force do_package_index
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
X-List-Received-Date: Thu, 10 Oct 2019 16:45:20 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 10/10/2019 16:35, Mauro Ziliani wrote:
> How to force the execuction o do_package_index over an image recipe?

Are you intending to use the deploy directory as a package feed? 
"bitbake package-index" for that.

Ross

