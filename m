Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 78C16E013CB
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2013 17:49:25 -0700 (PDT)
Received: (qmail 9707 invoked by uid 1003); 10 Jul 2013 00:49:24 -0000
Received: from unknown (HELO ?192.168.1.122?)
	(philip@opensdr.com@108.44.84.224)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	10 Jul 2013 00:49:24 -0000
Message-ID: <51DCAF93.2040703@balister.org>
Date: Tue, 09 Jul 2013 20:49:23 -0400
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nyMFGQXZ3w5wPrpJTb+aEQNXO_eqp_5aRvB_dyXmCj2Dw@mail.gmail.com>
In-Reply-To: <CANwz6nyMFGQXZ3w5wPrpJTb+aEQNXO_eqp_5aRvB_dyXmCj2Dw@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky and gnuradio
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
X-List-Received-Date: Wed, 10 Jul 2013 00:49:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

It is not clear from your email if the failure is only with dylan. Does
one work and another build fail?

Can you wget the url it is trying to fetch?

Philip

On 07/09/2013 08:38 PM, Edward Vidal wrote:
> Hello,
> What is the best method to you the dylan branch of meta-oe with an gnuradio
> from meta-oe           =
> "(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9"?
> 
> Any and all help will be appreciated.
> 
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.1"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> meta-oe           = "dylan:13ae5105ee30410136beeae66ec41ee4a8a2e2b0"
> meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
> meta-yocto-bsp    = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> 
> The above build gets the following errors.
> 
> ERROR: Fetcher failure for URL: '
> http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz'.
> Checksum mismatch!
> ERROR: Function failed: Fetcher failure for URL: '
> http://files.ettus.com/binaries/uhd_stable/releases/uhd_003.005.002-release/uhd-images_003.005.002-release.tar.gz'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/vidal/POKY/build070913_dylan/poky/build/tmp/work/all-poky-linux/uhd-firmware/1_003.005.002-r0/temp/log.do_fetch.28656
> ERROR: Task 3499
> (/home/vidal/POKY/build070913_dylan/poky/meta-oe/meta-oe/recipes-connectivity/uhd/
> uhd-firmware_003.005.002.bb, do_fetch) failed with exit code '1'
> 
> I went back to a meta-oe branch that I had built for the beagleboard,
> beaglebone, and pandaboard.
> 
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4.1"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> meta-oe           = "(nobranch):ed84e64d22400595b68da4e75b48ab7ecc342aa9"
> meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
> meta-yocto-bsp    = "dylan:64273e53f2789d2ea8393fc80909ac7086f168a7"
> 
> Thanks
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

