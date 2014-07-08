Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B461E00576; Tue,  8 Jul 2014 04:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E150E004FF
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 04:42:48 -0700 (PDT)
Received: from [69.196.158.250] (port=33468 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X4TnK-0008Ss-8Z
	for yocto@yoctoproject.org; Tue, 08 Jul 2014 07:42:46 -0400
Date: Tue, 8 Jul 2014 07:42:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1407080736180.32469@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: some wiki pages on building your very first poky/yocto project
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
X-List-Received-Date: Tue, 08 Jul 2014 11:42:55 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  not sure if others will find this useful but i'm teaching an
oe/poky/yocto course in a couple weeks, and i decided to slap together
some publicly-readable wiki pages that i plan on sending ahead of time
to upcoming students to walk them through setting up their development
host, and downloading, and finally building their very first project,
the purpose being so that when i show up that first morning, everyone
has a build host ready to go and we don't have to waste any time
downloading packages and layers and so on.

  everything falls off of this new top-level wiki page of mine:

http://www.crashcourse.ca/wiki/index.php/Poky

and the plan is for impending students to read and work through the
sections:

* Setting up your build host
* Doing your first build

  there's lots more coming, but those first two sections should act as
pre-class preparation. i'm still adding stuff to them, but if anyone
has any thoughts on what else to put there, feel free. it's all very
ad hoc, but i really want to avoid wasted time the first morning of
the course screwing around with build hosts.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

