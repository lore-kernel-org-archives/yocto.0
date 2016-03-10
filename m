Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 566D7E00C92; Thu, 10 Mar 2016 00:12:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBDCFE00C8D
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 00:12:17 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5D6A568A01C; Thu, 10 Mar 2016 08:12:15 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D320E68A019;
	Thu, 10 Mar 2016 08:12:14 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 7B4FF6740554;
	Thu, 10 Mar 2016 09:12:14 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Message-ID: <56E12C5E.6030904@mlbassoc.com>
Date: Thu, 10 Mar 2016 09:12:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Long-term package revision maintenance
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
X-List-Received-Date: Thu, 10 Mar 2016 08:12:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I've been running local PR servers for my builds.  This works
quite well, as long as I don't touch my build trees.

What's the best way to manage versions long-term?  i.e. if I
have a deployed system that I build today, but may not touch
for a long time (years?) and I might not want to keep my build
trees for that long.  If I just blow away the build tree, the
next time I build for that target, all of the version info will
be lost.  I'd like to be able to pick up where I left off.

It it safe enough to just save .../cache/prserv.sqlite3?  or
is there a better way?  I tried the bitbake-prserv-tool export
but I'm not sure it does what I want.  In particular, I don't
plan on saving the sstate info and will probably just expect
to rebuild from scratch.  When I ran the export, I see things
like this:
   $ grep bash PR-list.conf
   PRAUTO$bash-completion-2.1-r0$ppce500v2$5044c7315caa9edef95defcc20bdf74a = "1"
   PRAUTO_bash-completion-2.1-r0_ppce500v2 = "1"
   PRAUTO$bash-4.3.30-r0$ppce500v2$03b7364b0d93910fee2eddf1f2c83f4b = "1"
   PRAUTO_bash-4.3.30-r0_ppce500v2 = "1"

So, if I import this file into a new build tree, will it properly
track that the next revision of bash should be r2 (assuming that
its signature changes and r1 if it doesn't change)?  Is it sufficient
to export the PR list when I'm packing the project up and then import
it back when I need to resume?  I really want to be able to keep a
package feed that I can manage over time without having to preserve
the build tree that was used to create it.

Thanks for any advice

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

