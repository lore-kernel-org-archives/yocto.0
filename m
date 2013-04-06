Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BBC2E01523
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 21:15:16 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=W30YGop3kRRmF0mDCcg61zQX5XPtuXAFb8H8q/+Opl+5XV73d9bLFC8gz4KLcy+m;
	h=Received:From:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UOKX5-0001hg-JH; Sat, 06 Apr 2013 00:15:15 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD>
	<515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
	<515DB5F5.5010300@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com>
	<13F417252F8B4CB5BB755BB07928D20C@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com>
	<2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com>
	<547521F5BFD54F2D8E6783515988F589@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
	<83730A512373431B95CA2E526DB84A99@PAULD>
	<1365204871.17697.6.camel@empanada>
	<1365221016.17697.13.camel@empanada>
In-Reply-To: <1365221016.17697.13.camel@empanada>
Date: Fri, 5 Apr 2013 21:15:16 -0700
Message-ID: <0E036F4959FA47449AD8E358A8C85848@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4ye7dsuLP6iJYvSt2gGskyxDRuIQAARCaA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688937641eaf40500fbc823653b898d3dec350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Sat, 06 Apr 2013 04:15:16 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Tom Zanussi [mailto:tom.zanussi@intel.com] 
> 
> I'm seeing the same thing here (# CONFIG_BLK_DEV_RAM is not set) with
> your bblayers and local.conf.  For some reason the base and
> standard .cfgs aren't being applied to the .config.  I'll have to dig
> around further as time permits over the weekend...

Thanks, although this might be floobydust. I've nuked the _entire_ build
tree, included downloads, and am trying a rebuild from scratch, but that
will take until tomorrow morning to complete, since I'm doing the build on
an Atom. If it somehow solves the problem, I'll let you know, so you don't
waste your time chasing unicorns. But if it doesn't solve the problem, your
help would definitely be appreciated. I've been trying to get a build, any
build, to boot for a really long time now.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


