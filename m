Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C45FDE00C4F; Thu,  5 Apr 2018 23:39:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD7FDE00708
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 23:39:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2018 23:39:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,414,1517904000"; d="scan'208";a="45406279"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.221.16.247])
	([10.221.16.247])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2018 23:39:10 -0700
To: Raymond Yeung <rksyeung@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<5e7c67e4-3f79-aece-0d1b-a1494acda442@intel.com>
	<MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <34bdb916-5d2b-a478-4b83-3a47e39db01d@intel.com>
Date: Fri, 6 Apr 2018 14:39:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <MWHPR19MB118326D76F8C45037C1BA6E6C5BA0@MWHPR19MB1183.namprd19.prod.outlook.com>
Subject: Re: Adding debug output in recipe
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
X-List-Received-Date: Fri, 06 Apr 2018 06:39:14 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/06/2018 02:05 PM, Raymond Yeung wrote:
> Hi Anuj,
> 
> 
> "bitbake -e" is very useful for debugging out-of-tree build issue.
>  However, looks like I have another issue.  From "devtool build" output,
> I could see variables passed into makefile.  Let's focus on "CC" for now:
> 
> 
> CC=x86_64-poky-linux-gcc  -fuse-ld=bfd

I think that is the value of KERNEL_CC if you're inheriting module.bbclass.

> 
> 
> If we compare this to "bitbake -e" dump:
> 
> 
> export CC="x86_64-poky-linux-gcc  -m64 -march=corei7 -mtune=corei7
> -mfpmath=sse -msse4.2
> --sysroot=/a/ryeung/dev/yocto-git/yocto_build/build/tmp/sysroots/intel-corei7-64"
> 
> 
> You can see somehow the variable is modified.  Let's focus on --sysroot
> portion.  Without it, there seems to be no way for me to control
> LIBRARY_PATH's value.  The result is that the linker couldn't find
> crti.o and a few other files.  By manually adding back --sysroot
> portion, I could now get past this failure, onto the next.
> 
> 
> I suppose, as a possible final solution, I could do:
> 
> 
> $(CC) --sysroot=$(KERNEL_SRC) ...

This looks like a problem with your source Makefile. Please check the
variable that points to kernel sources in your Makefile.

Use EXTRA_OEMAKE += "<varname>='${STAGING_KERNEL_DIR}'" if the variable
name used in your Makefile is different from KERNEL_PATH or KERNEL_SRC.

You can also check run.do_compile file to see the exact compile steps.

Please see:

https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#incorporating-out-of-tree-modules

> 
> 
> I'm really looking for simpler, more intuitive solution.  What about the
> missing "-m64 -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2" in the
> export?
> 
> 
> Raymond
> 
> 
> 
> 
> ------------------------------------------------------------------------
> *From:* Anuj Mittal <anuj.mittal@intel.com>
> *Sent:* Thursday, April 5, 2018 9:52 PM
> *To:* Raymond Yeung; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Adding debug output in recipe
>  
> On 04/05/2018 03:33 PM, Raymond Yeung wrote:
>> Is there a way to add simple debug output (ideally don't need to control
>> debug level) to echo out values of variables?  I tried the bb.xxx
>> variants, but couldn't get them to work.
>> 
> 
> To find out what a variable is being set to, you can try:
> 
> bitbake -e <recipename>
> 
> Please see:
> 
> https://wiki.yoctoproject.org/wiki/Technical_FAQ#I_set_a_variable_but_it_doesn.27t_seem_to_be_having_an_effect.2C_how_do_I_fix_this.3F
> 
> Is that what you were looking for?


