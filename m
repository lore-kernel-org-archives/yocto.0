Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-junco.atl.sa.earthlink.net
	(elasmtp-junco.atl.sa.earthlink.net [209.86.89.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C791E01514
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 15:45:38 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=UtOQhE8jujE2WdbhixVUIGbH45E4aNYlJAtml6hC/0ugfBbfA0CsntkW9QBipRO/;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-junco.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1UOFO5-0006Ar-CK
	for yocto@yoctoproject.org; Fri, 05 Apr 2013 17:45:37 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD><515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD><515DB5F5.5010300@linux.intel.com><D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com><13F417252F8B4CB5BB755BB07928D20C@PAULD><D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com><2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD><D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com><547521F5BFD54F2D8E6783515988F589@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
	<83730A512373431B95CA2E526DB84A99@PAULD>
	<D956029D25CF204F948EA0FB515E1EE25840666D@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE25840666D@ORSMSX105.amr.corp.intel.com>
Date: Fri, 5 Apr 2013 15:45:38 -0700
Message-ID: <B2D67BA623D949A0A2EE7AE68ABCF96A@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAITTSAACOC5oAADDYCwAAYHWCwADAW1QAAXwadUAC5lNBAAUsEvbACkoxCQAUkEuYQCkA8DnAUgChJIA==
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688f0459aa6a685fcfdf1ce59c8cda207ec350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Fri, 05 Apr 2013 22:45:38 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Bodke, Kishore K [mailto:kishore.k.bodke@intel.com] 
> 
> I did a clean build and booted N2800 board.
> Sato desktop comes up.
> No issues here.

I believe you. To reiterate my last questions: does it matter what order the
layers are specified in bblayers.conf? If not, is deleting the downloads
tree and doing another build the only thing left to try?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


