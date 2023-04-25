Return-Path: <steve@weaverpad.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC920C77B61
	for <webhook@archiver.kernel.org>; Tue, 25 Apr 2023 14:33:28 +0000 (UTC)
Received: from mail-sf1.weaver.network (mail-sf1.weaver.network [198.199.101.98])
 by mx.groups.io with SMTP id smtpd.web11.80692.1682433200869543371
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Apr 2023 07:33:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@weaverpad.com header.s=mail-sf1 header.b=cUhQDi7Z;
 spf=pass (domain: weaverpad.com, ip: 198.199.101.98, mailfrom: steve@weaverpad.com)
Received: from EngineeringPC.chicago.weaver.network (c-73-208-210-141.hsd1.il.comcast.net [73.208.210.141])
	by mail-sf1.weaver.network (Postfix) with ESMTPSA id 4C39D248EF
	for <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 07:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=weaverpad.com;
	s=mail-sf1; t=1682433200;
	bh=LHe3zZ05myAKnqJug3UfU1KOCb7txuMslGeMrpRw9ks=;
	h=Subject:From:To:Date:From;
	b=cUhQDi7ZJdVbdT8zumrxcrSJG0drnH2vfJX3zY7zk+KV3HdWfLg6UL9DfWoYb+gD3
	 5A3ji5CoGv1apOfpOZmuR9x7omuvy+Xf0ThQ5capVCihkxIJJFUPs3K/dXgXUaZ0sC
	 vL9/lZRxYDJrxAvuLMwy72iiFh3gJ/SjmFVuDq2fgCAH9v0P2NnpBx0s8sg146J4Gz
	 5/ksRdxPYaZyuZVhfKA+wmpl0EWwTidmLFyFOnIcwKKsI0XvHUpBXoQ8xcPrWTjOLP
	 lTWqWtXwLP6HkZ2O9h5CrHw9B3C9hBXaSC2A0jhcDIHgft1YM2AinFYGRWZbRbfTO7
	 +WHSqOvvQd5bg==
Message-ID: <b2b1f3c5c42d5eded06ae5b3a6cfa754b1eeb99e.camel@weaverpad.com>
Subject: Error building m4-native while trying to build Beaglebone Black
 branch
From: Steven Weaver <steve@weaverpad.com>
To: yocto@lists.yoctoproject.org
Date: Tue, 25 Apr 2023 09:33:19 -0500
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 14:33:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59777

Greetings,
I am trying to follow the docs to build Yocto for the Beaglebone Black[1]. I've been able to clone
everything just fine. I am triggering the following #errors when I try to run 'bitbake-image-*':

| /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-
1.4.17/lib/freadahead.c: In function 'freadahead':
| /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-
1.4.17/lib/freadahead.c:91:3: error: #error "Please port gnulib freadahead.c to your platform! Look
at the definition of fflush, fread, ungetc on your system, then report this to bug-gnulib."
|    91 |  #error "Please port gnulib freadahead.c to your platform! Look at the definition of
fflush, fread, ungetc on your system, then report this to bug-gnulib."
|       |   ^~~~~
| make[3]: *** [Makefile:1842: freadahead.o] Error 1
| make[3]: *** Waiting for unfinished jobs....
| /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-
1.4.17/lib/fseeko.c: In function 'rpl_fseeko':
| /home/steven/temp/beaglebone/build/tmp/work/x86_64-linux/m4-native/1.4.17-r0/m4-
1.4.17/lib/fseeko.c:109:4: error: #error "Please port gnulib fseeko.c to your platform! Look at the
code in fseeko.c, then report this to bug-gnulib."
|   109 |   #error "Please port gnulib fseeko.c to your platform! Look at the code in fseeko.c, then
report this to bug-gnulib."
|       |    ^~~~~

From reading through the mentioned source files, it appears the problem is probably related to the
symbols _IO_ftrylockfile, __GNU_LIBRARY__, or maybe SLOW_BUT_NO_HACKS. I've tried fumbling around to
see what's defined and what's not. I defined SLOW_BUT_NO_HACKS which got me past freadahead's
#error. That doesn't feel right, though. I would expect it should be falling into the "/* GNU libc,
BeOS, Haiku, Linux libc5 */" sections of both files.

Any advice as to how to track down the cause and "correct" solution? I am trying to build on a
Debian 11 system. I mention that since bitbake warns me about it.

Thanks in advance for the help!
Steve

[1] https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html


