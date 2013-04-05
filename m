Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B69EE0136C
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 05:57:09 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id v28so1579915qcm.38
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 05:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=w45XtIwYrWdTpCoq/cbgaOOli341nUUXxPZ3LSq6hpw=;
	b=AdkTKhew3ejPC4G3iXzgbdBBkB/SArOm767bxIi4AYPzHA0ZfKdXQ+KbHWrrYQ3iGq
	iTmgNyly7fD2+jcFEa/rLlYmU9Y62oPo5xRSxa+BguNwze+smWhiV6wlPXwMC/7ta7ld
	f/E+4s6hQgnwUl6mhgVXQq6engrhP8IiJCnXy7VP/rd3LyP/RTkY7tm+PjYhMRE5mseU
	fAO0UGYg98CVcWfOIHwk/AulMdAkpXGQSNKOKpFIbUyBotNSzQzF9+MvrpovdkB/CIK8
	EvQKAIDogNUl8QJ0sW9oGVifu4GRDXOMXJTwHQigAuz9ZYzNeHB9DsT3YBqXHMvDFmb5
	GHjg==
MIME-Version: 1.0
X-Received: by 10.224.110.205 with SMTP id o13mr8024934qap.81.1365166628707;
	Fri, 05 Apr 2013 05:57:08 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Fri, 5 Apr 2013 05:57:08 -0700 (PDT)
In-Reply-To: <515EC823.1050703@mlbassoc.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<515EA47A.5070400@mlbassoc.com>
	<CAFyqS9q3zWuKN+YK_HqGfb-JPHBN1+LpR+ZcYVbg95a8PZY4Dg@mail.gmail.com>
	<515EC823.1050703@mlbassoc.com>
Date: Fri, 5 Apr 2013 14:57:08 +0200
Message-ID: <CAFyqS9p+jUqGKmiJpaL2RGGc7RPpbbUMwo8zgySA-fDr8HyZOw@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Apr 2013 12:57:09 -0000
Content-Type: multipart/alternative; boundary=20cf3063e315f6a4c504d99c9fe1

