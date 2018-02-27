Return-Path: <georg-list@georglutz.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85165E00E9B; Tue, 27 Feb 2018 04:46:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 301 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Feb 2018 04:46:19 PST
Received: from mail.georglutz.de (mail.georglutz.de [85.214.67.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48405E00E8F
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 04:46:19 -0800 (PST)
Received: from mail.georglutz.de ([::1])
	by mail.georglutz.de with ESMTP; Tue, 27 Feb 2018 13:41:16 +0100
	id 0000000003E60285.000000005A9551EC.000008A9
MIME-Version: 1.0
Date: Tue, 27 Feb 2018 13:41:16 +0100
From: Georg Lutz <georg-list@georglutz.de>
To: yocto@yoctoproject.org
Message-ID: <90513fe7fb54bb7d23aff1a9849efbe1@georglutz.de>
X-Sender: georg-list@georglutz.de
User-Agent: Roundcube Webmail/1.3.4
Subject: downloads.yoctoproject.org/mirror out of date
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
X-List-Received-Date: Tue, 27 Feb 2018 12:46:21 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

yesterday I had a build error in the unpack step. git couldn't find a 
reference.

It turned out that because of a temporary firewall issue bitbake took 
the http mirror downloads.yoctoproject.org for yocto-kernel-cache.

It looks like the mirror hasn't been updated since a while (Nov last 
year):

$ git ls-remote https://git.yoctoproject.org/git/yocto-kernel-cache 
master
789605826bbbdd4d0762d9e4262d0ef28663770d	refs/heads/master

$ wget -q 
http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.yocto-kernel-cache.tar.gz
$ tar -xzf git2_git.yoctoproject.org.yocto-kernel-cache.tar.gz
$ git log -1

commit 5c3d76b10595cf2b90ec3749415adf9bde21d55c
Author: Jason Wessel <jason.wessel@windriver.com>
Date:   Thu Nov 2 19:11:27 2017 -0700

     cgroups.cfg: Add missing controllers


Regards
   Georg

