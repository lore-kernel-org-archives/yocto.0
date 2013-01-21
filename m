Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DFC9E0045D
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 12:56:28 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Jan 2013 12:56:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,508,1355126400"; d="scan'208";a="193574561"
Received: from unknown (HELO [10.255.15.113]) ([10.255.15.113])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Jan 2013 12:56:27 -0800
Message-ID: <1358801786.9032.5.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 21 Jan 2013 14:56:26 -0600
In-Reply-To: <alpine.DEB.2.02.1301211517180.32194@oneiric>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D274A2@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1301211517180.32194@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: YP Profiling and Tracing Manual available
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
X-List-Received-Date: Mon, 21 Jan 2013 20:56:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-01-21 at 15:17 -0500, Robert P. J. Day wrote:
> On Mon, 21 Jan 2013, Rifenbark, Scott M wrote:
> 
> > Hi,
> >
> > There is a new YP-style manual called "Yocto Project Profiling and
> > Tracing Manual" available at
> > http://www.yoctoproject.org/docs/1.4/profile-manual/profile-manual.html.
> > While this manual is in YP-form, it has not undergone any edits from
> > its original at
> > https://wiki.yoctoproject.org/wiki/Tracing_and_Profiling.
> 
>   will all of this work with the QEMU images?
> 

Some of it will, some of it won't.  Things that require real hardware
PMU support won't since qemu doesn't have complete hardware emulation
for some of this stuff.  I don't remember offhand what exactly, and I
did run unto that myself when writing this, which is why the examples
use real hardware.

For things that obviously don't need hardware support, go ahead and use
qemu but when in doubt, or if something doesn't work as expected assume
that real hardware should be used...

Tom

> rday
> 



