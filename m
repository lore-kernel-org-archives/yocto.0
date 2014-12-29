Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D28BE007C1; Mon, 29 Dec 2014 03:26:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41AB4E00521
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 03:25:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 29 Dec 2014 03:25:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,659,1413270000"; d="scan'208";a="661907474"
Received: from brvijay-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.0.132])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2014 03:25:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: peterengcomau001@adam.com.au
Date: Mon, 29 Dec 2014 11:25:50 +0000
Message-ID: <109223388.cVP39yCdYD@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <8259271acb6bd38296ecada4340f7316717b3691@webmail.adam.com.au>
References: <8259271acb6bd38296ecada4340f7316717b3691@webmail.adam.com.au>
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
X-List-Received-Date: Mon, 29 Dec 2014 11:26:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Lachlan,

On Monday 29 December 2014 18:49:32 peterengcomau001@adam.com.au wrote:
> I am trying to modify my device tree build to include a slightly
> modifed version.
> 
> I have created the recipe linux-yocto-custom_3.10.bbappend that
> contains the following:
> 
> PR = "r5"
> FILESEXTRAPATHS_prepend := "${THISDIR}/files/sama5d3xek: "
> SRC_URI += " file://sama5d3xek_lsp.dts "
> KERNEL_DEVICETREE += " sama5d3xek_lsp.dtb"
> 
> do_install_prepend () {
>     cp ${WORKDIR}/sama5d3xek_lsp.dts
> ${WORKDIR}/linux/arch/${ARCH}/boot/dts
> }
> 
> I fget the error from bitbake as follows:
> 
> Log data follows:
> | DEBUG: Executing shell function do_install
> | cp: cannot stat
> 
> '/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/linux
> -yocto-custom/3.10+AUTOINC+35158dd80a-r5/sama5d3xek/sama5d3xek_lsp.dts': No
> such file or directory
> 
> The source file is located in the append recipes subdirectory
> files/sama5d3xek/
> 
> Can anyone suggest why the source dts file is not being made
> available ? I am sure it is a simple mistake!

This error is a little puzzling because I can't see how you could end up with 
"/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/linux-
yocto-custom/3.10+AUTOINC+35158dd80a-r5/sama5d3xek/" (or more specifically, the 
final "sama5d3xek" subdirectory) from "${WORKDIR}/". Was this perhaps from an 
earlier version of the recipe?

In any case, is "sama5d3xek" the value of MACHINE in your configuration? If so, 
the MACHINE value is already searched as a subdirectory of anything in 
FILESEXTRAPATHS, and you shouldn't then end up with that subdirectory when the 
file is copied into the WORKDIR. Try this instead:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

(Also, there should be no spaces in FILESEXTRAPATHS, I notice you had a 
trailing one in there.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

