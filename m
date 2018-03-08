Return-Path: <robert_joslyn@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAA8EE00F22; Thu,  8 Mar 2018 13:47:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.142 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 990 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Mar 2018 13:47:09 PST
Received: from scamp.selinc.com (scamp.selinc.com [74.117.214.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 522FBE00DD1
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 13:47:09 -0800 (PST)
Received: from pps.filterd (scamp.selinc.com [127.0.0.1])
	by scamp.selinc.com (8.16.0.22/8.16.0.22) with SMTP id w28LU6eQ006380; 
	Thu, 8 Mar 2018 13:30:31 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=in-reply-to :
	references : to : cc : mime-version : subject : message-id : from :
	date : content-type; s=SELinc2017;
	bh=Lh6iV/01qE6alHg6PdBbJhJyLNxiAgENlJLUnRhluPY=;
	b=uh+Fl2wrB59LnLSFRONUTsxZw5Vy/YfGaA2QSaBOdwsYMG5WQ3zpOuocwQ2ooheE55I7
	G86bK1sAErE7gnJX1+MwXONmGvh5BHbUB8qa2uw4hTSPHyHKKAL4C1/TVtueFeuwzZZi
	YEz4VXNvWrFz16XExrKEqWuB/VfnehVPvNAd7K9jhXY3exHGrX3eRXUgpCnRJ2+gAlUB
	KBWGb+Zs2DRMwF4YDy/ohdoKb7FdEtQN0+I7rOkU0Umj/3Cib8uenob+/AYPnhP0mSRO
	+G0zwsv+RUfSIojvIeNVp5N6x4mveGaPf4xjWo+LApDPCOYxKsWuy6zvxxzM4KDUKZl2
	yA== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by scamp.selinc.com with ESMTP id 2gjg71kmea-1;
	Thu, 08 Mar 2018 13:30:31 -0800
In-Reply-To: <20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
	<20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
To: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
MIME-Version: 1.0
X-KeepSent: 7B9AFEBD:04DA35BC-8825824A:0074D3B0;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
Message-ID: <OF7B9AFEBD.04DA35BC-ON8825824A.0074D3B0-8825824A.00762561@selinc.com>
From: robert_joslyn@selinc.com
Date: Thu, 8 Mar 2018 13:30:28 -0800
X-MIMETrack: S/MIME Sign by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/08/2018 01:30:28 PM,
	Serialize by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/08/2018 01:30:28 PM,
	Serialize complete at 03/08/2018 01:30:28 PM,
	S/MIME Sign failed at 03/08/2018 01:30:28 PM: The cryptographic key was
	not found,
	Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October 06,
	2017) at 03/08/2018 01:30:31 PM,
	Serialize complete at 03/08/2018 01:30:31 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8826
	signatures=668687
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 08 Mar 2018 21:47:10 -0000
Content-Type: text/plain; charset="US-ASCII"

"Marcelo E. Magallon" <marcelo.magallon@hpe.com> wrote on 03/08/2018 
01:00:28 PM:

> From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
> To: <robert_joslyn@selinc.com>, 
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Date: 03/08/2018 01:01 PM
> Subject: Re: [yocto] btrfs-tools Requires libgcc_s.so.1
> 
> Sorry to go off on a tangent:
> 
> On Fri, Mar 04, 2016 at 04:12:54PM -0800, robert_joslyn@selinc.com 
wrote:
> 
> >> > root@test:~# btrfs scrub start /
> >> > scrub started on /, fsid 79dc4fed-a0f7-43e2-b9e7-056b1a2c4cdd
> >(pid=333)
> >> > libgcc_s.so.1 must be installed for pthread_cancel to work
> >> >
> >> > I can solve this by adding libgcc to RDEPENDS for btrfs-tools.
> 
> I ran into the same thing with my device, different package. I 
> don't understand the fix:
> 
> >Signed-off-by: Robert Joslyn <robert_joslyn@selinc.com>
> >---
> >diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
> >b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
> >index 37c622b..cc2ccfc 100644
> >--- a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
> >+++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.1.2.bb
> >@@ -11,6 +11,7 @@ LICENSE = "GPLv2"
> > LIC_FILES_CHKSUM = "
file://COPYING;md5=fcb02dc552a041dee27e4b85c7396067"
> > SECTION = "base"
> > DEPENDS = "util-linux attr e2fsprogs lzo acl"
> >+RDEPENDS_${PN} = "libgcc"
> 
> What is this doing?
> 
> My understanding until a couple of days ago is that this will 
> simply pull the "libgcc" package into the image, add a dependency 
> in the binary package and NOTHING more. It won't change the way 
> binaries are linked, it won't change flags passed to the 
> compiler, etc.

Your understanding is basically correct, RDEPENDS specifies a runtime 
dependency. For btrfs-tools, it doesn't change the build, it simply makes 
sure that the libgcc package is installed on the target if btrfs-tools is 
also installed on the target. If there is more going on with RDEPENDS 
besides the final rpm/ipk/deb packaging, someone with more bitbake 
knowledge will have to provide more information.

> I'm confused because in my case libgcc_s.so.1 is already in the 
> image, before this change, but this change seems to be fixing the 
> issue, and I don't understand why.

In the case of btrfs-tools, it was simply that it needed libgcc_s.so.1 at 
runtime on the target, which my patch fixed. For me, the image I was 
building normally worked fine because some other package would pull in 
libgcc, but when testing on a minimal image, I would get that error. I'm 
not sure about your specific case. If you do have libgcc on the target, an 
application that needs it doesn't really care what package pulled it into 
the image, all that matters is that it's installed.

Robert

> 
> Any clues?
> 
> Thanks!
> 
> Marcelo

