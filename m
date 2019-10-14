Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A619E00B23; Mon, 14 Oct 2019 15:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3EF5E0091A
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 15:04:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Oct 2019 15:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="395334236"
Received: from dirkbeck-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.252.40.171])
	by fmsmga005.fm.intel.com with ESMTP; 14 Oct 2019 15:04:40 -0700
To: myken <myken@iae.nl>, pwr@iae.nl, yocto@yoctoproject.org
References: <d4ac9051-6d08-f41d-ad28-c0ae9daffae0@iae.nl>
	<51d72979-2472-aa84-40cf-7d9e31b05b1c@intel.com>
	<ab17dba3-e0bc-b735-6fe8-744c8ad2976a@iae.nl>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <1683ff49-f5ec-937f-5561-1059a411431e@intel.com>
Date: Mon, 14 Oct 2019 23:04:40 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ab17dba3-e0bc-b735-6fe8-744c8ad2976a@iae.nl>
Subject: Re: NooB: qemu-native compile error during bitbake core-image-sato
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
X-List-Received-Date: Mon, 14 Oct 2019 22:04:43 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 14/10/2019 22:32, myken wrote:
> For future reference, how could I have found this answer? I searched 
> like crazy but never found any reference that qemu is "old" and my 
> kernel is "new".

By recognising where the failure was, knowing that glibc changed, and 
that qemu needs to be fixed, then finding the relevant fixes already 
existed in qemu.

Running unsupported distros means discovering stuff like this.  :)

Ross

