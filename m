Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4429BE00346
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 03:39:14 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Aug 2012 03:39:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,304,1344236400"; d="scan'208";a="137383306"
Received: from unknown (HELO helios.localnet) ([10.252.121.125])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Aug 2012 03:39:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Markus Hubig <mhubig@imko.de>
Date: Fri, 24 Aug 2012 11:39:10 +0100
Message-ID: <3392698.9QUAKKNk7n@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <20120824114034.3297d25c-b448-4631-93b1-fba8afc4d8c5.mhubig@imko.de>
References: <20120824114034.3297d25c-b448-4631-93b1-fba8afc4d8c5.mhubig@imko.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: License information of tasks
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
X-List-Received-Date: Fri, 24 Aug 2012 10:39:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 24 August 2012 12:05:41 Markus Hubig wrote:
> Hi @all,
> 
> I'm building a layer to provide a customized image. Now I'm struggling
> a bit by the license informations one have to provide for a task.
> 
> First: tasks are packages without content.
> 
> | rpm -qpl task-core-boot-1.0-r9.stamp9g20.rpm
> | (contains no files)
> 
> ... so why do they need some license information in the first place?

This is something that annoys me as well. I have thought about adding the 
ability to declare that a license is not applicable for those recipes that 
don't actually distribute any files, in which case a check during do_deploy, 
do_package and do_populate_sysroot would be enabled that would fail if the 
recipe ended up distributing anything. Unfortunately we don't have hooks in 
all of the necessary places to make this practical, but it is still something 
I would like to resolve.

> Second: OK if there are some reasons to provide license informations,
> how do I include them?
> 
> In task-core-boot there are included like this:
> | LICENSE = "MIT"
> | LIC_FILES_CHKSUM =
> | "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \| 
> |                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c8
> |                     0a0384361b4de20420"
> 
> No I wanna do the same, but of course relative to the base dir of my layer.
> But I don't find a way of doing this ...
> 
> | LICENSE = "LGPL-3.0"
> | LIC_FILES_CHKSUM =
> | "file://${LAYERDIR}/LICENSE;md5=5b241fa147528c635da6d1598c4a4056 \| 
> |                     file://${LAYERDIR}/COPYING;md5=c79ff39f19dfec6d293b95d
> |                     ea7b07891 \
> |                     file://${LAYERDIR}/COPYING.LESSER;md5=bfccfe952269fff2
> |                     b407dd11f2f3083b"
> 
> ... which looks good but don't work (I'm on 1.3_M3).

This doesn't work because LAYERDIR is not valid outside of layer.conf.

Some possible solutions:

1) Use something like e.g. ${THISDIR}/../../COPYING.LESSER; seems quite clunky 
though.

2) Set your own variable to the value of LAYERDIR in layer.conf and then use 
that in the recipe; however that would make the recipe even more hardwired to 
the specific layer.

3) Refer to a license file in ${COMMON_LICENSE_DIR}; this is discouraged as it 
may break if files in there are moved around although I think that is less 
likely in future.

4) Copy the license file into the directory containing the recipe. This is the 
recommended method for recipes that do actually distribute files, but seems 
excessive for a task.

Ultimately though is it really important that the license for a recipe that 
distributes no files be any particular license?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

