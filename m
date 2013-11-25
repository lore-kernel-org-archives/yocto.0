Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF848E00510
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:01:13 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2013 08:57:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,768,1378882800"; d="scan'208";a="441452055"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.166])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2013 09:01:11 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 25 Nov 2013 17:01:10 +0000
Message-ID: <2877100.Goa8NZvDMD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311240533220.32547@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Mon, 25 Nov 2013 17:01:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 25 November 2013 15:21:41 Rifenbark, Scott M wrote:
> >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> >Sent: Sunday, November 24, 2013 2:37 AM
> >To: Rifenbark, Scott M
> >Subject: stupid question about post-installation scripts
> >
> >  when one defines pkg_postinst scripts, are those scripts invoked at
> >
> >*both* root filesystem creation time and first boot time? so that one needs
> >to manually check the value of ${D} to decide whether to run them, say, at
> >first boot time?

Not both - it's either-or; i.e. it will be run at rootfs creation time and if 
it fails then, it will be run on first boot. Yes you can use the value of $D 
(note: *not* ${D}!) to find out where the script is being called from, if 
necessary.

> >  i'm reading the section here:
> >http://www.yoctoproject.org/docs/latest/dev-manual/dev-> >manual.html#post-installation-scripts
> >
> >and i know i've seen elsewhere scripts explicitly checking the value of the
> >${D} prefix to determine when they're being invoked. it *seems* like
> >that's what's happening, but if that's the case, it can probably be said
> >much more clearly.

The answer is, you can do this if you have to, but ideally you shouldn't need 
to. In the ideal situation the script should be written such that it functions 
equally well no matter where it executes; that avoids the need to run anything 
on first boot, *and* (assuming you have package management enabled for the 
target) it will work if the package is installed on the target some time 
afterwards.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

