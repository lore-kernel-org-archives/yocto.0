Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88073E00BB7; Thu, 14 Feb 2019 08:27:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [213.80.101.71 listed in list.dnswl.org]
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
	[213.80.101.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1834E00708
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 08:27:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id E5D1F3F6C7
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 17:27:37 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
	by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id dtIwHTS6Mc8m for <yocto@yoctoproject.org>;
	Thu, 14 Feb 2019 17:27:37 +0100 (CET)
Received: from [10.175.196.210] (h-169-62.A454.priv.bahnhof.se [37.123.169.62])
	(Authenticated sender: mb782575)
	by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id ED8B13F4CF
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 17:27:36 +0100 (CET)
To: yocto@yoctoproject.org
References: <CAHSUxjS-CzSx+kTeV2=cFf35ACRhoU03GTMbv3ZcTGkEu38qZQ@mail.gmail.com>
	<CANNYZj88JzTx_ShdnqKoPn2mPpLhqdkBOuDBoYF2MzS6ODt=KA@mail.gmail.com>
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <bd0adb4e-89df-f6be-61b2-ef326df38cd5@emagii.com>
Date: Thu, 14 Feb 2019 17:27:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj88JzTx_ShdnqKoPn2mPpLhqdkBOuDBoYF2MzS6ODt=KA@mail.gmail.com>
Subject: Re: Managing multiple builds
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
X-List-Received-Date: Thu, 14 Feb 2019 16:27:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: sv
Content-Transfer-Encoding: 7bit

Den 2019-02-14 kl. 10:00, skrev Alexander Kanavin:
> On Thu, 14 Feb 2019 at 01:35, Timothy Froehlich <tfroehlich@archsys.io> wrote:
>> Hi, I've been struggling a bit with this question. I want to use Yocto to build two+ products with separate dev/prod images for each (dev including debug-tweaks, etc.). I've ruled out separate image recipes because my dev builds need ENABLE_UART on my RaspberryPi and that needs to be set at the conf level (I've got it set conditionally in my base dist conf). Multiconfig looked promising, but I'm not happy about how long the parsing takes to start a build. "--postread" looked nice, but I've barely seen it mentioned so I'm worried that it's not well supported.
>>
> 
> Which recipes use the ENABLE_UART setting? You might want to write two
> variants of those, and include them into images accordingly.
> 
> Alex
> 

Some guys I know solved the problem a little bit differently, and they 
did not mind to share.
I created a meta-layer with that and some other ideas.

* https://github.com/emagii/meta-map-sheriffco

An example recipe is:
==================================
SUMMARY = ""
DESCRIPTION = ""

inherit license-mit

SRC_URI = " \
	file://class/class-recipe.c \
	file://class/Makefile \
"

EXTRA_OEMAKE_class-development = 'CFLAGS="${CFLAGS} -DDEVELOPMENT"'
EXTRA_OEMAKE_class-production  = 'CFLAGS="${CFLAGS} -DPRODUCTION"'
EXTRA_OEMAKE_class-release     = 'CFLAGS="${CFLAGS} -DRELEASE"'

do_install-class-development () {
	install	-d	${D}${bindir}
	install	-m 0755	class	${D}${bindir}/development
}

do_install-class-production () {
	install	-d	${D}${bindir}
	install	-m 0755	class	${D}${bindir}/production
}

do_install-class-release () {
	install	-d	${D}${bindir}
	install	-m 0755	class	${D}${bindir}/release
}

BBCLASSEXTEND = "development production release"
==================================
You now have the same recipe which builds four package variants.

<package>,
<package>-development,
<package>-production,
<package>-release,

The base package is not included in any image.
In the development image, you install the <package>-development and so on.
==================================
Three bbclasses are used, one for each special package.

Here is the development.bbclass
==================================
# Class for use in BBCLASSEXTEND to make it easier to have a single 
recipe that
# build and generate packages separately for development and normal images.
#
# Usage:
# BBCLASSEXTEND = "development"

CLASSOVERRIDE .= ":class-development"

python development_virtclass_handler () {
     # Do nothing if this is inherited, as it's for BBCLASSEXTEND
     if "development" not in (d.getVar('BBCLASSEXTEND') or ""):
         bb.error("Don't inherit development, use BBCLASSEXTEND")
         return

     # Restore BPN
     bpn = d.getVar('BPN')
     newbpn = bpn.replace('-development', '')
     d.setVar('BPN', newbpn)

     # Use default FILESPATH searching for patches and files
     filespath = d.getVar('FILESPATH')
     newfilespath = filespath.replace('-development', '')
     d.setVar('FILESPATH', newfilespath)
}

addhandler development_virtclass_handler
development_virtclass_handler[eventmask] = "bb.event.RecipePreFinalise"

==================================

-- 
Best Regards
Ulf Samuelsson

