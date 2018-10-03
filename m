Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 193A9E00AD1; Wed,  3 Oct 2018 01:38:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2BA2E0095C;
	Wed,  3 Oct 2018 01:38:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Oct 2018 01:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,335,1534834800"; d="scan'208";a="85356300"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.21.255])
	([10.221.21.255])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Oct 2018 01:37:51 -0700
To: "Muhlenkamp, Lewis" <lewis.muhlenkamp@stryker.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>
References: <CY1PR01MB185241745662704F7F200C5E8FE80@CY1PR01MB1852.prod.exchangelabs.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <a2cbdc03-c196-869f-fc8f-520ad7d508df@intel.com>
Date: Wed, 3 Oct 2018 16:37:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CY1PR01MB185241745662704F7F200C5E8FE80@CY1PR01MB1852.prod.exchangelabs.com>
Subject: Re: [meta-intel] ac_nonexistent.h error in do_configure
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
X-List-Received-Date: Wed, 03 Oct 2018 08:38:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/02/2018 11:53 PM, Muhlenkamp, Lewis wrote:
> configure:4485: x86_64-oe-linux-gcc -E
> --sysroot=/home/lmuhlenkamp/build-target02/tmp-glibc/work/corei7-64-oe-linux/xf86-video-intel/2_2.99.917+gitAUTOINC+e4fe79cf0d-r0/recipe-sysroot 
> -m64 -march=nehalem -mtune=generic -mfpmath=sse -msse4.2  conftest.c
> 
> conftest.c:11:10: fatal error: ac_nonexistent.h: No such file or directory
> 
> #include <ac_nonexistent.h>
> 
>           ^~~~~~~~~~~~~~~~~~
> 
> compilation terminated.
> 
> configure:4485: $? = 1
> 
> configure: failed program was:
> 
> | /* confdefs.h */
> 
> | #define PACKAGE_NAME "xf86-video-intel"
> 
> | #define PACKAGE_TARNAME "xf86-video-intel"
> 
> | #define PACKAGE_VERSION "2.99.917"
> 
> | #define PACKAGE_STRING "xf86-video-intel 2.99.917"
> 
> | #define PACKAGE_BUGREPORT
> "https://bugs.freedesktop.org/enter_bug.cgi?product=xorg"
> 
> | #define PACKAGE_URL ""
> 
> | #define PACKAGE "xf86-video-intel"
> 
> | #define VERSION "2.99.917"
> 
> | /* end confdefs.h.  */
> 
> | #include <ac_nonexistent.h>
> 
> === End excerpt ===
> 
>  
> 

This check is supposed to fail. This is a sanity test, that header isn't
supposed to exist and autoconf expects this compilation error. I don't
think this is the actual point of failure.

Thanks,

Anuj


