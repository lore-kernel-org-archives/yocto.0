Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8ADBE00D20; Sun, 13 Sep 2015 13:15:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F0EE00821
	for <yocto@yoctoproject.org>; Sun, 13 Sep 2015 13:15:44 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=AbxYdKjels4Ny6HbYSvkJ3j0mWwv4zpAbdl+k0ZMNZpIwIJuK7Oj4KDw77k3a1wH;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ZbDgY-0004bW-MS
	for yocto@yoctoproject.org; Sun, 13 Sep 2015 16:15:38 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Sun, 13 Sep 2015 13:15:39 -0700
Message-ID: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDuYPUVhS0FImuORRu4v3X7tO4CNQ==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ec228c688241a183ce99fde7264e61f8350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Warning about auto generated BSP description
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
X-List-Received-Date: Sun, 13 Sep 2015 20:15:47 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm getting the following warning:

[kernel]: An auto generated BSP description was used, this normally
indicates a misconfiguration.
Check that your machine (chroma-bsp) has an associated kernel description.

Googling turns up the information that this is sometimes a spurious error
and nothing to worry about, because a full BSP description isn't strictly
required. However, as far as I can see I do indeed have a BSP description.
I built the BSP using the yocto-bsp tool. It created a
linux-yocto-rt_3.14.bbappend (since I'm using the RT kernel), and the
following files:

    chroma-bsp.cfg
    chroma-bsp.scc
    chroma-bsp-preempt-rt.scc
    chroma-bsp-standard.scc
    chroma-bsp-tiny.scc
    chroma-bsp-user-config.cfg
    chroma-bsp-user-features.scc
    chroma-bsp-user-patches.scc

The bbappend refers to chroma-bsp-preempt-rt.scc and the last three
(empty) files. chroma-bsp-preempt-rt.scc contains the requisite KMACHINE,
KTYPE and KARCH, and includes chroma-bsp.scc, which refers to
chroma-bsp.cfg. This seems to fit the definition of a "BSP description" in
3.4.5 of the Kernel Development Manual. The whole BSP tree is called
"meta-chroma-bsp" and that is indeed listed in my bblayers.conf. So why is
it complaining?

Also, I don't know that "Check that your machine has an associated kernel
description" means. The term "kernel description" doesn't appear anywhere
in the docs.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


