Return-Path: <robert_joslyn@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AE4FE00BE2; Fri,  4 Mar 2016 15:18:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.117.214.142 listed in list.dnswl.org]
Received: from scamp.selinc.com (scamp.selinc.com [74.117.214.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5527E00BA0
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 15:18:03 -0800 (PST)
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by scamp.selinc.com (8.15.0.59/8.15.0.59) with ESMTP id u24NI22e032525
	for <yocto@yoctoproject.org>; Fri, 4 Mar 2016 15:18:02 -0800
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 21316994:A2EBE251-88257F6C:007FC931;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF39 May 13, 2013
Message-ID: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
From: robert_joslyn@selinc.com
Date: Fri, 4 Mar 2016 15:17:55 -0800
X-MIMETrack: S/MIME Sign by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/04/2016 03:17:55 PM,
	Serialize by Notes Client on Robert Joslyn/SEL(Release 8.5.3FP4
	SHF39|May 13, 2013) at 03/04/2016 03:17:55 PM,
	Serialize complete at 03/04/2016 03:17:55 PM,
	S/MIME Sign failed at 03/04/2016 03:17:55 PM: The cryptographic key was
	not found,
	Serialize by Router on Edison/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 03/04/2016 03:18:02 PM,
	Serialize complete at 03/04/2016 03:18:02 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8094
	signatures=670697
Subject: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Fri, 04 Mar 2016 23:18:04 -0000
Content-Type: text/plain; charset="US-ASCII"

I'm building an image using btrfs and I noticed a problem with the 
btrfs-tools recipe in Jethro (using core-image-minimal and a 64-bit 
machine). The recipe builds fine, but I get the following error when 
attempting certain operations using btrfs, such as trying to start a 
scrub:

root@test:~# btrfs scrub start /
scrub started on /, fsid 79dc4fed-a0f7-43e2-b9e7-056b1a2c4cdd (pid=333)
libgcc_s.so.1 must be installed for pthread_cancel to work

I can solve this by adding libgcc to RDEPENDS for btrfs-tools. I'm not 
very familiar with libgcc, but is this just an oversight, or is there some 
reason it was not included? Should it be statically linked instead?

Thanks,

--
Robert Joslyn
Software Engineer, R&D - Automation
Schweitzer Engineering Laboratories
509-332-1890 ext. 3214

