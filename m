Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D9F1E0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 17:22:19 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=nxpu6mdCUulEo4mccfnweoeLPnlw0uh2TNHAc9OW5ELEnL24RI3tZs7QSk3pLI1V;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1VA7o2-0005d5-TY
	for yocto@yoctoproject.org; Thu, 15 Aug 2013 20:22:19 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD><520D3044.6000904@linux.intel.com><AA5214DFE7484C72896D4D472906185A@PAULD><2117185.3I4JUhGDnT@helios>
	<8D8C809E9ACF41CF9227B7A89C675A27@PAULD>
In-Reply-To: <8D8C809E9ACF41CF9227B7A89C675A27@PAULD>
Date: Thu, 15 Aug 2013 17:22:25 -0700
Message-ID: <FC6A45F7D3F443F088F4FD8C888ED595@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6aAI3MuSaGVBEtSeSe4bHOcyWuuAABZBawAAQXI3A=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688542cc80763aad50e23e1460064691e21350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Fri, 16 Aug 2013 00:22:20 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: yocto-bounces@yoctoproject.org 
> 
> That said, rebuilding tmp (preserving downloads and sstate-cache) did
> indeed fix that problem, but it was replaced with another. 
> Now, do_rootfs
> is failing, complaining that it "cannot satisfy the following 
> dependencies
> for samba: libpam (>= 1.1.6)". Yet there's libpam, version 
> 1.1.6, right
> where it's always been in the metadata. Doing a clean and a 
> cleansstate on
> libpam didn't help. Now I'm trying rebuilding samba, but that's a huge
> package so it will take a while.

Not surprisingly, rebuilding Samba cleared out that spurious issue. So I'm
back to normal.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


