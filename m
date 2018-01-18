Return-Path: <jan.siegmund0@hm.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9115E00E14; Thu, 18 Jan 2018 06:23:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [129.187.255.137 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from postout1.mail.lrz.de (postout1.mail.lrz.de [129.187.255.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF6C8E00B5F
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 06:23:29 -0800 (PST)
Received: from lxmhs51.srv.lrz.de (localhost [127.0.0.1])
	by postout1.mail.lrz.de (Postfix) with ESMTP id 3zMmQm4LLtzyrR;
	Thu, 18 Jan 2018 15:23:28 +0100 (CET)
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs51.srv.lrz.de
Received: from postout1.mail.lrz.de ([127.0.0.1])
	by lxmhs51.srv.lrz.de (lxmhs51.srv.lrz.de [127.0.0.1]) (amavisd-new,
	port 20024)
	with LMTP id q_EOHMyvC-8G; Thu, 18 Jan 2018 15:23:28 +0100 (CET)
Received: from [192.168.61.125] (unknown [217.111.95.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by postout1.mail.lrz.de (Postfix) with ESMTPSA id 3zMmQZ25wgzyrx;
	Thu, 18 Jan 2018 15:23:18 +0100 (CET)
To: yocto@yoctoproject.org
From: Jan Siegmund <jan.siegmund0@hm.edu>
Message-ID: <2e44d1f6-1339-24d3-e5df-b48f673061bd@hm.edu>
Date: Thu, 18 Jan 2018 15:23:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: Add Python 3 custom package to native tools
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
X-List-Received-Date: Thu, 18 Jan 2018 14:23:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi all,

I want to add the Python 3 custom package foo to my native host tools to execute
its executable in a class. How could I do that? I already inherited distutils3
to my foo recipe, but when I launch foo with oe-run-native, the error

pkg_resources.DistributionNotFound: The 'foo=1.0' distribution was not found and
is required by the application

pops up. But foo with its accompanying 1.0 .egg is already in
tmp/sysroots-components/x86_64/foo-native/usr/lib/python3.5/site-packages.

Is another class or environment variable needed?

Regards,
Jan

