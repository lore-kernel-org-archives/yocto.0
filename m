Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED30AE00C25; Fri, 30 Mar 2018 03:16:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B194CE00529
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 03:16:32 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Mar 2018 03:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,381,1517904000"; d="scan'208";a="29719635"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.249.69.122])
	([10.249.69.122])
	by orsmga008.jf.intel.com with ESMTP; 30 Mar 2018 03:16:30 -0700
To: Tom Gibson <tom.gibson@csoftware.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk>
	<da46c6f0-71ec-2b4d-e430-22bebed64c24@gmail.com>
	<1e95f92ab4e3479ca3df99189062668d@csoftware.co.uk>
	<ce1b98dc7d2e4f58bd30bd9a3966ea49@csoftware.co.uk>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <0f0fef5c-f115-9e05-dfe3-64e636e7d786@intel.com>
Date: Fri, 30 Mar 2018 18:16:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <ce1b98dc7d2e4f58bd30bd9a3966ea49@csoftware.co.uk>
Subject: Re: ClamAV PCRE support
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
X-List-Received-Date: Fri, 30 Mar 2018 10:16:34 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Tom,

On 03/29/2018 11:29 PM, Tom Gibson wrote:

>     When I run clamscan on our board I get a number of errors of the
>     form “logical signature for … uses PCREs but support is disabled,
>     skipping” so the solution would appear to be to add PCRE support. In
>     the ClamAV bitbake recipe I see there is a PACKAGECONFIG variable
>     for PCRE, so to test if this is the solution I have added the
>     following to my local.conf:
> 
>      
> 
>     PACKAGECONFIG_append_pn-clamav = “ pcre”
> 
>      
> 
>     and have also added “ libpcre2” before “clamav” in the IMAGE_INSTALL
>     as above.

This shouldn't be necessary, PACKAGECONFIG adds DEPENDS on libpcre when
pcre is enabled and only of two should be required.

> 
>      
> 
>     Unfortunately when I run bitbake I now get a configure error similar
>     to the following:
> 
>      
> 
>     configure: error: cannot locate libpcre2 or libpcre at
>     <builddir>/tmp/work/armv7a-neon-poky-linux-gnueabi/clamav/0.99.3-r0/recipe-sysroot/usr/lib
> 

This is happening because clamav is looking for pcre-config (uses it to
find pcre paths) and it's not able to locate it ...

Even if you do get around this error by passing the path to configure,
using binconfig files to evaluate paths has been disabled in OE-core layer.

So, you will have to fix the configure/pcre.m4 file in clamav to do this
using .pc file from libpcre instead.

Thanks,
Anuj

