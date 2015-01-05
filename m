Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D321E0090F; Mon,  5 Jan 2015 04:22:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BB86E00751
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 04:22:52 -0800 (PST)
Received: from [70.30.87.145] (port=59506 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y86gK-0003p0-Jc
	for yocto@yoctoproject.org; Mon, 05 Jan 2015 07:22:48 -0500
Date: Mon, 5 Jan 2015 07:22:47 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501050718160.7372@localhost>
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
Subject: current dev manual possibly links to out-of-date wiki page(s)
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
X-List-Received-Date: Mon, 05 Jan 2015 12:22:58 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  section 4.1.1, dev manual:

"Finally, there is a wiki page write up of the example also located
here that you might find helpful."
^^^^

  that link takes one here:

https://wiki.yoctoproject.org/wiki/Transcript:_creating_one_generic_Atom_BSP_from_another

and while it's not fatal to link to older wiki material, it does read
as odd to link to a wiki page that, in its very opening, admits that
its content might not be current.

  in addition, *that* wiki page quickly links here:

https://wiki.yoctoproject.org/wiki/Yocto_BSP_Tools_Documentation

which again admits that its content is to be obsoleted by the official
BSP Guide.

  in any event, i'll leave it to someone else to decide on the
efficacy of having official docs link to potentially transient wiki
pages.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

