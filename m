Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA1DEE00348
	for <yocto@yoctoproject.org>; Thu, 20 Jun 2013 10:26:02 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=XnU9C8ZGacWpJfaZKXShEKp22MjunCTFKHySJcHVxIayvUsmdf7p1gdwHjGT2B4Q;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UpicP-0006GK-92; Thu, 20 Jun 2013 13:26:00 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Tom Zanussi'" <tom.zanussi@intel.com>
References: <394F6C8A37E5424BB91439BABFA30180@PAULD><1371564241.1569.26.camel@empanada><8C2CFCE0-38EE-40E0-8AAF-490DC3B6837E@keylevel.com><1371586129.1569.34.camel@empanada><C3BF3ACA6A914084A2081A64B2BAF286@PAULD>
	<1371694589.32324.31.camel@empanada>
In-Reply-To: <1371694589.32324.31.camel@empanada>
Date: Thu, 20 Jun 2013 10:26:02 -0700
Message-ID: <E23EABCC02CB4A64B5EFCC41D6F851DC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac5tXDOSyuroD7lSTeOBJkdmpoTSXAAfsqyA
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606883ff8cab4764d8f8e19bcb0230f3898e0350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Thu, 20 Jun 2013 17:26:05 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Tom Zanussi
> 
> I actually used yocto-bsp to create a brand new cedartrail BSP, called
> meta-cdt, with just a vesa graphics machine called 'cdt-vesa':
> 
>
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=tzanussi
/meta-cdt-v0
> 
> It built fine here, but it wouldn't boot on my Aspire One, but I
> couldn't boot either of the official 'danny' cedartrail 
> (cedartrail and
> cedartrail-nopvr) images I built either.
> 
> I'd be curious if the meta-cdt layer would work for you, though.

This builds and boots fine on an Intel DN2800MT. Now to start modifying it,
and seeing what happens.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


