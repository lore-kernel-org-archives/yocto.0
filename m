Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A148CE014D3
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 05:38:21 -0700 (PDT)
Received: by mail-qe0-f46.google.com with SMTP id a11so1965103qen.5
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 05:38:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=9yLqbcyZ1e46mDYwjBBWZ/VEtYxYSn8YK/oXwT132qU=;
	b=dY3/oQN+kmLaNg0OHDH+QWa4054YfF0OyXAx/u6d+UA9wkH3x1TgMaHYZaTKOLA1T3
	AVALWpD2Ah/ZLHiOX6Ehym3FX//b5kPrI1sX7xRJfMcvjwMCIODyTUW0LG8/95IK3VOT
	OZ7TDXVioyoN3ZdGRh6bigt5ENr05sVf2gEzRxv08i8/P1xXjHbguvCG27jXsz3AlhPV
	U917y3qIyn+XO/sWCg6wVdDDrUFS/7zJNWEQlYdLwa5RFk6JMvztW1anCIWMrndRMy87
	Jl/HUL9Vc/Z/DKOmjd8eyg+AFmm4QnohaC8PwhD5wQpGq1OkoH9gRVEj6gS9919MUMA1
	39xQ==
MIME-Version: 1.0
X-Received: by 10.224.123.137 with SMTP id p9mr3542350qar.69.1365165501048;
	Fri, 05 Apr 2013 05:38:21 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Fri, 5 Apr 2013 05:38:20 -0700 (PDT)
In-Reply-To: <515EA47A.5070400@mlbassoc.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<515EA47A.5070400@mlbassoc.com>
Date: Fri, 5 Apr 2013 14:38:20 +0200
Message-ID: <CAFyqS9q3zWuKN+YK_HqGfb-JPHBN1+LpR+ZcYVbg95a8PZY4Dg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 05 Apr 2013 12:38:21 -0000
Content-Type: multipart/alternative; boundary=047d7bdc1796bfec8704d99c5c65

--047d7bdc1796bfec8704d99c5c65
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2013 at 12:16 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-04-05 03:08, Hans Beck=E9rus wrote:
>
>> Hi. In our configuration we do not have an on-board Ethernet device. It
>> connected to the USB-host adapter.
>> It seems that probing of such devices are done very late in the kernel
>> boot-up which means it gets out of sync with the network init script(s)
>> and the NIC thus has to be brought up manually after boot.
>>
>> ...
>> usb 1-1: new high-speed USB device number 2 using xusbps-ehci
>> hub 1-1:1.0: USB hub found
>> hub 1-1:1.0: 4 ports detected
>> VFS: Mounted root (ext2 filesystem) on device 1:0.
>> devtmpfs: mounted
>> Freeing init memory: 152K
>> INIT: version 2.88 booting
>> usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci
>> Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such
>> file or directory
>> bootlogd.
>> Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
>> INIT: Entering runlevel: 5
>> Starting Dropbear SSH server: NET: Registered protocol family 10
>> dropbear.
>> Starting syslogd/klogd: done
>> Stopping Bootlog daemon: bootlogd.
>> asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4, ASIX
>> AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
>> ...
>>
>> Is there some way to configure a system through Yocto to handle this
>> scenario?
>>
>>
> I run exactly this setup on many different platforms with no issues
> so it can definitely be done with Poky/Yocto.
>
> What system (target) are you using?
> What version of the metadata (Poky/Yocto) are you using?  master?  danny?
>  etc
> How is your network device configured?
>
> I am on branch master.
My network device is *not* configured. That is the whole point/?problem?.
The kernel knowns nothing about the NIC at boot.
It is not detected until it first detects the USB 2.0 host adapter. Then
after a few moments the NIC is probed and eth0 becomes available through
the ASIX driver. But its too late, the /etc/init.d/networking is already
done trying ifup :(
Is there some configuration on network level I can do to fix this? Right
now I have an ugly patch in /etc/init.d/networking that spins until eth0
comes up. It solves the sync issue, but also requires some sort of timeout
to not get stuck forever if the device is never inserted :(

Hans



> --
> ------------------------------**------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------**------------------------------
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoprojec=
t.org/listinfo/yocto>
>

--047d7bdc1796bfec8704d99c5c65
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at 12:16 PM, Gary Th=
omas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On 2013-04-05 03:08, Hans Beck=E9ru=
s wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
Hi. In our configuration we do not have an on-board Ethernet device. It con=
nected to the USB-host adapter.<br>
It seems that probing of such devices are done very late in the kernel boot=
-up which means it gets out of sync with the network init script(s)<br>
and the NIC thus has to be brought up manually after boot.<br>
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
</blockquote>
<br></div></div>
I run exactly this setup on many different platforms with no issues<br>
so it can definitely be done with Poky/Yocto.<br>
<br>
What system (target) are you using?<br>
What version of the metadata (Poky/Yocto) are you using? =A0master? =A0dann=
y? =A0etc<br>
How is your network device configured?<span class=3D"HOEnZb"><font color=3D=
"#888888"><br>
<br></font></span></blockquote><div>I am on branch master. <br>My network d=
evice is *not* configured. That is the whole point/?problem?. The kernel kn=
owns nothing about the NIC at boot.<br>It is not detected until it first de=
tects the USB 2.0 host adapter. Then after a few moments the NIC is probed =
and eth0 becomes available through the ASIX driver. But its too late, the /=
etc/init.d/networking is already done trying ifup :(<br>
Is there some configuration on network level I can do to fix this? Right no=
w I have an ugly patch in /etc/init.d/networking that spins until eth0 come=
s up. It solves the sync issue, but also requires some sort of timeout to n=
ot get stuck forever if the device is never inserted :(<br>
<br>Hans<br><br>=A0<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><span class=3D"HOEnZb"><font color=3D"#888888">
-- <br>
------------------------------<u></u>------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------<u></u>------------------------------<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br>

--047d7bdc1796bfec8704d99c5c65--
