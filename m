Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1045B4C800D7
	for <yocto@yoctoproject.org>; Sat, 18 Jun 2011 10:02:50 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Jun 2011 08:02:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,385,1304319600"; d="scan'208";a="19851248"
Received: from unknown (HELO [10.255.13.103]) ([10.255.13.103])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2011 08:02:42 -0700
Message-ID: <4DFCBE0F.80305@linux.intel.com>
Date: Sat, 18 Jun 2011 08:02:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1308357152.git.dvhart@linux.intel.com>
	<f66f8d260f0d9ca587e6dc55cba45a6e0ce224a6.1308357152.git.dvhart@linux.intel.com>
	<824516E3-FB4B-47E5-9172-E685149CAD49@dominion.thruhere.net>
In-Reply-To: <824516E3-FB4B-47E5-9172-E685149CAD49@dominion.thruhere.net>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] beagleboard: xserver-kdrive xorg.conf installation
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
X-List-Received-Date: Sat, 18 Jun 2011 15:02:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/18/2011 01:05 AM, Koen Kooi wrote:
> 
> Op 18 jun 2011, om 02:35 heeft Darren Hart het volgende geschreven:
> 
>> Append xserver-kdrive to allow for BSP specific xorg.conf files. This also
>> appears to drag in a runtime dependency on libhal, so add that to the
>> bbappend's RDEPENDS_${PN} as well.
> 
> Since when does kdrive use xorg.conf?

This is my first use of xserver-kdrive. I was experimenting with
xorg.conf changes to resolve some USB input issues I was having... it
seemed to work. Should it be using something else?

> 
>> Ultimately we probably want an xserver independent xorgconf recipe that
>> enables installing BSP specific xorg.conf files for all the xservers. This
>> works for now.
> 
> Like xserver-xorg-conf in meta-oe?

Yes, just like that. I've opened a bug on this, I'll recommend using
this. Any objection to that becoming part of oe-core? However, if I
shouldn't be using xorg.conf for xserver-kdrive, then this might be
irrelevant.

--
Darren

> 
>>
>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>> ---
>> .../xserver-kdrive/beagleboard/xorg.conf           |   34 ++++++++++++++++++++
>> .../xorg-xserver/xserver-kdrive_1.7.99.2.bbappend  |   10 ++++++
>> 2 files changed, 44 insertions(+), 0 deletions(-)
>> create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf
>> create mode 100644 meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend
>>
>> diff --git a/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf
>> new file mode 100644
>> index 0000000..0335e6a
>> --- /dev/null
>> +++ b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive/beagleboard/xorg.conf
>> @@ -0,0 +1,34 @@
>> +Section "Module"
>> +	Load	"extmod"
>> +	Load	"dbe"
>> +	Load	"glx"
>> +	Load	"freetype"
>> +	Load	"type1"
>> +	Load	"record"
>> +	Load	"dri"
>> +EndSection
>> +
>> +Section "Monitor"
>> +	Identifier	"Builtin Default Monitor"
>> +EndSection
>> +
>> +Section "Device"
>> +	Identifier	"Builtin Default fbdev Device 0"
>> +	Driver		"omapfb"
>> +EndSection
>> +
>> +Section "Screen"
>> +	Identifier	"Builtin Default fbdev Screen 0"
>> +	Device		"Builtin Default fbdev Device 0"
>> +	Monitor		"Builtin Default Monitor"
>> +EndSection
>> +
>> +Section "ServerLayout"
>> +	Identifier	"Builtin Default Layout"
>> +	Screen		"Builtin Default fbdev Screen 0"
>> +EndSection
>> +
>> +Section "ServerFlags"
>> +	Option		"DontZap"  "0"
>> +        Option		"AutoAddDevices" "False"
>> +EndSection
>> diff --git a/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend
>> new file mode 100644
>> index 0000000..cfa6c4f
>> --- /dev/null
>> +++ b/meta-yocto/recipes-graphics/xorg-xserver/xserver-kdrive_1.7.99.2.bbappend
>> @@ -0,0 +1,10 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +RDEPENDS_${PN} += "libhal"
>> +SRC_URI += "file://xorg.conf"
>> +
>> +do_install_append() {
>> +	install -d ${D}/${sysconfdir}/X11
>> +	install -m 0644 ${WORKDIR}/xorg.conf ${D}/${sysconfdir}/X11/
>> +}
>> +
>> +
>> -- 
>> 1.7.1
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

