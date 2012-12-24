Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80C5AE01490
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 04:37:40 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 Dec 2012 04:37:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,347,1355126400"; d="scan'208";a="236184135"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 24 Dec 2012 04:37:39 -0800
Received: from [10.252.123.17] (unknown [10.252.123.17])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 329146A4004
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 04:37:36 -0800 (PST)
Message-ID: <1356352646.358.8.camel@mlindnex-mobl1.ger.corp.intel.com>
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Dec 2012 14:37:26 +0200
In-Reply-To: <1356351789.358.4.camel@mlindnex-mobl1.ger.corp.intel.com>
References: <4e4f660f.1086b.13bcbd86279.Coremail.huanmateme@163.com>
	<1356351789.358.4.camel@mlindnex-mobl1.ger.corp.intel.com>
Organization: Intel OTC
X-Mailer: Evolution 3.4.4 
Mime-Version: 1.0
Subject: Re: Fails to launch the hob
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
X-List-Received-Date: Mon, 24 Dec 2012 12:37:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-12-24 at 14:23 +0200, Mihai Lindner wrote:
> On Mon, 2012-12-24 at 15:37 +0800, Biao wrote:
> > Hi all, 
> > 
> > 
> > I can not launch hob on my ubun-10.04, it seems saying "no PyGobject" whereas python-object has already been installed. Can anyone kindly give a help?
> > 
Oh, forgot to mention here, that you should probably be using Denzil,
instead of Danny or 'master'.
> > 
> > $ hob
> > FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
> > You have Gtk+ 2.20.1 and PyGtk 2.17.0.
> > 
> > 
> > $ sudo apt-get install python-gobject
> > Reading package lists... Done
> > Building dependency tree       
> > Reading state information... Done
> > python-gobject is already the newest version.
> > 
> Python-gobject seems fine, Gtk seems fine (you have 2.20.1, Hob wants
> higher than 2.20.0), which leaves python-gtk2 version 2.17.0 on your
> system. Hob wants a version higher than 2.21.0.
> 
> --Mihai
> > 
> > $ uname -a
> > Linux zb-d 2.6.32-33-generic #72-Ubuntu SMP Fri Jul 29 21:07:13 UTC 2011 x86_64 GNU/Linux
> > 
> > 
> > Thanks,
> > Biao
> > _______________________________________________ yocto mailing list yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



