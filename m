Received: from resqmta-ch2-11v.sys.comcast.net (resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
 by mx.groups.io with SMTP id smtpd.web11.9339.1596728723859237620
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 08:45:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@comcast.net header.s=20190202a header.b=p+4R1rHZ;
 spf=pass (domain: comcast.net, ip: 69.252.207.43, mailfrom: rprowel@comcast.net)
Received: from resomta-ch2-19v.sys.comcast.net ([69.252.207.115])
	by resqmta-ch2-11v.sys.comcast.net with ESMTP
	id 3hVWkUyOSPdj93i54k0Q5k; Thu, 06 Aug 2020 15:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=20190202a; t=1596728722;
	bh=wDHY641cV9HQa9DGxJC2p/hAoRWsyNxXsiQh/znE/Ew=;
	h=Received:Received:To:From:Subject:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=p+4R1rHZ8jdRHsF3ERexwAc+JiSqQcA2rnacxDTINJZ5dqPcZHx0lgTVvDjJTirkn
	 CjEg/W04iOZid0kZYmYtDzWTqB9yib5lh2Q9U8hrW5RHSjZ4EEP5VSwqaIFnDEjys0
	 PD4607ONHK+1WoIso2AqLFk9h4THyjmJ/rWdedEvHrkwKJm489eiMPctTn61PPdum7
	 uR3Dvypa4MqNuxLdmCeeT54jhkKGd1S6ktSR7j5X516WLeUfK9o473VNI5JoDu1qiW
	 M6DI2IPOJWwIzFF97IRf3aeVpqBbE7rjZoI8b7nKSqRXMvkC6Wg3dyyhH8BVI38l/m
	 U24v7FaW0XOiQ==
Received: from [10.1.11.102] ([73.174.24.42])
	by resomta-ch2-19v.sys.comcast.net with ESMTPSA
	id 3i53kzu8b4vI43i54kyWPU; Thu, 06 Aug 2020 15:45:22 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgeduiedrkedtgdelgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddtnecunecujfgurhepvffhuffkffgfgggtgfesthejredttdefheenucfhrhhomheptfhosgcurfhrohifvghluceorhhprhhofigvlhestghomhgtrghsthdrnhgvtheqnecuggftrfgrthhtvghrnhepieetteehhfdvkeetgfekhfdvhfegveefheeuuddtheeffeevffelueeiueeifeetnecukfhppeejfedrudejgedrvdegrdegvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhephhgvlhhopegluddtrddurdduuddruddtvdgnpdhinhgvthepjeefrddujeegrddvgedrgedvpdhmrghilhhfrhhomheprhhprhhofigvlhestghomhgtrghsthdrnhgvthdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-Xfinity-VMeta: sc=0.00;st=legit
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Rob Prowel" <rprowel@comcast.net>
Subject: out of kernel custom module build fails
Message-ID: <dcbdee93-a37d-a870-2d11-bdf7bfdef3fc@comcast.net>
Date: Thu, 6 Aug 2020 11:45:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


I need to build a custom slip driver out of the normal kernel build 
process and I've overridden the var

LINUX_VERSION_EXTENSION = \
     "-${PROMPT}-$(/bin/date +%j%H%M)${PM1_DEVEL_IMAGE}"

so that my kernel always has a unique identifier for the development 
build I'm working on.

problem is that the custom driver bb file barfs.

bitbake -f -c cleanall virtual/kernel
bitbake my-image

fails with:

Collected errors:
  * Solver encountered 1 problem(s):
  * Problem 1/1:
  *   - nothing provides kernel-4.14.0-hpcu-2182234dev needed by 
kernel-module-customslip-4.14.0-hpcu-2182234dev-...
  *
  * Solution 1:
  *   - do not ask to install a package providing customslip-mod

the important bb file content is:

inherit module
SRC_URI = "file://Makefile \
            file://customslip.c \
            file://customslip.h \
            file://COPYING \
           "
S = "${WORKDIR}"

RPROVIDES_${PN} += "kernel-module-customslip"

------------------
What yocto override variable can I set in the bb to make it not care 
what the localversion appended to the kernel name is?


