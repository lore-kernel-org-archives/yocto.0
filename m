Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9191CE00A6A; Tue,  7 Nov 2017 09:47:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4977E00928
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 09:47:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vA7Hlm3G014788
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 7 Nov 2017 09:47:48 -0800 (PST)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 7 Nov 2017 09:47:48 -0800
To: Alan Martinovic <alan.martinovic@senic.com>, Yocto-mailing-list
	<yocto@yoctoproject.org>
References: <CAOT_U5a2DJzXR2a0JCGPRRPyTY30-BmtSCwNTmt4=mYg3ZUnkw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <db7a5271-522c-ea83-ae33-4d1ac3f51c7d@windriver.com>
Date: Tue, 7 Nov 2017 12:47:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAOT_U5a2DJzXR2a0JCGPRRPyTY30-BmtSCwNTmt4=mYg3ZUnkw@mail.gmail.com>
Subject: Re: KBUILD_DEFCONFIG_KMACHINE not used anywhere
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
X-List-Received-Date: Tue, 07 Nov 2017 17:47:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/07/2017 08:46 AM, Alan Martinovic wrote:
> Hi,
> I'm trying to get yocto to build the kernel with an in-tree defconfig.
> For that I found references to the variable KBUILD_DEFCONFIG_KMACHINE.
> 
> However, I've been experiencing that the kernel is being built with
> some default defconfig, and not the in-tree one that came with the
> kernel and I defined with the KBUILD_DEFCONFIG_KMACHINE.
> 
> I've looked through all yocto sources for where the
> KBUILD_DEFCONFIG_KMACHINE is actually used, and found it only in my
> kernel recipe. So I decided to dissect my recipe.

What is your kernel recipe ? Something you wrote, or something
from a vendor ?

> 
> There is a:
> 
> inherit kernel
> 
> in my recipe for which, besides others, defines how the kernel config
> will be selected.
> Looking at the sources of oe/meta/classes/kernel.bbclass exposes how
> the kernel configuration happens:
> 
> kernel_do_configure() {
>          # fixes extra + in /lib/modules/2.6.37+
>          # $ scripts/setlocalversion . => +
>          # $ make kernelversion => 2.6.37
>          # $ make kernelrelease => 2.6.37+
>          touch ${B}/.scmversion ${S}/.scmversion
> 
>          if [ "${S}" != "${B}" ] && [ -f "${S}/.config" ] && [ ! -f
> "${B}/.config" ]; then
>                  mv "${S}/.config" "${B}/.config"
>          fi
> 
>          # Copy defconfig to .config if .config does not exist. This allows
>          # recipes to manage the .config themselves in do_configure_prepend().
>          if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
>                  cp "${WORKDIR}/defconfig" "${B}/.config"
>          fi
> 
>          ${KERNEL_CONFIG_COMMAND}
> }
> 
> 
> I'm planning a workaround by overriding the do_configure in my recipe
> to select the correct defconfig from the kernel. It does seem however
> like the KBUILD_DEFCONFIG_KMACHINE is exactly here to not have to do
> the workarounds.
> 
> Anyone has experiences with successfully using KBUILD_DEFCONFIG_KMACHINE?
> Is it a specific poky feature (I'm not using poky but specific open
> embedded layers and bitbake)?
That is a feature of kernel-yocto, so if your recipe is inheriting
kernel-yocto you can use what you are looking for.

But note, in the documentation you are referencing you have to replace
KMACHINE with your actual machine .. not use the string KMACHINE.

i.e. in your recipe (or bbappend)

# for cases where the KMACHINE (KERNEL MACHINE) and bitbake
# machine match, just do this:
KMACHINE=$MACHINE

KBUILD_DEFCONFIG_${KMACHINE}="your defconfig"

i.e. it is just a standard bitbake variable with a machine OVERRIDE
to make it specific to the machine you are building.

Bruce

> 
> Be Well,
> Alan
> 
> Ref.
> https://www.yoctoproject.org/docs/2.2/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file
> 


