Return-Path: <Moritz.Porst@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FF44E00BAF; Mon,  6 May 2019 03:21:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (moritz.porst[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 May 2019 03:21:33 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8239DE00BAF
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 03:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1557138092;
	bh=TrSi9HkabN0GKeuNNwmQdnDJ5MlTkVNYjb/DvE3pIlA=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=ceAGNS8/ruja2Tr2CgR35YrvUJ0scLjVgQjwXUED4khPRkSeRivjJNlTO5H2x4I3K
	JXrfESxGynGhI2XIcLgwaH65o3yvS0fcKXR2oK3MNxq1uxqYbw5fkaCanmXJOCF4Bt
	/7Y35I6mzodF0yNmticDe197Y12yT/lKvBaMMWRw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.152.229.14] ([80.152.229.14]) by web-mail.gmx.net
	(3c-app-gmx-bs72.server.lan [172.19.170.208]) (via HTTP);
	Mon, 6 May 2019 12:16:29 +0200
MIME-Version: 1.0
Message-ID: <trinity-87956540-aa5a-45e0-9337-9a78d3c39eed-1557137789667@3c-app-gmx-bs72>
From: "Moritz Porst" <Moritz.Porst@gmx.de>
To: yocto@yoctoproject.org
Date: Mon, 6 May 2019 12:16:29 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:1wdPdVslY2PhwkFW3YjXG7/L7LQHHmdPFpLHxAHVSgm1uuQyoT3OlgdmVszD5dBq7sgf1
	mB6+sI+oUACj2Q6d7Df5erqBaVJu6Eu6gjxn79G3TTgzLqXFL/N4Hqnj0p/YOo2jHx9ECsFZe6As
	tAsmidNB+uMB+iZ5Vzr6Xd7GoY7yYKlLWSwSYFnr8BRVonpuvTRpSawg0Lw8EVYmb8i0XpoORDhg
	G+1jkGtSZnaihR6nywd1eKqsj+IrkLGA6ax3xGxBPrbP0bdhuRfp2drmb4M7N4IztppFG09IdFIP
	wI=
X-UI-Out-Filterresults: notjunk:1;V03:K0:DTlaXsXFeC4=:TQYBxoOJ233Ysjzh+N3JIa
	YHOC39LsLcS4a44dyFYkpDVYJMueUEfk/obIQi8prNx+MAATpVt8+bdDnfQVYMfxLDd5FPG2H
	Gei/eeXmYWT95syBrs625i7+CWMXeZR5L6JAYek4yn2TIbhTgOlF8thwNVNPiHsI7Dpz/Wskk
	WzIU6MD08rPO4zhYCga+C61IlaPb4h/EFvKadA8vj1EF7bXnPBLQUxk4snRCcjw/uyE+KqjhF
	cCP2arTXX8guGWTTY8tApFgaS8xleI/4ZDaDTaKeWIlqX5TtrwBPIl7AlMcvdK/vPHEzxd+P3
	xBUT114rjJ/Bsts+Cxkri0lW5HI52hDYzmoVA0QxXtnvyBAwdvBoYkW9ixz06vdr3iTcwX0wT
	e9QMFvAWD7pWdKUKu7EJjlzcA415f7U0SC8UKeqEFxoDMqC1F+iJHZz2M22N7/Yqdc5k4qRxN
	gmweIhZ1BSIQn8W7euwCq9cOWDva+oBY3rZKfgemagQwgl7SoI/RVF71SFkkF+N6nESUppEjy
	cLOYhi9xjFzVRaJQlzR3EA0yQ/myVNf15IOfTrLwsdzpnajNj72w36vb5Grxg+x7s9aqpNskA
	Jpi0okVkZsUHMdRy8xK8nJQGw3RY/bPrTS5lN6f/A2xJIl3Ux3wAL/Ag==
Subject: gdb remote debugging not working correctly
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
X-List-Received-Date: Mon, 06 May 2019 10:21:35 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hello everyone,</div>

<div>I am having trouble to remote debug using gdb (v 8.2.0) with QTCreator (4.8.0).</div>

<div>My remote target features QT 5.12.0. I configured it like the following ( only relevant configurations ) :</div>

<div>---</div>

<div>inherit populate_sdk_qt5 # QT5 in SDK<br/>
&nbsp;</div>

<div>IMAGE_INSTALL_append = &quot; gdbserver&quot;</div>

<div>IMAGE_FEATURES_append = &quot; dev-pkgs dbg-pkgs&quot; # dbg-pkgs for debug-libraries. Not sure if the dev-pkgs is really required, but it should not do any harm (except for bloat the image)</div>

<div>---</div>

<div>Now from my build/development machine I start the QT example &quot;boxes&quot;. Executing in debug configuration &gt;locally&lt; it takes around 5 seconds to hit the first breakpoint (at the very beginning of main). On a breakpoint after the widget was created I can expand the widget variable which contains 8 objects. I can further expand (e.g.) [QWidget] which again contains several objects like [QObject].</div>

<div>Executing the debug configuration &gt;remote&lt; only takes around 1 second until first breakpoint. Expanding &quot;widget&quot; shows it is empty. No objects at all and the &quot;expand arrow&quot; is gone. When trying to step out of the actual main using f11 (&quot;step into&quot;) I receive a SIGSEGV.</div>

<div>&nbsp;</div>

<div>What I tried but didn&#39;t work:</div>

<div>- build the SDK again (because I had an older version)</div>

<div>- check versions: gdbserver on remote target (8.2.0); gdb on development machine (8.2.0)</div>

<div>- tried system gdb (7.11.1) which shows the exact same behaviour.</div>

<div>&nbsp;</div>

<div>In remote debugging I am however able to use breakpoints, step through MY code (not code coming from 3rd party libraries -&gt; SIGSEGV) and expanding variables that do not come from 3rd party variables (like argv).</div>

<div>I am not sure on how to proceed from here. It might be that I do something wrong but it could also be that this is an actual bug in gdb (?).</div>

<div>&nbsp;</div>

<div>Any advice is appreciated ! System information below.</div>

<div>&nbsp;</div>

<div>Best regards</div>

<div>Moritz</div>

<div>&nbsp;</div>

<div>System information:</div>

<div>Target uses a modified intel-corei7-64 machine and modified poky distribution. I removed following distro features:</div>

<div>DISTRO_FEATURES_remove = &quot;bluetooth alsa wifi 3g wayland vulkan pulseaudio bluez5&quot;</div>

<div>Dev machine runs an ubuntu 16.04.</div>

<div>&nbsp;</div>

<div>&nbsp;</div></div></body></html>

