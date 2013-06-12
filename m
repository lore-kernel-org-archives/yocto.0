Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEE6EE01409
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 15:10:08 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=a4WrejBQRwpNZ4aaxCsPKnRgZdqsLXQBwjaMXq0ohdnIIil2etam+KFveHOq0oNe;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UmtF2-0006h7-0g; Wed, 12 Jun 2013 18:10:08 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Trevor Woerner'" <twoerner@gmail.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD><bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org><1875741.cStO1T6C1g@helios><58DC6CADE1A5492E9E712C310E6C9019@PAULD><CAHUNapQwaFgZv58X-MEhMc_x1rDUL2jtGY+irZ=d6fDQDKxC-w@mail.gmail.com>
	<DB661AC610E74F50A7066636B2F398E7@PAULD>
In-Reply-To: <DB661AC610E74F50A7066636B2F398E7@PAULD>
Date: Wed, 12 Jun 2013 15:10:12 -0700
Message-ID: <FBE503961E8B47A18FEB4862A9BB1D32@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-index: Ac5nsIhc7VfK9jF9QH+2iwHjnngkigABZF2wAADHu2A=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606883be0aaba1bc1e40efcaba9bcf90f899a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 22:10:13 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Or, looking at your notes, is it that "bitbake -c populate_sdk <image>"
takes the toolchain that was used to build the image, and packages it up as
an SDK for the benefit of application developers (the normal case), while
"bitbake meta-toolchain" builds a new SDK that may be different in some
ways, including maybe running on a third intermediate machine (the special
case)?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


