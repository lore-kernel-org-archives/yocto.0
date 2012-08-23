Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 033CFE002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 06:41:13 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2012 06:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,300,1344236400"; d="scan'208";a="137090023"
Received: from unknown (HELO helios.localnet) ([10.252.121.121])
	by AZSMGA002.ch.intel.com with ESMTP; 23 Aug 2012 06:41:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Axel Beierlein <belatronix@freenet.de>
Date: Thu, 23 Aug 2012 14:41:07 +0100
Message-ID: <29907917.ypZI3Fthp5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <503622F1.8000608@freenet.de>
References: <503622F1.8000608@freenet.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Buggy busybox update 1.94.4 => 1.20.2
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
X-List-Received-Date: Thu, 23 Aug 2012 13:41:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 23 August 2012 14:32:49 Axel Beierlein wrote:
> Two questions from a Newbie on Yocto:
> 
> I get compiling Errors in Busybox from a new clone of the Yocto Git Repo.
> 
> I have to change the name of the .bbappend File from 1.94.4 to 1.20.2
> and also the directory to get a working tree.

This has now been fixed in latest master - thanks for pointing it out.
 
> And in the 1.94.4.bbappend File. What means ${P} after the THISDIR?
> In the Documentation i read something about ${THISDIR}/${PN} and not
> ${P} is this a mistake or do i understand something wrong?

You can use whatever subdirectory name you like there, ${PN} (which would 
resolve to "busybox") is just traditional. In this case the author of the 
bbappend chose to use ${P} which is the same as ${PN}-${PV}, which in this 
case resolves to "busybox-1.20.2", thus making the directory specific to the 
version of busybox being built.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

