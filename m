Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C71AE01487
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:39:11 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:60262 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1USURy-0001rn-Fx; Wed, 17 Apr 2013 11:39:10 -0400
Date: Wed, 17 Apr 2013 11:39:09 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCF66BA@ORSMSX104.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1304171135470.12898@oneiric>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios>
	<alpine.DEB.2.02.1304171108430.11390@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB123796FCF66BA@ORSMSX104.amr.corp.intel.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 15:39:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 17 Apr 2013, Rifenbark, Scott M wrote:

> Just a note here regarding which Yocto Project manuals to look at
> for the most current information.  Use the 1.4 manuals.  So for the
> FILESEXTRAPATHS variable description you should look at
> http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#var-FILESEXTRAPATHS
> entry.  The description in this more recent manual may be lacking as
> well.  I will try and work on that going forward.

  i use the "in progress" version of all of the manuals, so i still
think that glossary entry is a bit skimpy on details. on the other
hand, glossary entries are *normally* fairly brief, so a full
explanation of something like that probably belongs elsewhere, anyway.

rday

p.s.  i think one of the manuals should mention chris larson's
"bitbake-env" utility, which i use for debugging and explanations all
the time.

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

