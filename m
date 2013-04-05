Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-dupuy.atl.sa.earthlink.net
	(elasmtp-dupuy.atl.sa.earthlink.net [209.86.89.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C5DE01514
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 11:48:39 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=D5ewkK5Cw91YV8AwMCNfn+8nMvciGjNZDCs4iZMQFMd4KJ4vhcsJs0TWvQrdwsXX;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-dupuy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UOBgl-0007mz-0L; Fri, 05 Apr 2013 14:48:39 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Bodke, Kishore K'" <kishore.k.bodke@intel.com>, <yocto@yoctoproject.org>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD><515C8FEF.2090201@linux.intel.com><7FEC659FC16A466C9B7671C5BADEDB81@PAULD><515DB5F5.5010300@linux.intel.com><D956029D25CF204F948EA0FB515E1EE258405A68@ORSMSX105.amr.corp.intel.com><13F417252F8B4CB5BB755BB07928D20C@PAULD><D956029D25CF204F948EA0FB515E1EE258405AC4@ORSMSX105.amr.corp.intel.com><2FD1BA69DE1E491C839CA26A7D2CA32A@PAULD><D956029D25CF204F948EA0FB515E1EE258405C96@ORSMSX105.amr.corp.intel.com><547521F5BFD54F2D8E6783515988F589@PAULD>
	<D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE258406365@ORSMSX105.amr.corp.intel.com>
Date: Fri, 5 Apr 2013 11:48:39 -0700
Message-ID: <83730A512373431B95CA2E526DB84A99@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4v6OLutIUbhKmlT8+L4nrLND2JOgA0yGyAAAkHLIAAAPA1gAAITTSAACOC5oAADDYCwAAYHWCwADAW1QAAXwadUAC5lNBAAUsEvbACkoxCQAUkEuYQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606887dab2c09172351021d266280b94fc6bc350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Fri, 05 Apr 2013 18:48:39 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Bodke, Kishore K
> 
> Here are the config parameters for the clean build that I am 
> doing now.
> 
> kishore@kishore-desktop:/usr/local/src/cedartrail/build/tmp/wo
rk/cedartrail_nopvr-poky-linux/linux-yocto-3.0.32+git1>
+bf5ee4945ee6d748e6abe16356f2357f76b5e2f0_1+1e79e03d115ed17788
2ab53909a4f3555e434833-r4.1/linux-cedartrail-nopvr-standard-build$ grep >
BLK_DEV_RAM .config
> CONFIG_BLK_DEV_RAM=y
> CONFIG_BLK_DEV_RAM_COUNT=16
> CONFIG_BLK_DEV_RAM_SIZE=4096
> 
> I don't understand how these are missing in your build?  
> BLK_DEV_RAM are enabled for Cedartrail-nopvr build.
> 
> What did you do different?

I don't know. I detailed the steps I took. I still have

	# CONFIG_BLK_DEV_RAM is not set

Does the order of the layers in bblayers.conf matter? Is it possible that
something in the past fetched a different version of something, and it's
sitting in my downloads tree and screwing things up?

I'm sending you the two build log files separately, so that they don't go
out to the entire list.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


