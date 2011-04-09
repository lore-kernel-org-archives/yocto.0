Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8F09D4C80050
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2011 07:04:59 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q8WuP-0001eI-0W
	for yocto@yoctoproject.org; Sat, 09 Apr 2011 14:04:57 +0200
Received: from ppp079166139232.dsl.hol.gr ([79.166.139.232])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 09 Apr 2011 14:04:57 +0200
Received: from gmane by ppp079166139232.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 09 Apr 2011 14:04:57 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 09 Apr 2011 15:04:41 +0300
Organization: Reliable Embedded Systems
Message-ID: <inpi0q$617$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166139232.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: Poky release is 5.0 "Bernard" confusion
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Apr 2011 12:05:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

Can someone please tell me if there is a tag in
git://git.pokylinux.org/poky.git which corresponds to the official
release tarball and what it is?

What puzzles me is that if you check out bernard-5.0 from the git
repository it does not correspond to
http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2

OK, it does not seem to be anything seriously different between the two:

#       modified:   README.hardware
#       modified:   documentation/adt-manual/adt-prepare.xml
#       modified:   documentation/yocto-project-qs/yocto-project-qs.xml
#       modified:   meta/conf/distro/poky.conf

... but you might want to synchronize since some people prefer to work
from git and others from the tarball.

As an example the README.hardware found in the tarball suggests to build
and update u-boot for the Freescale MPC8315E-RDB, which does not exist
in the git repo.

Regards,

Robert


