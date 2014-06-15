Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFC13E00BC6; Sun, 15 Jun 2014 03:20:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9816BE00AE4
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 03:20:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 3FE6E27E030
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 10:20:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Cq7WAwYaz4pI for <yocto@yoctoproject.org>;
	Sun, 15 Jun 2014 10:20:45 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id F11B527E02A
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 10:20:44 +0000 (UTC)
Message-ID: <539D7379.5000907@dynamicdevices.co.uk>
Date: Sun, 15 Jun 2014 11:20:41 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Autotools, Init Script templates and configure.ac
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
X-List-Received-Date: Sun, 15 Jun 2014 10:20:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

Script Installation -

I've been looking at autotools recipes and from the various
examples/tutorials I've seen there
doesn't appear to be a baked-in way of using and installing initscripts
on different platforms.

The recommendation I eventually went with was something like this in
Makefile.am

install-data-hook:
        update-rc.d pi-blaster.boot.sh defaults
        $(init_ddir)/pi-blaster.boot.sh start

uninstall-hook:
        update-rc.d pi-blaster.boot.sh remove
        killall pi-blaster

update-rc.d doesn't seem to account for the sysroot properly, even if I
add $(sysconfdir)/init.d and
I'm wondering if there is a better, best practice, way to handle script
installation with Autotools such
that Yocto is happy without patches?

(I also had a look at adding -r into update-rc.d but I am guessing there
is a better, more host transparent,
way I should be using?)

Script Templates -

A few times now I have encountered init scripts which assume LSB
functions are present. I've patched
these  so they work with Yocto images without LSB. I am aware that there
is a LSB image for Yocto but
I don't use it.

I have hunted around and seen many and varied init script templates, but
can anybody recommend
a "gold standard" init script that would work happily either in a Yocto
image with no LSB or make
use of LSB functions when present.

I'd like to standardise on and use such a script moving forward.

Thanks,

Alex

