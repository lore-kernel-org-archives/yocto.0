Return-Path: <jean-marie.lemetayer@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3ECCFE00BE2; Thu,  3 Oct 2019 08:46:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
X-Greylist: delayed 551 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Oct 2019 08:46:41 PDT
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31F20E00867
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 08:46:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 921E39C0330
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 11:37:29 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id xsK1GNBp5H0T; Thu,  3 Oct 2019 11:37:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id E36269C032D;
	Thu,  3 Oct 2019 11:37:28 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id 7fcxSWFo9v7U; Thu,  3 Oct 2019 11:37:28 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id C2A509C01AB;
	Thu,  3 Oct 2019 11:37:28 -0400 (EDT)
Date: Thu, 3 Oct 2019 11:37:28 -0400 (EDT)
From: Jean-marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>
To: yocto@yoctoproject.org
Message-ID: <1078346093.8578188.1570117048745.JavaMail.zimbra@savoirfairelinux.com>
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC77 (Linux)/8.8.11_GA_3737)
Thread-Index: sCYM7Pd3VtSZM9eQnsGMHDYavcMFYA==
Thread-Topic: duplicate code
Cc: Savoir-faire Linux Rennes <rennes@savoirfairelinux.com>
Subject: [npm] duplicate code
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
X-List-Received-Date: Thu, 03 Oct 2019 15:46:43 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all,

I am planning to do some work on npm and recipetool.

I have seen that there is some duplicate code between bitbake/lib/bb/fetch2/npm.py and scripts/lib/recipetool/create_npm.py but there is some inconsistencies.

Here is an example, the _parse_view() function which I patched recently has differ:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2/npm.py#n157
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/scripts/lib/recipetool/create_npm.py#n244

I think merging this "npm utility functions" is a good idea. But where ?

I think about creating a new file: bitbake/lib/bb/npm_utils.py

Or maybe use the existing bitbake/lib/bb/utils.py ?

What do you think ?


Jean-Marie LEMETAYER
Enthusiast embedded systems engineer
Savoir-faire Linux

