Return-Path: <gh403@msstate.edu>
Received: from smtps01.its.msstate.edu (smtps01.its.msstate.edu [130.18.3.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35073E0049C
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 17:35:43 -0800 (PST)
X-Sender: <>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by smtps01.its.msstate.edu (8.14.4/8.14.4) with ESMTP id s0V1Zdg0010345
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 19:35:42 -0600
Received: by mail-ob0-f170.google.com with SMTP id va2so4377468obc.15
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 17:35:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:user-agent
	:mime-version:content-transfer-encoding:content-type;
	bh=pnOS5Z9Cfta7lK7AhHTApULjQGF2vHBqxzr9phxZ/q0=;
	b=YkuzsprcULbU+ywSJ29Ty9AFJG0iON+dP47ehWfQe3RpuBgbiLLc4lOX/2cF2UEJtD
	5E8WVCh5LttpdBBfPeBnh5eEAyYuUpnNmtkdYkzFQrc1neIVaUhivKsX/XNRl5/nhkqQ
	ku6L2yoCDMQHf4scyjgu8f6cUUP9TpehX0H8lahCpZiNB62Uaic08aIx/cIVV3HgM2I6
	2VZdCwpgpPfLyONvhO08b0SsfEEKS/Gl4w3R5a1IQBJF4jg5Yn3CzvbOzNQCdT86kQrO
	iSu90rwKMzSRqoliS9NvHWf7rPHe6YtrapiVESEzIQsCSmCbTAY28KogTHTqQAtWRuky
	DsSg==
X-Gm-Message-State: ALoCoQl6MHYMJndmqsvC48jrAGeXcTy1gsbsEw68tQO78kzX5O8AeMASzGM7zTQ0ZduOTCmPSZ7PQbWxgcwWTySXblc6CTT0KOOYB0XqPZrspH+Dq20nJ5OKeLX0OdkzoA0D5G1n8JeFtNTFf7t0loPpCflvNMaZ1Q==
X-Received: by 10.182.72.234 with SMTP id g10mr14303699obv.21.1391132139707;
	Thu, 30 Jan 2014 17:35:39 -0800 (PST)
X-Received: by 10.182.72.234 with SMTP id g10mr14303685obv.21.1391132139477;
	Thu, 30 Jan 2014 17:35:39 -0800 (PST)
Received: from shillig-arch.localnet (ws2-119.griffis.dynamic.msstate.edu.
	[130.18.119.2])
	by mx.google.com with ESMTPSA id hl3sm13490756obb.0.2014.01.30.17.35.38
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 30 Jan 2014 17:35:39 -0800 (PST)
From: George Hilliard <gh403@msstate.edu>
To: yocto@yoctoproject.org
Date: Thu, 30 Jan 2014 19:32:01 -0600
Message-ID: <15820240.JO6syelmOi@shillig-arch>
User-Agent: KMail/4.12.1 (Linux/3.12.9-1-ARCH; KDE/4.12.1; x86_64; ; )
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 30 Jan 2014 21:53:58 -0800
Subject: SCons Build Issue
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
X-List-Received-Date: Fri, 31 Jan 2014 01:35:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello,
I have a build issue.  I'm trying to write a Bitbake recipe for jsoncpp, which uses SConstruct.  My .bb file is at https://gist.github.com/thirtythreeforty/8725055.  When I run it, Bitbake complains,

| DEBUG: Executing shell function do_compile
| Traceback (most recent call last):
|   File "/home/user/msu-community-bsp/build_mx6/tmp/sysroots/x86_64-linux/usr/bin/scons", line 187, in <module>
|     import SCons.Script
| ImportError: No module named SCons.Script
| ERROR: scons build execution failed.
| ERROR: Function failed: do_compile (see /home/user/msu-community-bsp/build_mx6/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/jsoncpp/0.5.0-r0/temp/log.do_compile.8396 for further information)

What gives?  How can I modify the recipe (or my setup) to build this infernal package?

Thanks in advance!
George Hilliard