--20cf3063e315f6a4c504d99c9fe1
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2013 at 2:48 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-04-05 06:38, Hans Beck=E9rus wrote:
>
>
>>
>> On Fri, Apr 5, 2013 at 12:16 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     On 2013-04-05 03:08, Hans Beck=E9rus wrote:
>>
>>         Hi. In our configuration we do not have an on-board Ethernet
>> device. It connected to the USB-host adapter.
>>         It seems that probing of such devices are done very late in the
>> kernel boot-up which means it gets out of sync with the network init
>> script(s)
>>         and the NIC thus has to be brought up manually after boot.
>>
>>         ...
>>         usb 1-1: new high-speed USB device number 2 using xusbps-ehci
>>         hub 1-1:1.0: USB hub found
>>         hub 1-1:1.0: 4 ports detected
>>         VFS: Mounted root (ext2 filesystem) on device 1:0.
>>         devtmpfs: mounted
>>         Freeing init memory: 152K
>>         INIT: version 2.88 booting
>>         usb 1-1.4: new high-speed USB device number 3 using xusbps-ehci
>>         Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: N=
o
>> such file or directory
>>         bootlogd.
>>         Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No suc=
h
>> device
>>         INIT: Entering runlevel: 5
>>         Starting Dropbear SSH server: NET: Registered protocol family 10
>>         dropbear.
>>         Starting syslogd/klogd: done
>>         Stopping Bootlog daemon: bootlogd.
>>         asix 1-1.4:1.0: eth0: register 'asix' at usb-xusbps-ehci.0-1.4,
>> ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
>>         ...
>>
>>         Is there some way to configure a system through Yocto to handle
>> this scenario?
>>
>>
>>     I run exactly this setup on many different platforms with no issues
>>     so it can definitely be done with Poky/Yocto.
>>
>>     What system (target) are you using?
>>     What version of the metadata (Poky/Yocto) are you using?  master?
>>  danny?  etc
>>     How is your network device configured?
>>
>> I am on branch master.
>> My network device is *not* configured. That is the whole point/?problem?=
.
>> The kernel knowns nothing about the NIC at boot.
>> It is not detected until it first detects the USB 2.0 host adapter. Then
>> after a few moments the NIC is probed and eth0 becomes available through
>> the ASIX driver. But its too late,
>> the /etc/init.d/networking is already done trying ifup :(
>> Is there some configuration on network level I can do to fix this? Right
>> now I have an ugly patch in /etc/init.d/networking that spins until eth0
>> comes up. It solves the sync
>> issue, but also requires some sort of timeout to not get stuck forever i=
f
>> the device is never inserted :(
>>
>
> Is your ethernet driver compiled in or a kernel module?
>
> I'm using a compiled in driver (the same one BTW) and it works fine.
>
>
> It is compiled into the kernel. If you look at boot log I sent in the
initial mail you can see that the actual ASIX device (D-Link DUB-E100) is
detected much later than the host adapter :( How is it in your case?
Maybe it is the actual device that is not responding quickly enough? Are
you pre-configuring anything in your bootargs prepared from U-Boot for eth?

Hans

--20cf3063e315f6a4c504d99c9fe1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at 2:48 PM, Gary Tho=
mas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_b=
lank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">

On 2013-04-05 06:38, Hans Beck=E9rus wrote:<div><div><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
On Fri, Apr 5, 2013 at 12:16 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlb=
assoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"ma=
ilto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wro=
te:<br>


<br>
=A0 =A0 On 2013-04-05 03:08, Hans Beck=E9rus wrote:<br>
<br>
=A0 =A0 =A0 =A0 Hi. In our configuration we do not have an on-board Etherne=
t device. It connected to the USB-host adapter.<br>
=A0 =A0 =A0 =A0 It seems that probing of such devices are done very late in=
 the kernel boot-up which means it gets out of sync with the network init s=
cript(s)<br>
=A0 =A0 =A0 =A0 and the NIC thus has to be brought up manually after boot.<=
br>
<br>
=A0 =A0 =A0 =A0 ...<br>
=A0 =A0 =A0 =A0 usb 1-1: new high-speed USB device number 2 using xusbps-eh=
ci<br>
=A0 =A0 =A0 =A0 hub 1-1:1.0: USB hub found<br>
=A0 =A0 =A0 =A0 hub 1-1:1.0: 4 ports detected<br>
=A0 =A0 =A0 =A0 VFS: Mounted root (ext2 filesystem) on device 1:0.<br>
=A0 =A0 =A0 =A0 devtmpfs: mounted<br>
=A0 =A0 =A0 =A0 Freeing init memory: 152K<br>
=A0 =A0 =A0 =A0 INIT: version 2.88 booting<br>
=A0 =A0 =A0 =A0 usb 1-1.4: new high-speed USB device number 3 using xusbps-=
ehci<br>
=A0 =A0 =A0 =A0 Starting Bootlog daemon: bootlogd: cannot allocate pseudo t=
ty: No such file or directory<br>
=A0 =A0 =A0 =A0 bootlogd.<br>
=A0 =A0 =A0 =A0 Configuring network interfaces... ifconfig: SIOCGIFFLAGS: N=
o such device<br>
=A0 =A0 =A0 =A0 INIT: Entering runlevel: 5<br>
=A0 =A0 =A0 =A0 Starting Dropbear SSH server: NET: Registered protocol fami=
ly 10<br>
=A0 =A0 =A0 =A0 dropbear.<br>
=A0 =A0 =A0 =A0 Starting syslogd/klogd: done<br>
=A0 =A0 =A0 =A0 Stopping Bootlog daemon: bootlogd.<br>
=A0 =A0 =A0 =A0 asix 1-1.4:1.0: eth0: register &#39;asix&#39; at usb-xusbps=
-ehci.0-1.4, ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86<br>
=A0 =A0 =A0 =A0 ...<br>
<br>
=A0 =A0 =A0 =A0 Is there some way to configure a system through Yocto to ha=
ndle this scenario?<br>
<br>
<br>
=A0 =A0 I run exactly this setup on many different platforms with no issues=
<br>
=A0 =A0 so it can definitely be done with Poky/Yocto.<br>
<br>
=A0 =A0 What system (target) are you using?<br>
=A0 =A0 What version of the metadata (Poky/Yocto) are you using? =A0master?=
 =A0danny? =A0etc<br>
=A0 =A0 How is your network device configured?<br>
<br>
I am on branch master.<br>
My network device is *not* configured. That is the whole point/?problem?. T=
he kernel knowns nothing about the NIC at boot.<br>
It is not detected until it first detects the USB 2.0 host adapter. Then af=
ter a few moments the NIC is probed and eth0 becomes available through the =
ASIX driver. But its too late,<br>
the /etc/init.d/networking is already done trying ifup :(<br>
Is there some configuration on network level I can do to fix this? Right no=
w I have an ugly patch in /etc/init.d/networking that spins until eth0 come=
s up. It solves the sync<br>
issue, but also requires some sort of timeout to not get stuck forever if t=
he device is never inserted :(<br>
</blockquote>
<br></div></div>
Is your ethernet driver compiled in or a kernel module?<br>
<br>
I&#39;m using a compiled in driver (the same one BTW) and it works fine.<di=
v><div><br>
<br></div></div></blockquote><div>It is compiled into the kernel. If you lo=
ok at boot log I sent in the initial mail you can see that the actual ASIX =
device (D-Link DUB-E100) is detected much later than the host adapter :( Ho=
w is it in your case?<br>

Maybe it is the actual device that is not responding quickly enough? Are yo=
u pre-configuring anything in your bootargs prepared from U-Boot for eth?<b=
r><br>Hans<br></div></div><br>

--20cf3063e315f6a4c504d99c9fe1--
