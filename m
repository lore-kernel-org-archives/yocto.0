Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4468E00741
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:45:58 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=W5xlX+NGMvyIY2GMDJcVnplQv3gGkScXDPiRG2HjIQa/iWd70orMScoy23oawRQh;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UIPtV-0002wl-TN; Wed, 20 Mar 2013 16:45:58 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Ross Burton'" <ross.burton@intel.com>,
	<yocto@yoctoproject.org>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD><CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com><56C806C0B65D44ADA7D6314F4051E91E@PAULD><CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com><603BDC00C3D14F51BF551A28572660E3@PAULD><CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com><B85484ED80754E0D8F82ECCA688762AF@PAULD><CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com><9331786F4D074BCCAB63AE3E10152262@PAULD><F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com><207F72914E4C4014A2C1124BBADDD244@PAULD>
	<D6081CD6470747D1803B8A19E552149F@intel.com>
In-Reply-To: <D6081CD6470747D1803B8A19E552149F@intel.com>
Date: Wed, 20 Mar 2013 13:45:41 -0700
Message-ID: <439A53A3DAF743BEA77A6820E8B9641E@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4lqwyEY5FhlkB9SCyg1R+pHrYkuQAADPmw
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884e34f649a4f146db477f57af172d032c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 20 Mar 2013 20:45:59 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Ross Burton
> 
> Right.  Probably easiest to blow away your tmp/ as it will 
> have bits of master in, and downgrading isn't supported.
> > By the way, since you're from Intel, why the hell are they 

Okay, here goes...

I'll let you know how it comes out, some time tomorrow. I'm compiling it on
my lowly D2700. ;-)

Thanks for your help.

> Wish I knew.  Cedar Trail wasn't great, but it's certainly 
> better than waiting for Valleyview.  That's the hardware 
> group, nothing to do with me! :)

The D2700 has been great for my synthesizer project. Plenty of SSE
horsepower with no fan. I'll have to switch to the N2800, but that just
means somewhat fewer voices.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


