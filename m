Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9391EE017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 12:13:25 -0800 (PST)
Received: from [173.34.6.101] (port=35697 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VgKKx-0001If-Oc; Tue, 12 Nov 2013 15:13:23 -0500
Date: Tue, 12 Nov 2013 15:13:20 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311121509480.28578@oneiric>
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
Subject: clashing explanations of EXTRA_IMAGE_FEATURES in dev manual
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
X-List-Received-Date: Tue, 12 Nov 2013 20:13:26 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i'll let scott :-) reword this how he prefers, but in the dev
manual, there's this in section 5.10.6.1:
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#testing-packages-with-ptest

     EXTRA_IMAGE_FEATURES += "ptest-pkgs"

while just a bit further down in section 5.15.1:
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#creating-the-root-filesystem

one reads:

     IMAGE_FEATURES = "read-only-rootfs"

or

     EXTRA_IMAGE_FEATURES = "read-only-rootfs"

  i think readers might get confused as to when to use one or the
other variable, and whether to use "=" or "+=".

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

