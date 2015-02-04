Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55261E0083A; Tue,  3 Feb 2015 17:31:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2402EE0076F
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 17:30:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t141UtBU005434
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 3 Feb 2015 17:30:56 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Tue, 3 Feb 2015 17:30:54 -0800
Message-ID: <54D1764D.6080708@windriver.com>
Date: Tue, 3 Feb 2015 19:30:53 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?windows-1252?Q?Teresa_G=E1mez?= <t.gamez@phytec.de>,
	<yocto@yoctoproject.org>
References: <1422524145.4319.25.camel@lws-gamez.phytec.de>
In-Reply-To: <1422524145.4319.25.camel@lws-gamez.phytec.de>
Subject: Re: Compile issue with 1.7 SDK and hf
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
X-List-Received-Date: Wed, 04 Feb 2015 01:31:02 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 1/29/15 3:35 AM, Teresa Gámez wrote:
> Hello,
> 
> I have installed a SDK based on yocto 1.7 with
> DEFAULTTUNE ?="cortexa8thf-neon" set. 
> 
> I have tried to compile the barebox bootloader with this
> SDK like this:
> 
> source /opt/poky/1.7/environment-setup-cortexa8t2hf-vfp-neon-poky-linux-gnueabi
> unset LDFLAGS
> make am335x_defconfig
> Also enabled a barebox target tool in menuconfig: BAREBOXENV_TARGET 
> make

It looks like the tool you are trying to build is not using the full $CC,
otherwise the necessary ABI and related hardfloat parameters would be passed..
(alternatively if the component is adding it's own soft-float ABI values that
could also result in the failure.)

Generally the hard float toolchain does not have all of the code in place to
produce a soft-float binary as the executables have a different (incompatible) ABI.

> And see following compile error:
> 
> ..
>   CC      scripts/bareboxenv-target
> In file included
> from /opt/poky/1.7/sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/usr/include/features.h:389:0,
> 
> from /opt/poky/1.7/sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/usr/include/stdio.h:27,
>                  from scripts/bareboxenv.c:20:
> /opt/poky/1.7/sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/usr/include/gnu/stubs.h:7:29: fatal error: gnu/stubs-soft.h: No such file or directory
>  # include <gnu/stubs-soft.h>
>                             ^
> compilation terminated.
> 
> I have tried the same with other non yocto hf toolchains. Compilation
> worked there. I wonder if this is a toolchain issue or more a barebox
> issue.

I suspect in this case it's barebox.  If you turn on more explicit (verbose)
logging you may see the error in the calls.

--Mark

> I also noticed:
> 
> arm-poky-linux-gnueabi-gcc -dM -E - < /dev/null | grep ARM_PCS
> #define __ARM_PCS 1
> 
> 
>  arm-poky-linux-gnueabi-gcc -mfloat-abi=hard -dM -E - < /dev/null | grep
> ARM_PCS
> #define __ARM_PCS_VFP 1
> 
> Other hf toolchains have __ARM_PCS_VFP 1 regardless if -mfloat-abi
> parameter set or not. I have no clue what the right behaviour should be.
> Can someone explain?
> 
> Regards
> Teresa
> 
> 
> 


