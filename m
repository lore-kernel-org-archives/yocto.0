Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98315E006AD
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 05:30:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Aug 2012 05:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="174059273"
Received: from unknown (HELO helios.localnet) ([10.252.121.41])
	by orsmga001.jf.intel.com with ESMTP; 01 Aug 2012 05:30:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
Date: Wed, 01 Aug 2012 13:30:05 +0100
Message-ID: <3616811.q9XncSpWMg@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <36ED13F3654AE54CA763E6821D93A57110469F33@szxeml534-mbx.china.huawei.com>
References: <36ED13F3654AE54CA763E6821D93A57110469F33@szxeml534-mbx.china.huawei.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: mechanism to disable package management on target
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
X-List-Received-Date: Wed, 01 Aug 2012 12:30:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 01 August 2012 11:44:53 Venkata ramana gollamudi wrote:
>     Is there any mechanism to disable package management, so that my rootfs
> should not have any package management related packages like opkg etc.
> 
>  I found that one of the methods ipk/rpm/deb need to be mandatorily
> selected. Please suggest if any such method exists.

Definitely - if IMAGE_FEATURES does not contain "package-management" then the 
package manager database and package management tools will not be part of the 
final image. The package manager will still be used to construct the root 
filesystem so you'll still see it being built.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

