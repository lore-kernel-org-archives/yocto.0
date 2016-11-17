Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2578FE00A0A; Wed, 16 Nov 2016 22:06:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2119E008CA
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 22:06:45 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 8186E68A01C; Thu, 17 Nov 2016 06:06:44 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1B18968A019;
	Thu, 17 Nov 2016 06:06:44 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B0BF46740070;
	Thu, 17 Nov 2016 07:06:43 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <8f36100c-f3a2-ef0d-ccd5-a6d7b1fc3acb@mlbassoc.com>
Date: Thu, 17 Nov 2016 07:06:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
Subject: Warning on mips64
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
X-List-Received-Date: Thu, 17 Nov 2016 06:06:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to build qemumips64 and get this warning:
=====================================================================================
WARNING: linux-yocto-4.8.6+gitAUTOINC+87e5fc8b7c_edcb167f91-r0 do_kernel_configcheck: [kernel config]: specified values 
did not make it into the kernel's final configuration:

---------- CONFIG_CPU_MIPSR2 -----------------
Config: CONFIG_CPU_MIPSR2
From: 
/build/bbb_2016-10-11/tmp/work-shared/qemumips64/kernel-source/.kernel-meta/configs/standard/mti-malta64/bsp/mti-malta64/mti-malta64-common.cfg
Requested value:  # CONFIG_CPU_MIPSR2 is not set
Actual value:

Config 'CPU_MIPSR2' has the following conditionals:

Dependency values are:
=====================================================================================
Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "mips64-poky-linux"
MACHINE           = "qemumips64"
DISTRO            = "poky"
DISTRO_VERSION    = "2.2"
TUNE_FEATURES     = "n64 bigendian fpu-hard"
TARGET_FPU        = ""
meta              = "master:9b1bd29ea99aa0dec51e603e4ac28e211af19765"
meta-poky         = "master:9b1bd29ea99aa0dec51e603e4ac28e211af19765"
=====================================================================================

What does it mean and is it important?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

