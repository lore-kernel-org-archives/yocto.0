Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A783EE00D4A; Mon, 14 Mar 2016 05:41:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 192BCE00BE8
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 05:41:42 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 4BD3468A019; Mon, 14 Mar 2016 12:41:40 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id CE78168A019;
	Mon, 14 Mar 2016 12:41:39 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 47B8D67408F9;
	Mon, 14 Mar 2016 13:41:39 +0100 (CET)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56E6B182.1060505@mlbassoc.com>
Date: Mon, 14 Mar 2016 13:41:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: Strange build dependency
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
X-List-Received-Date: Mon, 14 Mar 2016 12:41:46 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to sort out a problem with perl and have been switching
between two different versions.  What I don't understand is why
so many recipes are being rebuilt when I change.  I tried examining
the dependencies with -g -u depexp but I'm unable to see why it's
happening.

I'm building core-image-base (+perl) from a recent Poky checkout.
I notice that a number of packages that don't seem to be related
to perl (or even hardly to each other) are rebuilt, e.g. avahi,
openssl and others.

How can I find out what's going on here?

BTW, I'm using this [testing] layer for this effort (related to
my perl question from last week):
   https://github.com/GaryThomas/meta-amanda.git

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

