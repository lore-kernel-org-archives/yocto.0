Return-Path: <robert_joslyn@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C377E00BFE; Fri,  4 Mar 2016 16:12:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F745E00BA0
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 16:12:57 -0800 (PST)
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by volare.selinc.com (8.15.0.59/8.15.0.59) with ESMTP id u250Cv8O026743
	for <yocto@yoctoproject.org>; Fri, 4 Mar 2016 16:12:57 -0800
In-Reply-To: <CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
X-KeepSent: FA897E48:32A2821D-88257F6C:00833AFA;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
Message-ID: <OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
From: robert_joslyn@selinc.com
Date: Fri, 4 Mar 2016 16:12:54 -0800
X-MIMETrack: S/MIME Sign by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/04/2016 04:12:53 PM,
	Serialize by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/04/2016 04:12:53 PM,
	Serialize complete at 03/04/2016 04:12:53 PM,
	S/MIME Sign failed at 03/04/2016 04:12:53 PM: The cryptographic key was
	not found,
	Serialize by Router on Edison/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 03/04/2016 04:12:57 PM,
	Serialize complete at 03/04/2016 04:12:57 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8094
	signatures=670697
Subject: Re: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Sat, 05 Mar 2016 00:12:59 -0000
Content-Type: text/plain; charset="US-ASCII"

Khem Raj <raj.khem@gmail.com> wrote on 03/04/2016 03:26:37 PM:
> 
> On Sat, Mar 5, 2016 at 7:17 AM,  <robert_joslyn@selinc.com> wrote:
> > I'm building an image using btrfs and I noticed a problem with the
> > btrfs-tools recipe in Jethro (using core-image-minimal and a 64-bit
> > machine). The recipe builds fine, but I get the following error when
> > attempting certain operations using btrfs, such as trying to start a
> > scrub:
> >
> > root@test:~# btrfs scrub start /
> > scrub started on /, fsid 79dc4fed-a0f7-43e2-b9e7-056b1a2c4cdd 
(pid=333)
> > libgcc_s.so.1 must be installed for pthread_cancel to work
> >
> > I can solve this by adding libgcc to RDEPENDS for btrfs-tools.
> 
> thats fine.

What is the process for getting this fixed upstream? Trivial patch is 
below, if that is sufficient.

Signed-off-by: Robert Joslyn <robert_joslyn@selinc.com>
---
diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb 
b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
index 37c622b..cc2ccfc 100644
--- a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
+++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
@@ -11,6 +11,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fcb02dc552a041dee27e4b85c7396067"
 SECTION = "base"
 DEPENDS = "util-linux attr e2fsprogs lzo acl"
+RDEPENDS_${PN} = "libgcc"

 SRCREV = "7f1328ccb5d159efe850d4eaea9b49bbe8c4181e"
 SRC_URI = 
"git://git.kernel.org/pub/scm/linux/kernel/git/kdave/btrfs-progs.git \

