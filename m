Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6476AE00D4D; Thu, 24 Nov 2016 10:00:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp5-g21.free.fr (smtp5-g21.free.fr [212.27.42.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B0B4E00BC0
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 10:00:31 -0800 (PST)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp5-g21.free.fr (Postfix) with ESMTP id E633D5FF7E
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 19:00:29 +0100 (CET)
Date: Thu, 24 Nov 2016 19:00:29 +0100 (CET)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <493914276.364029313.1480010429884.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <1527147561.363967888.1480009873851.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: How to use pdb together with pyshell?
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
X-List-Received-Date: Thu, 24 Nov 2016 18:00:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I want to do a step by step debug of the populate_sdk_ext task, and 
unfortunately I'm not fluent in python.

I tried to put a pdb.set_trace() call at the beginning of the
do_populate_sdk_ext function and then call:
bb.build.exec_func('do_populate_sdk_ext', d)

But this didn't work...

And I also noticed that the log of the task, with & without pyshell,
is quite different. Is there something I should do before?


Thanks for your help (to improve the debian PM side of the world).

Michel

