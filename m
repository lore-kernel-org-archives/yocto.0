Return-Path: <chege@cybertux.de>
Received: from server02.mc0.hosteurope.de (server02.mc0.hosteurope.de
	[92.51.170.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16A84E00342
	for <yocto@yoctoproject.org>; Sun, 25 Nov 2012 04:28:28 -0800 (PST)
Received: from server03.webmailer.hosteurope.de ([10.9.0.182]); 
	by mailout.hosteurope.de (server02.mc0.hosteurope.de) running
	EXperimental Internet Mailer with esmtps (TLSv1:AES256-SHA:256)
	id 1TcbJw-0003u2-KO
	for yocto@yoctoproject.org; Sun, 25 Nov 2012 13:28:25 +0100
Received: from nobody by server03.webmailer.hosteurope.de with local (Exim
	4.72) (envelope-from <chege@cybertux.de>) id 1TcbJw-0003R7-Id
	for yocto@yoctoproject.org; Sun, 25 Nov 2012 13:28:24 +0100
To: <yocto@yoctoproject.org>
MIME-Version: 1.0
Date: Sun, 25 Nov 2012 13:28:24 +0100
From: Christian Ege <chege@cybertux.de>
Message-ID: <c7e075a69adcbd736ab89d241cd10ec3-EhVcXlhFQwBWRwoYGgwbZ1dfaANWUkNeXENbAF9TNkFYXEYJVl1oA1RTQ15eQioDXF9aSFxTXQhb-webmailer2@server03.webmailer.hosteurope.de>
X-Sender: chege@cybertux.de
User-Agent: Host Europe Webmailer/2.0
X-HE-Access: Yes
X-bounce-key: webpack.hosteurope.de;chege@cybertux.de;1353846505;72b568b5;
Subject: How to handle src.rpm packages
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 25 Nov 2012 12:28:28 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

 Hello,

 I am interested in how to handle source code inside of a src.rpm 
 package. There had been a patch from Mark Hatle which handles the rpm 
 packages inside the fetcher2. In his patch he suggests to handle Patches 
 inside the rpm in the following way:


 file://${WORKDIR}/mypatch.patch

 When I tried this inside the SRC_URI declaration I always get en error 
 like this:

 NOTE: Running task 439 of 669 (ID: 4, 
 /home/chris/src/poky-denzil/meta-stlinux/recipes-core/stslave/stslave_0.7.bb, 
 do_fetch)
 NOTE: package stslave-0.7-r1: task do_fetch: Started
 ERROR: Function failed: Fetcher failure for URL: 
 'file:///home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz'. 
 Unable to fetch URL from any source.
 ERROR: Logfile of failure stored in: 
 /home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/temp/log.do_fetch.25817
 Log data follows:
 | DEBUG: Trying PREMIRRORS
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['hg', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['p4', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: For url ['file', '', 
 '/home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz', 
 '', '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['http', 
 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
 | DEBUG: Trying Upstream
 | ERROR: Function failed: Fetcher failure for URL: 
 'file:///home/chris/src/poky-denzil/spark7162-build/tmp/work/sh4-poky-linux/stslave-0.7-r1/stslave-0.7.tar.gz'. 
 Unable to fetch URL from any source.

 Yes of course I can just let fetcher2 extract all the files an 
 afterwards apply the patches by hand. But I think there should be a more 
 generic way to handle this. I hope I can get some hints how to solve 
 this.




 with kind regards,

 Christian



