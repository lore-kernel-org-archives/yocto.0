Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CB79E0087C; Thu,  5 Mar 2015 09:15:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9439E0083A
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 09:15:17 -0800 (PST)
Received: from [99.240.204.5] (port=56675 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YTZMh-00006L-QE; Thu, 05 Mar 2015 12:15:15 -0500
Date: Thu, 5 Mar 2015 12:15:10 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@Device-040570
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B3F@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1503051212440.32669@Device-040570>
References: <alpine.LFD.2.11.1503050659220.9386@Device-040570>
	<CA+aJhH2D52jskGJ+Ah7+VpDV5xe3RRx766Z2WJdANCXwts_Wrg@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988EC1B3F@ORSMSX101.amr.corp.intel.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: in kernel manual, should pick another example for KMACHINE
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
X-List-Received-Date: Thu, 05 Mar 2015 17:15:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 5 Mar 2015, Rifenbark, Scott M wrote:

> I like Nathan's suggestion for the text.  Can someone explain to me
> though why emenlow is not a good example here?  In the
> linux-yocto_3.14.bbappend file, KMACHINE_emenlow-noemgd is set equal
> to "emenlow".  Isn't this equating emenlow-noemgd and emenlow?  I am
> probably mis-understanding it so I could use some further
> explanation.

  normally, yes, but there *is* only the emenlow-noemgd machine, there
is no longer an emenlow machine. AIUI, there *used* to be both
machines, both using the same KMACHINE value, and that would have been
a perfect example.

  personally, i think it would be more informative if you had two or
more actual machines mapping to the same KMACHINE value, but that's
just me.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

