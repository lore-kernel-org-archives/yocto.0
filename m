Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5BF234C800B3
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2011 11:29:45 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Jun 2011 09:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,365,1304319600"; d="scan'208";a="13416363"
Received: from unknown (HELO [10.255.13.135]) ([10.255.13.135])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2011 09:29:43 -0700
Message-ID: <4DF78C76.1010809@linux.intel.com>
Date: Tue, 14 Jun 2011 09:29:42 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1308063203-22165-1-git-send-email-bruce.ashfield@windriver.com>
	<1308063203-22165-2-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <1308063203-22165-2-git-send-email-bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH] meta-intel/linux-yocto: update to match the renamed linux-yocto recipes
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
X-List-Received-Date: Tue, 14 Jun 2011 16:29:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

On 06/14/2011 07:53 AM, Bruce Ashfield wrote:
> The linux-yocto recipes have been renamed to include explicit
> version numbers. The meta-intel bbappends must be updated to
> follow the new naming convention.

This patch does not apply for me:

$ git am ~/Desktop/meta-intel-yocto-rename.patch
Applying: meta-intel/linux-yocto: update to match the renamed linux-yocto recipes
/home/dvhart/source/poky.git/layers/meta-intel/.git/rebase-apply/patch:88: trailing whitespace.
-# 
/home/dvhart/source/poky.git/layers/meta-intel/.git/rebase-apply/patch:94: trailing whitespace.
-# 
/home/dvhart/source/poky.git/layers/meta-intel/.git/rebase-apply/patch:115: trailing whitespace.
 
/home/dvhart/source/poky.git/layers/meta-intel/.git/rebase-apply/patch:186: trailing whitespace.
 
/home/dvhart/source/poky.git/layers/meta-intel/.git/rebase-apply/patch:190: trailing whitespace.
 
error: meta-crownbay/recipes-kernel/linux/linux-yocto-stable/0001-crownbay-update-a-handful-of-EMGD-licenses.patch: does not exist in index
error: patch failed: meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend:1
error: meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend: patch does not apply
error: meta-crownbay/recipes-kernel/linux/linux-yocto/0001-crownbay-update-a-handful-of-EMGD-licenses.patch: does not exist in index
error: patch failed: meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend:1
error: meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend: patch does not apply
error: patch failed: meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend:1
error: meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend: patch does not apply
error: patch failed: meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend:1
error: meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend: patch does not apply
error: patch failed: meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend:1
error: meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend: patch does not apply
error: patch failed: meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend:1
error: meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend: patch does not apply
error: patch failed: meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend:1
error: meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend: patch does not apply
error: patch failed: meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend:1
error: meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend: patch does not apply
Patch failed at 0001 meta-intel/linux-yocto: update to match the renamed linux-yocto recipes
When you have resolved this problem run "git am --resolved".
If you would prefer to skip this patch, instead run "git am --skip".
To restore the original branch and stop patching run "git am --abort".


> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  ...rownbay-update-a-handful-of-EMGD-licenses.patch | 1151 ++++++++++++++++++++
>  ...rownbay-update-a-handful-of-EMGD-licenses.patch | 1151 ++++++++++++++++++++
>  ...rownbay-update-a-handful-of-EMGD-licenses.patch | 1151 --------------------
>  .../linux/linux-yocto-stable_git.bbappend          |    9 -
>  ...rownbay-update-a-handful-of-EMGD-licenses.patch | 1151 --------------------
>  .../linux/linux-yocto_2.6.34.bbappend              |    9 +
>  .../linux/linux-yocto_2.6.37.bbappend              |    5 +
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    5 -
>  .../linux/linux-yocto-stable_git.bbappend          |    3 -
>  .../linux/linux-yocto_2.6.34.bbappend              |    3 +
>  .../linux/linux-yocto_2.6.37.bbappend              |    3 +
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    3 -
>  .../linux/linux-yocto-stable_git.bbappend          |    5 -
>  .../linux/linux-yocto_2.6.34.bbappend              |    5 +
>  .../linux/linux-yocto_2.6.37.bbappend              |    6 +
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    6 -
>  .../linux/linux-yocto-stable_git.bbappend          |    7 -
>  .../linux/linux-yocto_2.6.34.bbappend              |    7 +
>  .../linux/linux-yocto_2.6.37.bbappend              |    5 +
>  .../recipes-kernel/linux/linux-yocto_git.bbappend  |    5 -
>  20 files changed, 2345 insertions(+), 2345 deletions(-)
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.34/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.37/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
>  delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-stable/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
>  delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
>  delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
>  delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
>  create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
>  create mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
>  delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
>  create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
>  create mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
>  delete mode 100644 meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
>  create mode 100644 meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
>  create mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
>  delete mode 100644 meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
> 
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.34/0001-crownbay-update-a-handful-of-EMGD-licenses.patch b/meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.34/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> new file mode 100644
> index 0000000..5fcc2c2
> --- /dev/null
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.34/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> @@ -0,0 +1,1151 @@
> +From fb0e43f18c33979abf5c1eb36cf3f0ca04c3d0fb Mon Sep 17 00:00:00 2001
> +From: Tom Zanussi <tom.zanussi@intel.com>
> +Date: Thu, 17 Mar 2011 13:03:34 -0500
> +Subject: [KERNEL][linux-yocto-stable][PATCH 1/1] crownbay: update a handful of EMGD licenses
> +
> +The version of the EMGD driver we use had a few included license
> +mistakes.  Correct these as per upstream.
> +
> +Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> +---
> + drivers/gpu/drm/emgd/emgd/pal/Makefile.include     |   39 ++--
> + .../emgd/pvr/services4/system/common/sysconfig.c   |  287 ++++++++++----------
> + .../drm/emgd/pvr/services4/system/plb/sysconfig.c  |   64 +++---
> + .../drm/emgd/pvr/services4/system/tnc/sysconfig.c  |   64 +++---
> + .../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h |   48 ++--
> + 5 files changed, 246 insertions(+), 256 deletions(-)
> +
> +diff --git a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> +index 8143979..91f9afa 100644
> +--- a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> ++++ b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> +@@ -1,25 +1,26 @@
> + #----------------------------------------------------------------------------
> + # Filename: Makefile.include
> +-# $Revision: 1.1 $
> ++# $Revision: 1.2 $
> + #----------------------------------------------------------------------------
> +-# INTEL CONFIDENTIAL
> +-# Copyright (2002-2008) Intel Corporation All Rights Reserved.
> +-# The source code contained or described herein and all documents related to
> +-# the source code ("Material") are owned by Intel Corporation or its suppliers
> +-# or licensors. Title to the Material remains with Intel Corporation or its
> +-# suppliers and licensors. The Material contains trade secrets and proprietary
> +-# and confidential information of Intel or its suppliers and licensors. The
> +-# Material is protected by worldwide copyright and trade secret laws and
> +-# treaty provisions. No part of the Material may be used, copied, reproduced,
> +-# modified, published, uploaded, posted, transmitted, distributed, or
> +-# disclosed in any way without Intel's prior express written permission.
> +-# 
> +-# No license under any patent, copyright, trade secret or other intellectual
> +-# property right is granted to or conferred upon you by disclosure or
> +-# delivery of the Materials, either expressly, by implication, inducement,
> +-# estoppel or otherwise. Any license under such intellectual property rights
> +-# must be express and approved by Intel in writing.
> +-# 
> ++# Copyright © 2002-2010, Intel Corporation.
> ++#
> ++# Permission is hereby granted, free of charge, to any person obtaining a copy
> ++# of this software and associated documentation files (the "Software"), to deal
> ++# in the Software without restriction, including without limitation the rights
> ++# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++# copies of the Software, and to permit persons to whom the Software is
> ++# furnished to do so, subject to the following conditions:
> ++#
> ++# The above copyright notice and this permission notice shall be included in
> ++# all copies or substantial portions of the Software.
> ++#
> ++# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++# THE SOFTWARE.
> + #----------------------------------------------------------------------------
> + 
> + ifeq ($(origin EGD_CFG), undefined)
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> +index 5037186..4c9946c 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> +@@ -1,35 +1,36 @@
> + /* -*- syscommon-c -*-
> +-*-----------------------------------------------------------------------------
> +-* Filename: syscommon.c
> +-* $Revision: 1.6 $
> +-*-----------------------------------------------------------------------------
> +-* INTEL CONFIDENTIAL
> +-* Copyright 2010 Intel Corporation All Rights Reserved.
> +-* The source code contained or described herein and all documents related to
> +-* the source code ("Material") are owned by Intel Corporation or its suppliers
> +-* or licensors. Title to the Material remains with Intel Corporation or its
> +-* suppliers and licensors. The Material contains trade secrets and proprietary
> +-* and confidential information of Intel or its suppliers and licensors. The
> +-* Material is protected by worldwide copyright and trade secret laws and
> +-* treaty provisions. No part of the Material may be used, copied, reproduced,
> +-* modified, published, uploaded, posted, transmitted, distributed, or
> +-* disclosed in any way without Intel's prior express written permission.
> +-*
> +-* No license under any patent, copyright, trade secret or other intellectual
> +-* property right is granted to or conferred upon you by disclosure or
> +-* delivery of the Materials, either expressly, by implication, inducement,
> +-* estoppel or otherwise. Any license under such intellectual property rights
> +-* must be express and approved by Intel in writing.
> +-*
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Description: platform detection, and sharing of correct platform interface.
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Authors:
> +-*  Marcin Tomczyk
> +-*-----------------------------------------------------------------------------
> +-*/
> ++ *-----------------------------------------------------------------------------
> ++ * Filename: syscommon.c
> ++ * $Revision: 1.7 $
> ++ *-----------------------------------------------------------------------------
> ++ * Copyright © 2002-2010, Intel Corporation.
> ++ *
> ++ * Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ * of this software and associated documentation files (the "Software"), to deal
> ++ * in the Software without restriction, including without limitation the rights
> ++ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ * copies of the Software, and to permit persons to whom the Software is
> ++ * furnished to do so, subject to the following conditions:
> ++ *
> ++ * The above copyright notice and this permission notice shall be included in
> ++ * all copies or substantial portions of the Software.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ * THE SOFTWARE.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Description: platform detection, and sharing of correct platform interface.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Authors:
> ++ *  Marcin Tomczyk
> ++ *-----------------------------------------------------------------------------
> ++ */
> + 
> + #include <linux/pci.h>
> + #include "sgxdefs.h"
> +@@ -124,7 +125,7 @@ IMG_VOID SysPlatformDetect(IMG_VOID)
> + 
> + 
> + /* --------------------------------------------------------------------------*/
> +-/** 
> ++/**
> + * @Synopsis  Interface for Atom E6xx device
> + */
> + /* ----------------------------------------------------------------------------*/
> +@@ -196,14 +197,14 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> + #if defined(SGX_FEATURE_HOST_PORT)
> + 	PVR_TRACE(("Host Port region: %x to %x", OSPCIAddrRangeStart(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX), OSPCIAddrRangeEnd(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX)));
> + #endif
> +-	
> ++
> + 	if (OSPCIAddrRangeLen(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) < MAX_OFFSET)
> + 	{
> + 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region isn't big enough"));
> + 		return PVRSRV_ERROR_GENERIC;
> + 	}
> + 
> +-	
> ++
> + 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) != PVRSRV_OK)
> + 	{
> + 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region not available"));
> +@@ -211,7 +212,7 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> + 	}
> + 	 SYS_SPECIFIC_DATA_SET(psSysSpecData, SYS_SPECIFIC_DATA_PCI_REQUEST_SGX_ADDR_RANGE);
> + 
> +-	
> ++
> + #if defined(SGX_FEATURE_HOST_PORT)
> + 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX) != PVRSRV_OK)
> + 	{
> +@@ -244,31 +245,31 @@ static IMG_VOID PCIDeInitDev(SYS_DATA *psSysData)
> + 		OSPCIReleaseDev(psSysSpecData->hSGXPCI);
> + 	}
> + }
> +-#else	
> ++#else
> + static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PCICONFIG_SPACE *psPCISpace)
> + {
> + 	IMG_UINT32 ui32BusNum;
> + 	IMG_UINT32 ui32DevNum;
> + 	IMG_UINT32 ui32VenDevID;
> + 
> +-	
> ++
> + 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> + 	{
> +-		
> ++
> + 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> + 		{
> +-			
> ++
> + 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> + 
> +-			
> ++
> + 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> + 			{
> + 				IMG_UINT32 ui32Idx;
> + 
> +-				
> ++
> + 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> + 
> +-				
> ++
> + 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> + 				{
> + 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> +@@ -289,7 +290,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> + 
> + 	return PVRSRV_ERROR_GENERIC;
> + }
> +-#endif	
> ++#endif
> + 
> + static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + {
> +@@ -339,21 +340,21 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	}
> + 
> + 	ui32IRQ = (IMG_UINT32)sPCISpace.u.aui8PCISpace[0x3C];
> +-#endif	
> ++#endif
> ++
> + 
> +-	
> + 	gsSGXDeviceMap.ui32Flags = 0x0;
> + 
> +-	
> ++
> + #if defined(NO_HARDWARE)
> +-	
> ++
> + 	gsSGXDeviceMap.ui32IRQ = 0;
> + #else
> + 	gsSGXDeviceMap.ui32IRQ = ui32IRQ;
> + #endif
> + 
> + #if defined(NO_HARDWARE)
> +-	
> ++
> + 	eError = OSBaseAllocContigMemory(SGX_REG_SIZE,
> + 										&gsSGXRegsCPUVAddr,
> + 										&sCpuPAddr);
> +@@ -368,29 +369,29 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	OSMemSet(gsSGXRegsCPUVAddr, 0, SGX_REG_SIZE);
> + 
> + #if defined(__linux__)
> +-	
> ++
> + 	gsSGXDeviceMap.pvRegsCpuVBase = gsSGXRegsCPUVAddr;
> + #else
> +-	
> ++
> + 	gsSGXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> + #endif
> + 
> +-#else	
> ++#else
> + 	gsSGXDeviceMap.sRegsSysPBase.uiAddr = ui32BaseAddr + SGX_REGS_OFFSET;
> +-#endif	
> ++#endif
> ++
> + 
> +-	
> + 	gsSGXDeviceMap.sRegsCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sRegsSysPBase);
> + 	gsSGXDeviceMap.ui32RegsSize = SGX_REG_SIZE;
> + 
> + #if defined(SGX_FEATURE_HOST_PORT)
> +-	
> ++
> + 	gsSGXDeviceMap.ui32Flags = SGX_HOSTPORT_PRESENT;
> + 	gsSGXDeviceMap.sHPSysPBase.uiAddr = ui32HostPortAddr;
> + 	gsSGXDeviceMap.sHPCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sHPSysPBase);
> + 	gsSGXDeviceMap.ui32HPSize = SYS_SGX_HP_SIZE;
> + #endif
> +-	
> ++
> + 
> + 
> + 
> +@@ -400,7 +401,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	gsSGXDeviceMap.ui32LocalMemSize = 0;
> + 
> + #if !defined(NO_HARDWARE)
> +-	
> ++
> + 	{
> + 		IMG_SYS_PHYADDR sPoulsboRegsCpuPBase;
> + 
> +@@ -421,10 +422,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + #endif
> + 
> + #ifdef SUPPORT_MSVDX
> +-	
> ++
> + 
> + #if defined(NO_HARDWARE)
> +-	
> ++
> + 	eError = OSBaseAllocContigMemory(MSVDX_REG_SIZE,
> + 										&gsMSVDXRegsCPUVAddr,
> + 										&sCpuPAddr);
> +@@ -438,10 +439,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	OSMemSet(gsMSVDXRegsCPUVAddr, 0, MSVDX_REG_SIZE);
> + 
> + #if defined(__linux__)
> +-	
> ++
> + 	gsMSVDXDeviceMap.pvRegsCpuVBase = gsMSVDXRegsCPUVAddr;
> + #else
> +-	
> ++
> + 	gsMSVDXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> + #endif
> + #else
> +@@ -450,7 +451,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	gsMSVDXDeviceMap.sRegsSysPBase		  = SysCpuPAddrToSysPAddr(gsMSVDXDeviceMap.sRegsCpuPBase);
> + 	gsMSVDXDeviceMap.ui32RegsSize		  = MSVDX_REG_SIZE;
> + 
> +-	
> ++
> + 
> + 
> + 
> +@@ -459,13 +460,13 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	gsMSVDXDeviceMap.sLocalMemCpuPBase.uiAddr = 0;
> + 	gsMSVDXDeviceMap.ui32LocalMemSize		  = 0;
> + 
> +-	
> ++
> + 
> + 	gsMSVDXDeviceMap.ui32IRQ = ui32IRQ;
> + 
> +-#endif 
> ++#endif
> ++
> + 
> +-	
> + 
> + 	return PVRSRV_OK;
> + }
> +@@ -478,28 +479,28 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> + 	IMG_UINT32  ui32VenDevID;
> + 	IMG_UINT32	ui32BarIndex;
> + 
> +-	
> ++
> + 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> + 	{
> +-		
> ++
> + 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> + 		{
> +-			
> ++
> + 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> + 
> +-			
> ++
> + 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> + 			{
> + 				IMG_UINT32 ui32Idx;
> + 
> +-				
> ++
> + 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> + 
> +-				psPCISpace->ui32BusNum  = ui32BusNum;	
> ++				psPCISpace->ui32BusNum  = ui32BusNum;
> + 				psPCISpace->ui32DevNum  = ui32DevNum;
> + 				psPCISpace->ui32FuncNum = 0;
> + 
> +-				
> ++
> + 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> + 				{
> + 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> +@@ -509,7 +510,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> + 						PVR_DPF((PVR_DBG_VERBOSE,"%08X\n",psPCISpace->u.aui32PCISpace[ui32Idx]));
> + 					}
> + 				}
> +-						 										
> ++
> + 				for (ui32BarIndex = 0; ui32BarIndex < 6; ui32BarIndex++)
> + 				{
> + 					GetPCIMemSpaceSize (ui32BusNum, ui32DevNum, ui32BarIndex, &psPCISpace->aui32PCIMemSpaceSize[ui32BarIndex]);
> +@@ -557,7 +558,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> +     IMG_CHAR *pszVersionString;
> + 
> + #if !defined(NO_HARDWARE)
> +-     
> ++
> +     {
> + 	IMG_VOID *pvSGXRegs;
> + 
> +@@ -571,8 +572,8 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> +             ui32SGXRevision = OSReadHWReg(pvSGXRegs, EUR_CR_CORE_REVISION);
> + 
> + 	     OSUnMapPhysToLin(pvSGXRegs,
> +-		   									 	gsSGXDeviceMap.ui32RegsSize,
> +-											 	PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> ++												gsSGXDeviceMap.ui32RegsSize,
> ++												PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> + 												IMG_NULL);
> + 	}
> + 	else
> +@@ -609,7 +610,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> +                     ui32MaxStrLen + 1,
> +                     pszVersionString,
> +                     IMG_NULL);
> +-		
> ++
> + 		return PVRSRV_ERROR_GENERIC;
> +     }
> + 
> +@@ -631,7 +632,7 @@ static IMG_VOID SysFreeVersionString(SYS_DATA *psSysData)
> + 		psSysData->pszVersionString = NULL;
> +     }
> + }
> +-#endif 
> ++#endif
> + PVRSRV_ERROR SysInitialise(IMG_VOID)
> + {
> + 	IMG_UINT32			i;
> +@@ -642,14 +643,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 	PVR_DPF((PVR_DBG_MESSAGE,"SysInitialise"));
> + 
> + 	SysPlatformDetect();
> +-	
> ++
> + 	gpsSysData = &gsSysData;
> + 	OSMemSet(gpsSysData, 0, sizeof(SYS_DATA));
> + 
> + 	gpsSysData->pvSysSpecificData = &gsSysSpecificData;
> + 	gsSysSpecificData.ui32SysSpecificData = 0;
> + #ifdef	LDM_PCI
> +-	
> ++
> + 	PVR_ASSERT(gpsPVRLDMDev != IMG_NULL);
> + 	gsSysSpecificData.psPCIDev = gpsPVRLDMDev;
> + #endif
> +@@ -663,15 +664,15 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 		return eError;
> + 	}
> + 
> +-	
> ++
> + 	psTimingInfo = &gsSGXDeviceMap.sTimingInfo;
> + 	psTimingInfo->ui32CoreClockSpeed = SYS_SGX_CLOCK_SPEED;
> + 	psTimingInfo->ui32HWRecoveryFreq = SYS_SGX_HWRECOVERY_TIMEOUT_FREQ;
> + #if defined(SUPPORT_ACTIVE_POWER_MANAGEMENT)
> + 	psTimingInfo->bEnableActivePM = IMG_TRUE;
> +-#else	
> ++#else
> + 	psTimingInfo->bEnableActivePM = IMG_FALSE;
> +-#endif 
> ++#endif
> + 	psTimingInfo->ui32ActivePowManLatencyms = SYS_SGX_ACTIVE_POWER_LATENCY_MS;
> + 	psTimingInfo->ui32uKernelFreq = SYS_SGX_PDS_TIMER_FREQ;
> + 
> +@@ -687,7 +688,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 
> + 	gpsSysData->ui32NumDevices = SYS_DEVICE_COUNT;
> + 
> +-	
> ++
> + 	for(i=0; i<SYS_DEVICE_COUNT; i++)
> + 	{
> + 		gpsSysData->sDeviceID[i].uiID = i;
> +@@ -716,7 +717,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 		return eError;
> + 	}
> + 
> +-	
> ++
> + 	eError = PVRSRVRegisterDevice(gpsSysData, SGXRegisterDevice,
> + 								  DEVICE_SGX_INTERRUPT, &gui32SGXDeviceID);
> + 	if (eError != PVRSRV_OK)
> +@@ -744,7 +745,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 
> + 	while(psDeviceNode)
> + 	{
> +-		
> ++
> + 		switch(psDeviceNode->sDevId.eDeviceType)
> + 		{
> + 			case PVRSRV_DEVICE_TYPE_SGX:
> +@@ -752,19 +753,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> + 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> + 
> +-				
> ++
> + 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> + 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> + 				{
> + 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> + #ifdef OEM_CUSTOMISE
> +-					
> ++
> + #endif
> + 				}
> + 
> +@@ -777,19 +778,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> + 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> + 
> +-				
> ++
> + 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> + 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> + 				{
> + 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> + #ifdef OEM_CUSTOMISE
> +-					
> ++
> + #endif
> + 				}
> + 				break;
> +@@ -802,14 +803,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 			}
> + 		}
> + 
> +-		
> ++
> + 		psDeviceNode = psDeviceNode->psNext;
> + 	}
> + 
> + 	PDUMPINIT();
> + 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PDUMP_INIT);
> + 
> +-	
> ++
> + 	eError = PVRSRVInitialiseDevice (gui32SGXDeviceID);
> + 	if (eError != PVRSRV_OK)
> + 	{
> +@@ -843,15 +844,15 @@ static IMG_VOID SysEnableInterrupts(SYS_DATA *psSysData)
> + 	IMG_UINT32 ui32Mask;
> + 
> + 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG, ui32RegData | ui32Mask);
> + 
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData & (~ui32Mask));
> + 
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData | ui32Mask);
> + 
> +@@ -868,11 +869,11 @@ static IMG_VOID SysDisableInterrupts(SYS_DATA *psSysData)
> + 
> + 
> + 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData & (~ui32Mask));
> + 
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData | ui32Mask);
> + 
> +@@ -916,7 +917,7 @@ PVRSRV_ERROR SysFinalise(IMG_VOID)
> + 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED);
> + 
> + #ifdef	__linux__
> +-	
> ++
> + 	eError = SysCreateVersionString(gpsSysData);
> + 	if (eError != PVRSRV_OK)
> + 	{
> +@@ -963,7 +964,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> + #if defined(SUPPORT_MSVDX)
> + 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_MSVDX_INITIALISED))
> + 	{
> +-		
> ++
> + 		eError = PVRSRVDeinitialiseDevice(gui32MSVDXDeviceID);
> + 		if (eError != PVRSRV_OK)
> + 		{
> +@@ -975,7 +976,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> + 
> + 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_SGX_INITIALISED))
> + 	{
> +-		
> ++
> + 		eError = PVRSRVDeinitialiseDevice(gui32SGXDeviceID);
> + 		if (eError != PVRSRV_OK)
> + 		{
> +@@ -1014,7 +1015,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> + #endif
> + 
> + #if !defined(NO_HARDWARE)
> +-	
> ++
> + 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> + 											 REG_SIZE,
> + 											 PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> +@@ -1049,7 +1050,7 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> + 	PVR_UNREFERENCED_PARAMETER(psSysData);
> + 	PVR_UNREFERENCED_PARAMETER(psDeviceNode);
> + 
> +-	
> ++
> + 	ui32Data = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> + 
> + 	if (ui32Data & THALIA_MASK)
> +@@ -1062,11 +1063,11 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> + 		ui32Devices |= DEVICE_MSVDX_INTERRUPT;
> + 	}
> + 
> +-	
> ++
> + 	ui32DIMMask = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> + 	ui32DIMMask &= ~(THALIA_MASK | MSVDX_MASK);
> + 
> +-	
> ++
> + 	if (ui32Data & ui32DIMMask)
> + 	{
> + 		ui32Devices |= DEVICE_DISP_INTERRUPT;
> +@@ -1123,14 +1124,14 @@ PVRSRV_ERROR SysGetDeviceMemoryMap(PVRSRV_DEVICE_TYPE eDeviceType,
> + 	{
> + 		case PVRSRV_DEVICE_TYPE_SGX:
> + 		{
> +-			
> ++
> + 			*ppvDeviceMap = (IMG_VOID*)&gsSGXDeviceMap;
> + 			break;
> + 		}
> + #ifdef SUPPORT_MSVDX
> + 		case PVRSRV_DEVICE_TYPE_MSVDX:
> + 		{
> +-			
> ++
> + 			*ppvDeviceMap = (IMG_VOID*)&gsMSVDXDeviceMap;
> + 			break;
> + 		}
> +@@ -1151,7 +1152,7 @@ IMG_DEV_PHYADDR SysCpuPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType,
> + 
> + 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> + 
> +-	
> ++
> + 	DevPAddr.uiAddr = CpuPAddr.uiAddr;
> + 
> + 	return DevPAddr;
> +@@ -1162,7 +1163,7 @@ IMG_CPU_PHYADDR SysSysPAddrToCpuPAddr (IMG_SYS_PHYADDR sys_paddr)
> + {
> + 	IMG_CPU_PHYADDR cpu_paddr;
> + 
> +-	
> ++
> + 	cpu_paddr.uiAddr = sys_paddr.uiAddr;
> + 	return cpu_paddr;
> + }
> +@@ -1171,7 +1172,7 @@ IMG_SYS_PHYADDR SysCpuPAddrToSysPAddr (IMG_CPU_PHYADDR cpu_paddr)
> + {
> + 	IMG_SYS_PHYADDR sys_paddr;
> + 
> +-	
> ++
> + 	sys_paddr.uiAddr = cpu_paddr.uiAddr;
> + 	return sys_paddr;
> + }
> +@@ -1183,7 +1184,7 @@ IMG_DEV_PHYADDR SysSysPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_SYS_P
> + 
> + 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> + 
> +-	
> ++
> +     DevPAddr.uiAddr = SysPAddr.uiAddr;
> + 
> +     return DevPAddr;
> +@@ -1196,7 +1197,7 @@ IMG_SYS_PHYADDR SysDevPAddrToSysPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_DEV_P
> + 
> + 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> + 
> +-    
> ++
> +     SysPAddr.uiAddr = DevPAddr.uiAddr;
> + 
> +     return SysPAddr;
> +@@ -1255,12 +1256,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 		{
> + 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> + #if defined(NO_HARDWARE) && defined(__linux__)
> +-			
> ++
> + 			PVR_ASSERT(gsSGXRegsCPUVAddr);
> + 
> + 			psDevInfo->pvRegsBaseKM = gsSGXRegsCPUVAddr;
> +-#else	
> +-			
> ++#else
> ++
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS))
> + 			{
> + 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sRegsCpuPBase,
> +@@ -1275,7 +1276,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 				}
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 
> + 			psDevInfo->ui32RegSize   = gsSGXDeviceMap.ui32RegsSize;
> + 			psDevInfo->sRegsPhysBase = gsSGXDeviceMap.sRegsSysPBase;
> +@@ -1285,7 +1286,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 			{
> + 				if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_HP))
> + 				{
> +-					
> ++
> + 					psDevInfo->pvHostPortBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sHPCpuPBase,
> + 														     gsSGXDeviceMap.ui32HPSize,
> + 														     PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> +@@ -1300,7 +1301,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 				psDevInfo->ui32HPSize  = gsSGXDeviceMap.ui32HPSize;
> + 				psDevInfo->sHPSysPAddr = gsSGXDeviceMap.sHPSysPBase;
> + 			}
> +-#endif 
> ++#endif
> + 			break;
> + 		}
> + #ifdef SUPPORT_MSVDX
> +@@ -1308,13 +1309,13 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 		{
> + 			PVRSRV_MSVDXDEV_INFO *psDevInfo = (PVRSRV_MSVDXDEV_INFO *)psDeviceNodeList->pvDevice;
> + #if defined(NO_HARDWARE) && defined(__linux__)
> +-			
> ++
> + 			PVR_ASSERT(gsMSVDXRegsCPUVAddr);
> + 			psDevInfo->pvRegsBaseKM = gsMSVDXRegsCPUVAddr;
> +-#else	
> ++#else
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS))
> + 			{
> +-				
> ++
> + 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin (
> + 					gsMSVDXDeviceMap.sRegsCpuPBase,
> + 					gsMSVDXDeviceMap.ui32RegsSize,
> +@@ -1327,12 +1328,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 				}
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 			psDevInfo->ui32RegSize = gsMSVDXDeviceMap.ui32RegsSize;
> + 			psDevInfo->sRegsPhysBase = gsMSVDXDeviceMap.sRegsSysPBase;
> + 			break;
> + 		}
> +-#endif	
> ++#endif
> + 		default:
> + 			break;
> + 		}
> +@@ -1357,7 +1358,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 		{
> + 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> + #if !(defined(NO_HARDWARE) && defined(__linux__))
> +-			
> ++
> + 			if (psDevInfo->pvRegsBaseKM)
> + 			{
> + 				OSUnMapPhysToLin(psDevInfo->pvRegsBaseKM,
> +@@ -1367,7 +1368,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 
> + 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> + 			psDevInfo->ui32RegSize          = 0;
> +@@ -1376,7 +1377,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + #if defined(SGX_FEATURE_HOST_PORT)
> + 			if (gsSGXDeviceMap.ui32Flags & SGX_HOSTPORT_PRESENT)
> + 			{
> +-				
> ++
> + 				if (psDevInfo->pvHostPortBaseKM)
> + 				{
> + 					OSUnMapPhysToLin(psDevInfo->pvHostPortBaseKM,
> +@@ -1392,7 +1393,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 				psDevInfo->ui32HPSize  = 0;
> + 				psDevInfo->sHPSysPAddr.uiAddr = 0;
> + 			}
> +-#endif 
> ++#endif
> + 			break;
> + 		}
> + #ifdef SUPPORT_MSVDX
> +@@ -1409,13 +1410,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> + 			psDevInfo->ui32RegSize = 0;
> + 			psDevInfo->sRegsPhysBase.uiAddr = 0;
> + 			break;
> + 		}
> +-#endif	
> ++#endif
> + 		default:
> + 			break;
> + 		}
> +@@ -1423,13 +1424,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 	}
> + 
> + #if !(defined(NO_HARDWARE) || defined(__linux__))
> +-	
> ++
> + 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> + 				REG_SIZE,
> + 				PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> + 				IMG_NULL);
> + 
> +-	
> ++
> + #if defined(MAP_UNUSED_MAPPINGS)
> + 	OSUnMapPhysToLin(gsPoulsboDisplayRegsCPUVaddr,
> + 				DISPLAY_REG_SIZE,
> +@@ -1437,7 +1438,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 				IMG_NULL);
> + #endif
> + 
> +-#endif	
> ++#endif
> + 
> + #if defined(NO_HARDWARE)
> + #ifdef SUPPORT_MSVDX
> +@@ -1462,7 +1463,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 
> + 		SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_ALLOC_DUMMY_SGX_REGS);
> + 	}
> +-#endif 
> ++#endif
> + 
> + 	return PVRSRV_OK;
> + }
> +@@ -1477,7 +1478,7 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 		if ((eNewPowerState == PVRSRV_SYS_POWER_STATE_D3) &&
> + 			(gpsSysData->eCurrentPowerState < PVRSRV_SYS_POWER_STATE_D3))
> + 		{
> +-			
> ++
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED))
> + 			{
> + 				SysDisableInterrupts(gpsSysData);
> +@@ -1497,9 +1498,9 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> + 			}
> +-#endif 
> ++#endif
> ++
> + 
> +-			
> + 			SysUnmapRegisters();
> + #ifdef	__linux__
> + 			eError = OSPCISuspendDev(gsSysSpecificData.hSGXPCI);
> +@@ -1530,7 +1531,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				PVR_DPF((PVR_DBG_ERROR,"SysSystemPostPowerState: OSPCIResumeDev failed (%d)", eError));
> + 			}
> + #endif
> +-			
> ++
> + 
> + 
> + 			eError = SysLocateDevices(gpsSysData);
> +@@ -1540,7 +1541,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				return eError;
> + 			}
> + 
> +-			
> ++
> + 			eError = SysMapInRegisters();
> + 			if (eError != PVRSRV_OK)
> + 			{
> +@@ -1559,7 +1560,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> + 			}
> +-#endif 
> ++#endif
> + 
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_IRQ_DISABLE))
> + 			{
> +@@ -1606,7 +1607,3 @@ PVRSRV_ERROR SysDevicePostPowerState(IMG_UINT32				ui32DeviceIndex,
> + 
> + 	return PVRSRV_OK;
> + }
> +-
> +-
> +-
> +-
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> +index 0737aaf..63a1c96 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> +@@ -1,35 +1,36 @@
> + /* -*- syscommon-c -*-
> +-*-----------------------------------------------------------------------------
> +-* Filename: syscommon.c
> +-* $Revision: 1.2 $
> +-*-----------------------------------------------------------------------------
> +-* INTEL CONFIDENTIAL
> +-* Copyright 2010 Intel Corporation All Rights Reserved.
> +-* The source code contained or described herein and all documents related to
> +-* the source code ("Material") are owned by Intel Corporation or its suppliers
> +-* or licensors. Title to the Material remains with Intel Corporation or its
> +-* suppliers and licensors. The Material contains trade secrets and proprietary
> +-* and confidential information of Intel or its suppliers and licensors. The
> +-* Material is protected by worldwide copyright and trade secret laws and
> +-* treaty provisions. No part of the Material may be used, copied, reproduced,
> +-* modified, published, uploaded, posted, transmitted, distributed, or
> +-* disclosed in any way without Intel's prior express written permission.
> +-*
> +-* No license under any patent, copyright, trade secret or other intellectual
> +-* property right is granted to or conferred upon you by disclosure or
> +-* delivery of the Materials, either expressly, by implication, inducement,
> +-* estoppel or otherwise. Any license under such intellectual property rights
> +-* must be express and approved by Intel in writing.
> +-*
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Description: platform detection, and sharing of correct platform interface.
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Authors:
> +-*  Marcin Tomczyk
> +-*-----------------------------------------------------------------------------
> +-*/
> ++ *-----------------------------------------------------------------------------
> ++ * Filename: syscommon.c
> ++ * $Revision: 1.3 $
> ++ *-----------------------------------------------------------------------------
> ++ * Copyright © 2002-2010, Intel Corporation.
> ++ *
> ++ * Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ * of this software and associated documentation files (the "Software"), to deal
> ++ * in the Software without restriction, including without limitation the rights
> ++ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ * copies of the Software, and to permit persons to whom the Software is
> ++ * furnished to do so, subject to the following conditions:
> ++ *
> ++ * The above copyright notice and this permission notice shall be included in
> ++ * all copies or substantial portions of the Software.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ * THE SOFTWARE.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Description: platform detection, and sharing of correct platform interface.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Authors:
> ++ *  Marcin Tomczyk
> ++ *-----------------------------------------------------------------------------
> ++ */
> + 
> + #include "sysconfig.h"
> + #include "sysplb.h"
> +@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfacePlb = {
> + 	SYS_SGX_CLOCK_SPEED_PLB,
> + 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_PLB
> + };
> +-
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> +index 5b94861..e4d9426 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> +@@ -1,35 +1,36 @@
> + /* -*- syscommon-c -*-
> +-*-----------------------------------------------------------------------------
> +-* Filename: syscommon.c
> +-* $Revision: 1.2 $
> +-*-----------------------------------------------------------------------------
> +-* INTEL CONFIDENTIAL
> +-* Copyright 2010 Intel Corporation All Rights Reserved.
> +-* The source code contained or described herein and all documents related to
> +-* the source code ("Material") are owned by Intel Corporation or its suppliers
> +-* or licensors. Title to the Material remains with Intel Corporation or its
> +-* suppliers and licensors. The Material contains trade secrets and proprietary
> +-* and confidential information of Intel or its suppliers and licensors. The
> +-* Material is protected by worldwide copyright and trade secret laws and
> +-* treaty provisions. No part of the Material may be used, copied, reproduced,
> +-* modified, published, uploaded, posted, transmitted, distributed, or
> +-* disclosed in any way without Intel's prior express written permission.
> +-*
> +-* No license under any patent, copyright, trade secret or other intellectual
> +-* property right is granted to or conferred upon you by disclosure or
> +-* delivery of the Materials, either expressly, by implication, inducement,
> +-* estoppel or otherwise. Any license under such intellectual property rights
> +-* must be express and approved by Intel in writing.
> +-*
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Description: platform detection, and sharing of correct platform interface.
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Authors:
> +-*  Marcin Tomczyk
> +-*-----------------------------------------------------------------------------
> +-*/
> ++ *-----------------------------------------------------------------------------
> ++ * Filename: syscommon.c
> ++ * $Revision: 1.3 $
> ++ *-----------------------------------------------------------------------------
> ++ * Copyright © 2002-2010, Intel Corporation.
> ++ *
> ++ * Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ * of this software and associated documentation files (the "Software"), to deal
> ++ * in the Software without restriction, including without limitation the rights
> ++ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ * copies of the Software, and to permit persons to whom the Software is
> ++ * furnished to do so, subject to the following conditions:
> ++ *
> ++ * The above copyright notice and this permission notice shall be included in
> ++ * all copies or substantial portions of the Software.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ * THE SOFTWARE.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Description: platform detection, and sharing of correct platform interface.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Authors:
> ++ *  Marcin Tomczyk
> ++ *-----------------------------------------------------------------------------
> ++ */
> + 
> + #include "sysconfig.h"
> + #include "systnc.h"
> +@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfaceTnc = {
> + 	SYS_SGX_CLOCK_SPEED_TNC,
> + 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC
> + };
> +-
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> +index 3f26d4c..7d5c2d6 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> +@@ -1,40 +1,32 @@
> + /**********************************************************************
> +- *
> +- * Copyright(c) 2008 Imagination Technologies Ltd. All rights reserved.
> +- * 
> +- * This program is free software; you can redistribute it and/or modify it
> +- * under the terms and conditions of the GNU General Public License,
> +- * version 2, as published by the Free Software Foundation.
> +- * 
> +- * This program is distributed in the hope it will be useful but, except 
> +- * as otherwise stated in writing, without any warranty; without even the 
> +- * implied warranty of merchantability or fitness for a particular purpose. 
> +- * See the GNU General Public License for more details.
> +- * 
> +- * You should have received a copy of the GNU General Public License along with
> +- * this program; if not, write to the Free Software Foundation, Inc.,
> +- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
> +- * 
> +- * The full GNU General Public License is included in this distribution in
> +- * the file called "COPYING".
> +- *
> +- * Contact Information:
> +- * Imagination Technologies Ltd. <gpl-support@imgtec.com>
> +- * Home Park Estate, Kings Langley, Herts, WD4 8LZ, UK 
> +- *
> ++ Copyright (c) Imagination Technologies Ltd.
> ++
> ++ Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ of this software and associated documentation files (the "Software"), to deal
> ++ in the Software without restriction, including without limitation the rights
> ++ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ copies of the Software, and to permit persons to whom the Software is
> ++ furnished to do so, subject to the following conditions:
> ++
> ++ The above copyright notice and this permission notice shall be included in
> ++ all copies or substantial portions of the Software.
> ++
> ++ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ THE SOFTWARE.
> +  ******************************************************************************/
> +-/* INTEL CONFIDENTIAL
> +- * Copyright 2010 Intel Corporation All Rights Reserved.
> +- */
> + 
> + #ifndef _SYSTNC_H
> + #define _SYSTNC_H
> + 
> +-#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108	
> ++#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108
> + #define VS_PRODUCT_NAME_TNC     	"SGX Atom E6xx"
> + #define SGX_REGS_OFFSET_TNC     	0x80000
> + #define MSVDX_REGS_OFFSET_TNC   	0x90000
> + #define SYS_SGX_CLOCK_SPEED_TNC                     (400000000)
> + #define SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC         (50)
> + #endif
> +-
> +-- 
> +1.7.0.4
> +
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.37/0001-crownbay-update-a-handful-of-EMGD-licenses.patch b/meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.37/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> new file mode 100644
> index 0000000..6b0fec9
> --- /dev/null
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto-2.6.37/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> @@ -0,0 +1,1151 @@
> +From dfec29236dd9ae7899b9a01d768486f439651af3 Mon Sep 17 00:00:00 2001
> +From: Tom Zanussi <tom.zanussi@intel.com>
> +Date: Thu, 17 Mar 2011 13:03:34 -0500
> +Subject: [KERNEL][linux-yocto][PATCH 1/1] crownbay: update a handful of EMGD licenses
> +
> +The version of the EMGD driver we use had a few included license
> +mistakes.  Correct these as per upstream.
> +
> +Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> +---
> + drivers/gpu/drm/emgd/emgd/pal/Makefile.include     |   39 ++--
> + .../emgd/pvr/services4/system/common/sysconfig.c   |  287 ++++++++++----------
> + .../drm/emgd/pvr/services4/system/plb/sysconfig.c  |   64 +++---
> + .../drm/emgd/pvr/services4/system/tnc/sysconfig.c  |   64 +++---
> + .../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h |   48 ++--
> + 5 files changed, 246 insertions(+), 256 deletions(-)
> +
> +diff --git a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> +index 8143979..91f9afa 100644
> +--- a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> ++++ b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> +@@ -1,25 +1,26 @@
> + #----------------------------------------------------------------------------
> + # Filename: Makefile.include
> +-# $Revision: 1.1 $
> ++# $Revision: 1.2 $
> + #----------------------------------------------------------------------------
> +-# INTEL CONFIDENTIAL
> +-# Copyright (2002-2008) Intel Corporation All Rights Reserved.
> +-# The source code contained or described herein and all documents related to
> +-# the source code ("Material") are owned by Intel Corporation or its suppliers
> +-# or licensors. Title to the Material remains with Intel Corporation or its
> +-# suppliers and licensors. The Material contains trade secrets and proprietary
> +-# and confidential information of Intel or its suppliers and licensors. The
> +-# Material is protected by worldwide copyright and trade secret laws and
> +-# treaty provisions. No part of the Material may be used, copied, reproduced,
> +-# modified, published, uploaded, posted, transmitted, distributed, or
> +-# disclosed in any way without Intel's prior express written permission.
> +-# 
> +-# No license under any patent, copyright, trade secret or other intellectual
> +-# property right is granted to or conferred upon you by disclosure or
> +-# delivery of the Materials, either expressly, by implication, inducement,
> +-# estoppel or otherwise. Any license under such intellectual property rights
> +-# must be express and approved by Intel in writing.
> +-# 
> ++# Copyright © 2002-2010, Intel Corporation.
> ++#
> ++# Permission is hereby granted, free of charge, to any person obtaining a copy
> ++# of this software and associated documentation files (the "Software"), to deal
> ++# in the Software without restriction, including without limitation the rights
> ++# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++# copies of the Software, and to permit persons to whom the Software is
> ++# furnished to do so, subject to the following conditions:
> ++#
> ++# The above copyright notice and this permission notice shall be included in
> ++# all copies or substantial portions of the Software.
> ++#
> ++# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++# THE SOFTWARE.
> + #----------------------------------------------------------------------------
> + 
> + ifeq ($(origin EGD_CFG), undefined)
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> +index 5037186..4c9946c 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> +@@ -1,35 +1,36 @@
> + /* -*- syscommon-c -*-
> +-*-----------------------------------------------------------------------------
> +-* Filename: syscommon.c
> +-* $Revision: 1.6 $
> +-*-----------------------------------------------------------------------------
> +-* INTEL CONFIDENTIAL
> +-* Copyright 2010 Intel Corporation All Rights Reserved.
> +-* The source code contained or described herein and all documents related to
> +-* the source code ("Material") are owned by Intel Corporation or its suppliers
> +-* or licensors. Title to the Material remains with Intel Corporation or its
> +-* suppliers and licensors. The Material contains trade secrets and proprietary
> +-* and confidential information of Intel or its suppliers and licensors. The
> +-* Material is protected by worldwide copyright and trade secret laws and
> +-* treaty provisions. No part of the Material may be used, copied, reproduced,
> +-* modified, published, uploaded, posted, transmitted, distributed, or
> +-* disclosed in any way without Intel's prior express written permission.
> +-*
> +-* No license under any patent, copyright, trade secret or other intellectual
> +-* property right is granted to or conferred upon you by disclosure or
> +-* delivery of the Materials, either expressly, by implication, inducement,
> +-* estoppel or otherwise. Any license under such intellectual property rights
> +-* must be express and approved by Intel in writing.
> +-*
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Description: platform detection, and sharing of correct platform interface.
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Authors:
> +-*  Marcin Tomczyk
> +-*-----------------------------------------------------------------------------
> +-*/
> ++ *-----------------------------------------------------------------------------
> ++ * Filename: syscommon.c
> ++ * $Revision: 1.7 $
> ++ *-----------------------------------------------------------------------------
> ++ * Copyright © 2002-2010, Intel Corporation.
> ++ *
> ++ * Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ * of this software and associated documentation files (the "Software"), to deal
> ++ * in the Software without restriction, including without limitation the rights
> ++ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ * copies of the Software, and to permit persons to whom the Software is
> ++ * furnished to do so, subject to the following conditions:
> ++ *
> ++ * The above copyright notice and this permission notice shall be included in
> ++ * all copies or substantial portions of the Software.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ * THE SOFTWARE.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Description: platform detection, and sharing of correct platform interface.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Authors:
> ++ *  Marcin Tomczyk
> ++ *-----------------------------------------------------------------------------
> ++ */
> + 
> + #include <linux/pci.h>
> + #include "sgxdefs.h"
> +@@ -124,7 +125,7 @@ IMG_VOID SysPlatformDetect(IMG_VOID)
> + 
> + 
> + /* --------------------------------------------------------------------------*/
> +-/** 
> ++/**
> + * @Synopsis  Interface for Atom E6xx device
> + */
> + /* ----------------------------------------------------------------------------*/
> +@@ -196,14 +197,14 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> + #if defined(SGX_FEATURE_HOST_PORT)
> + 	PVR_TRACE(("Host Port region: %x to %x", OSPCIAddrRangeStart(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX), OSPCIAddrRangeEnd(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX)));
> + #endif
> +-	
> ++
> + 	if (OSPCIAddrRangeLen(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) < MAX_OFFSET)
> + 	{
> + 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region isn't big enough"));
> + 		return PVRSRV_ERROR_GENERIC;
> + 	}
> + 
> +-	
> ++
> + 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) != PVRSRV_OK)
> + 	{
> + 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region not available"));
> +@@ -211,7 +212,7 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> + 	}
> + 	 SYS_SPECIFIC_DATA_SET(psSysSpecData, SYS_SPECIFIC_DATA_PCI_REQUEST_SGX_ADDR_RANGE);
> + 
> +-	
> ++
> + #if defined(SGX_FEATURE_HOST_PORT)
> + 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX) != PVRSRV_OK)
> + 	{
> +@@ -244,31 +245,31 @@ static IMG_VOID PCIDeInitDev(SYS_DATA *psSysData)
> + 		OSPCIReleaseDev(psSysSpecData->hSGXPCI);
> + 	}
> + }
> +-#else	
> ++#else
> + static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PCICONFIG_SPACE *psPCISpace)
> + {
> + 	IMG_UINT32 ui32BusNum;
> + 	IMG_UINT32 ui32DevNum;
> + 	IMG_UINT32 ui32VenDevID;
> + 
> +-	
> ++
> + 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> + 	{
> +-		
> ++
> + 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> + 		{
> +-			
> ++
> + 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> + 
> +-			
> ++
> + 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> + 			{
> + 				IMG_UINT32 ui32Idx;
> + 
> +-				
> ++
> + 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> + 
> +-				
> ++
> + 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> + 				{
> + 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> +@@ -289,7 +290,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> + 
> + 	return PVRSRV_ERROR_GENERIC;
> + }
> +-#endif	
> ++#endif
> + 
> + static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + {
> +@@ -339,21 +340,21 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	}
> + 
> + 	ui32IRQ = (IMG_UINT32)sPCISpace.u.aui8PCISpace[0x3C];
> +-#endif	
> ++#endif
> ++
> + 
> +-	
> + 	gsSGXDeviceMap.ui32Flags = 0x0;
> + 
> +-	
> ++
> + #if defined(NO_HARDWARE)
> +-	
> ++
> + 	gsSGXDeviceMap.ui32IRQ = 0;
> + #else
> + 	gsSGXDeviceMap.ui32IRQ = ui32IRQ;
> + #endif
> + 
> + #if defined(NO_HARDWARE)
> +-	
> ++
> + 	eError = OSBaseAllocContigMemory(SGX_REG_SIZE,
> + 										&gsSGXRegsCPUVAddr,
> + 										&sCpuPAddr);
> +@@ -368,29 +369,29 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	OSMemSet(gsSGXRegsCPUVAddr, 0, SGX_REG_SIZE);
> + 
> + #if defined(__linux__)
> +-	
> ++
> + 	gsSGXDeviceMap.pvRegsCpuVBase = gsSGXRegsCPUVAddr;
> + #else
> +-	
> ++
> + 	gsSGXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> + #endif
> + 
> +-#else	
> ++#else
> + 	gsSGXDeviceMap.sRegsSysPBase.uiAddr = ui32BaseAddr + SGX_REGS_OFFSET;
> +-#endif	
> ++#endif
> ++
> + 
> +-	
> + 	gsSGXDeviceMap.sRegsCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sRegsSysPBase);
> + 	gsSGXDeviceMap.ui32RegsSize = SGX_REG_SIZE;
> + 
> + #if defined(SGX_FEATURE_HOST_PORT)
> +-	
> ++
> + 	gsSGXDeviceMap.ui32Flags = SGX_HOSTPORT_PRESENT;
> + 	gsSGXDeviceMap.sHPSysPBase.uiAddr = ui32HostPortAddr;
> + 	gsSGXDeviceMap.sHPCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sHPSysPBase);
> + 	gsSGXDeviceMap.ui32HPSize = SYS_SGX_HP_SIZE;
> + #endif
> +-	
> ++
> + 
> + 
> + 
> +@@ -400,7 +401,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	gsSGXDeviceMap.ui32LocalMemSize = 0;
> + 
> + #if !defined(NO_HARDWARE)
> +-	
> ++
> + 	{
> + 		IMG_SYS_PHYADDR sPoulsboRegsCpuPBase;
> + 
> +@@ -421,10 +422,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + #endif
> + 
> + #ifdef SUPPORT_MSVDX
> +-	
> ++
> + 
> + #if defined(NO_HARDWARE)
> +-	
> ++
> + 	eError = OSBaseAllocContigMemory(MSVDX_REG_SIZE,
> + 										&gsMSVDXRegsCPUVAddr,
> + 										&sCpuPAddr);
> +@@ -438,10 +439,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	OSMemSet(gsMSVDXRegsCPUVAddr, 0, MSVDX_REG_SIZE);
> + 
> + #if defined(__linux__)
> +-	
> ++
> + 	gsMSVDXDeviceMap.pvRegsCpuVBase = gsMSVDXRegsCPUVAddr;
> + #else
> +-	
> ++
> + 	gsMSVDXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> + #endif
> + #else
> +@@ -450,7 +451,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	gsMSVDXDeviceMap.sRegsSysPBase		  = SysCpuPAddrToSysPAddr(gsMSVDXDeviceMap.sRegsCpuPBase);
> + 	gsMSVDXDeviceMap.ui32RegsSize		  = MSVDX_REG_SIZE;
> + 
> +-	
> ++
> + 
> + 
> + 
> +@@ -459,13 +460,13 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> + 	gsMSVDXDeviceMap.sLocalMemCpuPBase.uiAddr = 0;
> + 	gsMSVDXDeviceMap.ui32LocalMemSize		  = 0;
> + 
> +-	
> ++
> + 
> + 	gsMSVDXDeviceMap.ui32IRQ = ui32IRQ;
> + 
> +-#endif 
> ++#endif
> ++
> + 
> +-	
> + 
> + 	return PVRSRV_OK;
> + }
> +@@ -478,28 +479,28 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> + 	IMG_UINT32  ui32VenDevID;
> + 	IMG_UINT32	ui32BarIndex;
> + 
> +-	
> ++
> + 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> + 	{
> +-		
> ++
> + 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> + 		{
> +-			
> ++
> + 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> + 
> +-			
> ++
> + 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> + 			{
> + 				IMG_UINT32 ui32Idx;
> + 
> +-				
> ++
> + 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> + 
> +-				psPCISpace->ui32BusNum  = ui32BusNum;	
> ++				psPCISpace->ui32BusNum  = ui32BusNum;
> + 				psPCISpace->ui32DevNum  = ui32DevNum;
> + 				psPCISpace->ui32FuncNum = 0;
> + 
> +-				
> ++
> + 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> + 				{
> + 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> +@@ -509,7 +510,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> + 						PVR_DPF((PVR_DBG_VERBOSE,"%08X\n",psPCISpace->u.aui32PCISpace[ui32Idx]));
> + 					}
> + 				}
> +-						 										
> ++
> + 				for (ui32BarIndex = 0; ui32BarIndex < 6; ui32BarIndex++)
> + 				{
> + 					GetPCIMemSpaceSize (ui32BusNum, ui32DevNum, ui32BarIndex, &psPCISpace->aui32PCIMemSpaceSize[ui32BarIndex]);
> +@@ -557,7 +558,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> +     IMG_CHAR *pszVersionString;
> + 
> + #if !defined(NO_HARDWARE)
> +-     
> ++
> +     {
> + 	IMG_VOID *pvSGXRegs;
> + 
> +@@ -571,8 +572,8 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> +             ui32SGXRevision = OSReadHWReg(pvSGXRegs, EUR_CR_CORE_REVISION);
> + 
> + 	     OSUnMapPhysToLin(pvSGXRegs,
> +-		   									 	gsSGXDeviceMap.ui32RegsSize,
> +-											 	PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> ++												gsSGXDeviceMap.ui32RegsSize,
> ++												PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> + 												IMG_NULL);
> + 	}
> + 	else
> +@@ -609,7 +610,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> +                     ui32MaxStrLen + 1,
> +                     pszVersionString,
> +                     IMG_NULL);
> +-		
> ++
> + 		return PVRSRV_ERROR_GENERIC;
> +     }
> + 
> +@@ -631,7 +632,7 @@ static IMG_VOID SysFreeVersionString(SYS_DATA *psSysData)
> + 		psSysData->pszVersionString = NULL;
> +     }
> + }
> +-#endif 
> ++#endif
> + PVRSRV_ERROR SysInitialise(IMG_VOID)
> + {
> + 	IMG_UINT32			i;
> +@@ -642,14 +643,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 	PVR_DPF((PVR_DBG_MESSAGE,"SysInitialise"));
> + 
> + 	SysPlatformDetect();
> +-	
> ++
> + 	gpsSysData = &gsSysData;
> + 	OSMemSet(gpsSysData, 0, sizeof(SYS_DATA));
> + 
> + 	gpsSysData->pvSysSpecificData = &gsSysSpecificData;
> + 	gsSysSpecificData.ui32SysSpecificData = 0;
> + #ifdef	LDM_PCI
> +-	
> ++
> + 	PVR_ASSERT(gpsPVRLDMDev != IMG_NULL);
> + 	gsSysSpecificData.psPCIDev = gpsPVRLDMDev;
> + #endif
> +@@ -663,15 +664,15 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 		return eError;
> + 	}
> + 
> +-	
> ++
> + 	psTimingInfo = &gsSGXDeviceMap.sTimingInfo;
> + 	psTimingInfo->ui32CoreClockSpeed = SYS_SGX_CLOCK_SPEED;
> + 	psTimingInfo->ui32HWRecoveryFreq = SYS_SGX_HWRECOVERY_TIMEOUT_FREQ;
> + #if defined(SUPPORT_ACTIVE_POWER_MANAGEMENT)
> + 	psTimingInfo->bEnableActivePM = IMG_TRUE;
> +-#else	
> ++#else
> + 	psTimingInfo->bEnableActivePM = IMG_FALSE;
> +-#endif 
> ++#endif
> + 	psTimingInfo->ui32ActivePowManLatencyms = SYS_SGX_ACTIVE_POWER_LATENCY_MS;
> + 	psTimingInfo->ui32uKernelFreq = SYS_SGX_PDS_TIMER_FREQ;
> + 
> +@@ -687,7 +688,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 
> + 	gpsSysData->ui32NumDevices = SYS_DEVICE_COUNT;
> + 
> +-	
> ++
> + 	for(i=0; i<SYS_DEVICE_COUNT; i++)
> + 	{
> + 		gpsSysData->sDeviceID[i].uiID = i;
> +@@ -716,7 +717,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 		return eError;
> + 	}
> + 
> +-	
> ++
> + 	eError = PVRSRVRegisterDevice(gpsSysData, SGXRegisterDevice,
> + 								  DEVICE_SGX_INTERRUPT, &gui32SGXDeviceID);
> + 	if (eError != PVRSRV_OK)
> +@@ -744,7 +745,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 
> + 	while(psDeviceNode)
> + 	{
> +-		
> ++
> + 		switch(psDeviceNode->sDevId.eDeviceType)
> + 		{
> + 			case PVRSRV_DEVICE_TYPE_SGX:
> +@@ -752,19 +753,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> + 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> + 
> +-				
> ++
> + 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> + 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> + 				{
> + 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> + #ifdef OEM_CUSTOMISE
> +-					
> ++
> + #endif
> + 				}
> + 
> +@@ -777,19 +778,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> + 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> + 
> +-				
> ++
> + 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> + 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> + 
> +-				
> ++
> + 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> + 				{
> + 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> + #ifdef OEM_CUSTOMISE
> +-					
> ++
> + #endif
> + 				}
> + 				break;
> +@@ -802,14 +803,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> + 			}
> + 		}
> + 
> +-		
> ++
> + 		psDeviceNode = psDeviceNode->psNext;
> + 	}
> + 
> + 	PDUMPINIT();
> + 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PDUMP_INIT);
> + 
> +-	
> ++
> + 	eError = PVRSRVInitialiseDevice (gui32SGXDeviceID);
> + 	if (eError != PVRSRV_OK)
> + 	{
> +@@ -843,15 +844,15 @@ static IMG_VOID SysEnableInterrupts(SYS_DATA *psSysData)
> + 	IMG_UINT32 ui32Mask;
> + 
> + 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG, ui32RegData | ui32Mask);
> + 
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData & (~ui32Mask));
> + 
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData | ui32Mask);
> + 
> +@@ -868,11 +869,11 @@ static IMG_VOID SysDisableInterrupts(SYS_DATA *psSysData)
> + 
> + 
> + 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData & (~ui32Mask));
> + 
> +-	
> ++
> + 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> + 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData | ui32Mask);
> + 
> +@@ -916,7 +917,7 @@ PVRSRV_ERROR SysFinalise(IMG_VOID)
> + 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED);
> + 
> + #ifdef	__linux__
> +-	
> ++
> + 	eError = SysCreateVersionString(gpsSysData);
> + 	if (eError != PVRSRV_OK)
> + 	{
> +@@ -963,7 +964,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> + #if defined(SUPPORT_MSVDX)
> + 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_MSVDX_INITIALISED))
> + 	{
> +-		
> ++
> + 		eError = PVRSRVDeinitialiseDevice(gui32MSVDXDeviceID);
> + 		if (eError != PVRSRV_OK)
> + 		{
> +@@ -975,7 +976,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> + 
> + 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_SGX_INITIALISED))
> + 	{
> +-		
> ++
> + 		eError = PVRSRVDeinitialiseDevice(gui32SGXDeviceID);
> + 		if (eError != PVRSRV_OK)
> + 		{
> +@@ -1014,7 +1015,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> + #endif
> + 
> + #if !defined(NO_HARDWARE)
> +-	
> ++
> + 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> + 											 REG_SIZE,
> + 											 PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> +@@ -1049,7 +1050,7 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> + 	PVR_UNREFERENCED_PARAMETER(psSysData);
> + 	PVR_UNREFERENCED_PARAMETER(psDeviceNode);
> + 
> +-	
> ++
> + 	ui32Data = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> + 
> + 	if (ui32Data & THALIA_MASK)
> +@@ -1062,11 +1063,11 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> + 		ui32Devices |= DEVICE_MSVDX_INTERRUPT;
> + 	}
> + 
> +-	
> ++
> + 	ui32DIMMask = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> + 	ui32DIMMask &= ~(THALIA_MASK | MSVDX_MASK);
> + 
> +-	
> ++
> + 	if (ui32Data & ui32DIMMask)
> + 	{
> + 		ui32Devices |= DEVICE_DISP_INTERRUPT;
> +@@ -1123,14 +1124,14 @@ PVRSRV_ERROR SysGetDeviceMemoryMap(PVRSRV_DEVICE_TYPE eDeviceType,
> + 	{
> + 		case PVRSRV_DEVICE_TYPE_SGX:
> + 		{
> +-			
> ++
> + 			*ppvDeviceMap = (IMG_VOID*)&gsSGXDeviceMap;
> + 			break;
> + 		}
> + #ifdef SUPPORT_MSVDX
> + 		case PVRSRV_DEVICE_TYPE_MSVDX:
> + 		{
> +-			
> ++
> + 			*ppvDeviceMap = (IMG_VOID*)&gsMSVDXDeviceMap;
> + 			break;
> + 		}
> +@@ -1151,7 +1152,7 @@ IMG_DEV_PHYADDR SysCpuPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType,
> + 
> + 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> + 
> +-	
> ++
> + 	DevPAddr.uiAddr = CpuPAddr.uiAddr;
> + 
> + 	return DevPAddr;
> +@@ -1162,7 +1163,7 @@ IMG_CPU_PHYADDR SysSysPAddrToCpuPAddr (IMG_SYS_PHYADDR sys_paddr)
> + {
> + 	IMG_CPU_PHYADDR cpu_paddr;
> + 
> +-	
> ++
> + 	cpu_paddr.uiAddr = sys_paddr.uiAddr;
> + 	return cpu_paddr;
> + }
> +@@ -1171,7 +1172,7 @@ IMG_SYS_PHYADDR SysCpuPAddrToSysPAddr (IMG_CPU_PHYADDR cpu_paddr)
> + {
> + 	IMG_SYS_PHYADDR sys_paddr;
> + 
> +-	
> ++
> + 	sys_paddr.uiAddr = cpu_paddr.uiAddr;
> + 	return sys_paddr;
> + }
> +@@ -1183,7 +1184,7 @@ IMG_DEV_PHYADDR SysSysPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_SYS_P
> + 
> + 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> + 
> +-	
> ++
> +     DevPAddr.uiAddr = SysPAddr.uiAddr;
> + 
> +     return DevPAddr;
> +@@ -1196,7 +1197,7 @@ IMG_SYS_PHYADDR SysDevPAddrToSysPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_DEV_P
> + 
> + 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> + 
> +-    
> ++
> +     SysPAddr.uiAddr = DevPAddr.uiAddr;
> + 
> +     return SysPAddr;
> +@@ -1255,12 +1256,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 		{
> + 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> + #if defined(NO_HARDWARE) && defined(__linux__)
> +-			
> ++
> + 			PVR_ASSERT(gsSGXRegsCPUVAddr);
> + 
> + 			psDevInfo->pvRegsBaseKM = gsSGXRegsCPUVAddr;
> +-#else	
> +-			
> ++#else
> ++
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS))
> + 			{
> + 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sRegsCpuPBase,
> +@@ -1275,7 +1276,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 				}
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 
> + 			psDevInfo->ui32RegSize   = gsSGXDeviceMap.ui32RegsSize;
> + 			psDevInfo->sRegsPhysBase = gsSGXDeviceMap.sRegsSysPBase;
> +@@ -1285,7 +1286,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 			{
> + 				if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_HP))
> + 				{
> +-					
> ++
> + 					psDevInfo->pvHostPortBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sHPCpuPBase,
> + 														     gsSGXDeviceMap.ui32HPSize,
> + 														     PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> +@@ -1300,7 +1301,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 				psDevInfo->ui32HPSize  = gsSGXDeviceMap.ui32HPSize;
> + 				psDevInfo->sHPSysPAddr = gsSGXDeviceMap.sHPSysPBase;
> + 			}
> +-#endif 
> ++#endif
> + 			break;
> + 		}
> + #ifdef SUPPORT_MSVDX
> +@@ -1308,13 +1309,13 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 		{
> + 			PVRSRV_MSVDXDEV_INFO *psDevInfo = (PVRSRV_MSVDXDEV_INFO *)psDeviceNodeList->pvDevice;
> + #if defined(NO_HARDWARE) && defined(__linux__)
> +-			
> ++
> + 			PVR_ASSERT(gsMSVDXRegsCPUVAddr);
> + 			psDevInfo->pvRegsBaseKM = gsMSVDXRegsCPUVAddr;
> +-#else	
> ++#else
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS))
> + 			{
> +-				
> ++
> + 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin (
> + 					gsMSVDXDeviceMap.sRegsCpuPBase,
> + 					gsMSVDXDeviceMap.ui32RegsSize,
> +@@ -1327,12 +1328,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> + 				}
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 			psDevInfo->ui32RegSize = gsMSVDXDeviceMap.ui32RegsSize;
> + 			psDevInfo->sRegsPhysBase = gsMSVDXDeviceMap.sRegsSysPBase;
> + 			break;
> + 		}
> +-#endif	
> ++#endif
> + 		default:
> + 			break;
> + 		}
> +@@ -1357,7 +1358,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 		{
> + 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> + #if !(defined(NO_HARDWARE) && defined(__linux__))
> +-			
> ++
> + 			if (psDevInfo->pvRegsBaseKM)
> + 			{
> + 				OSUnMapPhysToLin(psDevInfo->pvRegsBaseKM,
> +@@ -1367,7 +1368,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 
> + 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> + 			psDevInfo->ui32RegSize          = 0;
> +@@ -1376,7 +1377,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + #if defined(SGX_FEATURE_HOST_PORT)
> + 			if (gsSGXDeviceMap.ui32Flags & SGX_HOSTPORT_PRESENT)
> + 			{
> +-				
> ++
> + 				if (psDevInfo->pvHostPortBaseKM)
> + 				{
> + 					OSUnMapPhysToLin(psDevInfo->pvHostPortBaseKM,
> +@@ -1392,7 +1393,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 				psDevInfo->ui32HPSize  = 0;
> + 				psDevInfo->sHPSysPAddr.uiAddr = 0;
> + 			}
> +-#endif 
> ++#endif
> + 			break;
> + 		}
> + #ifdef SUPPORT_MSVDX
> +@@ -1409,13 +1410,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> + 			}
> +-#endif	
> ++#endif
> + 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> + 			psDevInfo->ui32RegSize = 0;
> + 			psDevInfo->sRegsPhysBase.uiAddr = 0;
> + 			break;
> + 		}
> +-#endif	
> ++#endif
> + 		default:
> + 			break;
> + 		}
> +@@ -1423,13 +1424,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 	}
> + 
> + #if !(defined(NO_HARDWARE) || defined(__linux__))
> +-	
> ++
> + 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> + 				REG_SIZE,
> + 				PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> + 				IMG_NULL);
> + 
> +-	
> ++
> + #if defined(MAP_UNUSED_MAPPINGS)
> + 	OSUnMapPhysToLin(gsPoulsboDisplayRegsCPUVaddr,
> + 				DISPLAY_REG_SIZE,
> +@@ -1437,7 +1438,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 				IMG_NULL);
> + #endif
> + 
> +-#endif	
> ++#endif
> + 
> + #if defined(NO_HARDWARE)
> + #ifdef SUPPORT_MSVDX
> +@@ -1462,7 +1463,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> + 
> + 		SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_ALLOC_DUMMY_SGX_REGS);
> + 	}
> +-#endif 
> ++#endif
> + 
> + 	return PVRSRV_OK;
> + }
> +@@ -1477,7 +1478,7 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 		if ((eNewPowerState == PVRSRV_SYS_POWER_STATE_D3) &&
> + 			(gpsSysData->eCurrentPowerState < PVRSRV_SYS_POWER_STATE_D3))
> + 		{
> +-			
> ++
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED))
> + 			{
> + 				SysDisableInterrupts(gpsSysData);
> +@@ -1497,9 +1498,9 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> + 			}
> +-#endif 
> ++#endif
> ++
> + 
> +-			
> + 			SysUnmapRegisters();
> + #ifdef	__linux__
> + 			eError = OSPCISuspendDev(gsSysSpecificData.hSGXPCI);
> +@@ -1530,7 +1531,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				PVR_DPF((PVR_DBG_ERROR,"SysSystemPostPowerState: OSPCIResumeDev failed (%d)", eError));
> + 			}
> + #endif
> +-			
> ++
> + 
> + 
> + 			eError = SysLocateDevices(gpsSysData);
> +@@ -1540,7 +1541,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				return eError;
> + 			}
> + 
> +-			
> ++
> + 			eError = SysMapInRegisters();
> + 			if (eError != PVRSRV_OK)
> + 			{
> +@@ -1559,7 +1560,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> + 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> + 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> + 			}
> +-#endif 
> ++#endif
> + 
> + 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_IRQ_DISABLE))
> + 			{
> +@@ -1606,7 +1607,3 @@ PVRSRV_ERROR SysDevicePostPowerState(IMG_UINT32				ui32DeviceIndex,
> + 
> + 	return PVRSRV_OK;
> + }
> +-
> +-
> +-
> +-
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> +index 0737aaf..63a1c96 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> +@@ -1,35 +1,36 @@
> + /* -*- syscommon-c -*-
> +-*-----------------------------------------------------------------------------
> +-* Filename: syscommon.c
> +-* $Revision: 1.2 $
> +-*-----------------------------------------------------------------------------
> +-* INTEL CONFIDENTIAL
> +-* Copyright 2010 Intel Corporation All Rights Reserved.
> +-* The source code contained or described herein and all documents related to
> +-* the source code ("Material") are owned by Intel Corporation or its suppliers
> +-* or licensors. Title to the Material remains with Intel Corporation or its
> +-* suppliers and licensors. The Material contains trade secrets and proprietary
> +-* and confidential information of Intel or its suppliers and licensors. The
> +-* Material is protected by worldwide copyright and trade secret laws and
> +-* treaty provisions. No part of the Material may be used, copied, reproduced,
> +-* modified, published, uploaded, posted, transmitted, distributed, or
> +-* disclosed in any way without Intel's prior express written permission.
> +-*
> +-* No license under any patent, copyright, trade secret or other intellectual
> +-* property right is granted to or conferred upon you by disclosure or
> +-* delivery of the Materials, either expressly, by implication, inducement,
> +-* estoppel or otherwise. Any license under such intellectual property rights
> +-* must be express and approved by Intel in writing.
> +-*
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Description: platform detection, and sharing of correct platform interface.
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Authors:
> +-*  Marcin Tomczyk
> +-*-----------------------------------------------------------------------------
> +-*/
> ++ *-----------------------------------------------------------------------------
> ++ * Filename: syscommon.c
> ++ * $Revision: 1.3 $
> ++ *-----------------------------------------------------------------------------
> ++ * Copyright © 2002-2010, Intel Corporation.
> ++ *
> ++ * Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ * of this software and associated documentation files (the "Software"), to deal
> ++ * in the Software without restriction, including without limitation the rights
> ++ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ * copies of the Software, and to permit persons to whom the Software is
> ++ * furnished to do so, subject to the following conditions:
> ++ *
> ++ * The above copyright notice and this permission notice shall be included in
> ++ * all copies or substantial portions of the Software.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ * THE SOFTWARE.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Description: platform detection, and sharing of correct platform interface.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Authors:
> ++ *  Marcin Tomczyk
> ++ *-----------------------------------------------------------------------------
> ++ */
> + 
> + #include "sysconfig.h"
> + #include "sysplb.h"
> +@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfacePlb = {
> + 	SYS_SGX_CLOCK_SPEED_PLB,
> + 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_PLB
> + };
> +-
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> +index 5b94861..e4d9426 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> +@@ -1,35 +1,36 @@
> + /* -*- syscommon-c -*-
> +-*-----------------------------------------------------------------------------
> +-* Filename: syscommon.c
> +-* $Revision: 1.2 $
> +-*-----------------------------------------------------------------------------
> +-* INTEL CONFIDENTIAL
> +-* Copyright 2010 Intel Corporation All Rights Reserved.
> +-* The source code contained or described herein and all documents related to
> +-* the source code ("Material") are owned by Intel Corporation or its suppliers
> +-* or licensors. Title to the Material remains with Intel Corporation or its
> +-* suppliers and licensors. The Material contains trade secrets and proprietary
> +-* and confidential information of Intel or its suppliers and licensors. The
> +-* Material is protected by worldwide copyright and trade secret laws and
> +-* treaty provisions. No part of the Material may be used, copied, reproduced,
> +-* modified, published, uploaded, posted, transmitted, distributed, or
> +-* disclosed in any way without Intel's prior express written permission.
> +-*
> +-* No license under any patent, copyright, trade secret or other intellectual
> +-* property right is granted to or conferred upon you by disclosure or
> +-* delivery of the Materials, either expressly, by implication, inducement,
> +-* estoppel or otherwise. Any license under such intellectual property rights
> +-* must be express and approved by Intel in writing.
> +-*
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Description: platform detection, and sharing of correct platform interface.
> +-*
> +-*-----------------------------------------------------------------------------
> +-* Authors:
> +-*  Marcin Tomczyk
> +-*-----------------------------------------------------------------------------
> +-*/
> ++ *-----------------------------------------------------------------------------
> ++ * Filename: syscommon.c
> ++ * $Revision: 1.3 $
> ++ *-----------------------------------------------------------------------------
> ++ * Copyright © 2002-2010, Intel Corporation.
> ++ *
> ++ * Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ * of this software and associated documentation files (the "Software"), to deal
> ++ * in the Software without restriction, including without limitation the rights
> ++ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ * copies of the Software, and to permit persons to whom the Software is
> ++ * furnished to do so, subject to the following conditions:
> ++ *
> ++ * The above copyright notice and this permission notice shall be included in
> ++ * all copies or substantial portions of the Software.
> ++ *
> ++ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ * THE SOFTWARE.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Description: platform detection, and sharing of correct platform interface.
> ++ *
> ++ *-----------------------------------------------------------------------------
> ++ * Authors:
> ++ *  Marcin Tomczyk
> ++ *-----------------------------------------------------------------------------
> ++ */
> + 
> + #include "sysconfig.h"
> + #include "systnc.h"
> +@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfaceTnc = {
> + 	SYS_SGX_CLOCK_SPEED_TNC,
> + 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC
> + };
> +-
> +diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> +index 3f26d4c..7d5c2d6 100644
> +--- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> ++++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> +@@ -1,40 +1,32 @@
> + /**********************************************************************
> +- *
> +- * Copyright(c) 2008 Imagination Technologies Ltd. All rights reserved.
> +- * 
> +- * This program is free software; you can redistribute it and/or modify it
> +- * under the terms and conditions of the GNU General Public License,
> +- * version 2, as published by the Free Software Foundation.
> +- * 
> +- * This program is distributed in the hope it will be useful but, except 
> +- * as otherwise stated in writing, without any warranty; without even the 
> +- * implied warranty of merchantability or fitness for a particular purpose. 
> +- * See the GNU General Public License for more details.
> +- * 
> +- * You should have received a copy of the GNU General Public License along with
> +- * this program; if not, write to the Free Software Foundation, Inc.,
> +- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
> +- * 
> +- * The full GNU General Public License is included in this distribution in
> +- * the file called "COPYING".
> +- *
> +- * Contact Information:
> +- * Imagination Technologies Ltd. <gpl-support@imgtec.com>
> +- * Home Park Estate, Kings Langley, Herts, WD4 8LZ, UK 
> +- *
> ++ Copyright (c) Imagination Technologies Ltd.
> ++
> ++ Permission is hereby granted, free of charge, to any person obtaining a copy
> ++ of this software and associated documentation files (the "Software"), to deal
> ++ in the Software without restriction, including without limitation the rights
> ++ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> ++ copies of the Software, and to permit persons to whom the Software is
> ++ furnished to do so, subject to the following conditions:
> ++
> ++ The above copyright notice and this permission notice shall be included in
> ++ all copies or substantial portions of the Software.
> ++
> ++ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> ++ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> ++ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> ++ AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> ++ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> ++ OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> ++ THE SOFTWARE.
> +  ******************************************************************************/
> +-/* INTEL CONFIDENTIAL
> +- * Copyright 2010 Intel Corporation All Rights Reserved.
> +- */
> + 
> + #ifndef _SYSTNC_H
> + #define _SYSTNC_H
> + 
> +-#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108	
> ++#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108
> + #define VS_PRODUCT_NAME_TNC     	"SGX Atom E6xx"
> + #define SGX_REGS_OFFSET_TNC     	0x80000
> + #define MSVDX_REGS_OFFSET_TNC   	0x90000
> + #define SYS_SGX_CLOCK_SPEED_TNC                     (400000000)
> + #define SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC         (50)
> + #endif
> +-
> +-- 
> +1.7.0.4
> +
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable/0001-crownbay-update-a-handful-of-EMGD-licenses.patch b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> deleted file mode 100644
> index 5fcc2c2..0000000
> --- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> +++ /dev/null
> @@ -1,1151 +0,0 @@
> -From fb0e43f18c33979abf5c1eb36cf3f0ca04c3d0fb Mon Sep 17 00:00:00 2001
> -From: Tom Zanussi <tom.zanussi@intel.com>
> -Date: Thu, 17 Mar 2011 13:03:34 -0500
> -Subject: [KERNEL][linux-yocto-stable][PATCH 1/1] crownbay: update a handful of EMGD licenses
> -
> -The version of the EMGD driver we use had a few included license
> -mistakes.  Correct these as per upstream.
> -
> -Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ----
> - drivers/gpu/drm/emgd/emgd/pal/Makefile.include     |   39 ++--
> - .../emgd/pvr/services4/system/common/sysconfig.c   |  287 ++++++++++----------
> - .../drm/emgd/pvr/services4/system/plb/sysconfig.c  |   64 +++---
> - .../drm/emgd/pvr/services4/system/tnc/sysconfig.c  |   64 +++---
> - .../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h |   48 ++--
> - 5 files changed, 246 insertions(+), 256 deletions(-)
> -
> -diff --git a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> -index 8143979..91f9afa 100644
> ---- a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> -+++ b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> -@@ -1,25 +1,26 @@
> - #----------------------------------------------------------------------------
> - # Filename: Makefile.include
> --# $Revision: 1.1 $
> -+# $Revision: 1.2 $
> - #----------------------------------------------------------------------------
> --# INTEL CONFIDENTIAL
> --# Copyright (2002-2008) Intel Corporation All Rights Reserved.
> --# The source code contained or described herein and all documents related to
> --# the source code ("Material") are owned by Intel Corporation or its suppliers
> --# or licensors. Title to the Material remains with Intel Corporation or its
> --# suppliers and licensors. The Material contains trade secrets and proprietary
> --# and confidential information of Intel or its suppliers and licensors. The
> --# Material is protected by worldwide copyright and trade secret laws and
> --# treaty provisions. No part of the Material may be used, copied, reproduced,
> --# modified, published, uploaded, posted, transmitted, distributed, or
> --# disclosed in any way without Intel's prior express written permission.
> --# 
> --# No license under any patent, copyright, trade secret or other intellectual
> --# property right is granted to or conferred upon you by disclosure or
> --# delivery of the Materials, either expressly, by implication, inducement,
> --# estoppel or otherwise. Any license under such intellectual property rights
> --# must be express and approved by Intel in writing.
> --# 
> -+# Copyright © 2002-2010, Intel Corporation.
> -+#
> -+# Permission is hereby granted, free of charge, to any person obtaining a copy
> -+# of this software and associated documentation files (the "Software"), to deal
> -+# in the Software without restriction, including without limitation the rights
> -+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+# copies of the Software, and to permit persons to whom the Software is
> -+# furnished to do so, subject to the following conditions:
> -+#
> -+# The above copyright notice and this permission notice shall be included in
> -+# all copies or substantial portions of the Software.
> -+#
> -+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+# THE SOFTWARE.
> - #----------------------------------------------------------------------------
> - 
> - ifeq ($(origin EGD_CFG), undefined)
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> -index 5037186..4c9946c 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> -@@ -1,35 +1,36 @@
> - /* -*- syscommon-c -*-
> --*-----------------------------------------------------------------------------
> --* Filename: syscommon.c
> --* $Revision: 1.6 $
> --*-----------------------------------------------------------------------------
> --* INTEL CONFIDENTIAL
> --* Copyright 2010 Intel Corporation All Rights Reserved.
> --* The source code contained or described herein and all documents related to
> --* the source code ("Material") are owned by Intel Corporation or its suppliers
> --* or licensors. Title to the Material remains with Intel Corporation or its
> --* suppliers and licensors. The Material contains trade secrets and proprietary
> --* and confidential information of Intel or its suppliers and licensors. The
> --* Material is protected by worldwide copyright and trade secret laws and
> --* treaty provisions. No part of the Material may be used, copied, reproduced,
> --* modified, published, uploaded, posted, transmitted, distributed, or
> --* disclosed in any way without Intel's prior express written permission.
> --*
> --* No license under any patent, copyright, trade secret or other intellectual
> --* property right is granted to or conferred upon you by disclosure or
> --* delivery of the Materials, either expressly, by implication, inducement,
> --* estoppel or otherwise. Any license under such intellectual property rights
> --* must be express and approved by Intel in writing.
> --*
> --*
> --*-----------------------------------------------------------------------------
> --* Description: platform detection, and sharing of correct platform interface.
> --*
> --*-----------------------------------------------------------------------------
> --* Authors:
> --*  Marcin Tomczyk
> --*-----------------------------------------------------------------------------
> --*/
> -+ *-----------------------------------------------------------------------------
> -+ * Filename: syscommon.c
> -+ * $Revision: 1.7 $
> -+ *-----------------------------------------------------------------------------
> -+ * Copyright © 2002-2010, Intel Corporation.
> -+ *
> -+ * Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ * of this software and associated documentation files (the "Software"), to deal
> -+ * in the Software without restriction, including without limitation the rights
> -+ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ * copies of the Software, and to permit persons to whom the Software is
> -+ * furnished to do so, subject to the following conditions:
> -+ *
> -+ * The above copyright notice and this permission notice shall be included in
> -+ * all copies or substantial portions of the Software.
> -+ *
> -+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ * THE SOFTWARE.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Description: platform detection, and sharing of correct platform interface.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Authors:
> -+ *  Marcin Tomczyk
> -+ *-----------------------------------------------------------------------------
> -+ */
> - 
> - #include <linux/pci.h>
> - #include "sgxdefs.h"
> -@@ -124,7 +125,7 @@ IMG_VOID SysPlatformDetect(IMG_VOID)
> - 
> - 
> - /* --------------------------------------------------------------------------*/
> --/** 
> -+/**
> - * @Synopsis  Interface for Atom E6xx device
> - */
> - /* ----------------------------------------------------------------------------*/
> -@@ -196,14 +197,14 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> - #if defined(SGX_FEATURE_HOST_PORT)
> - 	PVR_TRACE(("Host Port region: %x to %x", OSPCIAddrRangeStart(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX), OSPCIAddrRangeEnd(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX)));
> - #endif
> --	
> -+
> - 	if (OSPCIAddrRangeLen(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) < MAX_OFFSET)
> - 	{
> - 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region isn't big enough"));
> - 		return PVRSRV_ERROR_GENERIC;
> - 	}
> - 
> --	
> -+
> - 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) != PVRSRV_OK)
> - 	{
> - 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region not available"));
> -@@ -211,7 +212,7 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> - 	}
> - 	 SYS_SPECIFIC_DATA_SET(psSysSpecData, SYS_SPECIFIC_DATA_PCI_REQUEST_SGX_ADDR_RANGE);
> - 
> --	
> -+
> - #if defined(SGX_FEATURE_HOST_PORT)
> - 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX) != PVRSRV_OK)
> - 	{
> -@@ -244,31 +245,31 @@ static IMG_VOID PCIDeInitDev(SYS_DATA *psSysData)
> - 		OSPCIReleaseDev(psSysSpecData->hSGXPCI);
> - 	}
> - }
> --#else	
> -+#else
> - static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PCICONFIG_SPACE *psPCISpace)
> - {
> - 	IMG_UINT32 ui32BusNum;
> - 	IMG_UINT32 ui32DevNum;
> - 	IMG_UINT32 ui32VenDevID;
> - 
> --	
> -+
> - 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> - 	{
> --		
> -+
> - 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> - 		{
> --			
> -+
> - 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> - 
> --			
> -+
> - 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> - 			{
> - 				IMG_UINT32 ui32Idx;
> - 
> --				
> -+
> - 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> - 
> --				
> -+
> - 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> - 				{
> - 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> -@@ -289,7 +290,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> - 
> - 	return PVRSRV_ERROR_GENERIC;
> - }
> --#endif	
> -+#endif
> - 
> - static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - {
> -@@ -339,21 +340,21 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	}
> - 
> - 	ui32IRQ = (IMG_UINT32)sPCISpace.u.aui8PCISpace[0x3C];
> --#endif	
> -+#endif
> -+
> - 
> --	
> - 	gsSGXDeviceMap.ui32Flags = 0x0;
> - 
> --	
> -+
> - #if defined(NO_HARDWARE)
> --	
> -+
> - 	gsSGXDeviceMap.ui32IRQ = 0;
> - #else
> - 	gsSGXDeviceMap.ui32IRQ = ui32IRQ;
> - #endif
> - 
> - #if defined(NO_HARDWARE)
> --	
> -+
> - 	eError = OSBaseAllocContigMemory(SGX_REG_SIZE,
> - 										&gsSGXRegsCPUVAddr,
> - 										&sCpuPAddr);
> -@@ -368,29 +369,29 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	OSMemSet(gsSGXRegsCPUVAddr, 0, SGX_REG_SIZE);
> - 
> - #if defined(__linux__)
> --	
> -+
> - 	gsSGXDeviceMap.pvRegsCpuVBase = gsSGXRegsCPUVAddr;
> - #else
> --	
> -+
> - 	gsSGXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> - #endif
> - 
> --#else	
> -+#else
> - 	gsSGXDeviceMap.sRegsSysPBase.uiAddr = ui32BaseAddr + SGX_REGS_OFFSET;
> --#endif	
> -+#endif
> -+
> - 
> --	
> - 	gsSGXDeviceMap.sRegsCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sRegsSysPBase);
> - 	gsSGXDeviceMap.ui32RegsSize = SGX_REG_SIZE;
> - 
> - #if defined(SGX_FEATURE_HOST_PORT)
> --	
> -+
> - 	gsSGXDeviceMap.ui32Flags = SGX_HOSTPORT_PRESENT;
> - 	gsSGXDeviceMap.sHPSysPBase.uiAddr = ui32HostPortAddr;
> - 	gsSGXDeviceMap.sHPCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sHPSysPBase);
> - 	gsSGXDeviceMap.ui32HPSize = SYS_SGX_HP_SIZE;
> - #endif
> --	
> -+
> - 
> - 
> - 
> -@@ -400,7 +401,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	gsSGXDeviceMap.ui32LocalMemSize = 0;
> - 
> - #if !defined(NO_HARDWARE)
> --	
> -+
> - 	{
> - 		IMG_SYS_PHYADDR sPoulsboRegsCpuPBase;
> - 
> -@@ -421,10 +422,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - #endif
> - 
> - #ifdef SUPPORT_MSVDX
> --	
> -+
> - 
> - #if defined(NO_HARDWARE)
> --	
> -+
> - 	eError = OSBaseAllocContigMemory(MSVDX_REG_SIZE,
> - 										&gsMSVDXRegsCPUVAddr,
> - 										&sCpuPAddr);
> -@@ -438,10 +439,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	OSMemSet(gsMSVDXRegsCPUVAddr, 0, MSVDX_REG_SIZE);
> - 
> - #if defined(__linux__)
> --	
> -+
> - 	gsMSVDXDeviceMap.pvRegsCpuVBase = gsMSVDXRegsCPUVAddr;
> - #else
> --	
> -+
> - 	gsMSVDXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> - #endif
> - #else
> -@@ -450,7 +451,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	gsMSVDXDeviceMap.sRegsSysPBase		  = SysCpuPAddrToSysPAddr(gsMSVDXDeviceMap.sRegsCpuPBase);
> - 	gsMSVDXDeviceMap.ui32RegsSize		  = MSVDX_REG_SIZE;
> - 
> --	
> -+
> - 
> - 
> - 
> -@@ -459,13 +460,13 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	gsMSVDXDeviceMap.sLocalMemCpuPBase.uiAddr = 0;
> - 	gsMSVDXDeviceMap.ui32LocalMemSize		  = 0;
> - 
> --	
> -+
> - 
> - 	gsMSVDXDeviceMap.ui32IRQ = ui32IRQ;
> - 
> --#endif 
> -+#endif
> -+
> - 
> --	
> - 
> - 	return PVRSRV_OK;
> - }
> -@@ -478,28 +479,28 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> - 	IMG_UINT32  ui32VenDevID;
> - 	IMG_UINT32	ui32BarIndex;
> - 
> --	
> -+
> - 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> - 	{
> --		
> -+
> - 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> - 		{
> --			
> -+
> - 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> - 
> --			
> -+
> - 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> - 			{
> - 				IMG_UINT32 ui32Idx;
> - 
> --				
> -+
> - 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> - 
> --				psPCISpace->ui32BusNum  = ui32BusNum;	
> -+				psPCISpace->ui32BusNum  = ui32BusNum;
> - 				psPCISpace->ui32DevNum  = ui32DevNum;
> - 				psPCISpace->ui32FuncNum = 0;
> - 
> --				
> -+
> - 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> - 				{
> - 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> -@@ -509,7 +510,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> - 						PVR_DPF((PVR_DBG_VERBOSE,"%08X\n",psPCISpace->u.aui32PCISpace[ui32Idx]));
> - 					}
> - 				}
> --						 										
> -+
> - 				for (ui32BarIndex = 0; ui32BarIndex < 6; ui32BarIndex++)
> - 				{
> - 					GetPCIMemSpaceSize (ui32BusNum, ui32DevNum, ui32BarIndex, &psPCISpace->aui32PCIMemSpaceSize[ui32BarIndex]);
> -@@ -557,7 +558,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> -     IMG_CHAR *pszVersionString;
> - 
> - #if !defined(NO_HARDWARE)
> --     
> -+
> -     {
> - 	IMG_VOID *pvSGXRegs;
> - 
> -@@ -571,8 +572,8 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> -             ui32SGXRevision = OSReadHWReg(pvSGXRegs, EUR_CR_CORE_REVISION);
> - 
> - 	     OSUnMapPhysToLin(pvSGXRegs,
> --		   									 	gsSGXDeviceMap.ui32RegsSize,
> --											 	PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> -+												gsSGXDeviceMap.ui32RegsSize,
> -+												PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> - 												IMG_NULL);
> - 	}
> - 	else
> -@@ -609,7 +610,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> -                     ui32MaxStrLen + 1,
> -                     pszVersionString,
> -                     IMG_NULL);
> --		
> -+
> - 		return PVRSRV_ERROR_GENERIC;
> -     }
> - 
> -@@ -631,7 +632,7 @@ static IMG_VOID SysFreeVersionString(SYS_DATA *psSysData)
> - 		psSysData->pszVersionString = NULL;
> -     }
> - }
> --#endif 
> -+#endif
> - PVRSRV_ERROR SysInitialise(IMG_VOID)
> - {
> - 	IMG_UINT32			i;
> -@@ -642,14 +643,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 	PVR_DPF((PVR_DBG_MESSAGE,"SysInitialise"));
> - 
> - 	SysPlatformDetect();
> --	
> -+
> - 	gpsSysData = &gsSysData;
> - 	OSMemSet(gpsSysData, 0, sizeof(SYS_DATA));
> - 
> - 	gpsSysData->pvSysSpecificData = &gsSysSpecificData;
> - 	gsSysSpecificData.ui32SysSpecificData = 0;
> - #ifdef	LDM_PCI
> --	
> -+
> - 	PVR_ASSERT(gpsPVRLDMDev != IMG_NULL);
> - 	gsSysSpecificData.psPCIDev = gpsPVRLDMDev;
> - #endif
> -@@ -663,15 +664,15 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 		return eError;
> - 	}
> - 
> --	
> -+
> - 	psTimingInfo = &gsSGXDeviceMap.sTimingInfo;
> - 	psTimingInfo->ui32CoreClockSpeed = SYS_SGX_CLOCK_SPEED;
> - 	psTimingInfo->ui32HWRecoveryFreq = SYS_SGX_HWRECOVERY_TIMEOUT_FREQ;
> - #if defined(SUPPORT_ACTIVE_POWER_MANAGEMENT)
> - 	psTimingInfo->bEnableActivePM = IMG_TRUE;
> --#else	
> -+#else
> - 	psTimingInfo->bEnableActivePM = IMG_FALSE;
> --#endif 
> -+#endif
> - 	psTimingInfo->ui32ActivePowManLatencyms = SYS_SGX_ACTIVE_POWER_LATENCY_MS;
> - 	psTimingInfo->ui32uKernelFreq = SYS_SGX_PDS_TIMER_FREQ;
> - 
> -@@ -687,7 +688,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 
> - 	gpsSysData->ui32NumDevices = SYS_DEVICE_COUNT;
> - 
> --	
> -+
> - 	for(i=0; i<SYS_DEVICE_COUNT; i++)
> - 	{
> - 		gpsSysData->sDeviceID[i].uiID = i;
> -@@ -716,7 +717,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 		return eError;
> - 	}
> - 
> --	
> -+
> - 	eError = PVRSRVRegisterDevice(gpsSysData, SGXRegisterDevice,
> - 								  DEVICE_SGX_INTERRUPT, &gui32SGXDeviceID);
> - 	if (eError != PVRSRV_OK)
> -@@ -744,7 +745,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 
> - 	while(psDeviceNode)
> - 	{
> --		
> -+
> - 		switch(psDeviceNode->sDevId.eDeviceType)
> - 		{
> - 			case PVRSRV_DEVICE_TYPE_SGX:
> -@@ -752,19 +753,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> - 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> - 
> --				
> -+
> - 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> - 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> - 				{
> - 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> - #ifdef OEM_CUSTOMISE
> --					
> -+
> - #endif
> - 				}
> - 
> -@@ -777,19 +778,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> - 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> - 
> --				
> -+
> - 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> - 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> - 				{
> - 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> - #ifdef OEM_CUSTOMISE
> --					
> -+
> - #endif
> - 				}
> - 				break;
> -@@ -802,14 +803,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 			}
> - 		}
> - 
> --		
> -+
> - 		psDeviceNode = psDeviceNode->psNext;
> - 	}
> - 
> - 	PDUMPINIT();
> - 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PDUMP_INIT);
> - 
> --	
> -+
> - 	eError = PVRSRVInitialiseDevice (gui32SGXDeviceID);
> - 	if (eError != PVRSRV_OK)
> - 	{
> -@@ -843,15 +844,15 @@ static IMG_VOID SysEnableInterrupts(SYS_DATA *psSysData)
> - 	IMG_UINT32 ui32Mask;
> - 
> - 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG, ui32RegData | ui32Mask);
> - 
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData & (~ui32Mask));
> - 
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData | ui32Mask);
> - 
> -@@ -868,11 +869,11 @@ static IMG_VOID SysDisableInterrupts(SYS_DATA *psSysData)
> - 
> - 
> - 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData & (~ui32Mask));
> - 
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData | ui32Mask);
> - 
> -@@ -916,7 +917,7 @@ PVRSRV_ERROR SysFinalise(IMG_VOID)
> - 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED);
> - 
> - #ifdef	__linux__
> --	
> -+
> - 	eError = SysCreateVersionString(gpsSysData);
> - 	if (eError != PVRSRV_OK)
> - 	{
> -@@ -963,7 +964,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> - #if defined(SUPPORT_MSVDX)
> - 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_MSVDX_INITIALISED))
> - 	{
> --		
> -+
> - 		eError = PVRSRVDeinitialiseDevice(gui32MSVDXDeviceID);
> - 		if (eError != PVRSRV_OK)
> - 		{
> -@@ -975,7 +976,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> - 
> - 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_SGX_INITIALISED))
> - 	{
> --		
> -+
> - 		eError = PVRSRVDeinitialiseDevice(gui32SGXDeviceID);
> - 		if (eError != PVRSRV_OK)
> - 		{
> -@@ -1014,7 +1015,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> - #endif
> - 
> - #if !defined(NO_HARDWARE)
> --	
> -+
> - 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> - 											 REG_SIZE,
> - 											 PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> -@@ -1049,7 +1050,7 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> - 	PVR_UNREFERENCED_PARAMETER(psSysData);
> - 	PVR_UNREFERENCED_PARAMETER(psDeviceNode);
> - 
> --	
> -+
> - 	ui32Data = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> - 
> - 	if (ui32Data & THALIA_MASK)
> -@@ -1062,11 +1063,11 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> - 		ui32Devices |= DEVICE_MSVDX_INTERRUPT;
> - 	}
> - 
> --	
> -+
> - 	ui32DIMMask = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> - 	ui32DIMMask &= ~(THALIA_MASK | MSVDX_MASK);
> - 
> --	
> -+
> - 	if (ui32Data & ui32DIMMask)
> - 	{
> - 		ui32Devices |= DEVICE_DISP_INTERRUPT;
> -@@ -1123,14 +1124,14 @@ PVRSRV_ERROR SysGetDeviceMemoryMap(PVRSRV_DEVICE_TYPE eDeviceType,
> - 	{
> - 		case PVRSRV_DEVICE_TYPE_SGX:
> - 		{
> --			
> -+
> - 			*ppvDeviceMap = (IMG_VOID*)&gsSGXDeviceMap;
> - 			break;
> - 		}
> - #ifdef SUPPORT_MSVDX
> - 		case PVRSRV_DEVICE_TYPE_MSVDX:
> - 		{
> --			
> -+
> - 			*ppvDeviceMap = (IMG_VOID*)&gsMSVDXDeviceMap;
> - 			break;
> - 		}
> -@@ -1151,7 +1152,7 @@ IMG_DEV_PHYADDR SysCpuPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType,
> - 
> - 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> - 
> --	
> -+
> - 	DevPAddr.uiAddr = CpuPAddr.uiAddr;
> - 
> - 	return DevPAddr;
> -@@ -1162,7 +1163,7 @@ IMG_CPU_PHYADDR SysSysPAddrToCpuPAddr (IMG_SYS_PHYADDR sys_paddr)
> - {
> - 	IMG_CPU_PHYADDR cpu_paddr;
> - 
> --	
> -+
> - 	cpu_paddr.uiAddr = sys_paddr.uiAddr;
> - 	return cpu_paddr;
> - }
> -@@ -1171,7 +1172,7 @@ IMG_SYS_PHYADDR SysCpuPAddrToSysPAddr (IMG_CPU_PHYADDR cpu_paddr)
> - {
> - 	IMG_SYS_PHYADDR sys_paddr;
> - 
> --	
> -+
> - 	sys_paddr.uiAddr = cpu_paddr.uiAddr;
> - 	return sys_paddr;
> - }
> -@@ -1183,7 +1184,7 @@ IMG_DEV_PHYADDR SysSysPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_SYS_P
> - 
> - 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> - 
> --	
> -+
> -     DevPAddr.uiAddr = SysPAddr.uiAddr;
> - 
> -     return DevPAddr;
> -@@ -1196,7 +1197,7 @@ IMG_SYS_PHYADDR SysDevPAddrToSysPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_DEV_P
> - 
> - 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> - 
> --    
> -+
> -     SysPAddr.uiAddr = DevPAddr.uiAddr;
> - 
> -     return SysPAddr;
> -@@ -1255,12 +1256,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 		{
> - 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> - #if defined(NO_HARDWARE) && defined(__linux__)
> --			
> -+
> - 			PVR_ASSERT(gsSGXRegsCPUVAddr);
> - 
> - 			psDevInfo->pvRegsBaseKM = gsSGXRegsCPUVAddr;
> --#else	
> --			
> -+#else
> -+
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS))
> - 			{
> - 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sRegsCpuPBase,
> -@@ -1275,7 +1276,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 				}
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 
> - 			psDevInfo->ui32RegSize   = gsSGXDeviceMap.ui32RegsSize;
> - 			psDevInfo->sRegsPhysBase = gsSGXDeviceMap.sRegsSysPBase;
> -@@ -1285,7 +1286,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 			{
> - 				if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_HP))
> - 				{
> --					
> -+
> - 					psDevInfo->pvHostPortBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sHPCpuPBase,
> - 														     gsSGXDeviceMap.ui32HPSize,
> - 														     PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> -@@ -1300,7 +1301,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 				psDevInfo->ui32HPSize  = gsSGXDeviceMap.ui32HPSize;
> - 				psDevInfo->sHPSysPAddr = gsSGXDeviceMap.sHPSysPBase;
> - 			}
> --#endif 
> -+#endif
> - 			break;
> - 		}
> - #ifdef SUPPORT_MSVDX
> -@@ -1308,13 +1309,13 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 		{
> - 			PVRSRV_MSVDXDEV_INFO *psDevInfo = (PVRSRV_MSVDXDEV_INFO *)psDeviceNodeList->pvDevice;
> - #if defined(NO_HARDWARE) && defined(__linux__)
> --			
> -+
> - 			PVR_ASSERT(gsMSVDXRegsCPUVAddr);
> - 			psDevInfo->pvRegsBaseKM = gsMSVDXRegsCPUVAddr;
> --#else	
> -+#else
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS))
> - 			{
> --				
> -+
> - 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin (
> - 					gsMSVDXDeviceMap.sRegsCpuPBase,
> - 					gsMSVDXDeviceMap.ui32RegsSize,
> -@@ -1327,12 +1328,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 				}
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 			psDevInfo->ui32RegSize = gsMSVDXDeviceMap.ui32RegsSize;
> - 			psDevInfo->sRegsPhysBase = gsMSVDXDeviceMap.sRegsSysPBase;
> - 			break;
> - 		}
> --#endif	
> -+#endif
> - 		default:
> - 			break;
> - 		}
> -@@ -1357,7 +1358,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 		{
> - 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> - #if !(defined(NO_HARDWARE) && defined(__linux__))
> --			
> -+
> - 			if (psDevInfo->pvRegsBaseKM)
> - 			{
> - 				OSUnMapPhysToLin(psDevInfo->pvRegsBaseKM,
> -@@ -1367,7 +1368,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 
> - 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> - 			psDevInfo->ui32RegSize          = 0;
> -@@ -1376,7 +1377,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - #if defined(SGX_FEATURE_HOST_PORT)
> - 			if (gsSGXDeviceMap.ui32Flags & SGX_HOSTPORT_PRESENT)
> - 			{
> --				
> -+
> - 				if (psDevInfo->pvHostPortBaseKM)
> - 				{
> - 					OSUnMapPhysToLin(psDevInfo->pvHostPortBaseKM,
> -@@ -1392,7 +1393,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 				psDevInfo->ui32HPSize  = 0;
> - 				psDevInfo->sHPSysPAddr.uiAddr = 0;
> - 			}
> --#endif 
> -+#endif
> - 			break;
> - 		}
> - #ifdef SUPPORT_MSVDX
> -@@ -1409,13 +1410,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> - 			psDevInfo->ui32RegSize = 0;
> - 			psDevInfo->sRegsPhysBase.uiAddr = 0;
> - 			break;
> - 		}
> --#endif	
> -+#endif
> - 		default:
> - 			break;
> - 		}
> -@@ -1423,13 +1424,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 	}
> - 
> - #if !(defined(NO_HARDWARE) || defined(__linux__))
> --	
> -+
> - 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> - 				REG_SIZE,
> - 				PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> - 				IMG_NULL);
> - 
> --	
> -+
> - #if defined(MAP_UNUSED_MAPPINGS)
> - 	OSUnMapPhysToLin(gsPoulsboDisplayRegsCPUVaddr,
> - 				DISPLAY_REG_SIZE,
> -@@ -1437,7 +1438,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 				IMG_NULL);
> - #endif
> - 
> --#endif	
> -+#endif
> - 
> - #if defined(NO_HARDWARE)
> - #ifdef SUPPORT_MSVDX
> -@@ -1462,7 +1463,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 
> - 		SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_ALLOC_DUMMY_SGX_REGS);
> - 	}
> --#endif 
> -+#endif
> - 
> - 	return PVRSRV_OK;
> - }
> -@@ -1477,7 +1478,7 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 		if ((eNewPowerState == PVRSRV_SYS_POWER_STATE_D3) &&
> - 			(gpsSysData->eCurrentPowerState < PVRSRV_SYS_POWER_STATE_D3))
> - 		{
> --			
> -+
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED))
> - 			{
> - 				SysDisableInterrupts(gpsSysData);
> -@@ -1497,9 +1498,9 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> - 			}
> --#endif 
> -+#endif
> -+
> - 
> --			
> - 			SysUnmapRegisters();
> - #ifdef	__linux__
> - 			eError = OSPCISuspendDev(gsSysSpecificData.hSGXPCI);
> -@@ -1530,7 +1531,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				PVR_DPF((PVR_DBG_ERROR,"SysSystemPostPowerState: OSPCIResumeDev failed (%d)", eError));
> - 			}
> - #endif
> --			
> -+
> - 
> - 
> - 			eError = SysLocateDevices(gpsSysData);
> -@@ -1540,7 +1541,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				return eError;
> - 			}
> - 
> --			
> -+
> - 			eError = SysMapInRegisters();
> - 			if (eError != PVRSRV_OK)
> - 			{
> -@@ -1559,7 +1560,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> - 			}
> --#endif 
> -+#endif
> - 
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_IRQ_DISABLE))
> - 			{
> -@@ -1606,7 +1607,3 @@ PVRSRV_ERROR SysDevicePostPowerState(IMG_UINT32				ui32DeviceIndex,
> - 
> - 	return PVRSRV_OK;
> - }
> --
> --
> --
> --
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> -index 0737aaf..63a1c96 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> -@@ -1,35 +1,36 @@
> - /* -*- syscommon-c -*-
> --*-----------------------------------------------------------------------------
> --* Filename: syscommon.c
> --* $Revision: 1.2 $
> --*-----------------------------------------------------------------------------
> --* INTEL CONFIDENTIAL
> --* Copyright 2010 Intel Corporation All Rights Reserved.
> --* The source code contained or described herein and all documents related to
> --* the source code ("Material") are owned by Intel Corporation or its suppliers
> --* or licensors. Title to the Material remains with Intel Corporation or its
> --* suppliers and licensors. The Material contains trade secrets and proprietary
> --* and confidential information of Intel or its suppliers and licensors. The
> --* Material is protected by worldwide copyright and trade secret laws and
> --* treaty provisions. No part of the Material may be used, copied, reproduced,
> --* modified, published, uploaded, posted, transmitted, distributed, or
> --* disclosed in any way without Intel's prior express written permission.
> --*
> --* No license under any patent, copyright, trade secret or other intellectual
> --* property right is granted to or conferred upon you by disclosure or
> --* delivery of the Materials, either expressly, by implication, inducement,
> --* estoppel or otherwise. Any license under such intellectual property rights
> --* must be express and approved by Intel in writing.
> --*
> --*
> --*-----------------------------------------------------------------------------
> --* Description: platform detection, and sharing of correct platform interface.
> --*
> --*-----------------------------------------------------------------------------
> --* Authors:
> --*  Marcin Tomczyk
> --*-----------------------------------------------------------------------------
> --*/
> -+ *-----------------------------------------------------------------------------
> -+ * Filename: syscommon.c
> -+ * $Revision: 1.3 $
> -+ *-----------------------------------------------------------------------------
> -+ * Copyright © 2002-2010, Intel Corporation.
> -+ *
> -+ * Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ * of this software and associated documentation files (the "Software"), to deal
> -+ * in the Software without restriction, including without limitation the rights
> -+ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ * copies of the Software, and to permit persons to whom the Software is
> -+ * furnished to do so, subject to the following conditions:
> -+ *
> -+ * The above copyright notice and this permission notice shall be included in
> -+ * all copies or substantial portions of the Software.
> -+ *
> -+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ * THE SOFTWARE.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Description: platform detection, and sharing of correct platform interface.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Authors:
> -+ *  Marcin Tomczyk
> -+ *-----------------------------------------------------------------------------
> -+ */
> - 
> - #include "sysconfig.h"
> - #include "sysplb.h"
> -@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfacePlb = {
> - 	SYS_SGX_CLOCK_SPEED_PLB,
> - 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_PLB
> - };
> --
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> -index 5b94861..e4d9426 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> -@@ -1,35 +1,36 @@
> - /* -*- syscommon-c -*-
> --*-----------------------------------------------------------------------------
> --* Filename: syscommon.c
> --* $Revision: 1.2 $
> --*-----------------------------------------------------------------------------
> --* INTEL CONFIDENTIAL
> --* Copyright 2010 Intel Corporation All Rights Reserved.
> --* The source code contained or described herein and all documents related to
> --* the source code ("Material") are owned by Intel Corporation or its suppliers
> --* or licensors. Title to the Material remains with Intel Corporation or its
> --* suppliers and licensors. The Material contains trade secrets and proprietary
> --* and confidential information of Intel or its suppliers and licensors. The
> --* Material is protected by worldwide copyright and trade secret laws and
> --* treaty provisions. No part of the Material may be used, copied, reproduced,
> --* modified, published, uploaded, posted, transmitted, distributed, or
> --* disclosed in any way without Intel's prior express written permission.
> --*
> --* No license under any patent, copyright, trade secret or other intellectual
> --* property right is granted to or conferred upon you by disclosure or
> --* delivery of the Materials, either expressly, by implication, inducement,
> --* estoppel or otherwise. Any license under such intellectual property rights
> --* must be express and approved by Intel in writing.
> --*
> --*
> --*-----------------------------------------------------------------------------
> --* Description: platform detection, and sharing of correct platform interface.
> --*
> --*-----------------------------------------------------------------------------
> --* Authors:
> --*  Marcin Tomczyk
> --*-----------------------------------------------------------------------------
> --*/
> -+ *-----------------------------------------------------------------------------
> -+ * Filename: syscommon.c
> -+ * $Revision: 1.3 $
> -+ *-----------------------------------------------------------------------------
> -+ * Copyright © 2002-2010, Intel Corporation.
> -+ *
> -+ * Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ * of this software and associated documentation files (the "Software"), to deal
> -+ * in the Software without restriction, including without limitation the rights
> -+ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ * copies of the Software, and to permit persons to whom the Software is
> -+ * furnished to do so, subject to the following conditions:
> -+ *
> -+ * The above copyright notice and this permission notice shall be included in
> -+ * all copies or substantial portions of the Software.
> -+ *
> -+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ * THE SOFTWARE.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Description: platform detection, and sharing of correct platform interface.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Authors:
> -+ *  Marcin Tomczyk
> -+ *-----------------------------------------------------------------------------
> -+ */
> - 
> - #include "sysconfig.h"
> - #include "systnc.h"
> -@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfaceTnc = {
> - 	SYS_SGX_CLOCK_SPEED_TNC,
> - 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC
> - };
> --
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> -index 3f26d4c..7d5c2d6 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> -@@ -1,40 +1,32 @@
> - /**********************************************************************
> -- *
> -- * Copyright(c) 2008 Imagination Technologies Ltd. All rights reserved.
> -- * 
> -- * This program is free software; you can redistribute it and/or modify it
> -- * under the terms and conditions of the GNU General Public License,
> -- * version 2, as published by the Free Software Foundation.
> -- * 
> -- * This program is distributed in the hope it will be useful but, except 
> -- * as otherwise stated in writing, without any warranty; without even the 
> -- * implied warranty of merchantability or fitness for a particular purpose. 
> -- * See the GNU General Public License for more details.
> -- * 
> -- * You should have received a copy of the GNU General Public License along with
> -- * this program; if not, write to the Free Software Foundation, Inc.,
> -- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
> -- * 
> -- * The full GNU General Public License is included in this distribution in
> -- * the file called "COPYING".
> -- *
> -- * Contact Information:
> -- * Imagination Technologies Ltd. <gpl-support@imgtec.com>
> -- * Home Park Estate, Kings Langley, Herts, WD4 8LZ, UK 
> -- *
> -+ Copyright (c) Imagination Technologies Ltd.
> -+
> -+ Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ of this software and associated documentation files (the "Software"), to deal
> -+ in the Software without restriction, including without limitation the rights
> -+ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ copies of the Software, and to permit persons to whom the Software is
> -+ furnished to do so, subject to the following conditions:
> -+
> -+ The above copyright notice and this permission notice shall be included in
> -+ all copies or substantial portions of the Software.
> -+
> -+ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ THE SOFTWARE.
> -  ******************************************************************************/
> --/* INTEL CONFIDENTIAL
> -- * Copyright 2010 Intel Corporation All Rights Reserved.
> -- */
> - 
> - #ifndef _SYSTNC_H
> - #define _SYSTNC_H
> - 
> --#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108	
> -+#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108
> - #define VS_PRODUCT_NAME_TNC     	"SGX Atom E6xx"
> - #define SGX_REGS_OFFSET_TNC     	0x80000
> - #define MSVDX_REGS_OFFSET_TNC   	0x90000
> - #define SYS_SGX_CLOCK_SPEED_TNC                     (400000000)
> - #define SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC         (50)
> - #endif
> --
> --- 
> -1.7.0.4
> -
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> deleted file mode 100644
> index bb86798..0000000
> --- a/meta-crownbay/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -
> -COMPATIBLE_MACHINE_crownbay = "crownbay"
> -KMACHINE_crownbay  = "crownbay"
> -
> -COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
> -KMACHINE_crownbay-noemgd  = "crownbay"
> -
> -SRC_URI += "file://0001-crownbay-update-a-handful-of-EMGD-licenses.patch"
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto/0001-crownbay-update-a-handful-of-EMGD-licenses.patch b/meta-crownbay/recipes-kernel/linux/linux-yocto/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> deleted file mode 100644
> index 6b0fec9..0000000
> --- a/meta-crownbay/recipes-kernel/linux/linux-yocto/0001-crownbay-update-a-handful-of-EMGD-licenses.patch
> +++ /dev/null
> @@ -1,1151 +0,0 @@
> -From dfec29236dd9ae7899b9a01d768486f439651af3 Mon Sep 17 00:00:00 2001
> -From: Tom Zanussi <tom.zanussi@intel.com>
> -Date: Thu, 17 Mar 2011 13:03:34 -0500
> -Subject: [KERNEL][linux-yocto][PATCH 1/1] crownbay: update a handful of EMGD licenses
> -
> -The version of the EMGD driver we use had a few included license
> -mistakes.  Correct these as per upstream.
> -
> -Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ----
> - drivers/gpu/drm/emgd/emgd/pal/Makefile.include     |   39 ++--
> - .../emgd/pvr/services4/system/common/sysconfig.c   |  287 ++++++++++----------
> - .../drm/emgd/pvr/services4/system/plb/sysconfig.c  |   64 +++---
> - .../drm/emgd/pvr/services4/system/tnc/sysconfig.c  |   64 +++---
> - .../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h |   48 ++--
> - 5 files changed, 246 insertions(+), 256 deletions(-)
> -
> -diff --git a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> -index 8143979..91f9afa 100644
> ---- a/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> -+++ b/drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> -@@ -1,25 +1,26 @@
> - #----------------------------------------------------------------------------
> - # Filename: Makefile.include
> --# $Revision: 1.1 $
> -+# $Revision: 1.2 $
> - #----------------------------------------------------------------------------
> --# INTEL CONFIDENTIAL
> --# Copyright (2002-2008) Intel Corporation All Rights Reserved.
> --# The source code contained or described herein and all documents related to
> --# the source code ("Material") are owned by Intel Corporation or its suppliers
> --# or licensors. Title to the Material remains with Intel Corporation or its
> --# suppliers and licensors. The Material contains trade secrets and proprietary
> --# and confidential information of Intel or its suppliers and licensors. The
> --# Material is protected by worldwide copyright and trade secret laws and
> --# treaty provisions. No part of the Material may be used, copied, reproduced,
> --# modified, published, uploaded, posted, transmitted, distributed, or
> --# disclosed in any way without Intel's prior express written permission.
> --# 
> --# No license under any patent, copyright, trade secret or other intellectual
> --# property right is granted to or conferred upon you by disclosure or
> --# delivery of the Materials, either expressly, by implication, inducement,
> --# estoppel or otherwise. Any license under such intellectual property rights
> --# must be express and approved by Intel in writing.
> --# 
> -+# Copyright © 2002-2010, Intel Corporation.
> -+#
> -+# Permission is hereby granted, free of charge, to any person obtaining a copy
> -+# of this software and associated documentation files (the "Software"), to deal
> -+# in the Software without restriction, including without limitation the rights
> -+# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+# copies of the Software, and to permit persons to whom the Software is
> -+# furnished to do so, subject to the following conditions:
> -+#
> -+# The above copyright notice and this permission notice shall be included in
> -+# all copies or substantial portions of the Software.
> -+#
> -+# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+# THE SOFTWARE.
> - #----------------------------------------------------------------------------
> - 
> - ifeq ($(origin EGD_CFG), undefined)
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> -index 5037186..4c9946c 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> -@@ -1,35 +1,36 @@
> - /* -*- syscommon-c -*-
> --*-----------------------------------------------------------------------------
> --* Filename: syscommon.c
> --* $Revision: 1.6 $
> --*-----------------------------------------------------------------------------
> --* INTEL CONFIDENTIAL
> --* Copyright 2010 Intel Corporation All Rights Reserved.
> --* The source code contained or described herein and all documents related to
> --* the source code ("Material") are owned by Intel Corporation or its suppliers
> --* or licensors. Title to the Material remains with Intel Corporation or its
> --* suppliers and licensors. The Material contains trade secrets and proprietary
> --* and confidential information of Intel or its suppliers and licensors. The
> --* Material is protected by worldwide copyright and trade secret laws and
> --* treaty provisions. No part of the Material may be used, copied, reproduced,
> --* modified, published, uploaded, posted, transmitted, distributed, or
> --* disclosed in any way without Intel's prior express written permission.
> --*
> --* No license under any patent, copyright, trade secret or other intellectual
> --* property right is granted to or conferred upon you by disclosure or
> --* delivery of the Materials, either expressly, by implication, inducement,
> --* estoppel or otherwise. Any license under such intellectual property rights
> --* must be express and approved by Intel in writing.
> --*
> --*
> --*-----------------------------------------------------------------------------
> --* Description: platform detection, and sharing of correct platform interface.
> --*
> --*-----------------------------------------------------------------------------
> --* Authors:
> --*  Marcin Tomczyk
> --*-----------------------------------------------------------------------------
> --*/
> -+ *-----------------------------------------------------------------------------
> -+ * Filename: syscommon.c
> -+ * $Revision: 1.7 $
> -+ *-----------------------------------------------------------------------------
> -+ * Copyright © 2002-2010, Intel Corporation.
> -+ *
> -+ * Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ * of this software and associated documentation files (the "Software"), to deal
> -+ * in the Software without restriction, including without limitation the rights
> -+ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ * copies of the Software, and to permit persons to whom the Software is
> -+ * furnished to do so, subject to the following conditions:
> -+ *
> -+ * The above copyright notice and this permission notice shall be included in
> -+ * all copies or substantial portions of the Software.
> -+ *
> -+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ * THE SOFTWARE.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Description: platform detection, and sharing of correct platform interface.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Authors:
> -+ *  Marcin Tomczyk
> -+ *-----------------------------------------------------------------------------
> -+ */
> - 
> - #include <linux/pci.h>
> - #include "sgxdefs.h"
> -@@ -124,7 +125,7 @@ IMG_VOID SysPlatformDetect(IMG_VOID)
> - 
> - 
> - /* --------------------------------------------------------------------------*/
> --/** 
> -+/**
> - * @Synopsis  Interface for Atom E6xx device
> - */
> - /* ----------------------------------------------------------------------------*/
> -@@ -196,14 +197,14 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> - #if defined(SGX_FEATURE_HOST_PORT)
> - 	PVR_TRACE(("Host Port region: %x to %x", OSPCIAddrRangeStart(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX), OSPCIAddrRangeEnd(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX)));
> - #endif
> --	
> -+
> - 	if (OSPCIAddrRangeLen(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) < MAX_OFFSET)
> - 	{
> - 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region isn't big enough"));
> - 		return PVRSRV_ERROR_GENERIC;
> - 	}
> - 
> --	
> -+
> - 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, ADDR_RANGE_INDEX) != PVRSRV_OK)
> - 	{
> - 		PVR_DPF((PVR_DBG_ERROR,"PCIInitDev: Device memory region not available"));
> -@@ -211,7 +212,7 @@ static PVRSRV_ERROR PCIInitDev(SYS_DATA *psSysData)
> - 	}
> - 	 SYS_SPECIFIC_DATA_SET(psSysSpecData, SYS_SPECIFIC_DATA_PCI_REQUEST_SGX_ADDR_RANGE);
> - 
> --	
> -+
> - #if defined(SGX_FEATURE_HOST_PORT)
> - 	if (OSPCIRequestAddrRange(psSysSpecData->hSGXPCI, HP_ADDR_RANGE_INDEX) != PVRSRV_OK)
> - 	{
> -@@ -244,31 +245,31 @@ static IMG_VOID PCIDeInitDev(SYS_DATA *psSysData)
> - 		OSPCIReleaseDev(psSysSpecData->hSGXPCI);
> - 	}
> - }
> --#else	
> -+#else
> - static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PCICONFIG_SPACE *psPCISpace)
> - {
> - 	IMG_UINT32 ui32BusNum;
> - 	IMG_UINT32 ui32DevNum;
> - 	IMG_UINT32 ui32VenDevID;
> - 
> --	
> -+
> - 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> - 	{
> --		
> -+
> - 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> - 		{
> --			
> -+
> - 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> - 
> --			
> -+
> - 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> - 			{
> - 				IMG_UINT32 ui32Idx;
> - 
> --				
> -+
> - 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> - 
> --				
> -+
> - 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> - 				{
> - 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> -@@ -289,7 +290,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> - 
> - 	return PVRSRV_ERROR_GENERIC;
> - }
> --#endif	
> -+#endif
> - 
> - static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - {
> -@@ -339,21 +340,21 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	}
> - 
> - 	ui32IRQ = (IMG_UINT32)sPCISpace.u.aui8PCISpace[0x3C];
> --#endif	
> -+#endif
> -+
> - 
> --	
> - 	gsSGXDeviceMap.ui32Flags = 0x0;
> - 
> --	
> -+
> - #if defined(NO_HARDWARE)
> --	
> -+
> - 	gsSGXDeviceMap.ui32IRQ = 0;
> - #else
> - 	gsSGXDeviceMap.ui32IRQ = ui32IRQ;
> - #endif
> - 
> - #if defined(NO_HARDWARE)
> --	
> -+
> - 	eError = OSBaseAllocContigMemory(SGX_REG_SIZE,
> - 										&gsSGXRegsCPUVAddr,
> - 										&sCpuPAddr);
> -@@ -368,29 +369,29 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	OSMemSet(gsSGXRegsCPUVAddr, 0, SGX_REG_SIZE);
> - 
> - #if defined(__linux__)
> --	
> -+
> - 	gsSGXDeviceMap.pvRegsCpuVBase = gsSGXRegsCPUVAddr;
> - #else
> --	
> -+
> - 	gsSGXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> - #endif
> - 
> --#else	
> -+#else
> - 	gsSGXDeviceMap.sRegsSysPBase.uiAddr = ui32BaseAddr + SGX_REGS_OFFSET;
> --#endif	
> -+#endif
> -+
> - 
> --	
> - 	gsSGXDeviceMap.sRegsCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sRegsSysPBase);
> - 	gsSGXDeviceMap.ui32RegsSize = SGX_REG_SIZE;
> - 
> - #if defined(SGX_FEATURE_HOST_PORT)
> --	
> -+
> - 	gsSGXDeviceMap.ui32Flags = SGX_HOSTPORT_PRESENT;
> - 	gsSGXDeviceMap.sHPSysPBase.uiAddr = ui32HostPortAddr;
> - 	gsSGXDeviceMap.sHPCpuPBase = SysSysPAddrToCpuPAddr(gsSGXDeviceMap.sHPSysPBase);
> - 	gsSGXDeviceMap.ui32HPSize = SYS_SGX_HP_SIZE;
> - #endif
> --	
> -+
> - 
> - 
> - 
> -@@ -400,7 +401,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	gsSGXDeviceMap.ui32LocalMemSize = 0;
> - 
> - #if !defined(NO_HARDWARE)
> --	
> -+
> - 	{
> - 		IMG_SYS_PHYADDR sPoulsboRegsCpuPBase;
> - 
> -@@ -421,10 +422,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - #endif
> - 
> - #ifdef SUPPORT_MSVDX
> --	
> -+
> - 
> - #if defined(NO_HARDWARE)
> --	
> -+
> - 	eError = OSBaseAllocContigMemory(MSVDX_REG_SIZE,
> - 										&gsMSVDXRegsCPUVAddr,
> - 										&sCpuPAddr);
> -@@ -438,10 +439,10 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	OSMemSet(gsMSVDXRegsCPUVAddr, 0, MSVDX_REG_SIZE);
> - 
> - #if defined(__linux__)
> --	
> -+
> - 	gsMSVDXDeviceMap.pvRegsCpuVBase = gsMSVDXRegsCPUVAddr;
> - #else
> --	
> -+
> - 	gsMSVDXDeviceMap.pvRegsCpuVBase = IMG_NULL;
> - #endif
> - #else
> -@@ -450,7 +451,7 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	gsMSVDXDeviceMap.sRegsSysPBase		  = SysCpuPAddrToSysPAddr(gsMSVDXDeviceMap.sRegsCpuPBase);
> - 	gsMSVDXDeviceMap.ui32RegsSize		  = MSVDX_REG_SIZE;
> - 
> --	
> -+
> - 
> - 
> - 
> -@@ -459,13 +460,13 @@ static PVRSRV_ERROR SysLocateDevices(SYS_DATA *psSysData)
> - 	gsMSVDXDeviceMap.sLocalMemCpuPBase.uiAddr = 0;
> - 	gsMSVDXDeviceMap.ui32LocalMemSize		  = 0;
> - 
> --	
> -+
> - 
> - 	gsMSVDXDeviceMap.ui32IRQ = ui32IRQ;
> - 
> --#endif 
> -+#endif
> -+
> - 
> --	
> - 
> - 	return PVRSRV_OK;
> - }
> -@@ -478,28 +479,28 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> - 	IMG_UINT32  ui32VenDevID;
> - 	IMG_UINT32	ui32BarIndex;
> - 
> --	
> -+
> - 	for (ui32BusNum=0; ui32BusNum < 255; ui32BusNum++)
> - 	{
> --		
> -+
> - 		for (ui32DevNum=0; ui32DevNum < 32; ui32DevNum++)
> - 		{
> --			
> -+
> - 			ui32VenDevID=OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 0);
> - 
> --			
> -+
> - 			if (ui32VenDevID == (IMG_UINT32)((ui16DevID<<16)+ui16VenID))
> - 			{
> - 				IMG_UINT32 ui32Idx;
> - 
> --				
> -+
> - 				OSPCIWriteDword(ui32BusNum, ui32DevNum, 0, 4, OSPCIReadDword(ui32BusNum, ui32DevNum, 0, 4) | 0x02);
> - 
> --				psPCISpace->ui32BusNum  = ui32BusNum;	
> -+				psPCISpace->ui32BusNum  = ui32BusNum;
> - 				psPCISpace->ui32DevNum  = ui32DevNum;
> - 				psPCISpace->ui32FuncNum = 0;
> - 
> --				
> -+
> - 				for (ui32Idx=0; ui32Idx < 64; ui32Idx++)
> - 				{
> - 					psPCISpace->u.aui32PCISpace[ui32Idx] = OSPCIReadDword(ui32BusNum, ui32DevNum, 0, ui32Idx*4);
> -@@ -509,7 +510,7 @@ static PVRSRV_ERROR FindPCIDevice(IMG_UINT16 ui16VenID, IMG_UINT16 ui16DevID, PC
> - 						PVR_DPF((PVR_DBG_VERBOSE,"%08X\n",psPCISpace->u.aui32PCISpace[ui32Idx]));
> - 					}
> - 				}
> --						 										
> -+
> - 				for (ui32BarIndex = 0; ui32BarIndex < 6; ui32BarIndex++)
> - 				{
> - 					GetPCIMemSpaceSize (ui32BusNum, ui32DevNum, ui32BarIndex, &psPCISpace->aui32PCIMemSpaceSize[ui32BarIndex]);
> -@@ -557,7 +558,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> -     IMG_CHAR *pszVersionString;
> - 
> - #if !defined(NO_HARDWARE)
> --     
> -+
> -     {
> - 	IMG_VOID *pvSGXRegs;
> - 
> -@@ -571,8 +572,8 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> -             ui32SGXRevision = OSReadHWReg(pvSGXRegs, EUR_CR_CORE_REVISION);
> - 
> - 	     OSUnMapPhysToLin(pvSGXRegs,
> --		   									 	gsSGXDeviceMap.ui32RegsSize,
> --											 	PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> -+												gsSGXDeviceMap.ui32RegsSize,
> -+												PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> - 												IMG_NULL);
> - 	}
> - 	else
> -@@ -609,7 +610,7 @@ static PVRSRV_ERROR SysCreateVersionString(SYS_DATA *psSysData)
> -                     ui32MaxStrLen + 1,
> -                     pszVersionString,
> -                     IMG_NULL);
> --		
> -+
> - 		return PVRSRV_ERROR_GENERIC;
> -     }
> - 
> -@@ -631,7 +632,7 @@ static IMG_VOID SysFreeVersionString(SYS_DATA *psSysData)
> - 		psSysData->pszVersionString = NULL;
> -     }
> - }
> --#endif 
> -+#endif
> - PVRSRV_ERROR SysInitialise(IMG_VOID)
> - {
> - 	IMG_UINT32			i;
> -@@ -642,14 +643,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 	PVR_DPF((PVR_DBG_MESSAGE,"SysInitialise"));
> - 
> - 	SysPlatformDetect();
> --	
> -+
> - 	gpsSysData = &gsSysData;
> - 	OSMemSet(gpsSysData, 0, sizeof(SYS_DATA));
> - 
> - 	gpsSysData->pvSysSpecificData = &gsSysSpecificData;
> - 	gsSysSpecificData.ui32SysSpecificData = 0;
> - #ifdef	LDM_PCI
> --	
> -+
> - 	PVR_ASSERT(gpsPVRLDMDev != IMG_NULL);
> - 	gsSysSpecificData.psPCIDev = gpsPVRLDMDev;
> - #endif
> -@@ -663,15 +664,15 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 		return eError;
> - 	}
> - 
> --	
> -+
> - 	psTimingInfo = &gsSGXDeviceMap.sTimingInfo;
> - 	psTimingInfo->ui32CoreClockSpeed = SYS_SGX_CLOCK_SPEED;
> - 	psTimingInfo->ui32HWRecoveryFreq = SYS_SGX_HWRECOVERY_TIMEOUT_FREQ;
> - #if defined(SUPPORT_ACTIVE_POWER_MANAGEMENT)
> - 	psTimingInfo->bEnableActivePM = IMG_TRUE;
> --#else	
> -+#else
> - 	psTimingInfo->bEnableActivePM = IMG_FALSE;
> --#endif 
> -+#endif
> - 	psTimingInfo->ui32ActivePowManLatencyms = SYS_SGX_ACTIVE_POWER_LATENCY_MS;
> - 	psTimingInfo->ui32uKernelFreq = SYS_SGX_PDS_TIMER_FREQ;
> - 
> -@@ -687,7 +688,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 
> - 	gpsSysData->ui32NumDevices = SYS_DEVICE_COUNT;
> - 
> --	
> -+
> - 	for(i=0; i<SYS_DEVICE_COUNT; i++)
> - 	{
> - 		gpsSysData->sDeviceID[i].uiID = i;
> -@@ -716,7 +717,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 		return eError;
> - 	}
> - 
> --	
> -+
> - 	eError = PVRSRVRegisterDevice(gpsSysData, SGXRegisterDevice,
> - 								  DEVICE_SGX_INTERRUPT, &gui32SGXDeviceID);
> - 	if (eError != PVRSRV_OK)
> -@@ -744,7 +745,7 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 
> - 	while(psDeviceNode)
> - 	{
> --		
> -+
> - 		switch(psDeviceNode->sDevId.eDeviceType)
> - 		{
> - 			case PVRSRV_DEVICE_TYPE_SGX:
> -@@ -752,19 +753,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> - 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> - 
> --				
> -+
> - 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> - 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> - 				{
> - 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> - #ifdef OEM_CUSTOMISE
> --					
> -+
> - #endif
> - 				}
> - 
> -@@ -777,19 +778,19 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 				DEVICE_MEMORY_INFO *psDevMemoryInfo;
> - 				DEVICE_MEMORY_HEAP_INFO *psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				psDeviceNode->psLocalDevMemArena = IMG_NULL;
> - 
> --				
> -+
> - 				psDevMemoryInfo = &psDeviceNode->sDevMemoryInfo;
> - 				psDeviceMemoryHeap = psDevMemoryInfo->psDeviceMemoryHeap;
> - 
> --				
> -+
> - 				for(i=0; i<psDevMemoryInfo->ui32HeapCount; i++)
> - 				{
> - 					psDeviceMemoryHeap[i].ui32Attribs |= PVRSRV_BACKINGSTORE_SYSMEM_NONCONTIG;
> - #ifdef OEM_CUSTOMISE
> --					
> -+
> - #endif
> - 				}
> - 				break;
> -@@ -802,14 +803,14 @@ PVRSRV_ERROR SysInitialise(IMG_VOID)
> - 			}
> - 		}
> - 
> --		
> -+
> - 		psDeviceNode = psDeviceNode->psNext;
> - 	}
> - 
> - 	PDUMPINIT();
> - 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PDUMP_INIT);
> - 
> --	
> -+
> - 	eError = PVRSRVInitialiseDevice (gui32SGXDeviceID);
> - 	if (eError != PVRSRV_OK)
> - 	{
> -@@ -843,15 +844,15 @@ static IMG_VOID SysEnableInterrupts(SYS_DATA *psSysData)
> - 	IMG_UINT32 ui32Mask;
> - 
> - 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG, ui32RegData | ui32Mask);
> - 
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData & (~ui32Mask));
> - 
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData | ui32Mask);
> - 
> -@@ -868,11 +869,11 @@ static IMG_VOID SysDisableInterrupts(SYS_DATA *psSysData)
> - 
> - 
> - 	ui32Mask = THALIA_MASK | MSVDX_MASK;
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG, ui32RegData & (~ui32Mask));
> - 
> --	
> -+
> - 	ui32RegData = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG);
> - 	OSWriteHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_MASK_REG, ui32RegData | ui32Mask);
> - 
> -@@ -916,7 +917,7 @@ PVRSRV_ERROR SysFinalise(IMG_VOID)
> - 	SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED);
> - 
> - #ifdef	__linux__
> --	
> -+
> - 	eError = SysCreateVersionString(gpsSysData);
> - 	if (eError != PVRSRV_OK)
> - 	{
> -@@ -963,7 +964,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> - #if defined(SUPPORT_MSVDX)
> - 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_MSVDX_INITIALISED))
> - 	{
> --		
> -+
> - 		eError = PVRSRVDeinitialiseDevice(gui32MSVDXDeviceID);
> - 		if (eError != PVRSRV_OK)
> - 		{
> -@@ -975,7 +976,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> - 
> - 	if (SYS_SPECIFIC_DATA_TEST(psSysSpecData, SYS_SPECIFIC_DATA_SGX_INITIALISED))
> - 	{
> --		
> -+
> - 		eError = PVRSRVDeinitialiseDevice(gui32SGXDeviceID);
> - 		if (eError != PVRSRV_OK)
> - 		{
> -@@ -1014,7 +1015,7 @@ PVRSRV_ERROR SysDeinitialise (SYS_DATA *psSysData)
> - #endif
> - 
> - #if !defined(NO_HARDWARE)
> --	
> -+
> - 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> - 											 REG_SIZE,
> - 											 PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> -@@ -1049,7 +1050,7 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> - 	PVR_UNREFERENCED_PARAMETER(psSysData);
> - 	PVR_UNREFERENCED_PARAMETER(psDeviceNode);
> - 
> --	
> -+
> - 	ui32Data = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_IDENTITY_REG);
> - 
> - 	if (ui32Data & THALIA_MASK)
> -@@ -1062,11 +1063,11 @@ IMG_UINT32 SysGetInterruptSource(SYS_DATA* psSysData,
> - 		ui32Devices |= DEVICE_MSVDX_INTERRUPT;
> - 	}
> - 
> --	
> -+
> - 	ui32DIMMask = OSReadHWReg(gsPoulsboRegsCPUVaddr, INTERRUPT_ENABLE_REG);
> - 	ui32DIMMask &= ~(THALIA_MASK | MSVDX_MASK);
> - 
> --	
> -+
> - 	if (ui32Data & ui32DIMMask)
> - 	{
> - 		ui32Devices |= DEVICE_DISP_INTERRUPT;
> -@@ -1123,14 +1124,14 @@ PVRSRV_ERROR SysGetDeviceMemoryMap(PVRSRV_DEVICE_TYPE eDeviceType,
> - 	{
> - 		case PVRSRV_DEVICE_TYPE_SGX:
> - 		{
> --			
> -+
> - 			*ppvDeviceMap = (IMG_VOID*)&gsSGXDeviceMap;
> - 			break;
> - 		}
> - #ifdef SUPPORT_MSVDX
> - 		case PVRSRV_DEVICE_TYPE_MSVDX:
> - 		{
> --			
> -+
> - 			*ppvDeviceMap = (IMG_VOID*)&gsMSVDXDeviceMap;
> - 			break;
> - 		}
> -@@ -1151,7 +1152,7 @@ IMG_DEV_PHYADDR SysCpuPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType,
> - 
> - 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> - 
> --	
> -+
> - 	DevPAddr.uiAddr = CpuPAddr.uiAddr;
> - 
> - 	return DevPAddr;
> -@@ -1162,7 +1163,7 @@ IMG_CPU_PHYADDR SysSysPAddrToCpuPAddr (IMG_SYS_PHYADDR sys_paddr)
> - {
> - 	IMG_CPU_PHYADDR cpu_paddr;
> - 
> --	
> -+
> - 	cpu_paddr.uiAddr = sys_paddr.uiAddr;
> - 	return cpu_paddr;
> - }
> -@@ -1171,7 +1172,7 @@ IMG_SYS_PHYADDR SysCpuPAddrToSysPAddr (IMG_CPU_PHYADDR cpu_paddr)
> - {
> - 	IMG_SYS_PHYADDR sys_paddr;
> - 
> --	
> -+
> - 	sys_paddr.uiAddr = cpu_paddr.uiAddr;
> - 	return sys_paddr;
> - }
> -@@ -1183,7 +1184,7 @@ IMG_DEV_PHYADDR SysSysPAddrToDevPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_SYS_P
> - 
> - 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> - 
> --	
> -+
> -     DevPAddr.uiAddr = SysPAddr.uiAddr;
> - 
> -     return DevPAddr;
> -@@ -1196,7 +1197,7 @@ IMG_SYS_PHYADDR SysDevPAddrToSysPAddr (PVRSRV_DEVICE_TYPE eDeviceType, IMG_DEV_P
> - 
> - 	PVR_UNREFERENCED_PARAMETER(eDeviceType);
> - 
> --    
> -+
> -     SysPAddr.uiAddr = DevPAddr.uiAddr;
> - 
> -     return SysPAddr;
> -@@ -1255,12 +1256,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 		{
> - 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> - #if defined(NO_HARDWARE) && defined(__linux__)
> --			
> -+
> - 			PVR_ASSERT(gsSGXRegsCPUVAddr);
> - 
> - 			psDevInfo->pvRegsBaseKM = gsSGXRegsCPUVAddr;
> --#else	
> --			
> -+#else
> -+
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS))
> - 			{
> - 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sRegsCpuPBase,
> -@@ -1275,7 +1276,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 				}
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 
> - 			psDevInfo->ui32RegSize   = gsSGXDeviceMap.ui32RegsSize;
> - 			psDevInfo->sRegsPhysBase = gsSGXDeviceMap.sRegsSysPBase;
> -@@ -1285,7 +1286,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 			{
> - 				if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_HP))
> - 				{
> --					
> -+
> - 					psDevInfo->pvHostPortBaseKM = OSMapPhysToLin(gsSGXDeviceMap.sHPCpuPBase,
> - 														     gsSGXDeviceMap.ui32HPSize,
> - 														     PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> -@@ -1300,7 +1301,7 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 				psDevInfo->ui32HPSize  = gsSGXDeviceMap.ui32HPSize;
> - 				psDevInfo->sHPSysPAddr = gsSGXDeviceMap.sHPSysPBase;
> - 			}
> --#endif 
> -+#endif
> - 			break;
> - 		}
> - #ifdef SUPPORT_MSVDX
> -@@ -1308,13 +1309,13 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 		{
> - 			PVRSRV_MSVDXDEV_INFO *psDevInfo = (PVRSRV_MSVDXDEV_INFO *)psDeviceNodeList->pvDevice;
> - #if defined(NO_HARDWARE) && defined(__linux__)
> --			
> -+
> - 			PVR_ASSERT(gsMSVDXRegsCPUVAddr);
> - 			psDevInfo->pvRegsBaseKM = gsMSVDXRegsCPUVAddr;
> --#else	
> -+#else
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS))
> - 			{
> --				
> -+
> - 				psDevInfo->pvRegsBaseKM = OSMapPhysToLin (
> - 					gsMSVDXDeviceMap.sRegsCpuPBase,
> - 					gsMSVDXDeviceMap.ui32RegsSize,
> -@@ -1327,12 +1328,12 @@ static PVRSRV_ERROR SysMapInRegisters(IMG_VOID)
> - 				}
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 			psDevInfo->ui32RegSize = gsMSVDXDeviceMap.ui32RegsSize;
> - 			psDevInfo->sRegsPhysBase = gsMSVDXDeviceMap.sRegsSysPBase;
> - 			break;
> - 		}
> --#endif	
> -+#endif
> - 		default:
> - 			break;
> - 		}
> -@@ -1357,7 +1358,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 		{
> - 			PVRSRV_SGXDEV_INFO *psDevInfo = (PVRSRV_SGXDEV_INFO *)psDeviceNodeList->pvDevice;
> - #if !(defined(NO_HARDWARE) && defined(__linux__))
> --			
> -+
> - 			if (psDevInfo->pvRegsBaseKM)
> - 			{
> - 				OSUnMapPhysToLin(psDevInfo->pvRegsBaseKM,
> -@@ -1367,7 +1368,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_SGX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 
> - 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> - 			psDevInfo->ui32RegSize          = 0;
> -@@ -1376,7 +1377,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - #if defined(SGX_FEATURE_HOST_PORT)
> - 			if (gsSGXDeviceMap.ui32Flags & SGX_HOSTPORT_PRESENT)
> - 			{
> --				
> -+
> - 				if (psDevInfo->pvHostPortBaseKM)
> - 				{
> - 					OSUnMapPhysToLin(psDevInfo->pvHostPortBaseKM,
> -@@ -1392,7 +1393,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 				psDevInfo->ui32HPSize  = 0;
> - 				psDevInfo->sHPSysPAddr.uiAddr = 0;
> - 			}
> --#endif 
> -+#endif
> - 			break;
> - 		}
> - #ifdef SUPPORT_MSVDX
> -@@ -1409,13 +1410,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNMAP_MSVDX_REGS);
> - 			}
> --#endif	
> -+#endif
> - 			psDevInfo->pvRegsBaseKM = IMG_NULL;
> - 			psDevInfo->ui32RegSize = 0;
> - 			psDevInfo->sRegsPhysBase.uiAddr = 0;
> - 			break;
> - 		}
> --#endif	
> -+#endif
> - 		default:
> - 			break;
> - 		}
> -@@ -1423,13 +1424,13 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 	}
> - 
> - #if !(defined(NO_HARDWARE) || defined(__linux__))
> --	
> -+
> - 	OSUnMapPhysToLin(gsPoulsboRegsCPUVaddr,
> - 				REG_SIZE,
> - 				PVRSRV_HAP_KERNEL_ONLY|PVRSRV_HAP_UNCACHED,
> - 				IMG_NULL);
> - 
> --	
> -+
> - #if defined(MAP_UNUSED_MAPPINGS)
> - 	OSUnMapPhysToLin(gsPoulsboDisplayRegsCPUVaddr,
> - 				DISPLAY_REG_SIZE,
> -@@ -1437,7 +1438,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 				IMG_NULL);
> - #endif
> - 
> --#endif	
> -+#endif
> - 
> - #if defined(NO_HARDWARE)
> - #ifdef SUPPORT_MSVDX
> -@@ -1462,7 +1463,7 @@ static PVRSRV_ERROR SysUnmapRegisters(IMG_VOID)
> - 
> - 		SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_ALLOC_DUMMY_SGX_REGS);
> - 	}
> --#endif 
> -+#endif
> - 
> - 	return PVRSRV_OK;
> - }
> -@@ -1477,7 +1478,7 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 		if ((eNewPowerState == PVRSRV_SYS_POWER_STATE_D3) &&
> - 			(gpsSysData->eCurrentPowerState < PVRSRV_SYS_POWER_STATE_D3))
> - 		{
> --			
> -+
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_IRQ_ENABLED))
> - 			{
> - 				SysDisableInterrupts(gpsSysData);
> -@@ -1497,9 +1498,9 @@ PVRSRV_ERROR SysSystemPrePowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> - 			}
> --#endif 
> -+#endif
> -+
> - 
> --			
> - 			SysUnmapRegisters();
> - #ifdef	__linux__
> - 			eError = OSPCISuspendDev(gsSysSpecificData.hSGXPCI);
> -@@ -1530,7 +1531,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				PVR_DPF((PVR_DBG_ERROR,"SysSystemPostPowerState: OSPCIResumeDev failed (%d)", eError));
> - 			}
> - #endif
> --			
> -+
> - 
> - 
> - 			eError = SysLocateDevices(gpsSysData);
> -@@ -1540,7 +1541,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				return eError;
> - 			}
> - 
> --			
> -+
> - 			eError = SysMapInRegisters();
> - 			if (eError != PVRSRV_OK)
> - 			{
> -@@ -1559,7 +1560,7 @@ PVRSRV_ERROR SysSystemPostPowerState(PVRSRV_SYS_POWER_STATE eNewPowerState)
> - 				SYS_SPECIFIC_DATA_SET(&gsSysSpecificData, SYS_SPECIFIC_DATA_LISR_INSTALLED);
> - 				SYS_SPECIFIC_DATA_CLEAR(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_UNINSTALL_LISR);
> - 			}
> --#endif 
> -+#endif
> - 
> - 			if (SYS_SPECIFIC_DATA_TEST(&gsSysSpecificData, SYS_SPECIFIC_DATA_PM_IRQ_DISABLE))
> - 			{
> -@@ -1606,7 +1607,3 @@ PVRSRV_ERROR SysDevicePostPowerState(IMG_UINT32				ui32DeviceIndex,
> - 
> - 	return PVRSRV_OK;
> - }
> --
> --
> --
> --
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> -index 0737aaf..63a1c96 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> -@@ -1,35 +1,36 @@
> - /* -*- syscommon-c -*-
> --*-----------------------------------------------------------------------------
> --* Filename: syscommon.c
> --* $Revision: 1.2 $
> --*-----------------------------------------------------------------------------
> --* INTEL CONFIDENTIAL
> --* Copyright 2010 Intel Corporation All Rights Reserved.
> --* The source code contained or described herein and all documents related to
> --* the source code ("Material") are owned by Intel Corporation or its suppliers
> --* or licensors. Title to the Material remains with Intel Corporation or its
> --* suppliers and licensors. The Material contains trade secrets and proprietary
> --* and confidential information of Intel or its suppliers and licensors. The
> --* Material is protected by worldwide copyright and trade secret laws and
> --* treaty provisions. No part of the Material may be used, copied, reproduced,
> --* modified, published, uploaded, posted, transmitted, distributed, or
> --* disclosed in any way without Intel's prior express written permission.
> --*
> --* No license under any patent, copyright, trade secret or other intellectual
> --* property right is granted to or conferred upon you by disclosure or
> --* delivery of the Materials, either expressly, by implication, inducement,
> --* estoppel or otherwise. Any license under such intellectual property rights
> --* must be express and approved by Intel in writing.
> --*
> --*
> --*-----------------------------------------------------------------------------
> --* Description: platform detection, and sharing of correct platform interface.
> --*
> --*-----------------------------------------------------------------------------
> --* Authors:
> --*  Marcin Tomczyk
> --*-----------------------------------------------------------------------------
> --*/
> -+ *-----------------------------------------------------------------------------
> -+ * Filename: syscommon.c
> -+ * $Revision: 1.3 $
> -+ *-----------------------------------------------------------------------------
> -+ * Copyright © 2002-2010, Intel Corporation.
> -+ *
> -+ * Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ * of this software and associated documentation files (the "Software"), to deal
> -+ * in the Software without restriction, including without limitation the rights
> -+ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ * copies of the Software, and to permit persons to whom the Software is
> -+ * furnished to do so, subject to the following conditions:
> -+ *
> -+ * The above copyright notice and this permission notice shall be included in
> -+ * all copies or substantial portions of the Software.
> -+ *
> -+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ * THE SOFTWARE.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Description: platform detection, and sharing of correct platform interface.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Authors:
> -+ *  Marcin Tomczyk
> -+ *-----------------------------------------------------------------------------
> -+ */
> - 
> - #include "sysconfig.h"
> - #include "sysplb.h"
> -@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfacePlb = {
> - 	SYS_SGX_CLOCK_SPEED_PLB,
> - 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_PLB
> - };
> --
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> -index 5b94861..e4d9426 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> -@@ -1,35 +1,36 @@
> - /* -*- syscommon-c -*-
> --*-----------------------------------------------------------------------------
> --* Filename: syscommon.c
> --* $Revision: 1.2 $
> --*-----------------------------------------------------------------------------
> --* INTEL CONFIDENTIAL
> --* Copyright 2010 Intel Corporation All Rights Reserved.
> --* The source code contained or described herein and all documents related to
> --* the source code ("Material") are owned by Intel Corporation or its suppliers
> --* or licensors. Title to the Material remains with Intel Corporation or its
> --* suppliers and licensors. The Material contains trade secrets and proprietary
> --* and confidential information of Intel or its suppliers and licensors. The
> --* Material is protected by worldwide copyright and trade secret laws and
> --* treaty provisions. No part of the Material may be used, copied, reproduced,
> --* modified, published, uploaded, posted, transmitted, distributed, or
> --* disclosed in any way without Intel's prior express written permission.
> --*
> --* No license under any patent, copyright, trade secret or other intellectual
> --* property right is granted to or conferred upon you by disclosure or
> --* delivery of the Materials, either expressly, by implication, inducement,
> --* estoppel or otherwise. Any license under such intellectual property rights
> --* must be express and approved by Intel in writing.
> --*
> --*
> --*-----------------------------------------------------------------------------
> --* Description: platform detection, and sharing of correct platform interface.
> --*
> --*-----------------------------------------------------------------------------
> --* Authors:
> --*  Marcin Tomczyk
> --*-----------------------------------------------------------------------------
> --*/
> -+ *-----------------------------------------------------------------------------
> -+ * Filename: syscommon.c
> -+ * $Revision: 1.3 $
> -+ *-----------------------------------------------------------------------------
> -+ * Copyright © 2002-2010, Intel Corporation.
> -+ *
> -+ * Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ * of this software and associated documentation files (the "Software"), to deal
> -+ * in the Software without restriction, including without limitation the rights
> -+ * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ * copies of the Software, and to permit persons to whom the Software is
> -+ * furnished to do so, subject to the following conditions:
> -+ *
> -+ * The above copyright notice and this permission notice shall be included in
> -+ * all copies or substantial portions of the Software.
> -+ *
> -+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ * THE SOFTWARE.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Description: platform detection, and sharing of correct platform interface.
> -+ *
> -+ *-----------------------------------------------------------------------------
> -+ * Authors:
> -+ *  Marcin Tomczyk
> -+ *-----------------------------------------------------------------------------
> -+ */
> - 
> - #include "sysconfig.h"
> - #include "systnc.h"
> -@@ -47,4 +48,3 @@ SYS_PLATFORM_INTERFACE gpsSysPlatformInterfaceTnc = {
> - 	SYS_SGX_CLOCK_SPEED_TNC,
> - 	SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC
> - };
> --
> -diff --git a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> -index 3f26d4c..7d5c2d6 100644
> ---- a/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> -+++ b/drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> -@@ -1,40 +1,32 @@
> - /**********************************************************************
> -- *
> -- * Copyright(c) 2008 Imagination Technologies Ltd. All rights reserved.
> -- * 
> -- * This program is free software; you can redistribute it and/or modify it
> -- * under the terms and conditions of the GNU General Public License,
> -- * version 2, as published by the Free Software Foundation.
> -- * 
> -- * This program is distributed in the hope it will be useful but, except 
> -- * as otherwise stated in writing, without any warranty; without even the 
> -- * implied warranty of merchantability or fitness for a particular purpose. 
> -- * See the GNU General Public License for more details.
> -- * 
> -- * You should have received a copy of the GNU General Public License along with
> -- * this program; if not, write to the Free Software Foundation, Inc.,
> -- * 51 Franklin St - Fifth Floor, Boston, MA 02110-1301 USA.
> -- * 
> -- * The full GNU General Public License is included in this distribution in
> -- * the file called "COPYING".
> -- *
> -- * Contact Information:
> -- * Imagination Technologies Ltd. <gpl-support@imgtec.com>
> -- * Home Park Estate, Kings Langley, Herts, WD4 8LZ, UK 
> -- *
> -+ Copyright (c) Imagination Technologies Ltd.
> -+
> -+ Permission is hereby granted, free of charge, to any person obtaining a copy
> -+ of this software and associated documentation files (the "Software"), to deal
> -+ in the Software without restriction, including without limitation the rights
> -+ to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -+ copies of the Software, and to permit persons to whom the Software is
> -+ furnished to do so, subject to the following conditions:
> -+
> -+ The above copyright notice and this permission notice shall be included in
> -+ all copies or substantial portions of the Software.
> -+
> -+ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -+ IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -+ FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -+ AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -+ LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -+ OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -+ THE SOFTWARE.
> -  ******************************************************************************/
> --/* INTEL CONFIDENTIAL
> -- * Copyright 2010 Intel Corporation All Rights Reserved.
> -- */
> - 
> - #ifndef _SYSTNC_H
> - #define _SYSTNC_H
> - 
> --#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108	
> -+#define SYS_SGX_DEV_DEVICE_ID_TNC	0x4108
> - #define VS_PRODUCT_NAME_TNC     	"SGX Atom E6xx"
> - #define SGX_REGS_OFFSET_TNC     	0x80000
> - #define MSVDX_REGS_OFFSET_TNC   	0x90000
> - #define SYS_SGX_CLOCK_SPEED_TNC                     (400000000)
> - #define SYS_SGX_ACTIVE_POWER_LATENCY_MS_TNC         (50)
> - #endif
> --
> --- 
> -1.7.0.4
> -
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> new file mode 100644
> index 0000000..bb86798
> --- /dev/null
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> @@ -0,0 +1,9 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +
> +COMPATIBLE_MACHINE_crownbay = "crownbay"
> +KMACHINE_crownbay  = "crownbay"
> +
> +COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
> +KMACHINE_crownbay-noemgd  = "crownbay"
> +
> +SRC_URI += "file://0001-crownbay-update-a-handful-of-EMGD-licenses.patch"
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> new file mode 100644
> index 0000000..5694b5a
> --- /dev/null
> +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -0,0 +1,5 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +COMPATIBLE_MACHINE_crownbay = "crownbay"
> +KMACHINE_crownbay  = "yocto/standard/crownbay"
> +
> +SRC_URI += "file://0001-crownbay-update-a-handful-of-EMGD-licenses.patch"
> diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
> deleted file mode 100644
> index 5694b5a..0000000
> --- a/meta-crownbay/recipes-kernel/linux/linux-yocto_git.bbappend
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -COMPATIBLE_MACHINE_crownbay = "crownbay"
> -KMACHINE_crownbay  = "yocto/standard/crownbay"
> -
> -SRC_URI += "file://0001-crownbay-update-a-handful-of-EMGD-licenses.patch"
> diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> deleted file mode 100644
> index 9fa2937..0000000
> --- a/meta-emenlow/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -COMPATIBLE_MACHINE_emenlow = "emenlow"
> -KMACHINE_emenlow  = "emenlow"
> diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> new file mode 100644
> index 0000000..9fa2937
> --- /dev/null
> +++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +COMPATIBLE_MACHINE_emenlow = "emenlow"
> +KMACHINE_emenlow  = "emenlow"
> diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> new file mode 100644
> index 0000000..360c259
> --- /dev/null
> +++ b/meta-emenlow/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +COMPATIBLE_MACHINE_emenlow = "emenlow"
> +KMACHINE_emenlow  = "yocto/standard/emenlow"
> diff --git a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
> deleted file mode 100644
> index 360c259..0000000
> --- a/meta-emenlow/recipes-kernel/linux/linux-yocto_git.bbappend
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -COMPATIBLE_MACHINE_emenlow = "emenlow"
> -KMACHINE_emenlow  = "yocto/standard/emenlow"
> diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> deleted file mode 100644
> index 066776b..0000000
> --- a/meta-jasperforest/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -
> -COMPATIBLE_MACHINE_jasperforest = "jasperforest"
> -KMACHINE_jasperforest  = "jasperforest"
> -
> diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> new file mode 100644
> index 0000000..066776b
> --- /dev/null
> +++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> @@ -0,0 +1,5 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +
> +COMPATIBLE_MACHINE_jasperforest = "jasperforest"
> +KMACHINE_jasperforest  = "jasperforest"
> +
> diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> new file mode 100644
> index 0000000..988c969
> --- /dev/null
> +++ b/meta-jasperforest/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +
> +COMPATIBLE_MACHINE_jasperforest = "jasperforest"
> +
> +KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
> +
> diff --git a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
> deleted file mode 100644
> index 988c969..0000000
> --- a/meta-jasperforest/recipes-kernel/linux/linux-yocto_git.bbappend
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -
> -COMPATIBLE_MACHINE_jasperforest = "jasperforest"
> -
> -KMACHINE_jasperforest  = "yocto/standard/common-pc-64/jasperforest"
> -
> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> deleted file mode 100644
> index e7c2df8..0000000
> --- a/meta-n450/recipes-kernel/linux/linux-yocto-stable_git.bbappend
> +++ /dev/null
> @@ -1,7 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -KMACHINE_n450 = "atom-pc"
> -COMPATIBLE_MACHINE_n450 = "n450"
> -
> -# We use the atom-pc machine SRCREV and the default meta SRCREV
> -#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
> -#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
> diff --git a/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> new file mode 100644
> index 0000000..e7c2df8
> --- /dev/null
> +++ b/meta-n450/recipes-kernel/linux/linux-yocto_2.6.34.bbappend
> @@ -0,0 +1,7 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +KMACHINE_n450 = "atom-pc"
> +COMPATIBLE_MACHINE_n450 = "n450"
> +
> +# We use the atom-pc machine SRCREV and the default meta SRCREV
> +#SRCREV_machine_pn-linux-yocto-stable_n450 = ""
> +#SRCREV_meta_pn-linux-yocto-stable_n450 ?= ""
> diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> new file mode 100644
> index 0000000..fe160c0
> --- /dev/null
> +++ b/meta-sugarbay/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -0,0 +1,5 @@
> +FILESEXTRAPATHS := "${THISDIR}/${PN}"
> +
> +COMPATIBLE_MACHINE_sugarbay = "sugarbay"
> +KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
> +
> diff --git a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend b/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
> deleted file mode 100644
> index fe160c0..0000000
> --- a/meta-sugarbay/recipes-kernel/linux/linux-yocto_git.bbappend
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -FILESEXTRAPATHS := "${THISDIR}/${PN}"
> -
> -COMPATIBLE_MACHINE_sugarbay = "sugarbay"
> -KMACHINE_sugarbay  = "yocto/standard/common-pc-64/sugarbay"
> -

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

