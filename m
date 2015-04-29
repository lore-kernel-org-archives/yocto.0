Return-Path: <carl@cogsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E97CDE009A3; Wed, 29 Apr 2015 07:09:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 340 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Apr 2015 07:09:54 PDT
Received: from mail.cog.systems (cog.systems [125.63.60.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E95E00998
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 07:09:54 -0700 (PDT)
Received: from [10.200.8.190] (pa49-195-32-34.pa.nsw.optusnet.com.au
	[49.195.32.34])
	by mail.cog.systems (Postfix) with ESMTPSA id 6D5A622C087
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 00:04:12 +1000 (AEST)
User-Agent: K-9 Mail for Android
MIME-Version: 1.0
From: Carl van Schaik <carl@cogsystems.com>
Date: Thu, 30 Apr 2015 00:04:12 +1000
To: yocto@yoctoproject.org
Message-ID: <CE028765-89DD-432B-B48D-754503981B77@cogsystems.com>
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Wed, 29 Apr 2015 14:09:56 -0000
Content-Type: multipart/alternative;
	boundary="----SPQ18D5KS4Z5P2QA3XG5Y7BRF2001J"
Content-Transfer-Encoding: 8bit

------SPQ18D5KS4Z5P2QA3XG5Y7BRF2001J
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8

I've just encountered the exact same issue upgrading. 

> Have you tried setting linux-dummy as the preferred provider for the kernel ? >That would skip the build processing doing anything more than satisfying the various kernel dependencies.

We do explicitly set preferred provider to linux-dummy, in our layer.

STAGING_KERNEL_builddir=...../armv7/kernel-build-artifacts

------SPQ18D5KS4Z5P2QA3XG5Y7BRF2001J
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: 8bit

I&#39;ve just encountered the exact same issue upgrading. <br>
<br>
&gt; Have you tried setting linux-dummy as the preferred provider for the kernel ? &gt;That would skip the build processing doing anything more than satisfying the various kernel dependencies.<br>
<br>
We do explicitly set preferred provider to linux-dummy, in our layer.<br>
<br>
STAGING_KERNEL_builddir=...../armv7/kernel-build-artifacts

------SPQ18D5KS4Z5P2QA3XG5Y7BRF2001J--
