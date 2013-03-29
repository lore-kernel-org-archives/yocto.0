Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8056EE0129D
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2013 09:41:39 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=PgadHvBH2OW6A0Us6/GMHoidez/B1tgilqBS3M6fKR861W6aEBNtPA53pG8khgUx;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1ULcN0-0001XR-LI
	for yocto@yoctoproject.org; Fri, 29 Mar 2013 12:41:38 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Fri, 29 Mar 2013 09:41:39 -0700
Message-ID: <83AAE70377374BEB910E991412CEFEE3@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4snEkAXZqFDnZ+Sd6Ykny6VwWJWg==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606886cac5916abe6995c8f096c0ec1748497350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Quick question about TTY ports
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
X-List-Received-Date: Fri, 29 Mar 2013 16:41:39 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm using the cedartrail (Atom) BSP, which supports motherboards with two
standard serial ports. If I run Ubuntu on one of these mobos, I get
/dev/ttyS0 and /dev/ttyS1. When I build the cedartrail image, I get
/dev/ttyS0 and /dev/ttySA0. Is ttySA0 the second serial port, or something
else? A Google search shows that this ttySA nomenclature is occasionally
used in various systems, but nowhere can I find any info on what it
conventionally means.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 
 


