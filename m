Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B60ADE00280
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 02:35:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Jul 2012 02:35:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="166164548"
Received: from unknown (HELO helios.localnet) ([10.252.121.11])
	by azsmga001.ch.intel.com with ESMTP; 10 Jul 2012 02:35:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jul 2012 10:35 +0100
Message-ID: <2286431.Uqbs7UEu3k@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <BFDF841C-B14F-4690-B53B-996F47C9CC74@keylevel.com>
References: <CAE8H0+Wurdc2aHZZ=MEgW1UioSfbnR7jzKQ__ZKfS=CyjqXmoA@mail.gmail.com>
	<CAE8H0+X2QfEQ9jT8LOWHQPnMq5RMpLM=naXGSnPdAmHngwAdjA@mail.gmail.com>
	<BFDF841C-B14F-4690-B53B-996F47C9CC74@keylevel.com>
MIME-Version: 1.0
Subject: Re: Raspberry Pi mailing list?
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
X-List-Received-Date: Tue, 10 Jul 2012 09:35:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 09 July 2012 20:21:32 Chris Tapp wrote:
> > The first sign of trouble was an error message saying there were no
> > recipes for netbase-4.7 (for which meta-raspberrypi had a .bbappend).
> > Noting that meta was at netbase-5.0 and that the .bbappend at a glance
> > did not look to be version specific, I renamed the meta-raspberrypi
> > recipe and directory to netbase-5.0, and the build was off and
> > running.
> 
> Sounds reasonable. 4.7 is the version that's in 'Denzil'.

FYI Andrei has now created a denzil branch in meta-raspberrypi which will 
match up with denzil in OE-Core/Poky. I'm not sure if the problem is still 
there but there may still be an issue building a kernel for the RPi with the 
toolchain in master - Chris and I have been sticking to denzil for the moment 
for that reason.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

