Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 910CCE005B4
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2012 18:02:05 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2012 18:02:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="93848234"
Received: from unknown (HELO envy.home) ([10.255.13.98])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2012 18:02:02 -0800
Message-ID: <4F07A786.2010601@linux.intel.com>
Date: Fri, 06 Jan 2012 18:01:42 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Zumeng Chen <zumeng.chen@windriver.com>
References: <cover.1325824274.git.zumeng.chen@windriver.com>
	<f2349ab1c0b1d39830a798bb0c001f6d41a3275a.1325824274.git.zumeng.chen@windriver.com>
In-Reply-To: <f2349ab1c0b1d39830a798bb0c001f6d41a3275a.1325824274.git.zumeng.chen@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/4] lttng-ust: Integrate into yocto linux
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
X-List-Received-Date: Sat, 07 Jan 2012 02:02:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Zumeng,

Thanks for putting these together.

Please provide a commit message. See:
https://wiki.yoctoproject.org/wiki/Contribution_Guidelines#Patch_Headers_and_Commit_Messages

> +LICENSE = "LGPLv2.1+ & BSD"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=e647752e045a8c45b6f583771bd561ef"

COPYING only covers the LGPL, please add another file to cover the BSD license.

> +
> +inherit autotools
> +
> +DEPENDS = "liburcu util-linux"
> +
> +SRC_URI = "http://lttng.org/files/lttng-ust/lttng-ust-${PV}.tar.gz"
> +
> +SRC_URI[md5sum] = "0f09bb954c99cb99ab6997cd492953c1"
> +SRC_URI[sha256sum] = "e9ec3c55c2251b3f3b512bfa1015b0f67e35d55793850ccea5134f7b24ee3ba1"
> +
> +S = "${WORKDIR}/lttng-ust-${PV}"
> +
> +# Due to liburcu not building on MIPS currently this recipe needs to
> +# be limited also.
> +# So here let us first suppport x86/arm/powerpc platforms now.
> +COMPATIBLE_HOST = '(x86_64.*|i.86.*|arm.*|powerpc.*)-linux'

I don't think this is what you meant. You are restricting the type of build system,
not the type of target you can build for.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

