Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47630E01372
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2012 19:55:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q0N3t20V016134
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 22 Jan 2012 19:55:02 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.23.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 22 Jan 2012 19:55:01 -0800
Message-ID: <4F1CDA14.70403@windriver.com>
Date: Sun, 22 Jan 2012 22:55:00 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Brian Hutchinson <b.hutchman@gmail.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<CAFZh4h9ka391e+wGasrwHTivP4ivOaqtiqwt1va3Lhh5OE7Luw@mail.gmail.com>
In-Reply-To: <CAFZh4h9ka391e+wGasrwHTivP4ivOaqtiqwt1va3Lhh5OE7Luw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Mon, 23 Jan 2012 03:55:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-01-22 10:33 PM, Brian Hutchinson wrote:
> OK, hate to bring this up again but I must be doing something wrong.
> My kernel changes don't appear to be getting picked up.  I thought it
> was OK before but then I did some real work on the kernel and that is
> when I realized something isn't right.
>
> To recap from the previous emails, I'm following the Appendix B
> example and trying to modify the kernel using a local git repo.
>
> In going over the steps again, it looks like I didn't checkout a local
> branch in the copy of the bare clone so I don't know if that is my
> problem or not.  When I make a copy of the bare clone I see my changes
> so my changes must be in the local git.  Here is what I did:
>
> . I checked out master.
> . I cd into poky and ran git clone
> git://git.yoctoproject.org/poky-extras poky-extras
> . Outside of poky I created a bare clone git clone linux-yocto-3.0.git
> linux-yocto-3.0
> . Inside linux-yocto-3.0 I think I checked out master.  I can't
> remember.  When I do git branch in the copy of the bare clone it says
> I'm on master
> . When I sourced to build, I followed the example on one of the videos
> and did "source poky/oe-init-build-env bb-test" so my conf dir is in
> bb-test directory.  Here is what conf bblayers.conf has
>
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION = "4"
>
> BBFILES ?= ""
> BBLAYERS ?= " \
>    /home/hutch/yocto/master/poky/meta \
>    /home/hutch/yocto/master/poky/meta-yocto \
>    /home/hutch/yocto/master/poky/poky-extras/meta-kernel-dev \
>    "
>
> . At this point, my copy of the bare clone is in /home/hutch/linux-yocto-3.0
> . So, my linux-yocto_3.0.bbappend file looks like this:
>
> FILESEXTRAPATHS := "${THISDIR}/${PN}"
>
> COMPATIBLE_MACHINE = ${MACHINE}
>
> # KMACHINE is the branch to build
> # KMACHINE_<MACHINE>  ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
>
> # KERNEL_FEATURES are features to be added to the kernel, and must
> # point to configurations stored on the 'meta' branch of the kernel
> # that is being built.
> # KERNEL_FEATURES ?=<FOO>
>
> # It is often nice to have a local clone of the kernel repos, to
> # allow patches to be staged, branches created, etc. Modify
>
> # KSRC_linux_yocto to point to your local clone as appropriate.
> KSRC_linux_yocto ?= /home/hutch/linux-yocto-3.0.git
> KMACHINE ?= "yocto/${LINUX_KERNEL_TYPE}/${KMACHINE}"
>
> SRC_URI = "git://${KSRC_linux_yocto};protocol=file;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
>
> KERNEL_REVISION_CHECKING=
> SRCREV=${AUTOREV}
> #BB_LOCALCOUNT_OVERRIDE = "1"
> LOCALCOUNT = "0"
>
> . I'm working with spidev and user space gpio so I needed to turn
> these things on in menuconfig so I ran:
>
> bitbake linux-yocto -c menuconfig and then made my changes.
>
> . Then I build the kernel with:
>
> bitbake linux-yocto -c compile -f
> bitbake linux-yocto
>
> My first clue that my changes were not getting picked up is I didn't
> have a /dev/spidev entry.  I found the board-omap3beagle.c file in tmp
> and it didn't have my changes.
>
> If I make another copy of my bare clone with git clone
> linux-yocto-3.0.git linux-yocto-3.0_test2 ... I see my changes.
>
> After I made my source changes I did:
>
> git add arch/arm/mach-omap2/board-omap3beagle.c
> git commit --signoff
> git status (nothing else checked out)
> git push origin master:master
>
> On the target, if I zcat config.gz, I see the changes I made to
> menuconfig but my source changes don't show up when I poke around in
> tmp.
>
> Not sure what went wrong but it doesn't appear to be picking up my
> kernel changes when I bitbake and I don't understand why.  Hopefully I
> provided enough info for someone to spot what I hosed up.

The beagle board would be building on the branch listed in the
meta-yocto layer.

KMACHINE_beagleboard = "yocto/standard/beagleboard"

Everything that you've done is fine, but pushing your changes to
master will ensure that they aren't checked out and built.

Cheers,

Bruce

>
> Regards,
>
> Brian
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


