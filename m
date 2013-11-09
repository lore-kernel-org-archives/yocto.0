Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED72FE0178A
	for <yocto@yoctoproject.org>; Sat,  9 Nov 2013 01:15:50 -0800 (PST)
Received: from [173.34.6.101] (port=55999 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vf4dv-0007CI-JY
	for yocto@yoctoproject.org; Sat, 09 Nov 2013 04:15:47 -0500
Date: Sat, 9 Nov 2013 04:15:41 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311090412110.17116@oneiric>
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
Subject: the current dev manual seems to overly emphasize the importance of meta-intel
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
X-List-Received-Date: Sat, 09 Nov 2013 09:15:52 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  perusing the current dev manual and it reads:

"Supported Board Support Packages (BSPs): The Yocto Project provides a
layer called meta-intel and it is maintained in its own separate Git
repository..."

  this wording *seems* to suggest there is something magical about the
meta-intel layer as compared to the numerous other layers. in
particular, this statement further down just adds to that impression:

"To get started with the BSPs, you need to use Git to create a local
clone of the upstream repository."

  i see no problem with using the meta-intel layer as an *example* but
that section should be reworded to not make the reader think that
meta-intel is unique in some weird sense. just my $0.02.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

