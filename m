Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5FBDE00736
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 02:11:45 -0800 (PST)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 95D51860F0
	for <yocto@yoctoproject.org>; Wed, 26 Feb 2014 10:11:43 +0000 (UTC)
Message-ID: <530DBDE0.4040509@dynamicdevices.co.uk>
Date: Wed, 26 Feb 2014 10:11:44 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.6
Subject: Board farm and automated testing for meta-mono
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
X-List-Received-Date: Wed, 26 Feb 2014 10:11:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I recall some discussions about a board farm, and can see some older
emails in the list which touch upon this.

At some point I'd like to add some simple tests to meta-mono to automate
testing on ARM vfp/hardfp, qemux86, MIPS, PPC etc.

Does a board farm consisting of different architectures exist at present?

If so is there somewhere I can look for information on how to add some
tests? (e.g. run up a simple console app and Windows  Form app on the
targets without error for starters)

Thanks,

Alex



