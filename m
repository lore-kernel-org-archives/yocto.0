Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8609E00877; Mon, 27 Oct 2014 09:50:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A90DE007A0
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 09:50:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id EDC03F811D8; Mon, 27 Oct 2014 10:50:36 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1A1B0F811D7;
	Mon, 27 Oct 2014 10:50:36 -0600 (MDT)
Message-ID: <544E77DC.5080408@mlbassoc.com>
Date: Mon, 27 Oct 2014 10:50:36 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Is the build system SCM sensitive?
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
X-List-Received-Date: Mon, 27 Oct 2014 16:50:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I had a complete build (details probably don't matter) using
Poky master.  I'm working on a fix to one of the core recipes,
so I made a local branch:
   % git checkout -b fix-python-pygtk master
I made a single line change in the recipe (removing a line from
the do_install step).  When I then rebuilt the recipe, to my
surprise, there were more than 450 tasks (73 unique recipes)
executed :-(

How does this make any sense?  unless the build system cares
that I changed the branch?

n.b. I'm happy to provide more details if necessary.  Also, I
did this twice in two different build trees and saw the same
strangeness.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

