Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92DC3E00CE8; Tue, 12 Dec 2017 07:45:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE765E00B5F
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 07:45:32 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Dec 2017 07:45:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,395,1508828400"; d="scan'208";a="17618786"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.12.136])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2017 07:45:30 -0800
To: Anibal Limon <anibal.limon@linaro.org>
References: <20171207185111.14402-1-limon.anibal@gmail.com>
	<6feec949-df63-7320-4c70-b06053b51818@linux.intel.com>
	<CA+_Aqitp2Eb5OeW3nZMpiyxeE-AT=So39NCx8enUJu9g8MWUxw@mail.gmail.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <4d1c82cb-3ff3-1c95-b80a-62970ee7fe35@linux.intel.com>
Date: Tue, 12 Dec 2017 15:45:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CA+_Aqitp2Eb5OeW3nZMpiyxeE-AT=So39NCx8enUJu9g8MWUxw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner 1/3] Makefile: libcheck now requires to link subunit
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
X-List-Received-Date: Tue, 12 Dec 2017 15:45:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 12/12/17 14:18, Anibal Limon wrote:
> 
> 
> On 12 December 2017 at 06:24, Joshua Lock <joshua.g.lock@linux.intel.com 
> <mailto:joshua.g.lock@linux.intel.com>> wrote:
> 
>     This entire series merged to master of the ptest-runner2 repository.
> 
>     Will you be sending a recipe update?
> 
> 
> Yes, can you create the v2.1.1 tag pointing current master?

Done:

http://git.yoctoproject.org/clean/cgit.cgi/ptest-runner2/tag/?id=v2.1.1

Thanks,
Joshua

