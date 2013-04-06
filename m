Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19B34E01498
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 11:20:37 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=o1mMxCD2haWUW0INaLDAC4mUjcpZ+ZFzLPbcwMdQtHnl/k4GkBgshjTIBeQKFG/k;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UOXjA-0005vX-9g; Sat, 06 Apr 2013 14:20:36 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Tom Zanussi'" <tom.zanussi@intel.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD><515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD><515DB5F5.5010300@linux.intel.com><D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com><13F417252F8B4CB5BB755BB07928D20C@PAULD><D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com><2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD><D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com><547521F5BFD54F2D8E6783515988F589@PAULD><D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com><83730A512373431B95CA2E526DB84A99@PAULD><1365204871.17697.6.camel@empanada><1365221016.17697.13.camel@empanada><0E036F4959FA47449AD8E358A8C85848@PAULD><1365223693.17697.20.camel@empanada>
	<1365256835.17697.30.camel@empanada>
In-Reply-To: <1365256835.17697.30.camel@empanada>
Date: Sat, 6 Apr 2013 11:20:38 -0700
Message-ID: <FAC308421B044DE0AD65032D547ED420@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4y0oENNtmI4kmiT+SM3j2iVAwxEwAHqcUQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606880894d7359565a2f1633e7c6e51882ac4350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 06 Apr 2013 18:20:37 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Tom Zanussi
> 
> It looks like the problem is a bad SRCREV for the meta branch in the
> -nopvr machine in the cedartrail danny tarball.  Try changing the
> following line in
> meta-cedartrail/recipes-kernel/linux/linux-yocto_3.0.bbappend:
> 
> SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= 
> "a4ac64fe873f08ef718e2849b88914725dc99c1c"
> 
> to
> 
> SRCREV_meta_pn-linux-yocto_cedartrail-nopvr ?= 
> "bf5ee4945ee6d748e6abe16356f2357f76b5e2f0"
> 
> Changing that got me a .config with the correct CONFIG_BLK_DEV_RAM
> setting.

Ta-da! That fixed it.

I'm glad the subject of this thread didn't come back to bite me.

Thanks so much for your time in figuring this out.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


