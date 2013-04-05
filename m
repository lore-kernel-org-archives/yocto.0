Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 021B0E01523
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 16:55:06 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=C5X6AgR4A9dkIzNMmggpcQ3udX0hr/Uk31cG1WmN4dnzjyDs6iWDgeSWfRVEheOr;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UOGTI-0003VD-8E; Fri, 05 Apr 2013 19:55:04 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Sean Liming'" <sean.liming@annabooks.com>,
	<yocto@yoctoproject.org>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD><515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD><515DB5F5.5010300@linux.intel.com><D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com><13F417252F8B4CB5BB755BB07928D20C@PAULD><D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com><2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD><D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com><547521F5BFD54F2D8E6783515988F589@PAULD>	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>	<83730A512373431B95CA2E526DB84A99@PAULD>	<D956029D25CF204F948EA0FB515E1EE25840666D@ORSMSX105.amr.corp.intel.com><B2D67BA623D949A0A2EE7AE68ABCF96A@PAULD>
	<001601ce3253$c207f9a0$4617ece0$@annabooks.com>
In-Reply-To: <001601ce3253$c207f9a0$4617ece0$@annabooks.com>
Date: Fri, 5 Apr 2013 16:54:40 -0700
Message-ID: <4E10B3FFF7E040DFA150CCFF5430B5DA@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AQHLrTCDXs94kk+U9Dv0oHt0accmBAJBIOSOAfeu0TUChoyUPwJMoQNaAO2aTbUBrZ+LqgHnyvU2ALNFJu4BH6xy4gFJ6udkAiILnbwCMmOBnwHftNm3Am0kyU8BoqLBeZf1zffAgAAKwLA=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606885a32960f84c88b5ddd83a09717046e0a350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
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
X-List-Received-Date: Fri, 05 Apr 2013 23:55:07 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Sean Liming
> 
> I have the build working with this bblayers listing:
> 
> BBLAYERS ?= " \
>   /home/usr/Yocto1.3/poky-danny-8.0/meta \
>   /home/usr/Yocto1.3/poky-danny-8.0/meta-yocto \
>   /home/usr/Yocto1.3/poky-danny-8.0/meta-intel \  
>   /home/usr/Yocto1.3/poky-danny-8.0/meta-intel/meta-cedartrail \
> "
> 
> I have never tried switching them around, but I don't see how 
> it matters

I have meta-yocto-bsp in there, too, because that was part of the default
configuration file. Is that wrong?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


