Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBD1BE00B59; Sat, 24 May 2014 14:58:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.218 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mo4-p00-ob.smtp.rzone.de (unknown [81.169.146.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65BE4E006D8
	for <yocto@yoctoproject.org>; Sat, 24 May 2014 14:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1400968678; l=2285;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Subject:To:MIME-Version:From:Date:X-RZG-CLASS-ID:X-RZG-AUTH;
	bh=sD4OpabkY7EEWZZwxZ5Pwbgk4p4=;
	b=poG1SSMegFTqAsyz7AsQwK70khMxmieL91U/9w4DnNV+8VVVr6s7lcqypo4Oh6c57yS
	rnNa+bqquSdBINGiQNl9KCSrBXKQQN8simQqaE1avMZVZ8vlJBedcXVHkpTlQauk9CMc1
	FXSrJwrE/bXqFECvOtJCyHfz8IPP4RbBJ4M=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgREHsiFrwgHmsN+4
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p5B0E3C14.dip0.t-ipconnect.de [91.14.60.20])
	by smtp.strato.de (RZmta 34.2 DYNA|AUTH)
	with ESMTPSA id D049c6q4OLvv9HQ
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Sat, 24 May 2014 23:57:57 +0200 (CEST)
Message-ID: <538115D9.2070506@jenslucius.de>
Date: Sat, 24 May 2014 23:57:45 +0200
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <537E111B.3010506@jenslucius.de>
	<537E1390.1090909@mlbassoc.com>	<537E4B0E.8060407@jenslucius.de>
	<537E5791.7010606@mlbassoc.com>
In-Reply-To: <537E5791.7010606@mlbassoc.com>
Subject: Re: Building pjproject with python module
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
X-List-Received-Date: Sat, 24 May 2014 21:58:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


> Put these exports at the outermost level of your recipe, not inside 
> any function,
> i.e. like this:
>   EXTRA_OECONF += "STAGING_DIR=${STAGING_DIR_NATIVE}"
>   export BUILD_SYS
>   export HOST_SYS
>   export STAGING_INCDIR
>   export STAGING_LIBDIR
>
>>>>
>>>> cd ${S}/pjsip-apps/src/python
>>>> oe_runmake
>>>> }
>>>>
>>>> which starts the building process but then terminates with:
>>>>
>>>> |/  cc1: warning: include location "/usr/include/python2.7" is 
>>>> unsafe for
>>>> /cross-compilation [-Wpoison-system-directories]
>>>> |/  In file included from _pjsua.c:20:0:
>>>> /|/  _pjsua.h:25:20: fatal error: Python.h: No such file or directory
>>>> /
>>>> So can I build them both in one recipe and how? And if built correctly
>>>> how to install the modules? I also tried to split the build into 
>>>> two .bb files.
>>>>
>>>> Thanks for your help.
>>>
>>> Try adding 'inherit pythonnative' to your recipe
>>>
>>>>
>>>> (Here is the pjproject bb)
>>>> --------
>>>> DESCRIPTION = "Open source SIP stack and media stack for presence, 
>>>> im/instant \
>>>>                 messaging, and multimedia communication"
>>>> SECTION = "libs"
>>>> HOMEPAGE ="http://www.pjsip.org/"
>>>> LICENSE = "GPLv2"
>>>> LIC_FILES_CHKSUM 
>>>> ="file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
>>>> DEPENDS = "alsa-lib openssl python"
>>>>
>>>> PARALLEL_MAKE = ""
>>>>
>>>> SRC_URI ="http://www.pjsip.org/release/${PV}/pjproject-${PV}.tar.bz2"
>>>> SRC_URI[md5sum] = "6ed4bb7750c827dc1d881e209a3b62db"
>>>> SRC_URI[sha256sum] = 
>>>> "da1933336b38b65ff2254bed05ea1076531b16915777a252ea999cf7f3284cb3"
>>>> S = "${WORKDIR}/pjproject-${PV}"
>>>>
>>>> inherit autotools pkgconfig
>>>>
>>>> EXTRA_OECONF += "STAGING_DIR=${STAGING_DIR_NATIVE}"
>>>>
>>>> do_configure_prepend () {
>>>>          export LD="${CC}"
>>>> }
>>>>
>>>> do_compile_prepend() {
>>>>          oe_runmake dep
>>>> }
>>>>
>>>>
>>>> do_install_prepend() {
>>>>      install -d ${D}/usr/bin
>>>>      install -m 755 ${S}/pjsip-apps/bin/pj* ${D}/usr/bin
>>>> }
>>>>
>>>>
>>>>
>>>>
>>>
>>
>
Still did not quite work. After a little bit of searching, I added 
--enable-shared to EXTRA_OECONF and now it works (just had to ship the 
files manually as they are not installed automatically. Thanks for your 
help.

