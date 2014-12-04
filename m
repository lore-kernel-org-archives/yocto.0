Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30496E008CA; Thu,  4 Dec 2014 07:58:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 078AFE00873
	for <yocto@yoctoproject.org>; Thu,  4 Dec 2014 07:58:04 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 417F2F811E5; Thu,  4 Dec 2014 08:58:04 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id B6781F81188;
	Thu,  4 Dec 2014 08:58:02 -0700 (MST)
Message-ID: <5480849F.5050908@mlbassoc.com>
Date: Thu, 04 Dec 2014 08:58:23 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: What drives automounting volumes?
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
X-List-Received-Date: Thu, 04 Dec 2014 15:58:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm perplexed by a behaviour in my system.  When I built
on Dec 2 (poky/master=b8631416f12b8a904ce3deb036f9d5ce632937b0)
I get all available/mountable devices automatically mounted
at boot, e.g.
   # df
   Filesystem     1K-blocks    Used Available Use% Mounted on
   /dev/root        7487288 1020016   6086936  15% /
   devtmpfs          383760       4    383756   1% /dev
   tmpfs                 40       0        40   0% /mnt/.psplash
   tmpfs             514980     224    514756   1% /run
   tmpfs             514980     108    514872   1% /var/volatile
   /dev/mmcblk1p1      8168    4652      3516  57% /run/media/mmcblk1p1
   /dev/mmcblk1p2     43499   31903      9139  78% /run/media/mmcblk1p2
   /dev/sda1         126527    4676    121852   4% /run/media/sda1
   /dev/mmcblk0p1    126527    4960    121568   4% /run/media/mmcblk0p1
   /dev/mmcblk0p2  29723452   80044  28126872   1% /run/media/mmcblk0p2

Today I updated from master and when I rebuilt my image, those
/run/media/* file systems are gone (poky/master=a862bf045109d213c301121961bd8d389e48b13d)
   # df
   Filesystem     1K-blocks    Used Available Use% Mounted on
   /dev/root       15108832 1163564  13177764   9% /
   devtmpfs          383768       0    383768   0% /dev
   tmpfs                 40       0        40   0% /mnt/.psplash
   tmpfs             514988     268    514720   1% /run
   tmpfs             514988      92    514896   1% /var/volatile

This is the same hardware, the same system image, same everything.

I've noticed this before - the /run/media mounts were sometimes
present, other times not.  Any clues what drives this and why
they worked on Tuesday and not on Thursday (this week)?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

