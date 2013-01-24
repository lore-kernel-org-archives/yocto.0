Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B4DE014E5
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 08:18:43 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YsT7f5dVvz3hhlx;
	Thu, 24 Jan 2013 17:18:38 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YsT7f3MNtzbbgW;
	Thu, 24 Jan 2013 17:18:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id N8JzpXh3eN4l; Thu, 24 Jan 2013 17:17:59 +0100 (CET)
X-Auth-Info: C93phdYekpc/auc1+MgHFSSecmIajiQbaqCsWJenp6Y=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Thu, 24 Jan 2013 17:18:36 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 1BE711A14D1;
	Thu, 24 Jan 2013 17:18:36 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 0CCB92005FC;
	Thu, 24 Jan 2013 17:18:36 +0100 (CET)
To: Saul Wold <sgw@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <51007091.1030609@linux.intel.com>
References: <CAPhnLPAm17JHdDE=abqjaEEvZebxMQmuSKWSEj8C+qU-TwPs=w@mail.gmail.com>
	<51007091.1030609@linux.intel.com>
Comments: In-reply-to Saul Wold <sgw@linux.intel.com>
	message dated "Wed, 23 Jan 2013 15:21:53 -0800."
Date: Thu, 24 Jan 2013 17:18:36 +0100
Message-Id: <20130124161836.0CCB92005FC@gemini.denx.de>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>, yocto@yoctoproject.org
Subject: Re: M2/M3.rc1 availability
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
X-List-Received-Date: Thu, 24 Jan 2013 16:18:44 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Saul Wold,

In message <51007091.1030609@linux.intel.com> you wrote:
> 
> Please continue to test the rc1 of M3.  The Meta-Intel bits might come a 
> little later this time due to some issues which are being worked on.

I see two issues so far (all with a armv7a based configuration):

1) Building of core-image-lsb-dev and core-image-lsb-sdk fail with
   errors like this:

|  * check_data_file_clashes: Package font-alias wants to install file /opt/eldk/build/eldk-rel-v5.4-M3.rc1-2013-01-24-618361c-armv7a/tmp/work/generic_armv7a-linux-gnueabi/core-image-lsb-dev/1.0-r0/rootfs/usr/share/fonts/X11/misc/fonts.alias
|       But that file is already provided by package  * xorg-minimal-fonts
|  * opkg_install_cmd: Cannot install package mkfontdir-dev.

   This is a known issue, and the patch provided by [1] fixes the
   problem for me (however, I don't see it in Yocto yet).

   [1] http://article.gmane.org/gmane.comp.handhelds.openembedded.core/32245

2) Building of meta-toolchain-sdk fails in nativesdk-e2fsprogs with
   errors like this:

checking for pkg-config... /opt/eldk/build/eldk-rel-v5.4-M3.rc1-2013-01-24-618361c-armv7a/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
configure: WARNING: using cross tools not prefixed with host triplet
checking pkg-config is at least version 0.9.0... yes
checking for uuid_generate in -luuid... no
configure: error: external uuid library not found
Configure failed. The contents of all config.log files follows to aid debugging


configure:3168: i686-eldk-linux-gcc -march=i686 --sysroot=/opt/eldk/build/eldk-rel-v5.4-M3.rc1-2013-01-24-618361c-armv7a/tmp/sysroots/i686-nativesdk-eldk-linux -V >&5
i686-eldk-linux-gcc: error: unrecognized command line option '-V'
i686-eldk-linux-gcc: fatal error: no input files


configure:3168: i686-eldk-linux-gcc -march=i686 --sysroot=/opt/eldk/build/eldk-rel-v5.4-M3.rc1-2013-01-24-618361c-armv7a/tmp/sysroots/i686-nativesdk-eldk-linux -qversion >&5
i686-eldk-linux-gcc: error: unrecognized command line option '-qversion'
i686-eldk-linux-gcc: fatal error: no input files



Are these known issues?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
The more we disagree, the more chance there is that at least  one  of
us is right.

