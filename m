Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C66BE013E5
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 06:31:05 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:46188 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjsKm-00015A-Ic
	for yocto@yoctoproject.org; Wed, 27 Jun 2012 09:31:04 -0400
Date: Wed, 27 Jun 2012 09:30:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206270927460.18752@oneiric>
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
Subject: fetch log file errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2012 13:31:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  here's the log file for one of the tarballs that should have been
fetched from my local mirror:

DEBUG: Executing python function do_fetch
DEBUG: Executing python function base_do_fetch
DEBUG: Trying PREMIRRORS
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['svn', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['git', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['hg', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['bzr', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['svk', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['p4', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['osc', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['https?$', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: For url ['http', 'downloads.yoctoproject.org', '/releases/gnu-config/gnu-config-yocto-20111111.tgz', '', '', {}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['file', '', '/home/rpjday/dl/', '', '', {}]
DEBUG: Trying Upstream
NOTE: fetch http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz
DEBUG: executing /usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P /home/rpjday/yocto/builds/bbc4/downloads 'http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz'
DEBUG: Python function base_do_fetch finished
DEBUG: Python function do_fetch finished
ERROR: Function failed: Network access disabled through BB_NO_NETWORK but access requested with command /usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P /home/rpjday/yocto/builds/bbc4/downloads 'http://downloads.yoctoproject.org/releases/gnu-config/gnu-config-yocto-20111111.tgz' (for url None)

  not sure what i should be seeing here, and i can guarantee that the
tarball gnu-config-yocto-20111111.tgz is in my ~/dl directory, as are
numerous others that are now being fetched from the net rather than my
local mirror.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

