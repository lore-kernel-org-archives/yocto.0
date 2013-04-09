Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEB5FE01469
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 06:10:30 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:55185 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPYJi-00086W-Ao
	for yocto@yoctoproject.org; Tue, 09 Apr 2013 09:10:30 -0400
Date: Tue, 9 Apr 2013 09:10:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.DEB.2.02.1304090833380.5655@oneiric>
Message-ID: <alpine.DEB.2.02.1304090906420.6611@oneiric>
References: <alpine.DEB.2.02.1304090833380.5655@oneiric>
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
Subject: Re: i think the list of "required software" needs to be clarified
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
X-List-Received-Date: Tue, 09 Apr 2013 13:10:31 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i just found an old thread that i was in:

http://lists.linuxtogo.org/pipermail/openembedded-core/2012-July/025402.html

i do notice what seems to be an inconsistency.  from bitbake.conf:

ASSUME_PROVIDED = "\
    bzip2-native \
    chrpath-native \
    git-native \
    grep-native \
    diffstat-native \
    patch-native \
    perl-native-runtime \
    python-native-runtime \
    tar-native \
    virtual/libintl-native \
    "
# gzip-native should be listed above?

  so gzip is listed here as questionable, but seems to be essential
based on sanity.bbclass:

SANITY_REQUIRED_UTILITIES ?= "patch diffstat makeinfo git bzip2 tar
gzip gawk chrpath wget cpio"

  does that not seem a touch inconsistent?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

