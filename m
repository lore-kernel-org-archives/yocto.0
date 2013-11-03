Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD6AE0178C
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 02:54:06 -0800 (PST)
Received: from [173.34.6.101] (port=48312 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VcvJi-0000rm-2p
	for yocto@yoctoproject.org; Sun, 03 Nov 2013 05:54:03 -0500
Date: Sun, 3 Nov 2013 05:53:54 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311030529100.31130@oneiric>
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
Subject: numerous questions about some ref manual variable glossary entries
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
X-List-Received-Date: Sun, 03 Nov 2013 10:54:09 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  wasn't sure what to do about some of these so i'd appreciate some
clarification. and away we go, mostly in alphabetical order ...

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBLAYERS_NON_REMOVABLE

  that entry *really* implies you need the meta-yocto and
meta-yocto-bsp layers for a successful build, which clearly isn't true
as lots of layers work with simply oe-core. can/should that
explanation be reworded to not be quite so emphatic?

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-INITSCRIPT_NAME

  reference to ${etcdir} ... how exactly does that differ from
${sysconfdir}? i've always understood that developers should use
${sysconfdir} in their recipe files.

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-NO_RECOMMENDATIONS
http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGE_EXCLUDE

  both of those claim no support for DEB packaging, is that still
true? i still don't know enough python to check the actual code but
i'm getting there.

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-RPROVIDES

  claims that a package's own name is already implicitly provided in
its RPROVIDES list. doesn't seem that way -- it's true for PROVIDES,
but doesn't seem true for RPROVIDES. thoughts?

  i think that might be it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

