Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E274E01716
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 03:28:03 -0700 (PDT)
Received: from [173.34.6.101] (port=35789 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VcYR0-000682-Es
	for yocto@yoctoproject.org; Sat, 02 Nov 2013 06:28:02 -0400
Date: Sat, 2 Nov 2013 06:27:57 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311020624570.21875@oneiric>
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
Subject: BB_DANGLINGAPPENDS_WARNONLY = "1" or "true"?
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
X-List-Received-Date: Sat, 02 Nov 2013 10:28:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (i can see it's going to be that kind of weekend.) ref manual reads:

     BB_DANGLINGAPPENDS_WARNONLY = "1"

but some layers define:

meta-linaro/meta-aarch64/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY = "true"
meta-linaro/meta-linaro-toolchain/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY = "true"
meta-linaro/meta-linaro/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY = "true"
poky-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY ?= "true"

so general question(s) -- is it understood that "1" and "true" are
equivalent? should there be a standard? should the ref manual be
enhanced, or should the above layers clean themselves up?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

