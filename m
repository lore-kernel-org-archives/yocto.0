Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 501DDE00751; Mon,  5 Jan 2015 09:08:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4D6E00344
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 09:08:18 -0800 (PST)
Received: from [70.30.87.145] (port=33811 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y8B8Y-0003ay-Uu; Mon, 05 Jan 2015 12:08:15 -0500
Date: Mon, 5 Jan 2015 12:08:07 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9070A@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1501051201210.23745@localhost>
References: <547988affb54758502fe31b4a9613e00d927d5c0@webmail.adam.com.au>
	<alpine.LFD.2.11.1412301423040.11537@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E9070A@ORSMSX101.amr.corp.intel.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	"peterengcomau001@adam.com.au" <peterengcomau001@adam.com.au>
Subject: Re: is it not a *requirement* that layers start with "meta-"?
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
X-List-Received-Date: Mon, 05 Jan 2015 17:08:22 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 5 Jan 2015, Rifenbark, Scott M wrote:

> If anyone can locate some scripts or something that actually does
> require "meta-" to be prepended please let me know.  That changes
> how we describe this.

  as an admittedly simple example, i ran across this in oe-core's
scripts/contrib/documentation-audit.sh:

for pkg in `bitbake -s | awk '{ print \$1 }'`; do

	... snip ...

        if [[ "$pkg" =~ ^meta- || "$pkg" =~ ^packagegroup- || "$pkg" =~ -image ]]; then
                # Skip meta, task and image recipes
                continue
        fi


  checking that the package name starts with "meta-" seems to
pretty clearly suggest that it will be treated differently than if it
doesn't. i'm sure no one is terribly worried about that particular
script, but it does seem to show an example of this.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


