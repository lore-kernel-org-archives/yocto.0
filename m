Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5AB2E01716
	for <yocto@yoctoproject.org>; Sat,  2 Nov 2013 03:13:28 -0700 (PDT)
Received: from [173.34.6.101] (port=35768 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VcYCt-0005or-4n
	for yocto@yoctoproject.org; Sat, 02 Nov 2013 06:13:27 -0400
Date: Sat, 2 Nov 2013 06:13:20 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311020605300.21679@oneiric>
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
Subject: explanation for ALTERNATIVE_LINK_NAME in ref manual seems incomplete
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
X-List-Received-Date: Sat, 02 Nov 2013 10:13:29 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


 on my quest to spiff up the ref manual variables glossary, a question
about ALTERNATIVE_LINK_NAME, explained here:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-ALTERNATIVE_LINK_NAME

 at first glance, that explanation *suggests* that the purpose of that
variable is to support an alternative name to an existing command, but
it doesn't make it clear that a *very* common usage is to simply
create a link with precisely the same name elsewhere. you see a *lot*
of this throughout the recipes (like this snippet from util-linux):

ALTERNATIVE_LINK_NAME[dmesg] = "${base_bindir}/dmesg"
ALTERNATIVE_LINK_NAME[kill] = "${base_bindir}/kill"
ALTERNATIVE_LINK_NAME[more] = "${base_bindir}/more"
ALTERNATIVE_LINK_NAME[mkswap] = "${base_sbindir}/mkswap"
ALTERNATIVE_LINK_NAME[blockdev] = "${base_sbindir}/blockdev"

which appears to simply create symlinks from /bin to programs in
/usr/bin, yes? (that's what it's doing, right?) i suspect it would be
useful to mention that application in the explanation, unless i'm
totally misunderstanding what i'm reading.

  also, since:

"If ALTERNATIVE_LINK_NAME is not defined, it defaults to
${bindir}/<name>."

lines like this from util-linux.inc:

ALTERNATIVE_LINK_NAME[eject] = "${bindir}/eject"

are kind of silly, no?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

