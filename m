Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6E7FE00853; Tue, 20 Jan 2015 02:05:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5AC6E0083A
	for <yocto@yoctoproject.org>; Tue, 20 Jan 2015 02:04:59 -0800 (PST)
Received: from [99.240.204.5] (port=34817 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YDVg8-0004yi-BC; Tue, 20 Jan 2015 05:04:56 -0500
Date: Tue, 20 Jan 2015 05:04:54 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2608332.CqdSeLLBDo@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1501200503470.7100@localhost>
References: <alpine.LFD.2.11.1501101014070.11943@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E9D091@ORSMSX101.amr.corp.intel.com>
	<2608332.CqdSeLLBDo@peggleto-mobl5.ger.corp.intel.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: what is the future for package_tar.bbclass?
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
X-List-Received-Date: Tue, 20 Jan 2015 10:05:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 20 Jan 2015, Paul Eggleton wrote:

> On Monday 19 January 2015 22:57:37 Rifenbark, Scott M wrote:
> > The class is broken and unsupported.  I have updated the docs indicating
> > such.
>
> I'm not sure that's true. It's not supported for building images,
> and it never has been. However it can be used for producing tarball
> packages for individual recipes.

  i have no strong feelings either way, i was just repeating an
observation of mine from a while back that the tar packaging seemed to
get precious little attention compared to the three "standard"
packaging formats.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

