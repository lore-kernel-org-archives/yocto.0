Return-Path: <Zumeng.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B482E0127D
	for <yocto@yoctoproject.org>; Sun,  8 Jan 2012 20:34:17 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q094YEW6018565
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jan 2012 20:34:14 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Sun, 8 Jan 2012 20:34:14 -0800
Message-ID: <4F0A6E25.2030502@windriver.com>
Date: Mon, 9 Jan 2012 12:33:41 +0800
From: Zumeng Chen <zumeng.chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Lightning/1.0b1 Thunderbird/3.0.6
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<38a7991592a5851e09395cc9f07bc6d2880c7bda.1325824274.git.zumeng.chen@windriver.com>
	<4F07A985.6070903@linux.intel.com>
In-Reply-To: <4F07A985.6070903@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/4] lttng-modules: from lttng-modules 2.0 git repo.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Jan 2012 04:34:17 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 2012年01月07日 10:10, Darren Hart 写道:
>
> On 01/05/2012 10:11 PM, Zumeng Chen wrote:
>    
>> LTTng-modules 2.0 is currently in pre-release phase (-pre11)
>>      
> If the commit message is identical, one could reasonably expect the
> patch to be identical ;-) Please provide a complete commit message.
>    
OK, in V2.
>    
>> Signed-off-by: Zumeng Chen<zumeng.chen@windriver.com>
>> ---
>>   ...modules-replace-KERNELDIR-with-KERNEL_SRC.patch |   41 ++++++++++++++++++++
>>   .../lttng-2.0/lttng-modules_v2.0.pre11.bb          |   23 +++++++++++
>>   2 files changed, 64 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
>>   create mode 100644 meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
>>
>> diff --git a/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch b/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
>> new file mode 100644
>> index 0000000..b7b2fbb
>> --- /dev/null
>> +++ b/meta/recipes-kernel/lttng-2.0/lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch
>> @@ -0,0 +1,41 @@
>> +Upstream-Status: Inappropriate [embedded specific]
>> +
>> +lttng-modules: replace KERNELDIR with KERNEL_SRC
>> +
>> +Since lttng-modules uses the default way of module.bbclass to
>> +build and install lttng-modules, so we do this replacement for
>> +it as-is.
>>      
> Since and so are redundant: s/so///
>    
fixed.
>    
>> +
>> +Signed-off-by: Zumeng Chen<zumeng.chen@windriver.com>
>> +---
>> + Makefile |    7 +++----
>> + 1 files changed, 3 insertions(+), 4 deletions(-)
>> +
>> +diff --git a/Makefile b/Makefile
>> +index 5ac13d7..25caad5 100644
>> +--- a/Makefile
>> ++++ b/Makefile
>> +@@ -38,17 +38,16 @@ obj-m += lib/
>> + endif
>> +
>> + else
>> +-	KERNELDIR ?= /lib/modules/$(shell uname -r)/build
>> + 	PWD := $(shell pwd)
>> + 	CFLAGS = $(EXTCFLAGS)
>> +
>> + default:
>> +-	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
>> ++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules
>> +
>> + modules_install:
>> +-	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install
>> ++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules_install
>> +
>> + clean:
>> +-	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean
>> ++	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) clean
>> +
>> + endif
>> +--
>> +1.7.5.4
>> +
>> diff --git a/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb b/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
>> new file mode 100644
>> index 0000000..34af847
>> --- /dev/null
>> +++ b/meta/recipes-kernel/lttng-2.0/lttng-modules_v2.0.pre11.bb
>> @@ -0,0 +1,23 @@
>> +SECTION = "devel"
>> +SUMMARY = "Linux Trace Toolkit KERNEL MODULE"
>> +DESCRIPTION = "The lttng-modules 2.0 package contains the kernel tracer modules"
>> +LICENSE = "LGPLv2.1&  GPLv2"
>> +LIC_FILES_CHKSUM = "file://LICENSE;md5=1eb086682a7c65a45acd9bcdf6877b3e \
>> +		   "file://gpl-2.0.txt;md5=751419260aa954499f7abaabaa882bbe \
>> +		   "file://lgpl-2.1.txt;md5=243b725d71bb5df4a1e5920b344b86ad"
>>      
> Whitespace errors. Please use spaces here.
>    
fixed.
>    
>> +
>> +DEPENDS = virtual/kernel
>> +
>> +inherit module
>> +
>> +SRCREV = "4d3e89e379fc66480d729abe8daa5c86eb585400"
>> +PV = "v2.0.pre11+git${SRCPV}"
>> +PR = "r0"
>> +
>> +SRC_URI += "git://git.lttng.org/lttng-modules.git;protocol=git \
>> +		file://lttng-modules-replace-KERNELDIR-with-KERNEL_SRC.patch"
>>      
> Spaces please.
>    
fixed.
>    
>> +
>> +export INSTALL_MOD_DIR="kernel/lttng-modules"
>> +
>> +S = "${WORKDIR}/git"
>> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'
>>      
> I think you want a solution for TARGET.
>    
The same reason.
Regards,
Zumeng


