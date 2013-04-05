Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCF82E014DB
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 03:31:43 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id 6so486607qeb.22
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 03:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=/r2zMKJovEItyIw0tDWJGMVBsULh2WUsAzNOFjNUTpA=;
	b=SFIN2z75F6USDYdeJQCGG1HWKhZvTkM3oCs6buozOBrZp3bOfKBfvK0BhbMCBAOKL3
	pNyaZWyiH6Gj4+LM+qB1++uNFbbmSNDE+6uHFdckDyxkyls/BUWsbGCLIchz+8sMeLQe
	B0G8YfK9Hg4dqj8SUPt//1oQWkHNagQpwYmLeNbYlWsb7I7GZ+stfW2BofqUWdoDnYq5
	8fap+rgG1Ihfi2nrLOS+imMb/ztu47nc5p+CBkDLYTT6LHwBUFSXIUW/Fn4zTjheGmBk
	D/1+ZKIgShwhtWn1S0g6Zu8N1bWPulQ4ftja4pWXnr4uDj2ZQcVZuOmvFHSS5l7DfPGq
	0d3g==
MIME-Version: 1.0
X-Received: by 10.229.106.203 with SMTP id y11mr1216427qco.47.1365157903286;
	Fri, 05 Apr 2013 03:31:43 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Fri, 5 Apr 2013 03:31:43 -0700 (PDT)
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1621F50A@IRSMSX102.ger.corp.intel.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<969F26A8BAB325438E7EB80D3C3134FB1621F50A@IRSMSX102.ger.corp.intel.com>
Date: Fri, 5 Apr 2013 12:31:43 +0200
Message-ID: <CAFyqS9oE0HKNf4Njzd8DVnchdLFFQ2_2s08kkgeOB+mgO=CU6g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: USB Ethernet problems
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
X-List-Received-Date: Fri, 05 Apr 2013 10:31:44 -0000
Content-Type: multipart/alternative; boundary=0023544701dce3534f04d99a971d

--0023544701dce3534f04d99a971d
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2013 at 12:08 PM, Iorga, Cristian
<cristian.iorga@intel.com>wrote:

>  Hello,****
>
> ** **
>
> Do you use connman as the network manager?****
>
> **
>
Since I do not know what that is, then I would say the answer is no ;)
This is a very slimmed down ARM system, with a simple init.d script that
brings up the networking.
The other devices/buses are probed through the flattened device tree.
What probably is needed is a networking script that either waits for the
eth0 to become available or it must be started later.
But I am not too sure starting it later will help though.

Hans


> **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Hans Beck=E9rus
> *Sent:* Friday, April 05, 2013 12:08 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] USB Ethernet problems****
>
> ** **
>
> Hi. In our configuration we do not have an on-board Ethernet device. It
> connected to the USB-host adapter.
> It seems that probing of such devices are done very late in the kernel
> boot-up which means it gets out of sync with the network init script(s)
> and the NIC thus has to be brought up manually after boot.
>
> ...
> usb 1-1: new high-speed USB device number 2 using xusbps-ehci
> hub 1-1:1.0: USB hub found
> hub 1-1:1.0: 4 ports detected
> VFS: Mounted root (ext2 filesystem) on device 1:0.
> devtmpfs: mounted
> Freeing init memory: 152K
> INIT: version 2.88 booting
> usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci
> Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such
> file or directory
> bootlogd.
> Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
> INIT: Entering runlevel: 5
> Starting Dropbear SSH server: NET: Registered protocol family 10
> dropbear.
> Starting syslogd/klogd: done
> Stopping Bootlog daemon: bootlogd.
> asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4, ASIX
> AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
> ...
>
> Is there some way to configure a system through Yocto to handle this
> scenario?
>
> Hans
>
> ****
>

--0023544701dce3534f04d99a971d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at 12:08 PM, Iorga, =
Cristian <span dir=3D"ltr">&lt;<a href=3D"mailto:cristian.iorga@intel.com" =
target=3D"_blank">cristian.iorga@intel.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">






<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)">Hello,<u></u><u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)"><u></u>=A0<u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)">Do you use connman a=
s the network manager?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)"><u></u>=A0</span></p=
></div></div></blockquote><div>Since I do not know what that is, then I wou=
ld say the answer is no ;)<br>
This is a very slimmed down ARM system, with a simple init.d script that br=
ings up the networking.<br>The other devices/buses are probed through the f=
lattened device tree.<br>What probably is needed is a networking script tha=
t either waits for the eth0 to become available or it must be started later=
.<br>
But I am not too sure starting it later will help though.<br><br>Hans<br>=
=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div link=3D=
"blue" vlink=3D"purple" lang=3D"EN-US">
<div><p class=3D"MsoNormal"><span style=3D"font-size:11pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:rgb(31,73,125)"><u></u></span><=
/p>
<div style=3D"border-width:1pt medium medium;border-style:solid none none;b=
order-color:rgb(181,196,223) -moz-use-text-color -moz-use-text-color;paddin=
g:3pt 0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10pt;font-family:&quot;T=
ahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-siz=
e:10pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=3D"m=
ailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org" t=
arget=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Hans Beck=E9rus<br>
<b>Sent:</b> Friday, April 05, 2013 12:08 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] USB Ethernet problems<u></u><u></u></span></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">Hi. In our configuratio=
n we do not have an on-board Ethernet device. It connected to the USB-host =
adapter.<br>
It seems that probing of such devices are done very late in the kernel boot=
-up which means it gets out of sync with the network init script(s)<br>
and the NIC thus has to be brought up manually after boot. <br>
<br>
...<br>
usb 1-1: new high-speed USB device number 2 using xusbps-ehci<br>
hub 1-1:1.0: USB hub found<br>
hub 1-1:1.0: 4 ports detected<br>
VFS: Mounted root (ext2 filesystem) on device 1:0.<br>
devtmpfs: mounted<br>
Freeing init memory: 152K<br>
INIT: version 2.88 booting<br>
usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci<br>
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file=
 or directory<br>
bootlogd.<br>
Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device<br=
>
INIT: Entering runlevel: 5<br>
Starting Dropbear SSH server: NET: Registered protocol family 10<br>
dropbear.<br>
Starting syslogd/klogd: done<br>
Stopping Bootlog daemon: bootlogd.<br>
asix 1-1.4:1.0: eth0: register &#39;asix&#39; at usb-xusbps-ehci.0-1.4, ASI=
X AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86<br>
...<br>
<br>
Is there some way to configure a system through Yocto to handle this scenar=
io?<br>
<br>
Hans<br>
<br>
<u></u><u></u></p>
</div></div></div>
</div>

</blockquote></div><br>

--0023544701dce3534f04d99a971d--
