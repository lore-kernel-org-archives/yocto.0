Return-Path: <Anders.Montonen@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FD84E00DD0; Fri, 23 Feb 2018 09:02:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.232.154.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1470 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Feb 2018 09:02:03 PST
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C33B7E00D17
	for <yocto@yoctoproject.org>; Fri, 23 Feb 2018 09:02:03 -0800 (PST)
Received: from [2001:67c:1be8::1] (helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2) (envelope-from <Anders.Montonen@iki.fi>)
	id 1epGLk-0003T9-7b
	for yocto@yoctoproject.org; Fri, 23 Feb 2018 18:37:32 +0200
Received: from antime (helo=localhost)
	by lakka.kapsi.fi with local-esmtp (Exim 4.84_2)
	(envelope-from <Anders.Montonen@iki.fi>) id 1epGLQ-0006Q8-4p
	for yocto@yoctoproject.org; Fri, 23 Feb 2018 18:37:12 +0200
Date: Fri, 23 Feb 2018 18:37:12 +0200 (EET)
From: Anders Montonen <Anders.Montonen@iki.fi>
X-X-Sender: antime@lakka.kapsi.fi
To: yocto@yoctoproject.org
Message-ID: <alpine.DEB.2.11.1802231833140.22513@lakka.kapsi.fi>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:1be8::1
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on mail.kapsi.fi)
Subject: useradd-staticids
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
X-List-Received-Date: Fri, 23 Feb 2018 17:02:05 -0000
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII

Hi,

I'm looking into using the useradd-staticids class for reproducible 
builds. Is there any way to delay the warning/error about missing ids 
until a recipe is actually built rather than getting them during parsing? 
Having to generate tons of ids for packages you're not even using seems a 
bit nuts.

Regards,
Anders

