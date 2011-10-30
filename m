Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D56E012F3
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 15:33:45 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKdwm-0004W6-63
	for yocto@yoctoproject.org; Sun, 30 Oct 2011 18:33:44 -0400
Date: Sun, 30 Oct 2011 18:33:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1110301735310.4586@localhost6.localdomain6>
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
Subject: where does that "50G" disk space figure come from in QS guide?
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
X-List-Received-Date: Sun, 30 Oct 2011 22:33:46 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  QS guide suggests build process using sato will use about 50G of
disk space.  where does that figure come from?  i just did a configure
and build of core-image-sato for beagleboard on my 64-bit ubuntu 11.10
system and it cost me about 3.5G for the tarball download directory,
and just under 28G for the entire build directory.  so where does 50G
come from?  and that was *without* economizing using "INHERIT +=
rm_work".

rday

p.s.  followup to post earlier this week, building for beagleboard on
64-bit ubuntu 11.10 seems to work just fine.  cranking up the
parallelism did a full build in less than 2 hours, given that
all tarballs were already downloaded.

p.p.s.  what is the process for validating a new distro/version?  i
have lots of spare cycles, i can run through a few builds on my
system.

