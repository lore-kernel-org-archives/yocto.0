Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50ED7E00754; Wed,  4 Mar 2015 13:34:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30D97E006EF
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 13:34:26 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 88D5527E1AA
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 21:34:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 7SCaMSnBDQDk for <yocto@yoctoproject.org>;
	Wed,  4 Mar 2015 21:34:20 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-77-115.w109-208.abo.wanadoo.fr
	[109.208.172.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id C40DA27E19A
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 21:34:19 +0000 (UTC)
Message-ID: <54F779F8.8010709@dynamicdevices.co.uk>
Date: Wed, 04 Mar 2015 22:32:40 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: Resizing root flash partition/filesystem on first boot
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
X-List-Received-Date: Wed, 04 Mar 2015 21:34:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I'd like to be able to build an SD card image, deploy to a system and
have it automatically resize on first boot. I haven't seen functionality
that would do this in Yocto. If there is a setting for this could
anybody let me know where that is?

Alternatively if this isn't supported out of the box I was thinking of
adding something, say as a recipe with a post installation task that ran
fdisk, then resizee2fs then either remounted the root f/s if possible or
alternatively rebooted.

I have had a look at this and in a manual hand-rolled way it seems to
work fine.

That said,

e2fsprogs doesn't seem to package resize2fs but I have a small patch to
enable that.

The next problem is that I can automate fdisk with a pipe but when I
delete a partition and create it the default is to start at 1,
overlapping the existing DOS partition that I have on my i.MX6 SD card
images. Odd as I am sure this is different behaviour from what I'd
expect from fdisk on a desktop. I'd have to do some parsing of the
existing partition sizes I guess which I would rather avoid for
simplicity if possible.

If anybody could let me know if this has been done so is a waste of my
time, or if there's a better way to achieve this I'd be grateful.

Thanks,

Alex

