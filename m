Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9E5E01439
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 05:53:52 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so5385238ghb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 05:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=V2FrsOSKss6VR2fBk06MfCkAT44rgKwF8YXx08Y6ESQ=;
	b=Tn4HpuoG//hm4sU3Xk65OhksMjO+FmF+QLOVaKkIV2EE6xUPe/InSXxb9DG+XeI+gf
	3CgloMVOKO6qHHcUe0Iz8+7eyIx4A4/RqbZJw38cJ2Ol3+tpd4x4HPBJB3jFtVZWBAjh
	KrZ0TXjjIxar7e8QLpLtl2PTDCOqhxmLFYzGOyc+foa40yH6OddpfmNUhTJm2LdeEG54
	ASebom2NNIKIAqTg8tOeGbHsjJSh3/jY46rnS/NbdnA84mA7LYA95/3aoKpz+zPpv71Q
	sKuIGRxwwU7NoKqY0v/47oPybfxHb/+V+un13g25/+P6BGLjoIE4vCHZSYastMUHyHcS
	YI/g==
Received: by 10.100.83.2 with SMTP id g2mr623213anb.15.1343652832181;
	Mon, 30 Jul 2012 05:53:52 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id x8sm19320545yhd.18.2012.07.30.05.53.51
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 05:53:51 -0700 (PDT)
Message-ID: <501683DE.5030904@gmail.com>
Date: Mon, 30 Jul 2012 08:53:50 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: build error pandaboard on master
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
X-List-Received-Date: Mon, 30 Jul 2012 12:53:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm on master branch trying to build core-image-minimal for the machine 
"pandaboard". Besides the basics, I put in a license statement for 
cloud9 into local.conf.

My bblayer.conf is as follows:

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION = "5"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
   /home/jim/poky/meta \
   /home/jim/poky/meta-yocto \
   /home/jim/meta-openembedded/meta-oe \
   /home/jim/meta-ti \
   "

The error I'm getting is:

ERROR: ParseError at 
/home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not 
inherit file classes/systemd.bbclass

Build Configuration:
BB_VERSION        = "1.15.3"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "pandaboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20120730"
TUNE_FEATURES     = "armv7a vfp neon cortexa9"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
meta-oe           = "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
meta-ti           = "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"

ERROR: Nothing PROVIDES 'pseudo-native'




