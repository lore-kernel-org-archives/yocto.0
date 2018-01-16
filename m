Return-Path: <jan.siegmund0@hm.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00173E00E82; Tue, 16 Jan 2018 06:32:30 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21858E00E0B
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 06:32:29 -0800 (PST)
Received: from lxmhs51.srv.lrz.de (localhost [127.0.0.1])
	by postout1.mail.lrz.de (Postfix) with ESMTP id 3zLXk42RpyzyqT;
	Tue, 16 Jan 2018 15:32:28 +0100 (CET)
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs51.srv.lrz.de
Received: from postout1.mail.lrz.de ([127.0.0.1])
	by lxmhs51.srv.lrz.de (lxmhs51.srv.lrz.de [127.0.0.1]) (amavisd-new,
	port 20024)
	with LMTP id DCiJ9K8VpYbF; Tue, 16 Jan 2018 15:32:28 +0100 (CET)
Received: from [192.168.61.52] (unknown [217.111.95.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by postout1.mail.lrz.de (Postfix) with ESMTPSA id 3zLXk35c9Vzyqr;
	Tue, 16 Jan 2018 15:32:27 +0100 (CET)
From: Jan Siegmund <jan.siegmund0@hm.edu>
To: yocto@yoctoproject.org
Message-ID: <63725097-9b1b-ab15-56ce-192ae740333a@hm.edu>
Date: Tue, 16 Jan 2018 15:32:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
Subject: Backport of oe-core patch 147074 to rocko
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
X-List-Received-Date: Tue, 16 Jan 2018 14:32:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi all,

could commit 953f6d9a717945cc20228e7f75371adc27f4ffbe be added to branch rocko?
It fixes breaking packaging when using lz4.

Regards,
Jan

