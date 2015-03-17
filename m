Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B16AE008EA; Tue, 17 Mar 2015 10:59:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6C52E00753
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 10:59:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 167E527E1CD
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 17:59:36 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id hZmXW1jlSnpe for <yocto@yoctoproject.org>;
	Tue, 17 Mar 2015 17:59:35 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-76-237.w109-208.abo.wanadoo.fr
	[109.208.171.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 60ED127E1BC
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 17:59:35 +0000 (UTC)
Message-ID: <55086B23.1030203@dynamicdevices.co.uk>
Date: Tue, 17 Mar 2015 18:57:55 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: Kernel configuration fragments and defconfig from kernel source tree, not meta layer file
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
X-List-Received-Date: Tue, 17 Mar 2015 17:59:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I've been looking into a request to have Yocto kernel configuration
fragment support in meta-raspberrypi with a defconfig which is pulled
from the kernel source tree for the configured machine.

My understanding is that Yocto expects the defconfig file to be supplied
in the meta-layer and then configured with SRC_URI += "file://defconfig"

We'd prefer not to maintain copies of defconfigs, instead using the true
default configuration from the kernel tree and allowing users to add
their own .cfg fragments to the SRC_URI via, say, .bbappends.

It's easy enough to _prepend() a function to copy the appropriate
defconfig from the kernel source to the working directory, but I am
having a problem as do_patch() in kernel-yocto.bbclass seems to require
a defconfig file from the layer itself via use of SRC_URI in find_sccs().

Any thoughts? Thanks,

Alex


