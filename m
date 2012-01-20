Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA61E00307
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 09:07:49 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q0KH7m2c016731
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2012 09:07:48 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.234) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 20 Jan 2012 09:07:48 -0800
Message-ID: <4F199F63.6090209@windriver.com>
Date: Fri, 20 Jan 2012 11:07:47 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAC+thW1YcPzTJLLxXWcko3kwkZJFiT7tFrdX+iC5tZ-uBTEdtw@mail.gmail.com>
In-Reply-To: <CAC+thW1YcPzTJLLxXWcko3kwkZJFiT7tFrdX+iC5tZ-uBTEdtw@mail.gmail.com>
Subject: Re: i486sx machine porting from oe-classic
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 20 Jan 2012 17:07:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/20/12 8:07 AM, Andrea Galbusera wrote:
> Hi,
>
> In oe-classic there used to be a machine configuration for an i486sx
> based machine called vortex86sx. In the past I was successful in
> building a running image for such a target. Since I'd like to make a
> new system based on vortex, my goal is to leverage the whole Yocto
> Project infrastructure and port that old configuration to a BSP layer.
> This will save me a lot of time in supporting developers with SDKs and
> so.
>
> Since I could not find any BSP based on hardware older than i586 in
> recent Yocto trees, I'm concerned about this. Do you know of any
> obstacle in doing such a port? I'm mainly interested in building
> images with no graphics for that target: core-image-minimal is a
> reasonable reference for me.
>
> My plan was to initially lay out a new BSP by following guidelines
> from Development Manual and BSP Guide. Then, what I suspect to be a
> little trickier for my expertise, is the porting of the original
> tune-i486sx.inc file to the current Yocto infrastructure. Is there any
> document I can leverage to map the variables defined in the
> oe-classic's syntax to the current ones for such a machine
> configuration file?

A few things you will need.. a tune file for the CPU, and a tune file for the 
machine/bsp... and you'll have to make sure that eglibc/Linux can still run on 
that machine.

I know a while back some changes were made to the GNU toolchain, include gcc to 
change default optimization levels and such, I don't know if this negatively 
impacted the ability to generate i486 compatible code.

> The original i486 tune file was defining the following:
>
> TARGET_ARCH = "i486"
> TARGET_CC_ARCH = "-march=i486"
> PACKAGE_EXTRA_ARCHS = "486sx"
> BASE_PACKAGE_ARCH = "486sx"
> FEED_ARCH = "${BASE_PACKAGE_ARCH}"
>
> Are they still valid variables? Do I need any more?

Variables have changed.  The following is likely what you want (not tested of 
course) meta/conf/machine/include/tune-i486.inc (based off of tune-i586):

DEFAULTTUNE ?= "i486"
TUNE_PKGARCH_TMP = "${@bb.utils.contains("TUNE_FEATURES", "m32", "x86", 
"x86_64", d)}"
TUNE_PKGARCH ?= "${@bb.utils.contains("TUNE_FEATURES", "i486", "i486", 
TUNE_PKGARCH_TMP, d)}"

require conf/machine/include/ia32/arch-ia32.inc

# Extra tune features
TUNEVALID[i486] = "Enable i486 specific processor optimizations"
TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "i486", "-march=i486", "", 
d)}"

# Extra tune selections
AVAILTUNES += "i486"
TUNE_FEATURES_tune-i486 ?= "${TUNE_FEATURES_tune-x86} i486"
BASE_LIB_tune-i486 ?= "lib"
PACKAGE_EXTRA_ARCHS_tune-i486 = "${PACKAGE_EXTRA_ARCHS_tune-x86} i386 i486"

--Mark

> Thank you in advance. Regards,
> Andrea
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


