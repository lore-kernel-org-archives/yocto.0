Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3CB8E00BD5
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 01:03:26 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WegX5-0007nS-J0
	for yocto@yoctoproject.org; Mon, 28 Apr 2014 10:03:23 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 10:03:23 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 28 Apr 2014 10:03:23 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 28 Apr 2014 10:03:08 +0200
Message-ID: <ljl1vt$ink$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
Subject: Kernel config fragments are not applied
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
X-List-Received-Date: Mon, 28 Apr 2014 08:03:29 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

Hello

I am trying to add a custom kernel config to my layer. I followed the
following guide:
http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#creating-config-fragments

I have the following files in my layer:

recipes-kernel/linux/linux-cubox-i_3.0.35.bbappend:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

inherit kernel
COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"

SRC_URI += "file://videoin.cfg"


recipes-kernel/linux/linux-cubox-i-3.0.35/videoin.cfg:

CONFIG_VIDEOBUF_VMALLOC=y
CONFIG_VIDEO_TVEEPROM=y
CONFIG_VIDEO_TUNER=y
CONFIG_VIDEO_ADV7180=y
CONFIG_VIDEO_MXC_CAMERA=y
CONFIG_MXC_TVIN_ADV7180=y
CONFIG_USB_VIDEO_CLASS=y
CONFIG_USB_GSPCA=y
CONFIG_USB_M5602=y
CONFIG_USB_STV06XX=y
...

The layer is included in conf/bblayers.conf. The file videoin.cfg is
found and "installed" in the correct tmp/work directory. However the
config is never added to the kernel config file.

What am I doing wrong?

I use Yocto "master-next", cubox-i4pro.

Thanks

Michael


