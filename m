Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 947E4E014F0
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 12:17:34 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E46519ADE
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 20:17:33 +0100 (BST)
Message-ID: <5047A54D.1040109@r-finger.com>
Date: Wed, 05 Sep 2012 20:17:33 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <OFC6F80D24.F2F92589-ON87257A70.00684AC0-85257A70.0068B234@us.ibm.com>
In-Reply-To: <OFC6F80D24.F2F92589-ON87257A70.00684AC0-85257A70.0068B234@us.ibm.com>
Subject: Re: core-image-minimal linux kernel version
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
X-List-Received-Date: Wed, 05 Sep 2012 19:17:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/12 20:03, James Macon wrote:
> I found it but this is only partially the answer. I found 
> PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto" in qemu.inc but there 
> is no recipe for linux-yocto. There are recipes for linux-yocto_3.* , 
> linux-yocto-tiny, and linux-yocto-rt_3*. 
> 
> Somewhere during the build process something is appending to linux-yocto. 
> I will keep looking but if someone knows the answer please respond. 

The part before the '_' is the package name, the part after is is
version. So, linux-yocto, linux-yocto-tiny and linux-yocto-rt are three
different kernels, each of which can have multiple versions at the same
time.

You get automatically the highest available version a package unless the
version is specifically pinned down somewhere (e.g.,
PREFERRED_VERSION_virtual/kernel in the configs or DEFAULT_PREFERENCE in
the recipes themselves).

Tomas

