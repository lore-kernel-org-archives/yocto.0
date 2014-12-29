Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1BF0E008A7; Mon, 29 Dec 2014 08:34:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9045E002A6
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 08:34:08 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 29 Dec 2014 08:29:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,659,1413270000"; d="scan'208";a="662018716"
Received: from brvijay-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.0.132])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2014 08:34:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: peterengcomau001@adam.com.au
Date: Mon, 29 Dec 2014 16:34:04 +0000
Message-ID: <1540633.8P2N2UWpS0@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <cd5a7db309a3342e668e2b4b21d86bd91d416e52@webmail.adam.com.au>
References: <cd5a7db309a3342e668e2b4b21d86bd91d416e52@webmail.adam.com.au>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bitbake cannot locate source file from recipe
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
X-List-Received-Date: Mon, 29 Dec 2014 16:34:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 30 December 2014 02:58:05 peterengcomau001@adam.com.au wrote:
>  The result of bitbake -e linux-yocto-custom gives this output:
> 
> # $FILESPATH [2 operations]
> #   set /home/lachlan/poky/meta/conf/documentation.conf:174
> #     [doc] "The default set of directories the OpenEmbedded
> build system uses when searching for patches and files. It is defined
> in the base.bbclass class found in meta/classes in the Source D
> irectory. Do not hand-edit the FILESPATH variable."
> #   set /home/lachlan/poky/meta/classes/base.bbclass:83
> #     "${@base_set_filespath(["${FILE_DIRNAME}/${BP}",
> "${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"
> # computed:
> #   "${@base_set_filespath(["${FILE_DIRNAME}/${BP}",
> "${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"
> FILESPATH="/home/lachlan/poky/meta-atmel/recipes-kernel/linux/files/sama5d3x
> ek/poky:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/poky:/h
> ome/lachlan/poky/meta-atmel/recipes-kernel
> /linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/poky:/home/lachlan/poky/m
> eta-atmel/recipes-kernel/linux/linux-yocto-custom/poky:/home/lachlan/poky/me
> ta-atmel/recipes-kernel/linux/files/poky:/h
> ome/lachlan/poky/meta-atmel/recipes-kernel/linux/files/sama5d3xek/sama5d3xe
> k:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/sama5d3xek:/h
> ome/lachlan/poky/meta-atmel/recipes-kernel/
> linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/sama5d3xek:/home/lachlan/p
> oky/meta-atmel/recipes-kernel/linux/linux-yocto-custom/sama5d3xek:/home/lach
> lan/poky/meta-atmel/recipes-kernel/linux/fi
> les/sama5d3xek:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/files/sam
> a5d3xek/armv7a:/home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/
> armv7a:/home/lachlan/poky/meta-atmel/recipe
> s-kernel/linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/armv7a:/home/lach
> lan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom/armv7a:/home/lac
> hlan/poky/meta-atmel/recipes-kernel/linux/files/armv7a:/home/lachlan/poky/me
> ta-atmel/recipes-kernel/linux/files/sama5d3xek/arm:/home/lachlan/poky/meta-a
> tmel-lsp/recipes-kernel/linux/files/arm:/home/lachlan/poky/meta-atmel/recipe
> s-kernel/linux/linux-yocto-custom-3.10+AUTOINC+35158dd80a/arm:/home/lachlan/
> poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom/arm:/home/lachlan/po
> ky/meta-atmel/recipes-kernel/linux/files/arm:/home/lachlan/poky/meta-atmel/r
> ecipes-kernel/linux/files/sama5d3xek/:/home/lachlan/poky/meta-atmel-lsp/reci
> pes-kernel/linux/files/:/home/lachlan/poky/meta-atmel/recipes-kernel/linux/l
> inux-yocto-custom-3.10+AUTOINC+35158dd80a/:/home/lachlan/poky/meta-atmel/rec
> ipes-kernel/linux/linux-yocto-custom/:/home/lachlan/poky/meta-atmel/recipes-
> kernel/linux/files/" #
> 
> # $SRC_URI [6 operations]
> #   set /home/lachlan/poky/meta/conf/bitbakeconf:588
> #     ""
> #   set /home/lachlan/poky/meta/conf/documentation.conf:378
> #     [doc] "The list of source files - local or remote. This
> variable tells the OpenEmbedded build system what bits to pull in for
> the build and how to pull them in."
> #   set
> /home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.b
> b:46 #
> "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=g
> it;nocheckout=1" #   append
> /home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/linux-yocto-custom_3.
> 10.bbappend:10 #     " file://sama5d3xek_lsp.dts "
> #   set
> /home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.b
> bappend:9 #
> "git://github.com/linux4sam/linux-at91.git;protocol=git;branch=${KBRANCH};no
> checkout=1" #   append
> /home/lachlan/poky/meta-atmel/recipes-kernel/linux/linux-yocto-custom_3.10.b
> bappend:10 #     "file://defconfig"
> # computed:
> #  
> "git://github.com/linux4sam/linux-at91.git;protocol=git;branch=${KBRANCH};no
> checkout=1 file://defconfig"
> SRC_URI="git://github.com/linux4sam/linux-at91.git;protocol=git;branch=linux
> -3.10-at91;nocheckout=1 file://defconfig"
> 
> I can infer from this that it did not pickup the dts file as a valid
> source file, but I cannot seem to workout why?
> From the FILEPATH it appears that is has extracted the correct
> location of the sourcefile at:
> /home/lachlan/poky/meta-atmel-lsp/recipes-kernel/linux/files/sama5d3xek:
> 
> 
>  Is there something else I should be looking for or is there
> something in this that can highlight the problem

Looking down the history for SRC_URI I can see that meta-atmel (which I assume 
is the vendor layer you mention) *setting* SRC_URI to a value, after your 
append operation, which explains why your value is being wiped out. This also 
tells me that the priority of your meta-atmel-lsp layer is lower than meta-
atmel, which is probably not what you want. I would suggest setting the layer 
priority in meta-atmel-lsp's conf/layer.conf so it is higher than the layer 
priority of meta-atmel, which will mean that meta-atmel-lsp 's bbappend will 
be applied second.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

