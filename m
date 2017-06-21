Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73249E00BC4; Wed, 21 Jun 2017 01:08:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0306]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC6D2E00BBF
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 01:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498032502; bh=SBDTKXfatW7EuJRaOA26kXwgLh3xcxOGLYw3
	WRYo4kg=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=iTSEcrE83t/4Z8ETmBMrtiu
	duIsSXPkwAx4+rTlKdWiSwrSp0TUblfkjns6rg1OHwDCYw0Q4aTub3HB1XXk82XNX9c
	dRtmpn2UCSY3A2Tdpz+FFmu8KeyC/423v7uNH0zJynL3zzDY7ldi0R4LyRZ9el/qAc6
	bSaoC6eQNe+aOH3hAumeEoNRj7rmm9On+m5dDTH1bcb4oO7+XmqtvDKO1AvSgrRyN4Z
	eWBkpfqLkS6fS9W2soDT3fvESaF5am6Y4wwIRhsUx3UBajcGx29cUG8dlGCAjE90tgd
	WXD9uLfzSdPQmWP7obetLmsKogBC3hwZLViA83IzAKdVzbSB/0w==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=pUb2I5LKOvnK91a3ktQ9MXW23wXehYOpSp0GyfefB4WVTGW7xCc/B+G3ptqww9JaVKdvHlY3RuFXqTRhHLBQFDGlvGotHnxxKGTV3MHXSbYq9efXzL6ksnd2VjJCKU0HMOz358o9cqu5rh4rsAD1g//dNNKjJBiF+Ku0cfNRdGgJCDFO/UqftSPAHbuh8v3+ziXa5QaoBBboFH76Fpn6EnRoiq3CIBUYTZ7TknSfJtrE30R2aRPaNXROoyefOckYrWCyTujU34BfF3Pb4qcthmxrwUwUaE9SAvfjqUxUTaoewpUDL9DqbMcvcErrKSt2664uNzxTxPDVTgamIQLiXw==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dNagW-0004LV-9F
	for yocto@yoctoproject.org; Wed, 21 Jun 2017 04:08:20 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Wed, 21 Jun 2017 01:08:18 -0700
Message-ID: <C7A527053D6D42FAAF5008EACBF96624@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLqZYqDAuPEGoDEQ2ij+gDGcrv+/A==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068819ee41b56126c06d11bca2f5769b4c73350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: Raspberry Pi: how do I change cmdline.txt?
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
X-List-Received-Date: Wed, 21 Jun 2017 08:08:24 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

I found cmdline.txt in a folder called bcm2835-bootfiles, so I thought
this was related to the bcm2835-bootfiles.bb recipe. I created my own
cmdline.txt and a .bbappend saying where I put it, but it didn't work.
Looking at the recipe, it doesn't mention cmdline.txt. What recipe deals
with that file? I'm just trying to specify tty1 as the console.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


