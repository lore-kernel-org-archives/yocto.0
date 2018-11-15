Return-Path: <winfried.dobbe@xmsnet.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2E06E00901; Thu, 15 Nov 2018 04:18:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.197.30.124 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 904 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Nov 2018 04:18:09 PST
Received: from smtp-1.concepts.nl (smtp-1.concepts.nl [213.197.30.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B972E00872
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2018 04:18:09 -0800 (PST)
Received: from [213.197.30.241] (helo=webmail.xmsnet.nl)
	by smtp-1.concepts.nl with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
	(envelope-from <winfried.dobbe@xmsnet.nl>) id 1gNGMQ-0000ri-FC
	for yocto@yoctoproject.org; Thu, 15 Nov 2018 13:03:02 +0100
MIME-Version: 1.0
Date: Thu, 15 Nov 2018 13:03:02 +0100
From: winfried.dobbe@xmsnet.nl
To: yocto@yoctoproject.org
Mail-Reply-To: winfried.dobbe@xmsnet.nl
Message-ID: <cbf183e15d49981cc0ee11c955af4314@xmsnet.nl>
X-Sender: winfried.dobbe@xmsnet.nl
User-Agent: Roundcube Webmail/1.3.6
X-Concepts-MailScanner-Information: Please contact abuse@concepts.nl for more
	information
X-Concepts-MailScanner-ID: 1gNGMQ-0000ri-FC
X-Concepts-MailScanner: Found to be clean
X-Concepts-MailScanner-SpamCheck: 
X-Concepts-MailScanner-From: winfried.dobbe@xmsnet.nl
Subject: How to let a kernel module depend on another kernel module ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: winfried.dobbe@xmsnet.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Nov 2018 12:18:10 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I am upgrading our BSP from Krogoth to Sumo. I have read the 
documentation about the recipe-specific sysroots and this works fine for 
normal recipes.
However I am stuck with upgrading the out-of-tree kernel module recipes.

We have kernel-module-foo and kernel-module-bar. The bar module needs 
header files that foo module installs in usr/include/linux.
I added DEPENDS = "kernel-module-foo" to the recipe of module bar. The 
recipe-sysroot directory for kernel-module-bar does indeed have the foo 
include files.

However compilation of kernel-module-bar stops with an error because it 
can't find the foo header files.

So does anyone know what is the correct way to let one out-of-tree 
kernel module depend on another one?

thanks in advance,

Winfried

