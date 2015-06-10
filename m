Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9ED81E00982; Wed, 10 Jun 2015 12:58:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FD29E0086D
	for <yocto@yoctoproject.org>; Wed, 10 Jun 2015 12:58:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2D932F811EA; Wed, 10 Jun 2015 13:58:36 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7FD61F811D8;
	Wed, 10 Jun 2015 13:58:35 -0600 (MDT)
Message-ID: <557896F3.2040207@mlbassoc.com>
Date: Wed, 10 Jun 2015 13:58:43 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Strange sstate problem
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
X-List-Received-Date: Wed, 10 Jun 2015 19:58:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm building for two similar targets and sharing sstate between
them.  Actually, I build for target A and use that sstate cache
in my SSTATE_MIRRORS for target B.

If I try to build target B from scratch, i.e. wipe out most
everything from my build tree:
   % mv cache sstate-cache tmp old2; rm -fr old&
I also have a PR server for each target - in local.conf:
   PRSERV_HOST = "localhost:0"

When I build in target B, I'm getting a ton of QA errors, basically
one for every package selected, e.g.
   ERROR: QA Issue: Package version for package fsl-alsa-plugins went backwards which would break package feeds from (0:1.0.25-r0.2 to 0:1.0.25-r0.0) [version-going-backwards]

What could be going on here?

n.b. I'm using a fairly recent Poky/Yocto master (a05663bfa10352fd5af6ca9a9d7b323c1c099f35)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

