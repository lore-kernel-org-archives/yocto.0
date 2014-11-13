Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7664E008C3; Thu, 13 Nov 2014 12:43:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 605DFE00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 12:43:01 -0800 (PST)
Received: by mail-ie0-f180.google.com with SMTP id rl12so1085480iec.25
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 12:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=vJf2PB6xlhq7aiY61XKQXE28bF9vYHr5fboJhmq+yJI=;
	b=L6Aw2NtBhqnpWcuE50u0P+OAZK5BUv5nEwE3rHA4KY41vDSx4dtM5OVFIpuXHxIYED
	EEHrIhxADH2QtOVYhsY+1u0BrtjJhM4Ee7bJmBgi8ckz7IWB0PVelI5PjjExsivjE239
	Zh9mnyDSB6zOF9EMa+XNLOMAgJ4M9g79FK1AQh21mxs2xLdrvVhMIRLYI/uOzJ0+xc4m
	Y5ug+LgQPHMXkOxgv4FcwKdJj63smbBLEa4zSp+DeZTMvbfEdswnsTr8IDg2TC63HfIV
	tDnRbpJ/dAns/+PRYEx390ia24fcBc+OjVTaf2W9LoXwqr46X6Y2zIBHTYXVBwpL9qd7
	dHvg==
X-Received: by 10.107.11.129 with SMTP id 1mr5419080iol.18.1415911380817;
	Thu, 13 Nov 2014 12:43:00 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id q3sm8453057ioi.22.2014.11.13.12.42.59
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 13 Nov 2014 12:43:00 -0800 (PST)
Message-ID: <546517D3.4030107@gmail.com>
Date: Thu, 13 Nov 2014 15:42:59 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Jim Rafert <jimr@spectralogic.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0CDF3F393A@reactor.sldomain.com>
Subject: Re: New recipe for toolchain fails install, "ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
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
X-List-Received-Date: Thu, 13 Nov 2014 20:43:04 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hey Jim,
I had a stressful day with other things so I would like some time to unwind but I will try and help out 
later if that's OK.
Nick

On 14-11-13 03:13 PM, Jim Rafert wrote:
> Hi folks,
> 
> I'm trying to put together a recipe to include llvm and clang in the yocto toolchain.  My goal is to have the clang compiler available for application development.  I do not intend to compile the kernel or OS image with clang.  I have created a recipe and placed it in one of my added layers as follows:
> 
> LICENSE = "NCSA"
> PR = "r0"
> LIC_FILES_CHKSUM = "file://LICENSE.TXT;md5=47e311aa9caedd1b3abf098bd7814d1d"
> 
> SRC_URI = "file://llvm-3.5.0.tar.gz \
>           "
> SRC_URI[md5sum] = "e2dd127722ffb305c981d2a02687b4ff"
> SRC_URI[sha256sum] = "1badb762129feb7ced9484a7969c88cebab9b01b80b83002fc9690933cd7d0e0"
> 
> EXTRA_OECONF = "--config=Linux-yocto "
> 
> INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> 
> INSANE_SKIP_${PN} = "already-stripped"
> 
> #FILES_${PN} = "${libdir}/* /usr/bin "
> inherit autotools
> 
> do_configure () {
>         ./configure --enable-optimized --enable-targets=x86,x86_64 --host=x86_64-unknown-linux-gnu --build=x86_64-unknown-linux-gnu
> }
> 
> The recipe is copied from another recipe of mine that builds the POCO libraries, so INSANE_SKIP_${PN} = "already-stripped" may not actually be necessary, but was left in until I got the recipe running.
> 
> I add the recipe to the toolchain by including it in TOOLCHAIN_HOST_TASK from my local.conf, thus:
> "TOOLCHAIN_HOST_TASK += " llvm "
> 
> This gets the source unpacked, configures, and compiles, but do_install fails with several instances of this message: "ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be preloaded: ignored."
> 
> Even though it doesn't install, the build products are in the work directory, so I examined them.
> 
> [jimr@krusty llvm-3.5.0]$ file /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang
> /home/jimr/tera/yocto/daisy/build/tmp/work/i586-poky-linux/llvm/3.5.0-r0/llvm-3.5.0/Release+Asserts/bin/clang: ELF 32-bit LSB executable, Intel 80386, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.16, BuildID[sha1]=0x96bd97125551d23e94bcbbc4e68b69b8db36def9, not stripped
> 
> I was hoping that this would be built for the architecture specified in local.conf for the toolchain, which is: SDKMACHINE ?= "x86_64"
> 
> I think that this architecture mismatch may be the root of the problem with the LD_PRELOAD of pseudo.  I also would expect that the work directory would be under x86_64-nativesdk-pokysdk-linux or x86_64-pokysdk-linux rather than i586-poky-linux.
> 
> Do any of you Yocto/OE/bitbake experts out there know what I might be doing wrong, or not doing, that causes this problem?
> 
> I have attached the output of the bitbake command, my local.conf file, the recipe, and config.log and config.status from the work directory for your viewing pleasure.
> 
> Any help with this would be greatly appreciated.
> 
> -Jim-
> 
> 
> 

