Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4FF1E003D6
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 06:31:44 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Dec 2012 06:31:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,252,1355126400"; d="scan'208";a="178930618"
Received: from unknown (HELO helios.localnet) ([10.252.122.200])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Dec 2012 06:31:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Mon, 10 Dec 2012 14:31:33 +0000
Message-ID: <2792023.dZkdIqr4D5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACBC2B@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212100636190.6810@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACBC2B@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: slight clarification for yocto docs web page?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Dec 2012 14:31:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 10 December 2012 11:52:56 Rifenbark, Scott M wrote:
> Robert,
> 
> This "poky" term in the link is because back when the manual was first set
> up I used "poky-ref-manual" as the manuals folder.  The easiest fix would
> be set up a symlink from a more appropriately named link.  A fix that has a
> lot more ripples would be to rename the directory to something like
> "ref-manual." 

My suggestion would be to do both - rename it and then symlink from the old 
name to the new one.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

