Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDD0BE00994; Sun,  8 Apr 2018 19:38:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B052BE00843
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2018 19:38:22 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Apr 2018 19:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,426,1517904000"; d="scan'208";a="189858214"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.16.247])
	([10.221.16.247])
	by orsmga004.jf.intel.com with ESMTP; 08 Apr 2018 19:38:20 -0700
To: Mostafa Farzane <farzanemostafa@yahoo.com>
References: <674400918.88037.1523083601988.ref@mail.yahoo.com>
	<674400918.88037.1523083601988@mail.yahoo.com>
	<355c797a-a34b-2326-62bf-ca503edc82f5@intel.com>
	<1779056233.383965.1523192967392@mail.yahoo.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <338d9cd0-3be6-2382-1515-3b8549354d1b@intel.com>
Date: Mon, 9 Apr 2018 10:38:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1779056233.383965.1523192967392@mail.yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot add libsrtp to yocto image
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
X-List-Received-Date: Mon, 09 Apr 2018 02:38:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/08/2018 09:09 PM, Mostafa Farzane wrote:
> 
> Thanks alot,
> 
> I added TOOLCHAIN_TARGET_TASK = "libsrtp-staticdev" to my image instead
> of libsrtp. But I get:
> 
>  * calculate_dependencies_for: Cannot satisfy the following dependencies
> for libsrtp-staticdev:
>  *      libsrtp (= 1.5.2-r0) *
>  * opkg_solver_install: Cannot install package libsrtp-staticdev.
> 

Please try adding ALLOW_EMPTY_${PN} = "1" in your bbappend or try:

https://patchwork.openembedded.org/patch/150000/

