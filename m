Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F139E016E3
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 02:14:16 -0700 (PDT)
Received: from [173.34.6.101] (port=35121 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VcXHb-0004YF-Mv
	for yocto@yoctoproject.org; Sat, 02 Nov 2013 05:14:15 -0400
Date: Sat, 2 Nov 2013 05:14:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311020507080.20522@oneiric>
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
Subject: coding style: hardcoding package names instead of using PN/BPN/etc
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
X-List-Received-Date: Sat, 02 Nov 2013 09:14:17 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i figure the answer is obvious but i'll ask it anyway -- is it
reasonable to encourage new developers to use the general packagename
variables such as PN and BPN rather than hardcoding packagenames in
their recipe files?

  typically, you see things like this in recipe files:

ALLOW_EMPTY_${PN} = "1"
ALLOW_EMPTY_${PN}-staticdev = "1"

and so on. but, occasionally, someone decides to (unnecessarily?)
hardcode the package name, as in:

gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel = "1"
gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-general = "1"
gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-video = "1"
gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-vaapi = "1"

i'm *assuming* the above could have been written more concisely by
using ${PN}, correct? is there a coding style preference that users
should be *encouraged* to use? is there a general coding style guide
anywhere?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

