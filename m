Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C0E1E0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 08:54:46 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 05 Jan 2012 08:54:45 -0800
Received: by iazz13 with SMTP id z13so1227874iaz.25
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2012 08:54:45 -0800 (PST)
Received: by 10.42.135.138 with SMTP id p10mr974937ict.25.1325782482182;
	Thu, 05 Jan 2012 08:54:42 -0800 (PST)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id f32sm200091613ibf.9.2012.01.05.08.54.40
	(version=SSLv3 cipher=OTHER); Thu, 05 Jan 2012 08:54:41 -0800 (PST)
Message-ID: <4F05D5BE.80706@intel.com>
Date: Thu, 05 Jan 2012 08:54:22 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F059C60.8020507@mlbassoc.com>
In-Reply-To: <4F059C60.8020507@mlbassoc.com>
Subject: Re: Can't build util-linux
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
X-List-Received-Date: Thu, 05 Jan 2012 16:54:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2012 04:49 AM, Gary Thomas wrote:
> Using a freshly updated master
>
> OE Build Configuration:
> BB_VERSION = "1.15.0"
> TARGET_ARCH = "arm"
> TARGET_OS = "linux-gnueabi"
> MACHINE = "beagleboard"
> DISTRO = "poky"
> DISTRO_VERSION = "1.1+snapshot-20120105"
> TUNE_FEATURES = "armv7a vfp neon cortexa8"
> TARGET_FPU = "vfp-neon"
> meta
> meta-yocto = "master:5aabdbaff7b8be319a86c5e33cc2eb8c2e4aa2ef"
>
> | NOTE: DO PACKAGE QA
> | NOTE: Checking Package: util-linux-agetty
> | ERROR: Error executing a python function in
> /tmp/poky-multi/meta/recipes-core/util-linux/util-linux_2.20.1.bb:
> | AttributeError: 'module' object has no attribute 'check_output'

Bah, sorry about this. Apparently the check_output method of the 
subprocess module is new in Python v2.7 (I'm 99% certain you must be 
using an older Python than that). I'm in the process of refactoring this 
to work with a more compatible API. In the meantime, please use Mark's 
suggested fix.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

