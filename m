Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27451E00873; Tue, 30 Dec 2014 11:31:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC5AAE003E3
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 11:31:36 -0800 (PST)
Received: from [99.240.204.5] (port=49379 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y62Vz-0005SJ-JU
	for yocto@yoctoproject.org; Tue, 30 Dec 2014 14:31:35 -0500
Date: Tue, 30 Dec 2014 14:31:34 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1412301427370.12620@localhost>
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
Subject: more BSP Guide pedantry involving customizing a recipe
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
X-List-Received-Date: Tue, 30 Dec 2014 19:31:50 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (you can tell i'm bored and want to get back up to speed on stuff
...)

  section 1.4 in BSP Guide, "Customizing a Recipe for a BSP", appears
to discuss a new layer, "meta-xyz", then suggests the new "interfaces"
file for this machine needs to go at the location:

meta-xyz/recipes-core/init-ifupdown/files/xyz/interfaces
                                          ^^^ ???

  but the files/ subdirectory of "xyz/" would appear to be necessary
(as we all know) only if this was a more general layer that
represented several machines (say, meta-ti) for which we *needed* to
distinguish between machines.

  so while the above might be technically correct, it might mislead
readers to think they *needed* to create a "xyz/" subdirectory for
that overriding interfaces file.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

