Return-Path: <f@rtfs.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 408DBE00B0B; Wed, 19 Sep 2018 13:07:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.rsk6.de (h1435773.stratoserver.net [85.214.108.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3FECE006C7
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 13:07:18 -0700 (PDT)
Received: from yoga (ipbcc04aa7.dynamic.kabel-deutschland.de [188.192.74.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
	bits)) (No client certificate requested)
	by mail.rsk6.de (Postfix) with ESMTPSA id E53852526907;
	Wed, 19 Sep 2018 22:07:16 +0200 (CEST)
Message-ID: <1537387636.12258.27.camel@rtfs.org>
From: Fabian Sturm <f@rtfs.org>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Sep 2018 22:07:16 +0200
In-Reply-To: <CAJTo0LYzacRps6JP9bE6Jqu88+cUhXJp4K09z-EZ0VADX3-acw@mail.gmail.com>
References: <1537304423.12258.18.camel@rtfs.org>
	<CANNYZj8nvG3ty5J0vrapSYK+=VQauNQF71dLnbY8gZAfPf19fg@mail.gmail.com>
	<1537377180.12258.22.camel@rtfs.org>
	<CAJTo0LYzacRps6JP9bE6Jqu88+cUhXJp4K09z-EZ0VADX3-acw@mail.gmail.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Native yocto compile in docker container without cross compile
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
X-List-Received-Date: Wed, 19 Sep 2018 20:07:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hmm I guess I was way overthinking this. The idea seems to just create
a secong image definition like this it seems:


core-image-minimal-dev.bb:

    require core-image-minimal.bb

    DESCRIPTION = "A small image just capable of allowing a device to
    boot and \
    is suitable for development work."

    IMAGE_FEATURES += "dev-pkgs tools-sdk"
    IMAGE_INSTALL += "cmake"

dev-pkg: selects e.g. all header files for the image packages
tools-sdk: install the toolchain packages into the image
IMAGE_INSTALL += "cmake": here I define any other development tool that
I need in my image

I this correct? At least it seems the created image contains everything
I need!

Kind regards,
Fabian


Am Mittwoch, den 19.09.2018, 18:21 +0100 schrieb Burton, Ross:
> If you're targeting just x86 then you can build an image with the
> tools-sdk IMAGE_FEATURE defined, and use something like systemd-
> nspawn
> (insert your preferred container system) to get a shell in it.
> 
> Ross


