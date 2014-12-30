Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E2C0E0084D; Tue, 30 Dec 2014 11:24:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6653E003E3
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 11:24:40 -0800 (PST)
Received: from [99.240.204.5] (port=49337 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y62PG-0004pZ-10; Tue, 30 Dec 2014 14:24:38 -0500
Date: Tue, 30 Dec 2014 14:24:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: peterengcomau001@adam.com.au
In-Reply-To: <547988affb54758502fe31b4a9613e00d927d5c0@webmail.adam.com.au>
Message-ID: <alpine.LFD.2.11.1412301423040.11537@localhost>
References: <547988affb54758502fe31b4a9613e00d927d5c0@webmail.adam.com.au>
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
X-List-Received-Date: Tue, 30 Dec 2014 19:24:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 31 Dec 2014, peterengcomau001@adam.com.au wrote:

> If you use the yocto scripts for setting up a new layer, it
> automatically prepends 'meta-'. That may be why there is no
> requirement

  but that still doesn't address that (from memory) some OE
scripts/utils seem to *require* layers start with the prefix "meta-".
i guess i can just grep the OE layer and look for build scripts that
contain that string and see which ones have that requirement.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

