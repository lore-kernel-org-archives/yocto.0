Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 699E0E00BDF; Thu, 12 Jun 2014 06:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E0BFE00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 06:47:06 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id ED82627E02B
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 13:47:02 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id htls_WaD33OX for <yocto@yoctoproject.org>;
	Thu, 12 Jun 2014 13:47:02 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 2575E27E02A
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 13:47:02 +0000 (UTC)
Message-ID: <5399AF51.1030605@dynamicdevices.co.uk>
Date: Thu, 12 Jun 2014 14:46:57 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Linux Yocto style kernel errors with no config fragments
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
X-List-Received-Date: Thu, 12 Jun 2014 13:47:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I was taking a quick look at converting the meta-raspberrypi kernel
recipes to be linux-yocto style, to provide config frag support.

I'm working with poky master, referencing linux-yocto-custom.bb in
meta-skeleton

This seems to be working as far as it goes, but I get an error when
there are no configuration fragments supplied on the SRC_URI.

| DEBUG: Executing shell function do_kernel_configme
| [INFO] doing kernel configme
| [INFO] Configuring target/machine combo: "standard/raspberrypi"
| [INFO] collecting configs in ./.meta/meta-series
| cat: .meta/cfg/standard/raspberrypi/config_frag.txt: No such file or
directory
| cat: .meta/cfg/standard/raspberrypi/config_frag.txt: No such file or
directory
| mv: cannot stat
`[.....]/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.12.21+gitcb53ea88f75180cc1ba74f7f197c8e3fd4f47cfe-r0/linux-raspberrypi-standard-build/.tmp.config*':
No such file or directory
| creation of pre-processed config data failed
| config of "standard/raspberrypi" failed

When I add an empty file://dummy.cfg file to the SRC_URI then I can
build successfully.

When I add a dummy option CONFIG_DUMMY=y into that fragment file
do_kernel_configcheck correctly flags up that this is an unknown option
for the kernel so it seems to be pulled in ok.

Can anybody advise?

Thanks,

Alex


