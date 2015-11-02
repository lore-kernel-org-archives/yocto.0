Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F4201E00B0B; Mon,  2 Nov 2015 07:41:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C10E4E00AF8
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 07:41:06 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tA2Ff5WA016590
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 2 Nov 2015 07:41:05 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Mon, 2 Nov 2015 07:41:05 -0800
To: Yocto Project <yocto@yoctoproject.org>
From: Mark Hatle <mark.hatle@windriver.com>
X-Enigmail-Draft-Status: N1110
Organization: Wind River Systems
Message-ID: <56378410.5030900@windriver.com>
Date: Mon, 2 Nov 2015 09:41:04 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
Subject: New prelink version
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
X-List-Received-Date: Mon, 02 Nov 2015 15:41:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

I just wanted to updated people on the prelinker, and send out news of a new
release, but first some project announcements.

As some of you may be aware, the previous upstream to the Cross Prelinker has
effectively been abandoned.  This work was being done by Jakub Jelinek at Red
Hat.  However, there have not been any updates since October of 2013.  I have
tried to reach out to him a few times and have not gotten a response.

So effectively immediately, I am planning on supporting both a standalone
prelink and cross prelinker.  In order to do this, there are now two 'release'
branches in the git://git.yoctoproject.org/prelink-cross, 'master' and
'cross_prelink'.

The 'master' branch is intended to replace the former prelink that was created
and managed by Jakub.  It is a standalone project that does not provide any of
the cross compilation helper items, such as the prelink-rtld and sysroot
(--root=) processing.  It will contain all of the latest patches for
architecture functionality and bug fixes.

The 'cross_prelink' branch, as it has been, is the home for the cross
compilation version of the prelinker.  It will be functionally identical to the
'master' branch -- but contain prelink-rtld and the sysroot functions.

In addition, I intend to do regular date-based tags to indicate stable release
points.  This is similar to how Jakub did releases for the prelinker.

Two tags will be generated, both with the same date, and one ending in '_cross'.
 The _cross indicates it contains the cross compilation functionality.

...and now... the first release

20151030 and 20151030_cross

Common changes:

* Add additional debugging in certain places
* Take over full maintainership of the project
* general: Update type_class values to sync w/ glibc-2.22
* MIPS: Add SHT_MIPS_ABIFLAGS support
* ARM: Fix ARM IFUNC implementation (bad patch merge)

Cross changes:
* Rebase the prelink-rtld on glibc-2.22
* Add NIOS2 support to the prelink-rtld

Notes:

If you are using the standalone prelinker with glibc-2.22 on IA32 or ARM, due to
a bug in glibc-2.22, you -must- have the following patch applied to glibc:

https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=cadaf1336332ca7bcdfe4a400776e5782a20e26d

for more info see:

https://sourceware.org/bugzilla/show_bug.cgi?id=19178


