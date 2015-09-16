Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B482E00C67; Wed, 16 Sep 2015 09:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2805E00B5D
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 09:43:09 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=BCr05SRBW+FbrsjaLuj9fl2oUEWVmXskaoIPMpMopSZtnH7pZ5T7O0e4lIWkw5wE;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ZcFnT-0000su-VC
	for yocto@yoctoproject.org; Wed, 16 Sep 2015 12:43:04 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD>
	<55F82F8A.0@gmail.com><F7097EDE-4D17-48E1-9D35-E4A59F64BFD6@gmail.com>
	<55F913D0.2000109@topic.nl>
In-Reply-To: <55F913D0.2000109@topic.nl>
Date: Wed, 16 Sep 2015 09:43:07 -0700
Message-ID: <F45FA12158354FC0BEDC44D9390F3A23@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdDwTr84NehxWQ6NTbm89EFOUDdV3QATbcrw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606889e333b89a25a80f440f15870cb0458b7350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Wed, 16 Sep 2015 16:43:11 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Mike Looijmans
>
> "Embedded" in my world is not about RAM or disk size. It's about 
> building a device that has a set task in life, and nothing is as 
> important as that one task. Whether that's running on an i7 
> or an M3 is irrelevant.
> 
> For a system to acquire and process sensor data, record your 
> favorite TV 
> shows, or guide a missile, there's no need for a full fledged 
> bash shell 
> interpreter. It just needs a bit of plumbing to get the 
> application up 
> and running, and that's about it.
> 
> Busybox is for systems like that. For these systems, anything more is 
> overkill, and will waste resources and increase the boot time.

If you've got a 1GB eSSD drive, because that's the smallest you can buy,
having a 382MB image rather than a 346MB image isn't a waste of anything.
How much boot time increase do you think you'll get from full-featured
command line tools? I'd be surprised if it was noticeable to anyone.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


