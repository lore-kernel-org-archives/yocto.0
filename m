Return-Path: <mathieu.allard@evalan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 936CDE00C88; Fri, 16 Sep 2016 08:10:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0241]
Received: from claus.evalan.com (claus.evalan.com [176.9.90.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B2ADE00B74
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 08:10:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id D08D2320425
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 17:12:33 +0200 (CEST)
Received: from claus.evalan.com ([127.0.0.1])
	by localhost (claus.evalan.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id Qatr7m9wD31V for <yocto@yoctoproject.org>;
	Fri, 16 Sep 2016 17:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id 88A083204F9
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 17:12:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at claus.evalan.com
Received: from claus.evalan.com ([127.0.0.1])
	by localhost (claus.evalan.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id WswVng_UVLvb for <yocto@yoctoproject.org>;
	Fri, 16 Sep 2016 17:12:33 +0200 (CEST)
Received: from claus.evalan.com (localhost [127.0.0.1])
	by claus.evalan.com (Postfix) with ESMTP id 5E9DC320425
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 17:12:33 +0200 (CEST)
Date: Fri, 16 Sep 2016 17:12:32 +0200 (CEST)
From: Mathieu Allard <mathieu.allard@evalan.com>
To: yocto@yoctoproject.org
Message-ID: <1165251713.6218.1474038752787.JavaMail.zimbra@evalan.com>
MIME-Version: 1.0
X-Originating-IP: [92.111.78.37]
X-Mailer: Zimbra 8.6.0_GA_1194 (ZimbraWebClient - FF47 (Linux)/8.6.0_GA_1194)
Thread-Topic: import config
Thread-Index: fEoOYFFHmlZY0lCHrfXMOv+NLrJNlg==
Subject: [toaster] import config
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
X-List-Received-Date: Fri, 16 Sep 2016 15:10:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi!

It maybe is a naive question and I assume it's not possible because I didn't find anything related in the manual.

Is it possible to launch a toaster instance on an already command-line-setup build?
Like inheriting the toaster bbclass and maybe some magic trick?

Or am I stuck in reconfiguring everything manually through the web interface?

Now that I have some working builds, I just wanted to know is there is a quick way to get some overview over it on our local network, and to quickly build my application again when I have an update.

Otherwise I'll just hack some cheap script to launch a remote rebuild of my package when I need it.

