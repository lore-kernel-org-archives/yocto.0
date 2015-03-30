Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66CAEE007A0; Mon, 30 Mar 2015 10:38:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0837AE00754
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 10:38:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id F2EDD27E204
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 17:38:45 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id u_fEMLqNqEDv for <yocto@yoctoproject.org>;
	Mon, 30 Mar 2015 17:38:44 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-37-107.w92-150.abo.wanadoo.fr
	[92.150.28.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id F38C427E1DF
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 17:38:43 +0000 (UTC)
Message-ID: <551989B0.7070907@dynamicdevices.co.uk>
Date: Mon, 30 Mar 2015 19:36:48 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: yocto master work-shared, kernel .config seems to have gone awol
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
X-List-Received-Date: Mon, 30 Mar 2015 17:38:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I'm updating to Yocto master and have been seeing that when I bitbake -c
devshell virtual/kernel I go into a work-shared tree now.

(This is all with meta-fsl-arm)

I'd normally change the kernel configuration with bitbake -c menuconfig
virtual/kernel then pull out the .config and make my changes to
defconfig as needed.

But I can't seem to find it any more, either in work-shared or if I
traverse to the work tree.

No doubt my own stupidity here but where is it supposed to be nowadays?

Could anybody point me to a discussion on how things are going to be
broken out into work-shared and (presumably) work so I can get up to speed?

Not finding the configuration I thought I'd try generating a kernel
fragment with bitbake  -c diffconfig virtual/kernel from the Yocto docs
but I can't see a fragment.cfg anywhere in the tree

I guess this could all be just that meta-fsl-arm isn't quick in sync
with current the current master? (assuming it's not the more likely
explanation that I just have this plain wrong)

Thanks,

Alex


