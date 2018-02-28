Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51924E00E04; Wed, 28 Feb 2018 05:10:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F256E00DC3
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 05:10:25 -0800 (PST)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Feb 2018 05:10:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,405,1515484800"; d="scan'208";a="23884767"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2018 05:10:24 -0800
Date: Wed, 28 Feb 2018 15:13:25 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <20180228131325.GA29720@mbabyjoh-desk.ger.corp.intel.com>
References: <59544485-752b-a12c-a9af-8ca58d861946@smart-home-technology.ch>
MIME-Version: 1.0
In-Reply-To: <59544485-752b-a12c-a9af-8ca58d861946@smart-home-technology.ch>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Changing the tty/UART of busybox
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
X-List-Received-Date: Wed, 28 Feb 2018 13:10:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jakob,

>On Wed, Feb 28, 2018 at 11:15:42AM +0100, Jakob Hasse wrote:
>
>Hello,
>
>we need to change the tty on which busybox is sitting. Right now I could change
> the UART for the kernel and all program output after the boot to our favorite 
> UART (via kernel cmd line). But the login promt and all interaction with the 
> device is still on the old UART. So I guess it's a busybox configuration issue.
> Furthermore, when I try tty after login, it gives me: /dev/ttymxc4 (we want to use ttymx1).
>
>I looked here https://busybox.net/downloads/BusyBox.html and in menuconfig
> for an option to change the UART interface but couldn't find any. Furthermore I added
>
>::respawn:/sbin/getty -L ttymxc1 115200 vt100
>
>and this
>
>ttymxc1::respawn:/sbin/getty -L ttymxc1 115200 vt100
>
>to inittab to change the UART with no luck.
>Could someone here point me to documentation or give me a hint to achive this?

Generally, the console setting comes from our <machine>.conf. eg:
for beaglebone:
./meta-yocto-bsp/conf/machine/beaglebone-yocto.conf:
SERIAL_CONSOLE = "115200 ttyO0"

This gets processed in bitbake.conf:
SERIAL_CONSOLES ??= "${@d.getVar('SERIAL_CONSOLE').replace(' ', ';')}"

later, based on the init manager:
busybox, systemd-serialgetty, or sysvinit-inittab use it.

In this case, updating the "<machine>.conf" should help.

>Thanks in advance, all the Best,
>Jakob
>
>-- 
>Jakob Hasse
>Software Developement
>
>E: jakob.hasse@smart-home-technology.ch
>T: +41 44 552 02 66 
>
>Smart Home Technology GmbH
>www.smart-home-technology.ch

Best Regards,
Maxin

