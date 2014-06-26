Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 229DEE00509; Thu, 26 Jun 2014 02:24:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.2 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 301BFE003D8
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 02:23:51 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 3FDFC27E03F
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 09:23:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id 2G_PsrhU5hxh for <yocto@yoctoproject.org>;
	Thu, 26 Jun 2014 09:23:48 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 94D6327E031
	for <yocto@yoctoproject.org>; Thu, 26 Jun 2014 09:23:48 +0000 (UTC)
Message-ID: <53ABE6A1.2000007@dynamicdevices.co.uk>
Date: Thu, 26 Jun 2014 10:23:45 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Problem with DNS resolution using resolvconf (poky/daisy)
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
X-List-Received-Date: Thu, 26 Jun 2014 09:24:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm looking at resolvconf as I want to be able to pick up dns-nameserver
changes in /etc/network/interfaces, and I'm reading that this is the way
to do it.

Having added the resolvconf package the eth0 interface is now not
correctly picking up DNS servers and putting them in /etc/resolv.conf

The behaviour is due to /etc/udhcpc.d/S50default which in the absence of
resolvconf just creates /etc/resolv.conf (which works) or if the
resolvconf binary is present it attempts to use it (which doesn't).


resolvconf looks to be using /etc/resolvconf/update.d/libc to create
/etc/resolv.conf but is crapping out as /lib/resolvconf/list-records
doesn't exist.

Is this a bug or could anybody help me to understand if there's some
other step I should be taking here?

Many thanks,

Alex

