Return-Path: <carl@cog.systems>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D058BE0099B; Wed, 29 Apr 2015 06:59:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 378 seconds by postgrey-1.32 at yocto-www;
	Wed, 29 Apr 2015 06:59:55 PDT
Received: from mail.cog.systems (cog.systems [125.63.60.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64227E0097F
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 06:59:55 -0700 (PDT)
Received: from [10.200.8.190] (pa49-195-32-34.pa.nsw.optusnet.com.au
	[49.195.32.34])
	by mail.cog.systems (Postfix) with ESMTPSA id A000B22C087
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 23:53:33 +1000 (AEST)
User-Agent: K-9 Mail for Android
MIME-Version: 1.0
From: Carl van Schaik <carl@cog.systems>
Date: Wed, 29 Apr 2015 23:53:33 +1000
To: yocto@yoctoproject.org
Message-ID: <CD14F333-81A0-4AB5-9598-F592CF8BE49B@cog.systems>
X-Mailman-Approved-At: Wed, 29 Apr 2015 08:07:35 -0700
Subject: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Wed, 29 Apr 2015 13:59:57 -0000
Content-Type: multipart/alternative;
	boundary="----9TS0OGVD6K68CEDY5WFOVGIHAQLA4T"
Content-Transfer-Encoding: 8bit

------9TS0OGVD6K68CEDY5WFOVGIHAQLA4T
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8

I've just encountered the exact same issue upgrading. 

> Have you tried setting linux-dummy as the preferred provider for the kernel ? >That would skip the build processing doing anything more than satisfying the various kernel dependencies.

We do explicitly set preferred provider to linux-dummy, in our layer.

STAGING_KERNEL_builddir=...../armv7/kernel-build-artifacts

------9TS0OGVD6K68CEDY5WFOVGIHAQLA4T
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

------9TS0OGVD6K68CEDY5WFOVGIHAQLA4T--
