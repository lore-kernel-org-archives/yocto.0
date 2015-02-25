Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39270E0076F; Wed, 25 Feb 2015 02:52:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HDRS_LCASE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 T_HDRS_LCASE Odd capitalization of message header
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0522E0074C
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 02:52:24 -0800 (PST)
Received: from [99.240.204.5] (port=37612 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YQZZe-0000HC-JT; Wed, 25 Feb 2015 05:52:15 -0500
Date: Wed, 25 Feb 2015 05:52:11 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1502250517500.32394@localhost>
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
Subject: more observations on kernel dev manual
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
X-List-Received-Date: Wed, 25 Feb 2015 10:52:27 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  been a while since i went through this manual so some probably
simple observations -- based on in-progress manual. if scott rifenbark
wants to process any of this, he has my blessing.

  section 2.2.2: i'm assuming that list of SRC_URIs should actually
read?

   ... first-change...
   ... second-change ...
   ... third-change ...

  section 2.2.3: should that note not refer to the "defconfig" file
and not the ".config" file? as in, the defconfig file is used as the
*basis* for the eventual .config file, no? so the note should be
discussing applying the changes from the "defconfig" file, should it
not?

  section 2.3.2: hang on ...

   "Complete a build at least through the kernel configuration task as follows:

     $ bitbake linux-yocto -c kernel_configme -f"

but i thought that "-c <command>" would run *only* that bitbake task
... the wording suggests that that command will run everything *up to*
that task.

  also in that section, "are not't" should just say "aren't" in sample
warning output.

  section 2.3.3: again, first para suggests that that command should
process the kernel all the way "through" the kernel configuration.

  that's it for chapter 2 ... more later.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

