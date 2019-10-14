Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3720DE00C9B; Mon, 14 Oct 2019 09:54:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94FDFE0096F
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 09:54:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Oct 2019 09:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="189076694"
Received: from dirkbeck-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.252.40.171])
	by orsmga008.jf.intel.com with ESMTP; 14 Oct 2019 09:54:52 -0700
To: pwr@iae.nl, yocto@yoctoproject.org
References: <d4ac9051-6d08-f41d-ad28-c0ae9daffae0@iae.nl>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <51d72979-2472-aa84-40cf-7d9e31b05b1c@intel.com>
Date: Mon, 14 Oct 2019 17:54:51 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d4ac9051-6d08-f41d-ad28-c0ae9daffae0@iae.nl>
Subject: Re: NooB: qemu-native compile error during bitbake core-image-sato
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
X-List-Received-Date: Mon, 14 Oct 2019 16:54:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 14/10/2019 17:20, pwr@iae.nl wrote:
> Hello list,
> 
> First time here so, hi there :-) I'm new to yocto but not new to linux.
> 
> I'm following the Yocto Project Quick Build manual 
> (https://www.yoctoproject.org/docs/2.7.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html)
> on an Arch (Manjaro) machine (uname -r: 4.19.79-1-MANJARO). I know 
> Manjaro is not an official supported distribution but I'm hopping on 
> some help nevertheless.
> 
> My build stops at:
>  >> bitbake core-image-sato
> 
> Build Configuration:
> BB_VERSION           = "1.42.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "manjaro"
> TARGET_SYS           = "i586-poky-linux"
> MACHINE              = "qemux86"
> DISTRO               = "poky"
> DISTRO_VERSION       = "2.7.1"
> TUNE_FEATURES        = "m32 i586"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = 
> "my-yocto-2.7.1:38d5c8ea98cfa49825c473eba8984c12edf062be"
> 
> WARNING: Your host glibc verson (2.30) is newer than that in uninative 
> (2.29). Disabling uninative so that sstate is not corrupted.
> 
> ERROR: qemu-native-3.1.0-r0 do_compile: oe_runmake failed
> ERROR: qemu-native-3.1.0-r0 do_compile: Function failed: do_compile (log 
> file is located at 
> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_compile.1259)
> ERROR: Logfile of failure stored in: 
> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/temp/log.do_compile.1259
> 
> One of the errors in the log.do_compile.1259 file (file attached):
> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/qemu-3.1.0/linux-user/syscall.c:253:16: 
> error: static declaration of ‘gettid’ follows non-static declaration
>    253 | _syscall0(int, gettid)
> OR
> poky/build/tmp/work/x86_64-linux/qemu-native/3.1.0-r0/qemu-3.1.0/linux-user/ioctls.h:223:9: 
> error: ‘SIOCGSTAMPNS’ undeclared here (not in a function); did you mean 
> ‘SIOCGSTAMP_OLD’?
>    223 |   IOCTL(SIOCGSTAMPNS, IOC_R, MK_PTR(MK_STRUCT(STRUCT_timespec)))
> 
> 
> I do not know enough to understand where this error comes from. But I 
> suspect it may have to do with the warning I got just before the failure:
> 
> Is there a way to tell the build system to ignore the newer version 
> glibc? And use the 2.29 version.
> Or can someone help me to debug this error?

You're trying to build an older qemu against a very new kernel.  If you 
can, grab the warrior branch from git instead of using the 2.7.1 release 
as that has the fix in.  Alternatively, cherry-pick this commit:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=0570ef5a5e180f7504df970645d1fcce6310b828

Ross

