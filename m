Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92739E00D03; Tue, 12 Dec 2017 04:24:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15972E00CEF
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 04:24:47 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Dec 2017 04:24:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,395,1508828400"; d="scan'208";a="185962630"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.12.136])
	by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2017 04:24:45 -0800
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <limon.anibal@gmail.com>,
	yocto@yoctoproject.org
References: <20171207185111.14402-1-limon.anibal@gmail.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <6feec949-df63-7320-4c70-b06053b51818@linux.intel.com>
Date: Tue, 12 Dec 2017 12:24:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <20171207185111.14402-1-limon.anibal@gmail.com>
Cc: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linaro.org>
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
X-List-Received-Date: Tue, 12 Dec 2017 12:24:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

This entire series merged to master of the ptest-runner2 repository.

Will you be sending a recipe update?

Thanks,
Joshua

On 07/12/17 18:51, Aníbal Limón wrote:
> From: Aníbal Limón <anibal.limon@linaro.org>
> 
> Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
> ---
>   Makefile | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 434b89f..1bde7be 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -22,7 +22,7 @@ TEST_SOURCES=tests/main.c tests/ptest_list.c tests/utils.c $(BASE_SOURCES)
>   TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
>   TEST_EXECUTABLE=ptest-runner-test
>   TEST_LDFLAGS=-lm -lrt -lpthread
> -TEST_LIBSTATIC=-lcheck
> +TEST_LIBSTATIC=-lcheck -lsubunit
>   
>   TEST_DATA=$(shell echo `pwd`/tests/data)
>   
> 

