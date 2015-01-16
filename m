Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D27DE00757; Thu, 15 Jan 2015 22:35:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp103.mer-nm.internl.net (smtp103.mer-nm.internl.net
	[217.149.192.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8795E004D6
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 22:35:41 -0800 (PST)
Received: from amavisd-new (mailscanner08.wrt-nm.internl.net [217.149.192.54])
	by smtp103.mer-nm.internl.net (Postfix) with ESMTP id 2A6A73F5C8
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 07:35:40 +0100 (CET)
Received: from smtp103.mer-nm.internl.net ([217.149.192.139])
	by amavisd-new (mailscanner08.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Fri, 16 Jan 2015 07:35:39 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp103.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 07:35:34 +0100 (CET)
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 16 Jan 2015 07:36:58 +0100
Message-ID: <54B8B135.9090508@topic.nl>
Date: Fri, 16 Jan 2015 07:35:33 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAMS2kBF4yfpHaa=WGuYJmq6_c3ApmH-p65b_=ozgwVwU3PT-jA@mail.gmail.com>
In-Reply-To: <CAMS2kBF4yfpHaa=WGuYJmq6_c3ApmH-p65b_=ozgwVwU3PT-jA@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: Yocto Kernel Module Workflow Question
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
X-List-Received-Date: Fri, 16 Jan 2015 06:35:45 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 15-01-15 22:51, Glenn Schmottlach wrote:
> I am developing a codec kernel driver/module for the BeagleBone Black
> and have a question about the recommended work-flow for developing
> this module in the context of the Yocto/poky environment. Currently
> I'm working with the Daisy release using the meta-ti layer and the
> linux-ti-staging_3.14 kernel sources.
>
> The codec driver, at this point, is just an very minimal
> implementation. It follows closely the instructions described here:
>
> http://processors.wiki.ti.com/index.php/Sitara_Linux_SDK_Audio_DAC_Exampl=
e
>
> The work involves a dummy (platform independent) ALSA driver for the
> DAC and then code modifications to the ALSA machine layer driver
> (sound/soc/davinci/davinci-evm) and the BeagleBone Black device tree
> to knit all of these pieces together.
>
> There seems to be two approaches for developing the codec driver. The
> first approach is to build the codec driver externally from the kernel
> sources (e.g. as described in working with "out-of-tree" modules in
> the Yocto Kernel Development Guide). With this model I can represent
> the codec driver as a separate Yocto/Bitbake recipe and simply include
> the resulting package in my target image.
>
> Unfortunately, the codec driver also requires changes to the kernel
> sources in the ALSA machine layer driver and device tree. My approach
> here is the create a linux-ti-staging_3.14.bbappend file that contains
> a series of patches to the kernel for the machine layer driver and
> device tree. In this scenario, the kernel sources do *not* explicitly
> know about this new codec since there are no changes to the
> sound/soc/codec Makefile and associated Kconfig's that describe the
> dependencies of the codec driver. This means of course that menuconfig
> won't show the codec as a build-able option. So the ALSA machine
> driver (davinci-evm) knows the name of the codec driver but nothing
> more other than it's association with a particular device tree
> configuration node (e.g. dtc_id). This may not be ideal for someone
> configuring the kernel since this codec doesn't appear as an option
> and the dependencies (as described in the Kconfig) are not clear.
>
> The work-around, albeit clumsy, is to bundle the changes to the
> Makefile/Kconfig's and the codec source itself as a set of patches
> referenced from the linux-ti-staging_3.14.bbappend file. Now building
> the kernel modules also builds the codec (e.g. no separate codec
> Bitbake recipe is required).  This works but now my codec sources
> exist as a "patch" and stored directly in the recipe. Assuming I want
> to do iterative development with this module, every change to the
> codec sources require me to update the codec "patch". Also, the codec
> source must then effectively be version-controlled within the
> *.bbappend recipe itself (as a *.patch file or possibly as a naked
> codec.c that is copied into the destination kernel sources during the
> patch step of bitbake).
>
> Ideally, I'd like to maintain my codec driver outside of the kernel
> tree (since it is not dependent on the BeagleBone Black) and just
> maintain the *.bbappend to make the necessary platform-specific
> machine-layer/device-tree patches. I want the codec to be built with
> the kernel sources but not treated as a Yocto "out-of-tree" module. Is
> there a way for the *.bbappend to fetch the codec sources from another
> repo and place them in the kernel sound/soc/codecs directory before
> the kernel is built? Can anyone suggest a better/alternative work-flow
> that accommodates keeping the codec sources in a separate repo (much
> like the "out-of-tree" modules) while allowing seamless integration
> into the kernel sources. Fundamentally, I don't want the codec sources
> to be version controlled directly *inside* the *.bbappend recipe as
> either a patch or as a raw source file. Is there an alternative
> work-flow that works better with Yocto?
>

Obvious alternative is to fork the kernel and manage it in your own repo.=20
Using git "rebase" you can keep your changes on top, and git format-patch c=
an=20
generate patches for when you want your recipe to go out into the big bad w=
orld.

The kernel source dir is a git repository, so you can us that as your=20
repository for making changes too. Instead of pushing your work, use git=20
format-patch to output the patches (into the bitbake recipe path). When you=
=20
build the kernel, the git repo will contain your patches as commits.




Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Systems
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: (+31) (0) 499 33 69 79
Telefax:  (+31) (0) 499 33 69 70
E-mail: mike.looijmans@topic.nl
Website: www.topic.nl

Please consider the environment before printing this e-mail

Topic zoekt gedreven (embedded) software specialisten!
http://topic.nl/vacatures/topic-zoekt-software-engineers/


