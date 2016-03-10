Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77A5AE00CA4; Thu, 10 Mar 2016 05:21:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33968E00B45
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 05:21:44 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C3C8B68A019; Thu, 10 Mar 2016 13:21:43 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 62CB468A019;
	Thu, 10 Mar 2016 13:21:43 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D8F586740554;
	Thu, 10 Mar 2016 14:21:42 +0100 (CET)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56E174E6.1050305@mlbassoc.com>
Date: Thu, 10 Mar 2016 14:21:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Dualing downloads
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
X-List-Received-Date: Thu, 10 Mar 2016 13:21:48 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

If I have a package X that depends on X-native and they build
from the same sources, doesn't the fetch step duplicate effort
if the sources need to be downloaded from scratch?  I just saw
this [appear to] happen and it's not clear if the sources were
downloaded once or twice.

I this is the case, perhaps if X depends on X-native then X.fetch
should depend on X-native.fetch so then download happens only once?
Or is that too hard to detect?

For many packages (and fast network links) this probably isn't an
issue, but I could imagine some very large packages simply wasting
network bandwidth.

Note: I'm happy if I'm wrong about this, it just jumped out at me.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

