Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A9D8E00C91; Mon, 14 Sep 2015 10:39:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8051E006F6
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 10:39:02 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=NWGNshMoAilf8KXcx8wupX2FI7H8otxUhtrDomIHbp9JV9dt25XlpSQaKPB0D7iH;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ZbXiD-000292-19; Mon, 14 Sep 2015 13:38:41 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Bruce Ashfield'" <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
References: <CBE84E2773C74A3AB4EA3A80074BCFB3@PAULD>
	<55F6D5A6.2000607@windriver.com>
In-Reply-To: <55F6D5A6.2000607@windriver.com>
Date: Mon, 14 Sep 2015 10:38:42 -0700
Message-ID: <17509C1F9D0D41DE8575215D4D609FBC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDu91Et8JvygeApTXOGPD0M0XsJlQAG18JA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606880d29a23af2420c516819e7542ab80799350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: Warning about auto generated BSP description
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
X-List-Received-Date: Mon, 14 Sep 2015 17:39:04 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com] 
> 
> The tool may have created these files, but the question is .. 
> What release are you using ? If you check something in the kernel meta
> directory, I can tell you if the warning is wrong, or something is 
> really being missed.

I'm using Fido.

> The reason I asked about the release, is that the location of 
> the kernel
> meta directory will be in a different place between the various
> releases. But it is always in the kernel source directory, 
> whether it is
> in work-shared, or in work. So if you head to that directory and look
> for either .meta or .kernel-meta, you should see a file 
> "top_tgt" in that
> directory.
> 
> Look at the contents of that file. It should point to those generated
> files you referenced above. If it doesn't .. they weren't used, and we
> need to figure out why.

The file
"/home/pauld/yocto-fido/build/tmp/work-shared/chroma-bsp/kernel-source/.me
ta/top_tgt" contains
"/home/pauld/yocto-fido/build/tmp/work-shared/chroma-bsp/kernel-source/.me
ta/cfg/scratch/obj/home/pauld/yocto-fido/meta-chroma-bsp/recipes-kernel/li
nux/files/chroma-bsp-preempt-rt.scc". That referenced folder includes a
copy of all the .scc and .cfg files I mentioned before. I guess that means
that they are in fact being used.

Does that mean that this warning message is spurious, and can be ignored?
My kernel is hanging during the boot at this point, but I suspect my real
problem is elsewhere.

Thanks so much for your time helping me to figure this out.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


