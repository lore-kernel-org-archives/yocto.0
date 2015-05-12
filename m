Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69B72E0098D; Tue, 12 May 2015 04:59:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C243E0097D
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 04:59:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 3BE3D27E248
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 11:59:37 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id PVf-FQ7m6uwm for <yocto@yoctoproject.org>;
	Tue, 12 May 2015 11:59:36 +0000 (UTC)
Received: from [192.168.1.40] (AMarseille-651-1-150-24.w2-4.abo.wanadoo.fr
	[2.4.101.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8CB2127E224
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 11:59:36 +0000 (UTC)
Message-ID: <5551EB26.6050100@dynamicdevices.co.uk>
Date: Tue, 12 May 2015 13:59:34 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: Strange behaviour with stripped connman + openvpn
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
X-List-Received-Date: Tue, 12 May 2015 11:59:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I've been looking at some strange behaviour with connman in dizzy (1.25)

With OpenVPN configured and a connman configuration file defining a VPN,
for some reason the service doesn't appear, e.g. connmanctl services

In trying to track down why this is I found that if I use a connmand
daemon binary which is not stripped then all works as it should.

So for those who see this issue, an interim workaround is to inhibit
package stripping in a connman_%.bbappend

e.g. INHIBIT_PACKAGE_STRIP = "1"

Regards,

Alex

