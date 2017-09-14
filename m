Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C34CCE00CC8; Thu, 14 Sep 2017 05:15:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E473E00CAF
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 05:15:45 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Sep 2017 05:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,392,1500966000"; d="scan'208";a="151789704"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 14 Sep 2017 05:15:43 -0700
To: Max Krummenacher <max.oss.09@gmail.com>, yocto@yoctoproject.org
References: <20170914120924.1935-1-max.krummenacher@toradex.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9ad2a775-b43c-bb0d-ff0c-5a2c2052a68f@linux.intel.com>
Date: Thu, 14 Sep 2017 15:11:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20170914120924.1935-1-max.krummenacher@toradex.com>
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Subject: Re: [meta-qt4][PATCH 1/2] qt4-4.8.7.inc: use a supported builtin type for Uchar
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
X-List-Received-Date: Thu, 14 Sep 2017 12:15:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 09/14/2017 03:09 PM, Max Krummenacher wrote:
> cope with icu 59's changed use of uchar.
> http://site.icu-project.org/download/59#TOC-ICU4C-char16_t
> 
> 4.8.7-r0/recipe-sysroot/usr/include/unicode/umachine.h:347:13: error: 'char16_t' does not name a type; did you mean 'wchar_t'?
>       typedef char16_t UChar;
>               ^~~~~~~~
>               wchar_t
> ...
> 4.8.7-r0/recipe-sysroot/usr/include/unicode/uversion.h:167:55: error: 'UChar' does not name a type; did you mean 'UChar32'?
>   u_versionFromUString(UVersionInfo versionArray, const UChar *versionString);

Thanks; pushed both patches.

Alex

