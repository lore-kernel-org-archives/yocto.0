Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4D42E00968; Thu, 26 Mar 2015 15:45:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71332E00779
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 15:45:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2C8DFF811DF; Thu, 26 Mar 2015 16:45:31 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id BF86DF811DC;
	Thu, 26 Mar 2015 16:45:30 -0600 (MDT)
Message-ID: <55148C0E.4020203@mlbassoc.com>
Date: Thu, 26 Mar 2015 16:45:34 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Question about git tarballs
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
X-List-Received-Date: Thu, 26 Mar 2015 22:45:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I built from Poky/Yocto master on 2015-02-22.  I always create
new tarballs from downloaded trees if they have changed
   BB_GENERATE_MIRROR_TARBALLS = "1"
and I stash them in my local mirror.

On that date, glibc had just been updated to version 2.21 so
it made sense that the tarball was updated.

Since that date, I've done dozens of [full] builds for my
various platforms.  The glibc recipe has not been touched
(at least not the git revision) since then.  However, the
tarball for its git repository has been refetched/rebuilt
a number  of times and it seems pretty hit-or-miss.  For
example a build on 2015-03-03 changed the tarball but one
just two days later did not.

Is there any sense to this?  If the downloaded git+tarball
contains the desired revision, why would it be re-downloaded
and rebuilt?  Sadly, I'm not sure I can give a good recipe
for causing the behaviour to happen so the problem can be
examined in detail.

Note: this behaviour seems to be limited to only a few git
trees.  These are most often being touched although I suspect
the underlying git tree is not:
   git2_git.yoctoproject.org.yocto-kernel-tools.git.tar.gz
   git2_sourceware.org.git.glibc.git.tar.gz

... very confused

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

