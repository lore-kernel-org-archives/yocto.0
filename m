Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B0FE01716
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 22:35:03 -0800 (PST)
Received: from [173.34.6.101] (port=52559 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VdaE9-0002Dj-Qo; Tue, 05 Nov 2013 01:35:01 -0500
Date: Tue, 5 Nov 2013 01:34:56 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44288@ORSMSX101.amr.corp.intel.com>
Message-ID: <alpine.DEB.2.02.1311050130310.15390@oneiric>
References: <alpine.DEB.2.02.1310240832580.5411@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F40DF2@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1311010933420.12378@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44288@ORSMSX101.amr.corp.intel.com>
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
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: filling in the "missing" entries in the ref manual variable glossary
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
X-List-Received-Date: Tue, 05 Nov 2013 06:35:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 4 Nov 2013, Rifenbark, Scott M wrote:

> This will be useful for me... thanks Robert.

  i'm about halfway through the categorized variable glossary:

http://www.crashcourse.ca/wiki/index.php/OE_variable_glossary

and a few variables that caught my eye:

 * BUGTRACKER (not mentioned)
 * TUNE_ARCH (not mentioned)
 * TUNE_FEATURES (not mentioned)
 * CLASSOVERRIDE (not mentioned)
 * UBOOT_TARGET (mentioned, but replaced by UBOOT_MAKE_TARGET?)

and a number of UBOOT-related variables aren't mentioned. not clear if
any of these *should* be added -- there's obviously a limit to how
many variables you should explain -- but you can decide if any should
be added to the ref manual.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

