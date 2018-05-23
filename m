Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36998E009CF; Tue, 22 May 2018 18:08:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14743E00791
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 18:08:16 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 May 2018 18:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,431,1520924400"; d="scan'208";a="53061181"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.23.24])
	([10.221.23.24])
	by orsmga003.jf.intel.com with ESMTP; 22 May 2018 18:08:15 -0700
To: techi eth <techieth@gmail.com>, yocto@yoctoproject.org
References: <CAJw2sSA-7znpoAFzz5_=bqQsWP+xrYzxbFt+2Yms=+4dcw573g@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <a46a4ad3-dbfc-89d5-c7d9-37832ec0e24b@intel.com>
Date: Wed, 23 May 2018 09:08:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAJw2sSA-7znpoAFzz5_=bqQsWP+xrYzxbFt+2Yms=+4dcw573g@mail.gmail.com>
Subject: Re: Yocto SDK & Toolchain Deploy Issue
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
X-List-Received-Date: Wed, 23 May 2018 01:08:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 05/22/2018 12:23 PM, techi eth wrote:
> I would like to use SDK’s & tool chain generated from Yocto to some
> other PC. I see following difficulty while using.
> 
>  
> 
> 1)      Path
> in *environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi* is hard
> code. Is it possible to have that is configurable.

You will have to install the SDK using the sh file that is generated on
that other machine that you're planning to use.

Please see this and the sections around it:

https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#sdk-installing-the-sdk

If this doesn't answer your question, then as Alex mentioned, please
include more details on what you are doing and the steps.

