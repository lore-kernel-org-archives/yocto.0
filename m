Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71F8CE008EA; Fri,  2 Jan 2015 02:17:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6150BE006EF
	for <yocto@yoctoproject.org>; Fri,  2 Jan 2015 02:16:55 -0800 (PST)
Received: from [99.240.204.5] (port=49615 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y6zHp-0000Lz-Iv
	for yocto@yoctoproject.org; Fri, 02 Jan 2015 05:16:53 -0500
Date: Fri, 2 Jan 2015 05:16:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501020510460.8468@localhost>
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
Subject: having yocto-docs take advantage of more docbook tags
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
X-List-Received-Date: Fri, 02 Jan 2015 10:17:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i mentioned this once upon a time but i figure it's worth bringing
up again ... i think it would be useful to drag at least a few more
relevant docbook tags into the yocto-docs documents.

  case in point: the most common way right now to render something in
monospaced font is to just tag it as a <filename>, but that really
shouldn't be used for things that aren't filenames, such as, you know,
variables. for variables like, say, SRC_URI, there is the <varname>
tag, which for HTML renders the variable name not just in monospaced
but slightly smaller font size, which i think looks *way* nicer.

  one other tag that i like using in other places is <firstterm>,
which is used to emphasize that this is the first time a term/phrase
is being used. and while that is typically rendered just in italics,
it's still useful semantic markup for the purpose of building indices.

  anyway, apologies if all this is already underway.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

