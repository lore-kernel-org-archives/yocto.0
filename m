Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B40B9E00C5C; Tue, 20 Aug 2019 02:43:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AEE9E00C11
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 02:43:37 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Aug 2019 02:43:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="329656757"
Received: from pruecklm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.36.159])
	by orsmga004.jf.intel.com with ESMTP; 20 Aug 2019 02:43:35 -0700
To: yocto@yoctoproject.org
References: <em3f1432ac-a1d6-48de-84a0-8ef7de6fb37d@andys-imac.leeshillfarm.local>
	<c9ed0d7d-362f-7039-3a3a-0166651f3bee@intel.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <24aab526-f403-5951-dac1-febfb3e75245@intel.com>
Date: Tue, 20 Aug 2019 10:43:34 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c9ed0d7d-362f-7039-3a3a-0166651f3bee@intel.com>
Subject: Re: Building SDK for macOS
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
X-List-Received-Date: Tue, 20 Aug 2019 09:43:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 20/08/2019 10:13, Ross Burton wrote:
> On 20/08/2019 09:53, Andy Pont wrote:
>> This may be a really dumb question but is it possible to generate an 
>> SDK from a Yocto build that will allow cross compilation of an 
>> application to be done on a machine running macOS?
> 
> Yes, with caveats: http://git.yoctoproject.org/cgit/cgit.cgi/meta-darwin
> 
> The caveats are that it's not especially pretty as you can't just 
> download macOS headers, and hasn't been used since 2015 so might need a 
> little updating.

Did a little poking.

The need to build a SDK tarball on an existing macOS could probably be 
removed by using one of the convenient tarballs from 
https://github.com/phracker/MacOSX-SDKs/releases.

The SDK is 32-bit, which is going to be an issue on modern macOS systems.

The layer has several versioned bbappends which need updating to work 
with recent releases.

None of this is insurmountable, meta-darwin has been used for products 
in the past and with a little effort can be made to do so again.

Ross

