Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C69C7E00F73; Wed, 30 Sep 2015 05:13:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87F13E00EE8
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 05:13:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 0C39AF81188; Wed, 30 Sep 2015 06:13:26 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 35022F81188;
	Wed, 30 Sep 2015 06:13:26 -0600 (MDT)
To: Yocto Project <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <560BD1F3.1090907@mlbassoc.com>
Date: Wed, 30 Sep 2015 06:13:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: Safely cleaning 'downloads'
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
X-List-Received-Date: Wed, 30 Sep 2015 12:13:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Over time, I tend to build in the same build tree many, many
times.  This leads to some really big trees as many things are
duplicated, especially in the 'downloads' directory.

I use local mirrors and hence my 'downloads' directory is
_mostly_ populated with symbolic links.  However, there are
also expanded SCM packages, e.g. git2/xxx

How can I safely clean up the 'downloads' directory?  I already
copy any created tarballs (I use BB_GENERATE_MIRROR_TARBALLS="1"
to preclude unneeded downloads) to my mirror, but I'd like to
periodically clean out the whole directory (without disturbing
my builds of course).  I've found out the hard way that just
emptying seems to be unsafe, at least for some recipes like
the [RaspberryPi] Linux kernel recipe which once built seems
to expect the expanded git2/xxx tree to remain.

Just trying to find ways to recover my lost GB...

Thanks for any ideas

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

