Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65830E0074B; Tue, 28 Feb 2017 06:45:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E64C3E0050B
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 06:45:27 -0800 (PST)
Received: by mail-wr0-f195.google.com with SMTP id q39so1912359wrb.2
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 06:45:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=v9OBI6wn4YoZfhf9XNj6v0QPYnWhUFG1txlKwaOd+nI=;
	b=nGfMP8SQ7/uOzr768bSJfB6+yihc7CNInjHpsoPKxm+CasN5XSerP2yMtg9pk7uKgD
	PHUEC/CbpyASYZiOlVFUD56pnsXypBK9FX6vML+tXaRyh9vFZCD3rQZYTnpoaTZ2WRGQ
	ND+fiBt9CWnCJk+3KEtv1/P/aqcHweuX3POyBJR1BLQsfozhHLmB1SxNPWiifRSHAkHl
	s0EBSt24IlpWLTv0t5/yo1gpsfiQLHD/5OkGetZrYdNkTUVHHVQJ89PiQTEGbMdzb29F
	ugCK14Y7VHN568OVPz2vYymNgX8n2XbdpheQsEK8XJVjhbc+qUzwGc4pnJwNAAw8q+Vd
	oUqw==
X-Gm-Message-State: AMke39nKWep1+fnkwGaB8SIR4pcqJWwELcRlVHxBja2QNo64iWhRo707ANAvHHWrILR5sw==
X-Received: by 10.223.148.193 with SMTP id 59mr2504848wrr.199.1488293126280;
	Tue, 28 Feb 2017 06:45:26 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	b17sm2959424wma.33.2017.02.28.06.45.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 28 Feb 2017 06:45:25 -0800 (PST)
Message-ID: <1488293124.32665.9.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 28 Feb 2017 14:45:24 +0000
In-Reply-To: <CA+pXca3HpKqD9eyJS2MFiFLJTzsY5bQM3Wkk6U9Nu2f1xfNEnw@mail.gmail.com>
References: <CA+pXca3Whs=QnGPJA8KwOEx=jhJaLf7OTj7=6vbgFvCLf2n3gw@mail.gmail.com>
	<CAMKF1soDaDOWnROQZ3HgpFKBZGFVg4vDKOSNqx99Xgg1J4_qwg@mail.gmail.com>
	<CA+pXca3HpKqD9eyJS2MFiFLJTzsY5bQM3Wkk6U9Nu2f1xfNEnw@mail.gmail.com>
X-Mailer: Evolution 3.22.5-1 
Mime-Version: 1.0
Subject: Re: error while compiling external module in Krogoth branch
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
X-List-Received-Date: Tue, 28 Feb 2017 14:45:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-02-28 at 17:57 +0530, praveen vattipalli wrote:
> Hi,
> I am using krogoth branch of meta-altera.
> in meta/classes/kernel-yocto.bbclass file
> SRCTREECOVEREDTASKS += "do_kernel_configme do_validate_branches
> do_kernel_configcheck do_kernel_checkout do_shared_workdir do_fetch
> do_unpack do_patch"
> 
> if i remove "do_shared_workdir" . it worked. is this the right way.
> Thanks.

I think so, a similar change went into post-krogoth releases:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/classes/kernel-yocto.bbclass?id=1373b528964e47c2b0a154e4ca749e64f7f1a341

Cheers,
Andre'

> 
> On Tue, Feb 28, 2017 at 12:46 PM, Khem Raj <raj.khem@gmail.com> wrote:
> 
> > 
> > On Tue, Feb 21, 2017 at 6:31 AM praveen vattipalli <praveen.vatt@gmail.c
> > om>
> > wrote:
> > 
> > > Hi All,
> > > I am using poky-krogoth source and meta-altera layer. I am building
> > > kernel locally using externalsrc. while building external module i am
> > > getting error.
> > > 
> > 
> > Which branch of meta-altera are you using
> > 
> > > 
> > > 
> > > 
> > > ERROR: Task do_make_scripts in /home/praveenk/source/
> > > platform/build/../meta-skeleton/recipes-kernel/hello-mod/hello-
> > > mod_0.1.bb depends
> > > upon non-existent task do_shared_workdir in /home/praveenk/source/
> > > platform/build/../meta-altera/recipes-kernel/linux/linux-
> > > altera-ltsi_4.1.22.bb
> > > ERROR: Command execution failed: 1
> > > 
> > > linux.bb contains
> > > 
> > > LINUX_VERSION = "4.1.22"
> > > LINUX_VERSION_SUFFIX = "-ltsi"
> > > 
> > > include linux-altera.inc
> > > 
> > > SRC_URI = "file://${EXTERNALSRC}"
> > > 
> > > LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=
> > > d7810fab7487fb0aad327b76f1be7cd7"
> > > 
> > > BUILD_DEFCONFIG = "socfpga_defconfig"
> > > EXTERNALSRC = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files"
> > > EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-
> > > kernel/linux/files"
> > > 
> > > SRCREV_pn-${PN} = "${AUTOREV}"
> > > 
> > > S= "${EXTERNALSRC}"
> > > 
> > > hello-mod.bb  contains
> > > 
> > > SUMMARY = "Example of how to build an external Linux kernel module"
> > > LICENSE = "GPLv2"
> > > LIC_FILES_CHKSUM =
> > > "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e"
> > > 
> > > inherit module
> > > 
> > > SRC_URI = "file://Makefile \
> > >            file://hello.c \
> > >            file://COPYING \
> > >           "
> > > 
> > > 
> > > S = "${WORKDIR}"
> > > 
> > > # The inherit of module.bbclass will automatically name module
> > > packages
> > > with
> > > # "kernel-module-" prefix as required by the oe-core build
> > > environment.
> > > ~
> > > 
> > > 
> > > Am I missing anything?
> > > 
> > > Thanks,
> > > Praveen.
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> > > 

