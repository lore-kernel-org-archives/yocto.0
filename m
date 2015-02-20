Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A547FE00853; Fri, 20 Feb 2015 04:50:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9BC4E00837
	for <yocto@yoctoproject.org>; Fri, 20 Feb 2015 04:50:28 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B2A06F811EB; Fri, 20 Feb 2015 05:50:27 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6A074F811E9;
	Fri, 20 Feb 2015 05:50:27 -0700 (MST)
Message-ID: <54E72D96.9040504@mlbassoc.com>
Date: Fri, 20 Feb 2015 05:50:30 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: glibc fetching problems
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
X-List-Received-Date: Fri, 20 Feb 2015 12:50:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just updated Poky/Yocto to the latest master and now I get
this failure:
ERROR: Function failed: Fetcher failure for URL: 'git://sourceware.org/git/glibc.git;branch=release/2.21/master'. Unable to fetch URL from any source.

This is because any attempt to clone that repo breaks:
   $ git clone git://sourceware.org/git/glibc.git
   Cloning into 'glibc'...
   fatal: read error: Connection reset by peer

It's not a local networking issue - I tried it on both sides
of the pond.

Sadly, the yocto mirrors don't have this file either - the latest
tarball in http://downloads.yoctoproject.org/mirror/sources/
only goes up to 2.20

Any ideas, given that the 2.20 recipes have been replaced?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

