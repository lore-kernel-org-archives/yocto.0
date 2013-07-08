Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3AA1E013EC
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 13:04:08 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=GaKXvFKyfCo7LmVELedPL0ucCKWIKGb31BcW/HNstaH7CJ+qyOF8t5tGIjmNgszV;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UwHfJ-0005RG-5W; Mon, 08 Jul 2013 16:04:05 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Tomas Frydrych'" <tf+lists.yocto@r-finger.com>, <yocto@yoctoproject.org>
References: <9C4B6D7C047D4970BA9248AA4264E8A6@PAULD>
	<51DA82B4.2090207@r-finger.com>
In-Reply-To: <51DA82B4.2090207@r-finger.com>
Date: Mon, 8 Jul 2013 13:03:56 -0700
Message-ID: <640E8DFA62C748DB90C251F9AFFFA13F@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac57u3RDS2sdqok0TlOtl6qHQli9mAAWR9Tg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688029782cb4ef12393f95ef6e5248797a3350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Changing syslinux configuration
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
X-List-Received-Date: Mon, 08 Jul 2013 20:04:09 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Tomas Frydrych
> 
> On 06/07/13 02:23, Paul D. DeRocco wrote:
> > Does anyone know what recipe actually sets LABELS?
> 
> The relevant image classes do.

Thanks. It turned out to be image-live.bbclass, which sets a bunch of
SYSLINUX_xxx symbols unless they've already been set, and which are then
obeyed by syslinux.bbclass.

So I'm setting these in my layer.conf, and it seems to work. Is that the
right place to do it, or should it be in my main layer recipe? I really have
no sense about the order in which anything is read or obeyed.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


