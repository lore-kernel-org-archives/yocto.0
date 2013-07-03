Return-Path: <sean.liming@annabooks.com>
Received: from mail22c40.carrierzone.com (mail22c40.carrierzone.com
	[209.235.156.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8936E003E3
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 16:36:57 -0700 (PDT)
X-Authenticated-User: sean.liming.annabooks.com
Received: from Sean7 (cpe-76-95-171-22.socal.res.rr.com [76.95.171.22])
	(authenticated bits=0)
	by mail22c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	r63NasN9007642
	for <yocto@yoctoproject.org>; Wed, 3 Jul 2013 23:36:56 +0000
From: "Sean Liming" <sean.liming@annabooks.com>
To: <yocto@yoctoproject.org>
Date: Wed, 3 Jul 2013 16:36:47 -0700
Message-ID: <000601ce7846$3167e7a0$9437b6e0$@annabooks.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: Ac54RfEiRZ1Fgd4NQoG7vtymGw8fDQ==
X-CSC: 0
X-CHA: v=2.0 cv=RPEE6fe+ c=1 sm=1 a=RqNIojzclRO/fVsPhA7IgQ==:17
	a=_DgR7O7FQkkA:10 a=IjdlZ_XXAAAA:8 a=pyD5Ij0hbIIA:10 a=VwQbUJbxAAAA:8
	a=UaVmjPp_IwVcphfqAiAA:9 a=CjuIK1q_8ugA:10 a=cfzGRmEXdFsgoQDE0w8A:9
	a=RqNIojzclRO/fVsPhA7IgQ==:117
X-CTCH-RefID: str=0001.0A020205.51D4B598.00F0, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: 0.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
Subject: How to add WiFi support
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
X-List-Received-Date: Wed, 03 Jul 2013 23:36:59 -0000
X-Groupsio-MsgNum: 14823
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_0007_01CE780B.85090FA0"
Content-Language: en-us

------=_NextPart_000_0007_01CE780B.85090FA0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have searched and spotted different discussion on adding wireless support
but have not found a solution. I have a Intel Centrino Wireless-N 1000 card
plugged into a Intel Atom N2800 (Cedar Trail) platform. I am using Yocto
Project 1.3.1, Cedar Trail BSP, core-image-x11

BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "cedartrail-nopvr"
DISTRO            = "poky"
DISTRO_VERSION    = "1.3.1"
TUNE_FEATURES     = "m32 core2"
Core-image-x11

Following the instructions to use menuconfig and create configuration
fragment, I have enabled the various kernel options to include the iwlagn
driver. The configuration fragment called mydiff.cfg (attached) was placed
in the meta-intel/meta-cedartrail/recipes-kernel/Linux/files folder. The
Linux-yocto_3.0.bbappend was modified with the following:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "file://mydiff.cfg"

After building the image, ifconfig didn't show wireless and neither does
iwconfig. The adapter is found when I do a lspci. The kernel wireless
website - http://wireless.kernel.org/en/users/Drivers/iwlwifi  lists a
firmware package needed for installation. I tried to create a recipe to
place the firmware file in the /lib/firmware folder, but it doesn't get put
in. The lack of what to do for the LICENSE might be a problem. Here is the
recipe:

DESCRIPTION = "Intel WiFi 1000 Adapter"
LICENSE = "GPL"-?????
LIC_FILES_CHKSUM =
"file://${WORKDIR}/LICENSE.iwlwifi-1000-ucode;md5=aa2bfb02c7e0712680334b9f47
f8dc61"

SRC_URI = "file://LICENSE.iwlwifi-1000-ucode \
	   file://iwlwifi-1000-3.ucode \ 
	   "
FWPATH = "lib/firmware"
do_install_apped() {
	install -m 0644 LICENSE.iwlwifi-1000-ucode ${D}${FWPATH}
	install -m 0644 iwlwifi-1000-3.ucode ${D}${FWPATH}
}

I manually created the /lib/firmware folder and copied the firmware file
(iwlwifi-1000-3.ucode) to the folder. Nothing changed after a reboot. I also
tried a Intel Centrino Ultimate-N 6300 same result.

1. Was a kernel modification the right direction to enable support for this
driver?
2. Did I miss anything with regards to the configuration fragment setup?
3. Is the firmware really needed? If so why is there no /lib/firmware folder
and what should be used for the LICENSE ?


Regards,

Sean Liming


------=_NextPart_000_0007_01CE780B.85090FA0
Content-Type: application/octet-stream;
	name="mydiff.cfg"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="mydiff.cfg"

++ .confignew	2013-07-03 14:56:58.000000000 -0700
# CONFIG_NETFILTER_XT_TARGET_LED is not set
CONFIG_WEXT_CORE=3Dy
CONFIG_WEXT_PROC=3Dy
CONFIG_CFG80211=3Dy
# CONFIG_NL80211_TESTMODE is not set
# CONFIG_CFG80211_DEVELOPER_WARNINGS is not set
# CONFIG_CFG80211_REG_DEBUG is not set
CONFIG_CFG80211_DEFAULT_PS=3Dy
# CONFIG_CFG80211_DEBUGFS is not set
# CONFIG_CFG80211_INTERNAL_REGDB is not set
CONFIG_CFG80211_WEXT=3Dy
CONFIG_WIRELESS_EXT_SYSFS=3Dy
CONFIG_MAC80211=3Dy
CONFIG_MAC80211_HAS_RC=3Dy
# CONFIG_MAC80211_RC_PID is not set
CONFIG_MAC80211_RC_MINSTREL=3Dy
CONFIG_MAC80211_RC_MINSTREL_HT=3Dy
CONFIG_MAC80211_RC_DEFAULT_MINSTREL=3Dy
CONFIG_MAC80211_RC_DEFAULT=3D"minstrel_ht"
# CONFIG_MAC80211_MESH is not set
CONFIG_MAC80211_LEDS=3Dy
# CONFIG_MAC80211_DEBUGFS is not set
# CONFIG_MAC80211_DEBUG_MENU is not set
# CONFIG_LIBERTAS_THINFIRM is not set
# CONFIG_AT76C50X_USB is not set
# CONFIG_USB_NET_RNDIS_WLAN is not set
# CONFIG_RTL8180 is not set
# CONFIG_RTL8187 is not set
# CONFIG_ADM8211 is not set
# CONFIG_MAC80211_HWSIM is not set
# CONFIG_MWL8K is not set
# CONFIG_ATH_COMMON is not set
# CONFIG_B43 is not set
# CONFIG_B43LEGACY is not set
# CONFIG_IPW2100 is not set
# CONFIG_IPW2200 is not set
CONFIG_IWLAGN=3Dy

#
# Debugging Options
#
# CONFIG_IWLWIFI_DEBUG is not set
# CONFIG_IWLWIFI_DEVICE_TRACING is not set
# CONFIG_IWLWIFI_DEVICE_SVTOOL is not set
# CONFIG_IWL_P2P is not set
# CONFIG_IWL4965 is not set
# CONFIG_IWL3945 is not set
# CONFIG_IWM is not set
# CONFIG_LIBERTAS is not set
# CONFIG_HERMES is not set
# CONFIG_P54_COMMON is not set
# CONFIG_RT2X00 is not set
# CONFIG_RTL8192CE is not set
# CONFIG_RTL8192SE is not set
# CONFIG_RTL8192CU is not set
# CONFIG_WL1251 is not set
# CONFIG_WL12XX_MENU is not set
# CONFIG_ZD1211RW is not set
# CONFIG_MWIFIEX is not set
CONFIG_NEW_LEDS=3Dy
CONFIG_LEDS_CLASS=3Dy

#
# LED drivers
#
# CONFIG_LEDS_ALIX2 is not set
# CONFIG_LEDS_CLEVO_MAIL is not set
# CONFIG_LEDS_INTEL_SS4200 is not set
CONFIG_LEDS_TRIGGERS=3Dy

#
# LED Triggers
#
# CONFIG_LEDS_TRIGGER_TIMER is not set
# CONFIG_LEDS_TRIGGER_HEARTBEAT is not set
# CONFIG_LEDS_TRIGGER_BACKLIGHT is not set
# CONFIG_LEDS_TRIGGER_DEFAULT_ON is not set

#
# iptables trigger is under Netfilter config (LED target)
#
CONFIG_CRYPTO_AES=3Dy
CONFIG_CRYPTO_ARC4=3Dy
CONFIG_AVERAGE=3Dy

------=_NextPart_000_0007_01CE780B.85090FA0--
