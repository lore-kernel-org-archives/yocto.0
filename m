Return-Path: <prvs=253c3eaba=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CBC9E00B03; Tue, 28 Mar 2017 02:55:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Mar 2017 02:55:14 PDT
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A63CE00A51
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 02:55:13 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FKAwClMdpY/0oKEKxdHQEFAQsBhDWBC?=
	=?us-ascii?q?weDW4oPkWCVO4IOHwuJVhgBAgEBAQEBAQEDgRCCYnIBAQEBAQEBAQFMAg1lIg8?=
	=?us-ascii?q?BOzMNAiYCKh8WDQgCihGsHYImJgKKVgUJAYEBhUOCBYYBggmCOoJAHwWcXYIGh?=
	=?us-ascii?q?HaGF5AVF4ZBk2YfgT0SEhEFH1aGWnMBiF+BDQEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2FKAwClMdpY/0oKEKxdHQEFAQsBhDWBCweDW4oPkWCVO4I?=
	=?us-ascii?q?OHwuJVhgBAgEBAQEBAQEDgRCCYnIBAQEBAQEBAQFMAg1lIg8BOzMNAiYCKh8WD?=
	=?us-ascii?q?QgCihGsHYImJgKKVgUJAYEBhUOCBYYBggmCOoJAHwWcXYIGhHaGF5AVF4ZBk2Y?=
	=?us-ascii?q?fgT0SEhEFH1aGWnMBiF+BDQEBAQ?=
X-IronPort-AV: E=Sophos;i="5.36,236,1486422000"; 
   d="scan'208";a="3194100"
To: <yocto@yoctoproject.org>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <1eb192a1-60ee-fefc-dd5c-540e48791a46@skidata.com>
Date: Tue, 28 Mar 2017 11:53:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: multiple, different kernel images in one rootfs
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
X-List-Received-Date: Tue, 28 Mar 2017 09:55:16 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

Hi,
I'm currently using Jethro and like to include multiple, different
kernel (fit)images (with different source branches/versions) in one
RootFS. When booting such a system the bootloader (U-Boot) will decide
which kernel to load.

I've already done some searches on the Internet, but found only Bug
6945, which seems to be something similar. But I'm unable to find any
documentation on it, and the commits linked to the bugzilla [1] aren't
very helpful.

Furthermore a similar question on the mailing list in 2015 [2] wasn't
answered.

So does anybody of you know how to implement that or where/how I might
get started?

Thanks & regards,
Richard L

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=6945
[2] https://lists.yoctoproject.org/pipermail/yocto/2015-May/025031.html

