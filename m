Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 940F1E00C5C; Tue, 20 Aug 2019 02:13:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FAFFE00C11
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 02:13:32 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Aug 2019 02:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="353518294"
Received: from pruecklm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.36.159])
	by orsmga005.jf.intel.com with ESMTP; 20 Aug 2019 02:13:30 -0700
To: yocto@yoctoproject.org
References: <em3f1432ac-a1d6-48de-84a0-8ef7de6fb37d@andys-imac.leeshillfarm.local>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <c9ed0d7d-362f-7039-3a3a-0166651f3bee@intel.com>
Date: Tue, 20 Aug 2019 10:13:29 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <em3f1432ac-a1d6-48de-84a0-8ef7de6fb37d@andys-imac.leeshillfarm.local>
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
X-List-Received-Date: Tue, 20 Aug 2019 09:13:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 20/08/2019 09:53, Andy Pont wrote:
> This may be a really dumb question but is it possible to generate an SDK 
> from a Yocto build that will allow cross compilation of an application 
> to be done on a machine running macOS?

Yes, with caveats: http://git.yoctoproject.org/cgit/cgit.cgi/meta-darwin

The caveats are that it's not especially pretty as you can't just 
download macOS headers, and hasn't been used since 2015 so might need a 
little updating.

I do wonder if https://github.com/darlinghq/darling has sufficient 
headers/libraries to build what we need, instead of asking you to copy 
pieces from a macOS install.

Ross

