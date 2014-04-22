Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94C3EE00C02
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 02:33:06 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s3M9UvNZ032591; Tue, 22 Apr 2014 10:30:59 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id fnJEB-8sF0ig; Tue, 22 Apr 2014 10:30:59 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s3M9Uhrc032570
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 22 Apr 2014 10:30:44 +0100
Message-ID: <1398159037.16672.30.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
Date: Tue, 22 Apr 2014 10:30:37 +0100
In-Reply-To: <F7680723A1CA6840825A59020FA77064010BD649@sdexmbx1srv.skidata.net>
References: <F7680723A1CA6840825A59020FA77064010BC709@sdexmbx1srv.skidata.net>
	<1398154982.16672.25.camel@ted>
	<F7680723A1CA6840825A59020FA77064010BD649@sdexmbx1srv.skidata.net>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "Yocto Project Discussion ML \(yocto@yoctoproject.org\)"
	<yocto@yoctoproject.org>
Subject: Re: Problem with own kernel recipe on Dora
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
X-List-Received-Date: Tue, 22 Apr 2014 09:33:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-04-22 at 09:08 +0000, Richard Leitner - SKIDATA wrote:
> > -----Original Message-----
> > From: Richard Purdie [mailto:richard.purdie@linuxfoundation.org]
> > Sent: Tuesday, April 22, 2014 10:23 AM
> > To: Richard Leitner - SKIDATA
> > Cc: Yocto Project Discussion ML (yocto@yoctoproject.org)
> > Subject: Re: [yocto] Problem with own kernel recipe on Dora
> > 
> > On Tue, 2014-04-22 at 07:52 +0000, Richard Leitner - SKIDATA wrote:
> > > Hi Yocto-Community,
> > > as the subject already says I've a problem with my kernel recipe after the
> > "migration" from the Dylan to the Dora (10.0.1) branch.
> > > I've tried the 10.0.1 release tag as well as the current dora master
> > (50e9ccb2aff7b9f9dca4fda99a6832c60f64de3b).
> > >
> > > The kernel recipe I'm using is derived from the skeleton:
> > > DESCRIPTION = "Linux Kernel"
> > > SECTION = "kernel"
> > > LICENSE = "GPLv2"
> > > LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> > > inherit kernel
> > > KSRC = "/home/leri/VCS/git/linux"
> > > KBRANCH = "master"
> > > SRC_URI =
> > "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel;nocheckout=1"
> > > SRCREV = "2014_03_07"
> > > PR = "sd_15.2"
> > > LINUX_VERSION = "${PV}"
> > > LINUX_VERSION_EXTENSION = "-${PR}+${SRCREV}"
> > > COMPATIBLE_MACHINE = "skidata-harmony|smartcpu"
> > > KERNEL_IMAGETYPE = "uImage"
> > > SRC_URI += "file://defconfig"
> > > require recipes-kernel/linux/linux-yocto.inc
> > >
> > >
> > > This recipe was working well with the Dylan branch and following changes:
> > > -SRC_URI =
> > "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel;nocheckout=1"
> > > +SRC_URI = "git://${KSRC};protocol=file;branch=${KBRANCH};name=kernel"
> > > +S = "${WORKDIR}/git"
> > >
> > >
> > > When compiled with the dora branch the kernel hangs at "Starting kernel..." and
> > doesn't start:
> > > ## Booting kernel from Legacy Image at 00000000 ...
> > >    Image Name:   Linux-3.1.10-sd_15.2
> > >    Image Type:   ARM Linux Kernel Image (uncompressed)
> > >    Data Size:    3181616 Bytes = 3 MiB
> > >    Load Address: 00008000
> > >    Entry Point:  00008000
> > >    Verifying Checksum ... OK
> > >    Loading Kernel Image ... OK
> > > OK
> > >
> > > Starting kernel ...
> > >
> > >
> > > I've already looked through the migration notes in the manual but I'm unable to find
> > any hints...
> > > Are there any ideas why the kernel doesn't start with the Dora branch?
> > 
> > We saw an issue recently on beaglebone that looked very like this. It turned out the
> > load address for the kernel was conflicting in memory with the device tree binary.
> 
> Do you mean that the bootloader was loading the device tree binary into the load address of the kernel?

The kernel was large enough it was overwriting the device tree data.

Cheers,

Richard



