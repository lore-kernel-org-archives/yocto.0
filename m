Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6B3FE01507
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 10:06:23 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=bS1MuwH7zXGS3ntaRv+RUIRnQTkEV79Vyh2c8uwOP56GTm3pJuYJXpOb+TdUNmrH;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UOA5m-0006la-Sc; Fri, 05 Apr 2013 13:06:23 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Bodke, Kishore K'" <kishore.k.bodke@intel.com>, <yocto@yoctoproject.org>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
	<7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
	<515DB5F5.5010300@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com>
	<13F417252F8B4CB5BB755BB07928D20C@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com>
	<2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com>
Date: Fri, 5 Apr 2013 10:06:23 -0700
Message-ID: <547521F5BFD54F2D8E6783515988F589@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAITTSAACOC5oAADDYCwAAYHWCwADAW1QAAXwadUAC5lNBAAUsEvbA=
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606882b71c1ba918a2dc26a4e791599acc314350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Fri, 05 Apr 2013 17:06:23 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Bodke, Kishore K [mailto:kishore.k.bodke@intel.com] 
> 
> Yeah, if you want to try a clean build, just keep the 
> downloads directory alive and have this pointed to your 
> DL_DIR in your local.conf.

The clean build didn't solve the problem. Here's what I did:

Re-downloaded and extracted poky-danny-8.0 and meta-cedartrail-danny-8.0.0
from the Yocto web site into a new directory.

In a new terminal window, ran oe-init-build-env to create the empty build
directory and default config files.

Moved the old downloads directory into the new build tree.

Added the meta-intel and meta-intel/meta-cedartrail layers to bblayers.conf,
after the other layers.

Inserted the following two lines at the beginning of local.conf:

	MACHINE ?= "cedartrail-nopvr"
	BBMASK = "meta-oe/recipes-support/guile"

The last line was a necessary fix for a bug that occurs when I add Samba
from OpenEmbedded, but since that tree of metadata isn't currently included,
this should match nothing and change nothing.

The build was successful, although I still get those NOTEs about "preferred
version 3.4% of linux-yocto not available". Yet it still panics on boot, for
lack of a ram drive.

The only possible corruption at my end, then, is in my downloads.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


