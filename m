Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F843E006C9
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:15:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 Feb 2013 01:15:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,648,1355126400"; d="scan'208";a="289990577"
Received: from sorvi.fi.intel.com (HELO [10.237.72.58]) ([10.237.72.58])
	by fmsmga002.fm.intel.com with ESMTP; 12 Feb 2013 01:14:57 -0800
Message-ID: <511A0810.4080305@linux.intel.com>
Date: Tue, 12 Feb 2013 11:14:56 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120801 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Initramfs and systemd problems
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
X-List-Received-Date: Tue, 12 Feb 2013 09:15:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am building a small network appliance for tethering purposes.
I do not need graphics so I removed X support, also added
systemd from meta-ivi and upgraded connman into latest
1.11 version, and also did some minor tweaks here and there.

In beagleboard, my setup works just fine.
In Intel NUC device, the system refuses to boot properly.
The reason is the init-live.sh script in initramfs image,
it expects the USB stick to be present in /media/xxx directory.

Because the base system uses systemd, the initramfs is
also using systemd but there is some things missing and
system will not automount the USB stick into /media.

Is there any possibility to avoid using systemd in initramfs
i.e., use the udev package only, or is the only option to
tweak systemd setup in initramfs? Or any other suggestion
how to fix this?


Cheers,
Jukka


