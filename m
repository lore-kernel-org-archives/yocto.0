Return-Path: <shoaibfrasmd@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 334FFE00DBF; Sun, 10 Jul 2016 23:25:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (shoaibfrasmd[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC92E00DB7
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 23:25:36 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id a5so12815218vkc.2
	for <yocto@yoctoproject.org>; Sun, 10 Jul 2016 23:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=LX7b2Y1PljRErtFL8JlUPxDu/Wj67hi+ZIfRPpCKAo4=;
	b=PTzIe6JnhXtaKfP8hHXK4seX0UNAqVIdgktXHubngCBUw8A/FL2wTRL/yexprH/Xa5
	NLwT0I/yncSZwrk5/VTT6l8sXsXL2dArHx2Scpx8HJPssAXNPyiiAhzk82EcpJwxCQd8
	UoV2VlDL8nsy+w8FdBU0fEhH/TxRp7B2CenSKq+gfcYZAbXsJY2IjrPV7X9B9nkDMSKv
	kKLWTdQpKmbJJ09+jE1cW8zNDtxG9uRZpEoNQ0hjGXBB6l4UGtzg4TSfKLF1SJwXknRV
	Z7KsC5CI+3taskI3ayIehkSSWaG4cZfmTvjrQdF4t1RMc75Sh5sSprxU0L0GDPfSwaEa
	IHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LX7b2Y1PljRErtFL8JlUPxDu/Wj67hi+ZIfRPpCKAo4=;
	b=c/NpsSowxorkxZqw9FrunoFLJK9R/55+hxbIulqvanqG5vVjfXALJT+MaNZCsWYz52
	T/YUDGsK6nG0zB1L8wumcP+58zETHF1usl98CLSOKVT775D4gUBiAPZIjLWrcC3H0+TN
	igFQ1uOylssdrwWEVQoUViUC810xZDdNxq32iaRDOV+2eyxVz55pDpHEPMMcMSLw1VJT
	yz4NuQUt4WIJo82trbiphezNoS/1oOowIeoNaw/4074LyeIIghThE+N8NYv5whpku4d2
	Jie/+6La/JZTwOm9cRUrRdXVQrzbVItTkygaiu2pq78uHYMOxzLymPrHrkU235lxyaTe
	04MA==
X-Gm-Message-State: ALyK8tIMFB2PA4dMn3nj41II/U/22R3H05MANgNCjqO4oEu4hZoCQ4m43qybbxLXlNKFhS/NnB6HdLfM80ddcA==
X-Received: by 10.31.93.67 with SMTP id r64mr8226128vkb.53.1468218334867; Sun,
	10 Jul 2016 23:25:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.45.133 with HTTP; Sun, 10 Jul 2016 23:25:34 -0700 (PDT)
From: shoaib md <shoaibfrasmd@gmail.com>
Date: Mon, 11 Jul 2016 11:55:34 +0530
Message-ID: <CAOvqCUMYP5g3+5ONAj0fPUST6aVkzQ-z-VNk6BEfK_Fi6ngqQw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Getting USB devices to work on BeagleBoard Black
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
X-List-Received-Date: Mon, 11 Jul 2016 06:25:37 -0000
Content-Type: multipart/alternative; boundary=001a114e010e4d75420537563806

--001a114e010e4d75420537563806
Content-Type: text/plain; charset=UTF-8

I've managed to build a couple of different recipes for my BeagleBoard
(BeagleBoard Black Rev C), and also had a go at customising it.  I think
I've tried core-image-minimal.

The build works OK, and I can set up my micro SD card and get it to
boot. I see lots of messages about loading drivers during boot, and I
can log in to linux.

However, the USB devices don't seem to be working. The built in
USB-Ethernet isn't there, and when I plug in a USB stick nothing happens
- nothing in /dev/ and no messages in the system log.

I don't know whether this is something I missed in the build, or some
configuration I need to do. I also don't know whether it is specific to
the Beagle or a general problem. Unfortunately I am new to Kernel builds
and device drivers.


I also saw errors from the ethernet subsystem (?), along the lines of
"eth0: device not found" and "usb0: device not found". This occurred
during boot and also when I used "ifup eth0". I'm actually seeing a
different error now: "ifconfig: SIOCGIFFLAGS: No such device". In either
case, I think it's because something to do with the actual USB hardware
is missing or not configured.

"lsmod" shows no modules loaded, i.e.:
root at beagleboard <https://lists.yoctoproject.org/listinfo/yocto>:~#lsmod
Module Size Used by

Does this mean that the various device drivers, etc, above are built in
to the kernel?

Any suggestions for how to diagnose / fix this problem? Anybody else
have experience with the BeagleBoard xM? I'm a bit lost. Please help
me with this.

Thanks and Regards,

Shoaib.

--001a114e010e4d75420537563806
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)"><font=
 face=3D"arial, helvetica, sans-serif">I&#39;ve managed to build a couple o=
f different recipes for my BeagleBoard=20
(BeagleBoard Black Rev C), and also had a go at customising it.  I think=20
I&#39;ve tried core-image-minimal.

The build works OK, and I can set up my micro SD card and get it to=20
boot. I see lots of messages about loading drivers during boot, and I=20
can log in to linux.

However, the USB devices don&#39;t seem to be working. The built in=20
USB-Ethernet isn&#39;t there, and when I plug in a USB stick nothing happen=
s=20
- nothing in /dev/ and no messages in the system log.

I don&#39;t know whether this is something I missed in the build, or some=
=20
configuration I need to do. I also don&#39;t know whether it is specific to=
=20
the Beagle or a general problem. Unfortunately I am new to Kernel builds=20
and device drivers.</font></pre><pre style=3D"white-space:pre-wrap;color:rg=
b(0,0,0)"><font face=3D"arial, helvetica, sans-serif"><br></font></pre><pre=
 style=3D"white-space:pre-wrap;color:rgb(0,0,0)"><pre style=3D"white-space:=
pre-wrap"><font face=3D"arial, helvetica, sans-serif">I also saw errors fro=
m the ethernet subsystem (?), along the lines of=20
&quot;eth0: device not found&quot; and &quot;usb0: device not found&quot;. =
This occurred=20
during boot and also when I used &quot;ifup eth0&quot;. I&#39;m actually se=
eing a=20
different error now: &quot;ifconfig: SIOCGIFFLAGS: No such device&quot;. In=
 either=20
case, I think it&#39;s because something to do with the actual USB hardware=
=20
is missing or not configured.

&quot;lsmod&quot; shows no modules loaded, i.e.:

<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">root at beagleboa=
rd</a>:~#lsmod
Module Size Used by
<br></font></pre><pre style=3D"white-space:pre-wrap"><font face=3D"arial, h=
elvetica, sans-serif">Does this mean that the various device drivers, etc, =
above are built in=20
to the kernel?

Any suggestions for how to diagnose / fix this problem? Anybody else=20
have experience with the BeagleBoard xM? I&#39;m a bit lost. Please help me=
 with this.</font></pre><pre style=3D"white-space:pre-wrap"><font face=3D"a=
rial, helvetica, sans-serif">Thanks and Regards,</font></pre><pre style=3D"=
white-space:pre-wrap"><font face=3D"arial, helvetica, sans-serif">Shoaib.</=
font></pre></pre>
</div>

--001a114e010e4d75420537563806--
