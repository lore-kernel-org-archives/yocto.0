Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C645E0148B
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 04:23:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Dec 2012 04:23:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,347,1355126400"; d="scan'208";a="266490970"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 24 Dec 2012 04:23:23 -0800
Received: from [10.252.123.17] (unknown [10.252.123.17])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id DB1B46A4004
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 04:23:20 -0800 (PST)
Message-ID: <1356351789.358.4.camel@mlindnex-mobl1.ger.corp.intel.com>
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Dec 2012 14:23:09 +0200
In-Reply-To: <4e4f660f.1086b.13bcbd86279.Coremail.huanmateme@163.com>
References: <4e4f660f.1086b.13bcbd86279.Coremail.huanmateme@163.com>
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
X-List-Received-Date: Mon, 24 Dec 2012 12:23:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-12-24 at 15:37 +0800, Biao wrote:
> Hi all, 
> 
> 
> I can not launch hob on my ubun-10.04, it seems saying "no PyGobject" whereas python-object has already been installed. Can anyone kindly give a help?
> 
> 
> $ hob
> FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
> You have Gtk+ 2.20.1 and PyGtk 2.17.0.
> 
> 
> $ sudo apt-get install python-gobject
> Reading package lists... Done
> Building dependency tree       
> Reading state information... Done
> python-gobject is already the newest version.
> 
Python-gobject seems fine, Gtk seems fine (you have 2.20.1, Hob wants
higher than 2.20.0), which leaves python-gtk2 version 2.17.0 on your
system. Hob wants a version higher than 2.21.0.

--Mihai
> 
> $ uname -a
> Linux zb-d 2.6.32-33-generic #72-Ubuntu SMP Fri Jul 29 21:07:13 UTC 2011 x86_64 GNU/Linux
> 
> 
> Thanks,
> Biao
> _______________________________________________ yocto mailing list yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto



