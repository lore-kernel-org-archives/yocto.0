Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D57B3E01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 01:36:52 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Y1G2TM2KhHu9LNHwG2t3M3pq72ioy64Lkg+1at4ii4acCzhTtNCrqNwxa9O2sBWE;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VEbFD-0000H1-EX; Wed, 28 Aug 2013 04:36:51 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Martin Jansa'" <martin.jansa@gmail.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD><521D354E.1020909@mlbassoc.com><8EB78E64DFE9436EAFB462E357C464EC@PAULD>
	<20130828072025.GC3544@jama>
In-Reply-To: <20130828072025.GC3544@jama>
Date: Wed, 28 Aug 2013 01:36:55 -0700
Message-ID: <DB63579B404D457F9DF825A744067092@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6jvwGGd1l4tqDkS7Gqk9RyuCDSiQACh3Eg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606889696fb460868f3326c7003de81c3610d350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 28 Aug 2013 08:36:57 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Martin Jansa
> 
> Are you sure that you're not building some unnecessary IMAGE_FSTYPES?

No, I'm not sure.

> Last time someone asked my why it takes so long I've added some debug
> output to do_rootfs and found out that only half of the time was opkg
> installing packages and the rest was various IMAGE_FSTYPES.
> 
> e.g. tar.bz2 takes very long without pbzip2 or lbzip2

Is there a standard way to use those in a build? Do I replace bzip2 with a
link to one of those? Or does Yocto build its own bzip2?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


