Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8446FE00BFE; Wed, 16 Sep 2015 14:07:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B83C1E00BE1
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 14:07:26 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=tyCAO9MkQkIWa3QiuRzggSW6Y10iNRw7FFE+kWbDyd2hxVf7G5Rvlv+0sc1cQ+i4;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1ZcJvF-00044N-B9; Wed, 16 Sep 2015 17:07:21 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Khem Raj'" <raj.khem@gmail.com>,
	<yocto@yoctoproject.org>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
	<55F913D0.2000109@topic.nl>
	<F45FA12158354FC0BEDC44D9390F3A23@PAULD>
	<CAMKF1soA2ZwbaNme09KpwmsNt_6Aim-hO+sMvhZMWAKRxztJfQ@mail.gmail.com>
In-Reply-To: <CAMKF1soA2ZwbaNme09KpwmsNt_6Aim-hO+sMvhZMWAKRxztJfQ@mail.gmail.com>
Date: Wed, 16 Sep 2015 14:07:26 -0700
Message-ID: <D941F49FF00E498C965F16A3807C298F@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDwvZhlRdaDN0QoSPiAAegrstEpvwABeswQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688ce3714c49ae9f2f57812fad7310d22bf350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Re: I hate busybox!
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
X-List-Received-Date: Wed, 16 Sep 2015 21:07:27 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Khem Raj [mailto:raj.khem@gmail.com] 
> 
> Generally when you have systemd which copy images to RAM and then run
> from RAM would not want that extra 50 odd Megs gone
> for storing extra tools in some case.

Do you mean systemd or syslinux?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


