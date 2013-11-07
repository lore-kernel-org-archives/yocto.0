Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64DFBE017FC
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 02:51:53 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Nov 2013 02:51:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="385930534"
Received: from unknown (HELO helios.localnet) ([10.252.121.102])
	by azsmga001.ch.intel.com with ESMTP; 07 Nov 2013 02:51:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 07 Nov 2013 10:51:50 +0000
Message-ID: <4121294.XEvWSK2748@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20131106220618.GC16472@griso.site>
References: <20131106214039.GA16472@griso.site>
	<alpine.DEB.2.02.1311061646400.26091@oneiric>
	<20131106220618.GC16472@griso.site>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Changing Config for linux-raspberrypi
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
X-List-Received-Date: Thu, 07 Nov 2013 10:51:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 06 November 2013 22:06:18 John Whitmore wrote:
> On Wed, Nov 06, 2013 at 04:47:21PM -0500, Robert P. J. Day wrote:
> > On Wed, 6 Nov 2013, John Whitmore wrote:
> > > Was struggling with the documentation on making chages to the config
> > > file used by the raspberrypi linux kernel. I'd got my own layer with a
> > > two line append file:
> > > 
> > > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
> > > 
> >                                               ^
> >                                               there should be a ":"
> 
> typo in the manual, unless I've got an out of date one:
> 
> http://www.yoctoproject.org/docs/1.5/kernel-dev/kernel-dev.html#creating-the
> -append-file

Yes, there is indeed a missing : before the closing " in the manual - Scott 
could you please fix this?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

