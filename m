Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B19DDE01508
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 17:21:49 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=ilA1fF9oHf/rA1md55p0QTpXTQtf7RQwWRQ7dAAGl9RdxQAOcPjgAX9mCXwjpDlp;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UNXw4-00077m-Iv; Wed, 03 Apr 2013 20:21:48 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Darren Hart'" <dvhart@linux.intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
In-Reply-To: <515C8FEF.2090201@linux.intel.com>
Date: Wed, 3 Apr 2013 17:21:57 -0700
Message-ID: <7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4wrGD8HaAgYukxQd6UZuqABCXZCQAHSrKA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688279dd140e5ecf68bbadae86a327233c1350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
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
X-List-Received-Date: Thu, 04 Apr 2013 00:21:50 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Darren Hart
> 
> Are you building with the rm work setting? Otherwise, that 
> should not be
> empty unless you have more than one linux-yocto* directory 
> and the other
> is populated.
> 
> If not, verify rm work is not on and just build the kernel:
> 
> $ bitbake linux-yocto -c cleansstate
> $ bitbake linux-yocto

After doing that (with two esses), I now have a .config file, along with a
ton of other stuff, in that folder. I have no idea what made it disappear,
because I don't use the rm_work option.

However, the only BLK_DEV_RAM line is

	# CONFIG_BLK_DEV_RAM is not set

I haven't been fiddling with the kernel, because I don't know how to fiddle
with the kernel. This should be a plain vanilla build.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
  


