Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74128E009FC
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 04:30:20 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 49AC2862DB
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 12:30:18 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id NWD73Ycq4T42 for <yocto@yoctoproject.org>;
	Fri,  7 Mar 2014 12:30:17 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B235C8610D
	for <yocto@yoctoproject.org>; Fri,  7 Mar 2014 12:30:17 +0000 (UTC)
Message-ID: <5319BBD3.2040703@dynamicdevices.co.uk>
Date: Fri, 07 Mar 2014 12:30:11 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Remote management of embedded devices
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
X-List-Received-Date: Fri, 07 Mar 2014 12:30:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm looking into remote management solutions for an upcoming headless
mesh edge router running Poky. I think, at least in the initial rollout
we're going to need something more than, say, a cron-based package
update facility.

I'm currently thinking of going down the route of a cloud based server
providing SSH port forwarding to the embedded devices, and then perhaps
putting some scripting together on top of that to enable monitoring,
configuration, and control.

I was wondering if there are better solutions already supported by the
Yocto project which people might be using to good effect in production
systems ?

Thanks,

Alex


