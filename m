Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06AC0E00A0A; Fri,  5 Oct 2018 08:47:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB94E0053F
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 08:47:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w95FkN7x001290
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 5 Oct 2018 08:46:33 -0700
Received: from server.local (147.11.119.71) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 5 Oct 2018 08:46:12 -0700
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
	<16551d421c7747ab9ae52856a668d750@sakuraus.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <a3fc06bf-e202-dec1-8618-f7f89e1c8a93@windriver.com>
Date: Fri, 5 Oct 2018 11:46:11 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <16551d421c7747ab9ae52856a668d750@sakuraus.com>
Subject: Re: changing kernel config in Morty build
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
X-List-Received-Date: Fri, 05 Oct 2018 15:47:51 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:
> Does anybody else have any idea about what is going on here?
> 

I can't tell from the information provided.

But if you can send me a set of layers to clone, and
configure locally, I can figure it out.

Cheers,

Bruce

> Yocto is seeing my request to change the kernel config, suggests that 
> the change is acceptable, but then doesn't make it.
> 
> Thanks in advance for any insight,
> 
> Greg
> 
> **
> 
> *From:*Greg Wilson-Lindberg
> *Sent:* Tuesday, October 02, 2018 02:22 PM
> *To:* yocto@yoctoproject.org
> *Subject:* changing kernel config in Morty build
> 
> I'm trying to change some kernel configuration flags in a 
> raspberrypi3 Morty build and I get warnings that it isn't working.
> 
> Here is the build info and warnings:
> 
> Build Configuration:
> 
> BB_VERSION        = "1.32.0"
> 
> BUILD_SYS         = "x86_64-linux"
> 
> NATIVELSBSTRING   = "universal"
> 
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> 
> MACHINE           = "raspberrypi3"
> 
> DISTRO            = "b2qt"
> 
> DISTRO_VERSION    = "2.2.4"
> 
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 
> callconvention-hard cortexa7"
> 
> TARGET_FPU        = "hard"
> 
> SDKMACHINE        = "x86_64"
> 
> meta
> 
> meta-poky         = "HEAD:df76669bdd70aa0d903c4211dde731221c7e756d"
> 
> meta-raspberrypi  = "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"
> 
> meta-oe
> 
> meta-python
> 
> meta-networking
> 
> meta-initramfs
> 
> meta-multimedia   = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> 
> meta-boot2qt
> 
> meta-raspberrypi-extras = "<unknown>:<unknown>"
> 
> meta-mingw        = "HEAD:1c2e155111dce94423cc227ea69f7f50f316c78e"
> 
> meta-qt5          = "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d"
> 
> meta-sakura       = "<unknown>:<unknown>"
> 
> Initialising tasks: 100% 
> |#############################################################################################################################################| 
> Time: 0:00:00
> 
> NOTE: Executing SetScene Tasks
> 
> NOTE: Executing RunQueue Tasks
> 
> WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0 
> do_kernel_configcheck: [kernel config]: specified values did not make it 
> into the kernel's final configuration:
> 
> ---------- CONFIG_SND_SOC_MAX9768 -----------------
> 
> Config: CONFIG_SND_SOC_MAX9768
> 
> From: 
> /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> 
> Requested value:  CONFIG_SND_SOC_MAX9768=y
> 
> Actual value:
> 
> Config 'SND_SOC_MAX9768' has the following conditionals:
> 
> Dependency values are:
> 
> ---------- CONFIG_MAX1363 -----------------
> 
> Config: CONFIG_MAX1363
> 
> From: 
> /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> 
> Requested value:  CONFIG_MAX1363=m
> 
> Actual value:     # CONFIG_MAX1363 is not set
> 
> Config 'MAX1363' has the following conditionals:
> 
>    I2C (value: "y")
> 
> Dependency values are:
> 
>    I2C [y]
> 
> ---------- CONFIG_CAN_EMS_USB -----------------
> 
> Config: CONFIG_CAN_EMS_USB
> 
> From: 
> /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> 
> Requested value:  CONFIG_CAN_EMS_USB=m
> 
> Actual value:     # CONFIG_CAN_EMS_USB is not set
> 
> Config 'CAN_EMS_USB' has the following conditionals:
> 
>    (none)
> 
> Dependency values are:
> 
> Here is my
> 
> linux-raspberrypi_4.4.bbappend for the kernel:
> 
> # Scribe additions to Kernel configuration
> 
> FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/files:"
> 
> FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/${PN}:"
> 
> SRC_URI += "file://Scribe.scc <file:///%5C%5CScribe.scc>"
> 
> SRC_URI += "file://mcp251x.c.patch <file:///%5C%5Cmcp251x.c.patch>"
> 
> The Scribe.scc file:
> 
> # Scribe additions to kernel configuration
> 
> kconf hardware Scribe.cfg
> 
> And the Scribe.cfg file:
> 
> # Scribe additions to kernel configuration
> 
> # Enable MAX9768
> 
> #CONFIG_SOC_ALL_CODECS=m
> 
> #CONFIG_COMPILE_TEST=y
> 
> CONFIG_SND_SOC_MAX9768=y
> 
> # Enable MAX11606
> 
> #IIO=y
> 
> CONFIG_MAX1363=m
> 
> # Enable EMS CPC-USB
> 
> CONFIG_CAN_EMS_USB=m
> 
> Here is my directory tree:
> 
> Qt-5.9.6
> 
>       Yocto-mirror                                                     # 
> Yocto build mirror
> 
>       Yocto-build-RPi3                                              # 
> Yocto build root
> 
>                  build-raspberrypi                                   # 
> build directory
> 
>                  sources                                                
>   # yocto sources
> 
>                         meta-sakura                                   # 
> our recipes
> 
>                                 recipes-kernel                        # 
> directory for kernel changes
> 
>                                         linux                            
>     # directory that contains linux-raspberrypi_4.4.bbappend
> 
>                                                files                    
>       # directory that contains .scc & .cfg files
> 
> As seen above none of the changes are accepted although there is nothing 
> that blocks any of them.
> 
> Any help understanding this would be greatly appreciated.
> 
> Regards,
> 
> Greg Wilson-Lindberg
> 
> 
> 


