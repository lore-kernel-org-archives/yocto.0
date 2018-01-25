Return-Path: <smith-f@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC564E00EAB; Thu, 25 Jan 2018 04:17:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (smith-f[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0007]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Thu, 25 Jan 2018 04:16:59 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03BBCE00B5F
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 04:16:59 -0800 (PST)
Received: from [213.182.151.226] ([213.182.151.226]) by
	3c-app-gmx-bs06.server.lan (via HTTP); Thu, 25 Jan 2018 13:11:55 +0100
MIME-Version: 1.0
Message-ID: <trinity-1a344deb-921e-4874-8498-d8ed6d57f28c-1516882315349@3c-app-gmx-bs06>
From: "Frank Smith" <smith-f@gmx.de>
To: yocto@yoctoproject.org
Date: Thu, 25 Jan 2018 13:11:55 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:P5wxVbygR7q0dt2Jp+N1EK0ZEBFvjJFURAHEs+1rsr+
	geYSspEsdDoseqWWuHPEftut6GD6t2mXharRs5g+3o0mjG4RA5
	HhHBxolQ1LuncO4h6r08YJOi75Y3UssFG/S+7aCknGzCYyS1kL
	srIlJroE8ZWB5RcIPuywD+cQtalaPHr9BUOFMi4/6RadrcW2hX
	EbWsX4b4RwTgG8z+jelYZwzxfhoVHAxwOCLvrPzhJYaqiFgffS
	CrpcvacvkrFFk3f/y3VfG00di01A409cDgCUTYa5oeNLIazKCj 7V9Hgo=
X-UI-Out-Filterresults: notjunk:1;V01:K0:dsNYHxpjyvA=:BusR/rJvb7PKNQkFUi5PgM
	I8uIe4I+owF4+A7e6Y1gmO2iaHKk/qBwpQfvBG45dEoqv7X5WuTVCWNKH0RWkQB+WHzdwkgr4
	X28kqkN5SBE4jqG9zsed87+NqQmWghliYgdfHURJLeD8XPHDxM8GYMzhb4v3Y8IBzKnhkaxH1
	nfsjuddTbd/neLd3S+AGG/HQcyEdiv8z39TXuqC4xbR/XZgVSN3zJab7U1MaX7dv9hld+Eswz
	0x8JXSo6r+p7XvHLjVYOwGORBTUBT6+ZQ50IDmESQrTowoHoUBsWBF76Mgw8lUWrigfFQjYTt
	p/ptOwM4mQr5G8eBez/ZCvT+K6UNqCERC3vV6RxgIlD0T/NeMhWHVZH/04lBjOYXC3u67Sr8h
	6qttXBI/mTi5EOIGUSDw0egaeuwvkbfaaZOUPFwJ0w+cTCwfQ4lKVboKxTDSwIrPTLHCReaDe
	P9zEKaOEIKlu+QqQ3kOZNv9dX7r2Hdum5Cw1LJVLUI1YUZa1SK9Z
X-Mailman-Approved-At: Tue, 30 Jan 2018 08:54:36 -0800
Subject: KBUILD_DEFCONFIG_KMACHINE ?= defconfig_file does not work as expected
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
X-List-Received-Date: Thu, 25 Jan 2018 12:17:00 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div class="post-text" itemprop="text">
<p><code>KBUILD_DEFCONFIG_KMACHINE ?= defconfig_file</code> does not work as I expected.</p>

<p><strong>First lesson I learned: <code>defconfig != .config</code></strong></p>

<p>A new defconfig file below <code>arch/arm/config/xy_defconfig</code> created by <code>make savedefconfig</code> is not equal to the <code>.config</code> file. I assume the linux kernel expand some symbols and create the final <code>.config</code>.</p>

<p>Here comes the issue: yocto&#39;s in-tree defconfig only works with the full list of config symbols. The xy_defconfig below <code>arch/arm/configs</code> does not have all symbols. So the kernel is not as expected. Any suggestions if it is a bug or a feature? And how to force a make xy_defconfig before build?</p>

<p>Best, Frank</p>
</div>

<div>&nbsp;</div></div></body></html>

