Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28A59E017A9
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 02:12:52 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 04 Nov 2013 02:12:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="316660698"
Received: from jrissane-mobl.ger.corp.intel.com (HELO [10.237.72.152])
	([10.237.72.152])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Nov 2013 02:12:50 -0800
Message-ID: <1383559969.12691.2.camel@jrissane-mobl.ger.corp.intel.com>
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Mon, 04 Nov 2013 12:12:49 +0200
In-Reply-To: <CANwz6nxBDf7imFP0Z=5cmDCKDBqhuh4uxPNxw_8rBVNw_hTY2w@mail.gmail.com>
References: <CANwz6nxBDf7imFP0Z=5cmDCKDBqhuh4uxPNxw_8rBVNw_hTY2w@mail.gmail.com>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dora 1.5 builds for beagleboard no lsusb, /dev/fb0, networking, or sato display on monitor.
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
X-List-Received-Date: Mon, 04 Nov 2013 10:12:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Edward,

On la, 2013-11-02 at 16:06 -0600, Edward Vidal wrote:
> Hello All,
> 
> This is a continued effort with adding a "udev entry for a camera" &
> "uImage instead  of zImage" posting in Oct 13.
> 2 of my with dora 1.5 are showing same problem
> lsusb --verbose
> unable to initialize libusb: -99
> 
> Error opening /dev/fb0: No such file or directory during boot.
> These builds have no networking or sato display.

There are these known bugs about the usb and networking in beagleboard
xm

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5183
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5211


Cheers,
Jukka




