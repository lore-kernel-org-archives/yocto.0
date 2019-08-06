Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ED2EE00C22; Tue,  6 Aug 2019 07:03:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CFF4E00D8F
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 07:02:57 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Aug 2019 07:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="374061431"
Received: from ambachan-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.33.220])
	by fmsmga006.fm.intel.com with ESMTP; 06 Aug 2019 07:02:56 -0700
To: yocto@yoctoproject.org
References: <CAA=hcWQcjmVCQGbQWNjMLCg_x3g0qXEx5XKw3goY0NC7VChZug@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <24cfe663-6281-1f71-5f39-ef2b2ebee68a@intel.com>
Date: Tue, 6 Aug 2019 15:02:55 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWQcjmVCQGbQWNjMLCg_x3g0qXEx5XKw3goY0NC7VChZug@mail.gmail.com>
Subject: Re: Replace busybox by bash
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
X-List-Received-Date: Tue, 06 Aug 2019 14:03:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 06/08/2019 13:34, JH wrote:
> The busybox is too simple, my application heavy based on shell
> scripts, I have been thinking to dig out the busybox and replace it by
> bash, has anyone remove the busybox to use bash as default shell? How
> large size will be increased and what will be any side effect?

Removing busybox is not trivial, but you can just install 
bash/coreutils/etc as required.

Yes it's bigger, but you want the full tools.  No side effects.

Ross

