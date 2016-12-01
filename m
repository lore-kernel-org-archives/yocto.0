Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C664E00D17; Thu,  1 Dec 2016 01:27:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85418E00D0E
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 01:27:54 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C807868A01C; Thu,  1 Dec 2016 09:27:51 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 66EC568A019;
	Thu,  1 Dec 2016 09:27:51 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 9102267403BC;
	Thu,  1 Dec 2016 10:27:50 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <a62994c8-9eef-1457-7355-0681df26a29e@mlbassoc.com>
Date: Thu, 1 Dec 2016 10:27:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
Subject: Shared state doesn't live up to its name?
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
X-List-Received-Date: Thu, 01 Dec 2016 09:27:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have a build machine where I build for lots of targets.  On
all of these targets (save a primary), I set the SSTATE_MIRROR
to point to the sstate-cache of the primary target.  I always build
for the primary target first, then later the secondary ones.

For the most part, the sstate mechanism works pretty well, but I
see some anomalies.  For example, why on the same host, built back
to back, would a secondary build target (which uses the primary
as it's SSTATE_MIRROR and that build is complete) need to rebuild
from scratch such NATIVE packages as openssl?  Note that these are
native packages I'm asking about, so in my mind they should always
be sharable.

Any ideas?  Is there something I can look at to investigate this?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

