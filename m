Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE53E0051B
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:07:05 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2013 09:07:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,768,1378882800"; d="scan'208";a="414449247"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.166])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2013 09:06:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 25 Nov 2013 17:06:51 +0000
Message-ID: <197917002.9dER9YZC1c@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <2877100.Goa8NZvDMD@helios>
References: <alpine.DEB.2.02.1311240533220.32547@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
	<2877100.Goa8NZvDMD@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: FW: stupid question about post-installation scripts
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
X-List-Received-Date: Mon, 25 Nov 2013 17:07:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 25 November 2013 17:01:10 Paul Eggleton wrote:
> On Monday 25 November 2013 15:21:41 Rifenbark, Scott M wrote:
> > >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> > >Sent: Sunday, November 24, 2013 2:37 AM
> > >To: Rifenbark, Scott M
> > >Subject: stupid question about post-installation scripts
> > >
> > >  when one defines pkg_postinst scripts, are those scripts invoked at
> > >
> > >*both* root filesystem creation time and first boot time? so that one
> > >needs
> > >to manually check the value of ${D} to decide whether to run them, say,
> > >at
> > >first boot time?
> 
> Not both - it's either-or; i.e. it will be run at rootfs creation time and
> if it fails then, it will be run on first boot. Yes you can use the value
> of $D (note: *not* ${D}!) to find out where the script is being called
> from, if necessary.

PS, if you really do want to force the script to be postponed until first boot, 
you *must* make the postinst script fail if $D has a value - if you just let 
it pass the system will assume it doesn't need to be called again on first 
boot.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

