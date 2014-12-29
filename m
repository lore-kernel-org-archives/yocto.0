Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E39C4E008A7; Mon, 29 Dec 2014 06:46:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A49D3E002A6
	for <yocto@yoctoproject.org>; Mon, 29 Dec 2014 06:46:22 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 29 Dec 2014 06:43:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,691,1406617200"; d="scan'208";a="505291851"
Received: from brvijay-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.0.132])
	by orsmga003.jf.intel.com with ESMTP; 29 Dec 2014 06:41:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: peterengcomau001@adam.com.au, yocto@yoctoproject.org
Date: Mon, 29 Dec 2014 14:46:20 +0000
Message-ID: <4255067.HY4uUhKlVr@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.7-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <43414f3aa74406bb117c62a05497dd40382b7151@webmail.adam.com.au>
References: <43414f3aa74406bb117c62a05497dd40382b7151@webmail.adam.com.au>
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 29 Dec 2014 14:46:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 30 December 2014 00:26:05 peterengcomau001@adam.com.au wrote:
> I have had some success and some failure.
> Attempt 1: FAILI changed the SRC to:FILESEXTRAPATHS_prepend :=
> "${THISDIR}/files:" removing the machine name and the space. The
> machine is sama5d3xek.
> I still get an the error : (the directory is now changed)
> 
> > | DEBUG: Executing shell function do_install
> > | cp: cannot stat
> 
> '/home/lachlan/poky/build-atmel/tmp/work/sama5d3xek-poky-linux-gnueabi/linux
> > -yocto-custom/3.10+AUTOINC+35158dd80a-r5/sama5d3xek_lsp.dts': No
> > such file or directory
> >
> > 
> 
> Note:
> There is already a .bbappend file for this recipe in the original
> source. Can a problem occur having two bbappend recipes each
> containing FILESEXTRAPATHS_prepend := "${THISDIR}/files:" but
> referring to different ${THISDIR} directories?
> The existing linux-yocto-custom_3.10.bbppend file contains:KBRANCH =
> "linux-3.10-at91"SRCREV = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" - i
> am on a differnt computer so I wont copy the numbersPV =
> "${LINUX_VERSION}+${SRCPV}"PR = "r5"FILESEXTRAPATHS_prepend :=
> "${THISDIR}/files/${MACHINE}:" SRC_URI =
> "git://github.com/linux4sam/linux-at91git;protocol=git;branch=${KBRANCH};noc
> heckout=1"SRC_URI += "file://defconfig"
> do_deploy_append () {.......}
> Attempt 2: FAIL I tried making the source file name incorrectSRC_URI
> += " file://sama5d3xek_wrong.dts "The same error results. I would have
> thought it would pick up a different error if the original source file
> could not be found.
> Attempt 3: THIS WORKEDI also copied the following code to the
> original vendor supplied .bbppend recipe, as well as moving the
> sama5d3xek_lsp.dts to the correct directory for that recipeSRC_URI +=
> " file://sama5d3xek_lsp.dts "
> KERNEL_DEVICETREE += " sama5d3xek_lsp.dtb"
> 
> do_install_prepend () {
>     cp ${WORKDIR}/sama5d3xek_lsp.dts
>  ${WORKDIR}/linux/arch/${ARCH}/boot/dts
> }
> 
> This worked and the device tree blob was built. However, I don't want
> to modify the vendor supplied source files and would like another way
> of doing this in my own layer.

You'd have to look at what bitbake -e linux-yocto-custom | less reports as the 
values of the variables you are changing (SRC_URI, FILESEXTRAPATHS, and 
do_install), because it depends on what this other bbappend is doing and in 
what order the bbappends are applied (the latter is determined by the relative 
layer priorities).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

