Return-Path: <Virgi200@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E3C9E00C09; Wed, 18 Nov 2015 01:26:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (virgi200[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C92DE00B9E
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 01:26:12 -0800 (PST)
Received: from [217.5.143.100] by 3capp-gmx-bs65.server.lan (via HTTP); Wed,
	18 Nov 2015 10:26:10 +0100
MIME-Version: 1.0
Message-ID: <trinity-5dab3937-8bd4-42ae-98e1-bdbeb72bb2d4-1447838770675@3capp-gmx-bs65>
From: "Virgilia  Eigner" <Virgi200@gmx.de>
To: yocto@yoctoproject.org
Date: Wed, 18 Nov 2015 10:26:10 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:7tKMzxzZSBK9LDKnFZZcWjJS/XC7RRnjLTBZMsXX0zq
	SRm1flPrK5hq9Xrv9OAMxAjqFdZ/5I1tvvuVWOVDH+A2+BDVqk
	CPoEDORYMkiUEeTPkAHzwLdKY6iLhD7E6+07wEPEQQGShJl1Oi
	K0+MUq3MLVh3CSb0Fx4ll+9zS2pHnPPUiWPmM3Nn0RhnBEHWHM
	pB5aVpfTATM0tNdpRtCZmKGL6hQTov7C8apf+ohYY5tLLXG+0o
	zHSixwEgkHJt99NAJRUUKdXL3qOm24kk9hk4EVAiYaxBJ9WYFq 54G62Y=
X-UI-Out-Filterresults: notjunk:1;V01:K0:FZFdLFtgzoI=:fa9NGD1947ygUgtrDQyUnk
	H3lRONGvXrfo6xdqi1TM2rlZ61xfXqQFGJwxym9zaikbxWcrI6YYRR9cDKJIovqw58oprJz0g
	HPjETl0Y9rfnHZdSCrdI7DoI9BMtBPYNOd5t2BEieFITkvZJiLg+a+AmjsiGzBwAWzELtfe5U
	qlw4monv7nd2Z5FsU7Y4IJDma2Bl8TMuokFCiSeICY7xGpSg4yz1yBwg+5EMiju6t7OdiDH4U
	A5wEfyYznNPJvzDPg+Ptk9UDWSkgX8A9bn+h+UqsTZxZdb43i/mfyZzVY6y6GkYxn26QeOBrA
	zEe+yLTgwS0u4A5AnD1LoPy4rHqJtrb6xvvdsrUFOTNxvHnvm3bSVgztWqlCP8lYFUFvwCtL3
	nTrkNNU3l4DONvUpZOuxUkvKPxRBsRgoYmyfkPWNvf9WEpGTQNCaS8PMMi+R5QgdPWT38jpdz
	yuWiimUMBw==
Subject: external toolchain
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
X-List-Received-Date: Wed, 18 Nov 2015 09:26:14 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>hi,</div>

<div><br/>
I am still working at my external toolchain, i would be very thankful, if you could have a look at further error messages.<br/>
In this case I can&#39;t find any help, has anyone an idea? &nbsp;</div>

<div>&nbsp;</div>

<div>-layer meta-sourcery-master<br/>
-external toolchain the Crosstool NG<br/>
-YP Core - Fido 1.8.1<br/>
Build Configuration:<br/>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;1.27.1&quot;<br/>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;i686-linux&quot;<br/>
NATIVELSBSTRING&nbsp;&nbsp; = &quot;LinuxMint-1&quot;<br/>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;powerpc-e500v2-linux-gnuspe&quot;<br/>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;powerpc&quot;<br/>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;poky&quot;<br/>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; = &quot;1.8+snapshot-20151113&quot;<br/>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; = &quot;m32 spe ppce500v2&quot;<br/>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;ppc-efd&quot;<br/>
EXTERNAL_TOOLCHAIN = &quot;/home/s/x-tools/powerpc-e500v2-linux-gnuspe&quot;<br/>
SOURCERY_VERSION&nbsp; = &quot;s-1.0&quot;<br/>
GCC_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = &quot;4.7.2&quot;<br/>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br/>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br/>
meta-yocto-bsp&nbsp;&nbsp; &nbsp;<br/>
meta-powerpc&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br/>
meta-sourcery-master = &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div>

<div>&nbsp;</div>

<div>&nbsp;<br/>
s@vmint ~/Yocto/poky/build &#36; bitbake core-image-minimal<br/>
WARNING: Host distribution &quot;LinuxMint-1&quot; has not been validated with this version of the build system; you may possibly experience unexpected failures. It is recommended that you use a tested distribution.<br/>
Loading cache: 100% &#124;################################################################################################&#124; ETA:&nbsp; 00:00:00<br/>
Loaded 1298 entries from dependency cache.<br/>
Parsing recipes: 100% &#124;##############################################################################################&#124; Time: 00:00:01<br/>
Parsing of 896 .bb files complete (872 cached, 24 parsed). 1297 targets, 81 skipped, 0 masked, 0 errors.<br/>
NOTE: Resolving any missing task queue dependencies<br/>
ERROR: Nothing PROVIDES &#39;gcc-source&#39;<br/>
ERROR: gcc-source was skipped: Recipe is blacklisted: not building with an external toolchain<br/>
ERROR: gcc-source was skipped: Recipe is blacklisted: not building with an external toolchain<br/>
NOTE: Runtime target &#39;dpkg-dev&#39; is unbuildable, removing...<br/>
Missing or unbuildable dependency chain was: [&#39;dpkg-dev&#39;, &#39;ncurses&#39;, &#39;virtual/powerpc-e500v2-linux-gnuspe-compilerlibs&#39;, &#39;gcc-source&#39;]<br/>
NOTE: Runtime target &#39;dpkg&#39; is unbuildable, removing...<br/>
Missing or unbuildable dependency chain was: [&#39;dpkg&#39;, &#39;ncurses&#39;, &#39;virtual/powerpc-e500v2-linux-gnuspe-compilerlibs&#39;, &#39;gcc-source&#39;]<br/>
ERROR: Required build target &#39;core-image-minimal&#39; has no buildable providers.<br/>
Missing or unbuildable dependency chain was: [&#39;core-image-minimal&#39;, &#39;ncurses&#39;, &#39;virtual/powerpc-e500v2-linux-gnuspe-compilerlibs&#39;, &#39;gcc-source&#39;]</div>

<div>Summary: There was 1 WARNING message shown.<br/>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.</div>

<div><br/>
thanks,</div>

<div>virgilia</div>
</div></div></body></html>

