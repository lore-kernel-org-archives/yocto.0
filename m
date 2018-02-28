Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD06DE00E7B; Wed, 28 Feb 2018 02:15:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
	[217.26.49.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF6E7E00E41
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 02:15:45 -0800 (PST)
Received: from [10.0.2.45] (helo=asmtp012.mail.hostpoint.ch)
	by mxout017.mail.hostpoint.ch with esmtp (Exim 4.90_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1eqylz-000BgC-W4
	for yocto@yoctoproject.org; Wed, 28 Feb 2018 11:15:43 +0100
Received: from [2a02:168:69e3:1:3ddc:d567:8a31:d230]
	by asmtp012.mail.hostpoint.ch with esmtpa (Exim 4.90_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1eqylz-000Jlh-Rk
	for yocto@yoctoproject.org; Wed, 28 Feb 2018 11:15:43 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <59544485-752b-a12c-a9af-8ca58d861946@smart-home-technology.ch>
Date: Wed, 28 Feb 2018 11:15:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
Subject: Changing the tty/UART of busybox
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
X-List-Received-Date: Wed, 28 Feb 2018 10:15:46 -0000
Content-Type: multipart/alternative;
	boundary="------------E21622D2AF3119158B209B0C"
Content-Language: de-DE

--------------E21622D2AF3119158B209B0C
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

we need to change the tty on which busybox is sitting. Right now I could 
change the UART for the kernel and all program output after the boot to 
our favorite UART (via kernel cmd line). But the login promt and all 
interaction with the device is still on the old UART. So I guess it's a 
busybox configuration issue. Furthermore, when I try tty after login, it 
gives me: /dev/ttymxc4 (we want to use ttymx1).

I looked here https://busybox.net/downloads/BusyBox.html and in 
menuconfig for an option to change the UART interface but couldn't find 
any. Furthermore I added

|::respawn:/sbin/getty -L ttymxc1 115200 vt100 |

and this

|ttymxc1::respawn:/sbin/getty -L ttymxc1 115200 vt100|

to inittab to change the UART with no luck.
Could someone here point me to documentation or give me a hint to achive 
this?

Thanks in advance, all the Best,
Jakob

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


--------------E21622D2AF3119158B209B0C
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello,<br>
    <br>
    we need to change the tty on which busybox is sitting. Right now I
    could change the UART for the kernel and all program output after
    the boot to our favorite UART (via kernel cmd line). But the login
    promt and all interaction with the device is still on the old UART.
    So I guess it's a busybox configuration issue. Furthermore, when I
    try tty after login, it gives me: /dev/ttymxc4 (we want to use
    ttymx1).<br>
    <br>
    I looked here <a class="moz-txt-link-freetext" href="https://busybox.net/downloads/BusyBox.html">https://busybox.net/downloads/BusyBox.html</a> and in
    menuconfig for an option to change the UART interface but couldn't
    find any. Furthermore I added <br>
    <pre><code>::respawn:/sbin/getty -L ttymxc1 115200 vt100
</code></pre>
    and this<br>
    <pre><code>ttymxc1::respawn:/sbin/getty -L ttymxc1 115200 vt100</code></pre>
    to inittab to change the UART with no luck.<br>
    Could someone here point me to documentation or give me a hint to
    achive this?<br>
    <br>
    Thanks in advance, all the Best,<br>
    Jakob<br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jakob Hasse
Software Developement

E: <a class="moz-txt-link-abbreviated" href="mailto:jakob.hasse@smart-home-technology.ch">jakob.hasse@smart-home-technology.ch</a>
T: +41 44 552 02 66 

Smart Home Technology GmbH
<a class="moz-txt-link-abbreviated" href="http://www.smart-home-technology.ch">www.smart-home-technology.ch</a></pre>
  </body>
</html>

--------------E21622D2AF3119158B209B0C--
