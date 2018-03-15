Return-Path: <guy@guy-morand.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B73E00AAF; Thu, 15 Mar 2018 06:09:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [128.65.195.6 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 348 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Mar 2018 06:09:43 PDT
Received: from smtp-sh2.infomaniak.ch (smtp-sh2.infomaniak.ch [128.65.195.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51810E00744
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 06:09:43 -0700 (PDT)
Received: from smtp8.infomaniak.ch (smtp8.infomaniak.ch [83.166.132.38])
	by smtp-sh.infomaniak.ch (8.14.5/8.14.5) with ESMTP id w2FD3s6n015822
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK)
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 14:03:54 +0100
Received: from [192.168.0.2] (46-127-176-102.dynamic.hispeed.ch
	[46.127.176.102]) (authenticated bits=0)
	by smtp8.infomaniak.ch (8.14.5/8.14.5) with ESMTP id w2FD3orJ099944
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 14:03:54 +0100
To: Yocto Project <yocto@yoctoproject.org>
From: Guy Morand <guy@guy-morand.ch>
Message-ID: <319fdd69-ff40-2377-549a-e5f1f10de04c@guy-morand.ch>
Date: Thu, 15 Mar 2018 14:03:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
Subject: Kernel module depedency (header+symbols)
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
X-List-Received-Date: Thu, 15 Mar 2018 13:09:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hallo Yocto developpers,

I have been struggling a little to write recipe with kernel modules 
depedency. It seems that this is not well documented and picked up some 
solution across the mailing list and by reading the source. That is why 
I'm wondering if my approach is correct or hopefully will help someone 
else who tries to achieve the same thing...

First I have a modules that provides an header file with exported symbols:
---[base-module.h]---
extern int base_module_something(void);
---[/base-module.h]---

Where the function is exported in the c file:
---[base-module.c]---
int base_module_something(void)
{
   /* something */
   return 0;
}
EXPORT_SYMBOL(base_module_something);
---[/base-module.c]---

Now it seems that I have to prepend my recipe name with "kernel-module-" 
(cf.later) and add the header file installation:
---[kernel-module-base-module.bb]---
do_install_append() {
   install -m 0664 ${S}/base-module.h ${D}/${includedir}/${PN}
}
---[/kernel-module-base-module.bb]---

In the second module, I added an argument to find the path to the base 
module header file:
---[Kbuild second module]---
ccflags-y += -I$(BASE_MODULE_PATH)
---[/Kbuild second module]---

In the recipe of the second module, I give the dependency to my 
base-module and pass the variable to find the header file:
---[second-module.bb]---
DEPENDS = "kernel-module-base-module"

do_compile_prepend() {
   export BASE_MODULE_PATH=${STAGING_INCDIR}/kernel-module-base-module/"
}
---[/second-module.bb]---

The reason to have the first module prepended with "kernel-module" is 
that the bbclass looks for Module.symvers file for depedency with that 
name and adapt the KBUILD_EXTRA_SYMBOLS consequently:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/module.bbclass#n12

Despite this solution works for me, I was wondering if this is the right 
approach and if there is a more "yocto way"?

Best regards,

Guy

