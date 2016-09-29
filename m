Return-Path: <sveinse@seldal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D777E00CAC; Thu, 29 Sep 2016 01:28:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [194.63.252.55 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0019]
X-Greylist: delayed 255 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Sep 2016 01:28:17 PDT
Received: from smtp.domeneshop.no (smtp.domeneshop.no [194.63.252.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A2A9E0097C
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 01:28:17 -0700 (PDT)
Received: from 156.92-221-160.customer.lyse.net ([92.221.160.156]:39584
	helo=[10.5.5.120]) by smtp.domeneshop.no with esmtpsa
	(TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128) (Exim 4.80)
	(envelope-from <sveinse@seldal.com>) id 1bpWdM-0001wL-UB
	for yocto@yoctoproject.org; Thu, 29 Sep 2016 10:24:00 +0200
To: yocto@yoctoproject.org
From: Svein Seldal <sveinse@seldal.com>
Message-ID: <c7f9192f-3477-b0fb-a6ca-8d12d3368c47@seldal.com>
Date: Thu, 29 Sep 2016 10:23:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
Subject: Force nostamp from recipe
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
X-List-Received-Date: Thu, 29 Sep 2016 08:28:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi

I have a recipe using externalsrc, and with the version of poky I'm 
running, it nostamps do_compile.

Can I force other nostamp tasks from my recipe? E.g. do_configure?

I'm building this recipe for one MACHINE and then rerun the compilation 
for another MACHINE. The recipe is setup to build for tune, which is 
equal. The latter run fails linking because it's referring to the first 
machine's sysroot, not the second. This would have been fixed if the 
second run would call the do_configure task.


Best regards,
Svein

