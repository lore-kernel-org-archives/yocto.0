Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5964E00B8F; Mon, 26 Oct 2015 01:03:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D2BCE00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 01:03:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Oct 2015 01:03:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,200,1444719600"; d="scan'208";a="835476103"
Received: from randjicd-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.7])
	by fmsmga002.fm.intel.com with ESMTP; 26 Oct 2015 01:03:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 26 Oct 2015 08:03:08 +0000
Message-ID: <3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Mon, 26 Oct 2015 08:03:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Edward,

On Sunday 25 October 2015 12:41:09 Edward Wingate wrote:
> On Sat, Oct 24, 2015 at 1:43 PM, Edward Wingate <edwingate8@gmail.com> wrote:
> > I am using fido release and this is my
> > linux-wandboard_3.14.28.bbappend file, just 2 lines:
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > SRC_URI += "file://defconfig"
> > 
> > I'm trying to use my defconfig with the linux-wandboard kernel recipe
> > in meta-fsl-arm-extra layer:
> > https://github.com/Freescale/meta-fsl-arm-extra/blob/master/recipes-kernel
> > /linux/linux-wandboard_3.14.28.bb
> > 
> > Thanks for your help.
> 
> I also just noticed I don't have any kernel modules in the rootfs.
> The /lib/modules directory doesn't exist while things like
> "CONFIG_USB_SERIAL_FTDI_SIO=m" are in the default .config.  Am there
> some global kernel module setting I should check?

Kernel modules are packaged separately and typically not included in the image 
by default; if you wish to include them you have two choices:

1) Install the kernel-module-<modulename> package(s) individually for the
module(s) you wish to use

2) Install the kernel-modules package to bring in all packages for modules you
enabled in the kernel configuration.

Not sure if you're aware how to install packages in the image, here's the
manual section just in case:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

