Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17DBCE00965; Fri, 27 Mar 2015 06:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF9A2E00777
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 06:23:00 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C4F4BF811E0; Fri, 27 Mar 2015 07:22:59 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 77379F811D7;
	Fri, 27 Mar 2015 07:22:59 -0600 (MDT)
Message-ID: <551559B8.5040007@mlbassoc.com>
Date: Fri, 27 Mar 2015 07:23:04 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Parsing vs cached startup
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
X-List-Received-Date: Fri, 27 Mar 2015 13:23:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just ran a build from scratch and as expected, I got the
full "Parsing recipes" for many minutes.  I always start out
with BB_NO_NETWORK=1 set so I can see what new files need to
be downloaded (many of my customers are network limited and
I like to provide them with the necessary files off-line).
Sure enough, there was a new file this morning and my build
stopped.

At this point I went to another machine and fetched the file
and put it into my download cache.  I then restarted the build
on the original machine and I saw this:
   Parsing recipes: 100% |#################################################################################| Time: 00:02:00
   Parsing of 1262 .bb files complete (0 cached, 1262 parsed). 1689 targets, 87 skipped, 0 masked, 0 errors.

Why?  Between the first aborted build and the retry, absolutely
no recipes were changed.  Only a single file was added to the
source mirror.

What might have triggered this?  Most of the time, I see the
parse cache work as expected, but not always.

Are there any breadcrumbs left behind that might explain this?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

