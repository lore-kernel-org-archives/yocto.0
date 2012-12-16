Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63922E0052C
	for <yocto@yoctoproject.org>; Sun, 16 Dec 2012 08:55:29 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:40994 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TkHUu-0005V6-5q
	for yocto@yoctoproject.org; Sun, 16 Dec 2012 11:55:28 -0500
Date: Sun, 16 Dec 2012 11:55:24 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212161148480.17740@oneiric>
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
Subject: IMHO, cross-compile/toolchain examples should use non-x86 arches
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
X-List-Received-Date: Sun, 16 Dec 2012 16:55:29 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  a general preference on my part, but i think it would be useful if
any yocto docs that are discussing toolchains or cross-compilation or
the like use *non*-x86 architectures to get the point across.

  for example, consider the current application developer's guide.
part of it uses, as an example, the toolchain installer
poky-eglibc-x86_64-i586-toolchain-gmae-1.4.sh.  while this works just
fine, of course, what it does is potentially co-mingle both the dev
host content and target host content, making it harder than necessary
for the reader to draw a clear distinction between the two.

  if any example related to compilation or a toolchain involves, say,
an *arm* target, then it's *immediately* obvious (using the "file"
command) whether something belongs on the dev host or on the target.

  also, if you're using x86 for both dev content and target content,
you run the risk of an example working by accident since you're
picking up natively-installed tools when you shouldn't be.  if you use
a non-x86 arch, there's little chance of that happening.

  just my $0.02 (Cdn).

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

