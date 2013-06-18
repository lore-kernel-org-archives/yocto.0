Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DBE0E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 09:17:55 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=QhpLUMitBMrFLCyetBvsg9NuaRPF+srsYXZrMGQyl9p/U7HEPdeIahRoaFUtBO/G;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UoybR-0005oX-UU; Tue, 18 Jun 2013 12:17:54 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Tom Zanussi'" <tom.zanussi@intel.com>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD>
	<1371564241.1569.26.camel@empanada>
In-Reply-To: <1371564241.1569.26.camel@empanada>
Date: Tue, 18 Jun 2013 09:17:56 -0700
Message-ID: <1F376671550B4DE9B7B9CC081C2CAF53@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5sLMY0thTvbwdHR9a4fexWuwkAfAAEnNog
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606882002f3c543b3dfe814c962851b8fe7f0350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org, foo.chien.haw@intel.com
Subject: Re: Cedartrail and Dylan?
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
X-List-Received-Date: Tue, 18 Jun 2013 16:17:55 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Tom Zanussi
> 
> I believe the main problem would be the graphics driver - it 
> would need
> porting to the 3.8 kernel - the rest would probably be 
> straightforward.
> 
> The cedartrail BSP was discontinued following danny, but I'm 
> cc:ing the maintainers in case they might have any further input.

Is this graphics issue likely to be a problem if I'm making the non-graphics
image? My app is headless.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


