Return-Path: <Stefan.Kostial@gmx.de>
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA16CE0055C
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 00:16:20 -0800 (PST)
Received: from 3capp-gmx-bs20.server.lan ([172.19.170.72]) by
	mrigmx.server.lan (mrigmx002) with ESMTP (Nemesis) id
	0Lmhpd-1VCWWY1Uw7-00aBXG for <yocto@yoctoproject.org>; Wed, 27 Nov 2013
	09:16:17 +0100
Received: from [212.20.172.90] by 3capp-gmx-bs20.server.lan with HTTP; Wed
	Nov 27 09:16:17 CET 2013
MIME-Version: 1.0
Message-ID: <trinity-102b2577-2f25-419e-8571-daa5c841d972-1385540177234@3capp-gmx-bs20>
From: "Stefan Kostial" <Stefan.Kostial@gmx.de>
To: yocto@yoctoproject.org
Date: Wed, 27 Nov 2013 09:16:17 +0100 (CET)
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:TeqBJpi7ZTabi9twfz2aIssK0giYNgvSIKw1DcjYVFs
	5JHXchP1u/Rfbid83b7lB2Dvo0w1IGgUynb59aHohKs8Nlafd7
	5MSCPuwSxkD8jOcDJtQwtYCdB0wFmNWgEDbObw/H26aSBcnomf
	/QPU19RXwZFz9Ky1uwgH14newHQYwgx+ay6S7DRNL/71GUHn0c
	eIdfAu5h4rGkx+KjBGeKAcW5WtcckscEMcgXCcPLsI6MvuLCdk
	HJQIKBQj7S3JKGsQH0VX3oDDLl4zYbnq88lAHxdVB57uPZOvNY FUQiqI=
X-Mailman-Approved-At: Mon, 02 Dec 2013 08:28:16 -0800
Subject: Problem with RAM partitioning
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
X-List-Received-Date: Wed, 27 Nov 2013 08:16:22 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>
<div>Hello everyone,</div>

<div>I&#39;m sorry if this is not the 100% right place for my problem, but all other ways haven&#39;t lead to a solution.</div>

<div>&nbsp;</div>

<div>I&#39;m working with an &quot;Altera Cyclone V FPGA&quot; which has a hardprocessor system with (poky-) linux running on it.<br/>
There is also a 1GB DDR3 RAM connected to the system.</div>

<div>&nbsp;</div>

<div>My target is to devide the available 1GB into 3 partitions:<br/>
Partition 1: used only by Linux<br/>
Partition 2: used only by the FPGA<br/>
Partition 3: &quot;swap&quot; partition for exchanging data between the FPGA and Linux</div>

<div>&nbsp;</div>

<div>For this purpose there is a controller on the FPGA called &quot;SDRAM controller subsystem&quot; in which registers<br/>
you can define up to 20 rules for memory access protection - I think this is exactly what I need... but I can&#39;t get it running.</div>

<div>&nbsp;</div>

<div>My first problem is that I don&#39;t know __when__ to set this registers. Someone recommended setting this registers in linux,<br/>
but this doesn&#39;t work and has no effect (after setting the registers, linux everytime has full access to the whole RAM and after rebooting all registers are set back.)<br/>
I think that setting the registers must be done __before__ the linux boots, e.g. in the preloader or the bootloader (U-Boot)?!</div>

<div>&nbsp;</div>

<div>I&#39;m searching for 2 weeks for a solution - no example projects are provided by Altera, and the documentation is very rare.</div>

<div>Please, does anyone has a hint for me?!<br/>
Slowly I&#39;m going nuts on this topic.</div>

<div>Many thanks in advance!!!</div>

<div>&nbsp;</div>

<div>Cheers<br/>
Stefan Kostial</div>

<div>&nbsp;</div>

<div>P.S.:&nbsp; If wished, I can provide more detailed info - at this moment I&#39;m just searching for someone who has some experience...</div>
</div></div></body></html>

