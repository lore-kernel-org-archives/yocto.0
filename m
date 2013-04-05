Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC8CE01487
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 06:50:27 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id u28so1610844qcs.22
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 06:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=7db7q5CQuQS5J+VUDclldR882KMqxjHyVcLB9Jw6r8g=;
	b=DNHiGqKmzQD5qSoYpPIuDoFURAx7UtkVXWG9ML89IK0Odp3J66xzkSQdxDaHQGGtQp
	M7N7T5SSRJ+cxKk0Pg41nJqmh449AV1u4aPyk2UfRFz6zR3yGG1M16VNpWGWmyzEQvO7
	glUpfZ3obYfcWMXMP94oZiuGfXND+D3zjoVKwVFXCbKvI2JvJx8r1AMVsHyTyDJ4pva+
	jQvQOqy0lros+kZnqOMSkBKIBvc0AvAC5CDcu5Y+eSfLSd2f/NUMTJq/QT230PwyJpdq
	38I9/O5RPUF4B46fENE2ZXpTeOJXJQm3+iEgVS2WJnWQZtWF0LtSFU3Y1gozZJTYt+KL
	5W5g==
MIME-Version: 1.0
X-Received: by 10.229.166.140 with SMTP id m12mr2352743qcy.81.1365169827005;
	Fri, 05 Apr 2013 06:50:27 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Fri, 5 Apr 2013 06:50:26 -0700 (PDT)
In-Reply-To: <515ED14E.7010102@mlbassoc.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<515EA47A.5070400@mlbassoc.com>
	<CAFyqS9q3zWuKN+YK_HqGfb-JPHBN1+LpR+ZcYVbg95a8PZY4Dg@mail.gmail.com>
	<515EC823.1050703@mlbassoc.com>
	<CAFyqS9p+jUqGKmiJpaL2RGGc7RPpbbUMwo8zgySA-fDr8HyZOw@mail.gmail.com>
	<515ED061.8060403@mlbassoc.com> <515ED14E.7010102@mlbassoc.com>
Date: Fri, 5 Apr 2013 15:50:26 +0200
Message-ID: <CAFyqS9rR-vb3K8DGrcp=cFwRt2mTQRTQ=cYoJZ3g6AFzhMUqEw@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Apr 2013 13:50:27 -0000
Content-Type: multipart/alternative; boundary=14dae9c0935698cade04d99d5e33

--14dae9c0935698cade04d99d5e33
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2013 at 3:27 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-04-05 07:23, Gary Thomas wrote:
>
>> On 2013-04-05 06:57, Hans Beck=E9rus wrote:
>>
>>>
>>>
>>> On Fri, Apr 5, 2013 at 2:48 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>>> gary@mlbassoc.com>> wrote:
>>>
>>>     On 2013-04-05 06:38, Hans Beck=E9rus wrote:
>>>
>>>
>>>
>>>         On Fri, Apr 5, 2013 at 12:16 PM, Gary Thomas <gary@mlbassoc.com=
<mailto:
>>> gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>=
>>
>>> wrote:
>>>
>>>              On 2013-04-05 03:08, Hans Beck=E9rus wrote:
>>>
>>>                  Hi. In our configuration we do not have an on-board
>>> Ethernet device. It connected to the USB-host adapter.
>>>                  It seems that probing of such devices are done very
>>> late in the kernel boot-up which means it gets out of sync with the net=
work
>>> init script(s)
>>>                  and the NIC thus has to be brought up manually after
>>> boot.
>>>
>>>                  ...
>>>                  usb 1-1: new high-speed USB device number 2 using
>>> xusbps-ehci
>>>                  hub 1-1:1.0: USB hub found
>>>                  hub 1-1:1.0: 4 ports detected
>>>                  VFS: Mounted root (ext2 filesystem) on device 1:0.
>>>                  devtmpfs: mounted
>>>                  Freeing init memory: 152K
>>>                  INIT: version 2.88 booting
>>>                  usb 1-1.4: new high-speed USB device number 3 using
>>> xusbps-ehci
>>>                  Starting Bootlog daemon: bootlogd: cannot allocate
>>> pseudo tty: No such file or directory
>>>                  bootlogd.
>>>                  Configuring network interfaces... ifconfig:
>>> SIOCGIFFLAGS: No such device
>>>                  INIT: Entering runlevel: 5
>>>                  Starting Dropbear SSH server: NET: Registered protocol
>>> family 10
>>>                  dropbear.
>>>                  Starting syslogd/klogd: done
>>>                  Stopping Bootlog daemon: bootlogd.
>>>                  asix 1-1.4:1.0: eth0: register 'asix' at
>>> usb-xusbps-ehci.0-1.4, ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
>>>                  ...
>>>
>>>                  Is there some way to configure a system through Yocto
>>> to handle this scenario?
>>>
>>>
>>>              I run exactly this setup on many different platforms with
>>> no issues
>>>              so it can definitely be done with Poky/Yocto.
>>>
>>>              What system (target) are you using?
>>>              What version of the metadata (Poky/Yocto) are you using?
>>>  master?  danny?  etc
>>>              How is your network device configured?
>>>
>>>         I am on branch master.
>>>         My network device is *not* configured. That is the whole
>>> point/?problem?. The kernel knowns nothing about the NIC at boot.
>>>         It is not detected until it first detects the USB 2.0 host
>>> adapter. Then after a few moments the NIC is probed and eth0 becomes
>>> available through the ASIX driver. But its
>>>         too late,
>>>         the /etc/init.d/networking is already done trying ifup :(
>>>         Is there some configuration on network level I can do to fix
>>> this? Right now I have an ugly patch in /etc/init.d/networking that spi=
ns
>>> until eth0 comes up. It solves the
>>> sync
>>>         issue, but also requires some sort of timeout to not get stuck
>>> forever if the device is never inserted :(
>>>
>>>
>>>     Is your ethernet driver compiled in or a kernel module?
>>>
>>>     I'm using a compiled in driver (the same one BTW) and it works fine=
.
>>>
>>>
>>> It is compiled into the kernel. If you look at boot log I sent in the
>>> initial mail you can see that the actual ASIX device (D-Link DUB-E100) =
is
>>> detected much later than the host
>>> adapter :( How is it in your case?
>>> Maybe it is the actual device that is not responding quickly enough? Ar=
e
>>> you pre-configuring anything in your bootargs prepared from U-Boot for =
eth?
>>>
>>
>> No, I don't do anything special at all.  My boot log is attached.
>> You can see that the interface (on the USB) is found quite early.
>> That said, the system works fine even if I plug it in later on.
>>
>> You still did not show us your '/etc/network/interfaces' file.
>> Mine contains these lines which make it handle the network device
>> coming and going:
>>    # Wired interface (on optional board)
>>    auto eth0
>>    iface eth0 inet dhcp
>>
>>
>> That is what I have. I use whatever default poky gave me ;)
But looking at your log makes me wonder if your system simply are running a
lot more other stuff causing networking to be delayed enough for the ASIX
device to be probed before /etc/init.d/networking is executed?
Also, this
[    1.999420]  gadget: Ethernet Gadget, version: Memorial Day 2008
[    2.005798]  gadget: g_ether ready
I have not added USB gadget interface support for Ethernet in my kernel. Do
I really need it? I don't think that the ASIX is using that interface, is
it not using the old classic USB device modell?


> Sorry for the extra noise in the log - I didn't realize that it
> was still on while I was checking the /etc/network/interfaces file...
>
> No problem ;)

Hans

--14dae9c0935698cade04d99d5e33
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at 3:27 PM, Gary Tho=
mas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_b=
lank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On 2013-04-05 07:23, Gary Thomas wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
On 2013-04-05 06:57, Hans Beck=E9rus wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
On Fri, Apr 5, 2013 at 2:48 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrot=
e:<br>

<br>
=A0 =A0 On 2013-04-05 06:38, Hans Beck=E9rus wrote:<br>
<br>
<br>
<br>
=A0 =A0 =A0 =A0 On Fri, Apr 5, 2013 at 12:16 PM, Gary Thomas &lt;<a href=3D=
"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com=
</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">=
gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" targe=
t=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;&gt; wrote:<br>

<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0On 2013-04-05 03:08, Hans Beck=E9rus wrote:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Hi. In our configuration we do not have =
an on-board Ethernet device. It connected to the USB-host adapter.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0It seems that probing of such devices ar=
e done very late in the kernel boot-up which means it gets out of sync with=
 the network init script(s)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0and the NIC thus has to be brought up ma=
nually after boot.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0...<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0usb 1-1: new high-speed USB device numbe=
r 2 using xusbps-ehci<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0hub 1-1:1.0: USB hub found<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0hub 1-1:1.0: 4 ports detected<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0VFS: Mounted root (ext2 filesystem) on d=
evice 1:0.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0devtmpfs: mounted<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Freeing init memory: 152K<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0INIT: version 2.88 booting<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0usb 1-1.4: new high-speed USB device num=
ber 3 using xusbps-ehci<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Starting Bootlog daemon: bootlogd: canno=
t allocate pseudo tty: No such file or directory<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0bootlogd.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Configuring network interfaces... ifconf=
ig: SIOCGIFFLAGS: No such device<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0INIT: Entering runlevel: 5<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Starting Dropbear SSH server: NET: Regis=
tered protocol family 10<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0dropbear.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Starting syslogd/klogd: done<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Stopping Bootlog daemon: bootlogd.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0asix 1-1.4:1.0: eth0: register &#39;asix=
&#39; at usb-xusbps-ehci.0-1.4, ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:=
6a:86<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0...<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Is there some way to configure a system =
through Yocto to handle this scenario?<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0I run exactly this setup on many different platf=
orms with no issues<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0so it can definitely be done with Poky/Yocto.<br=
>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0What system (target) are you using?<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0What version of the metadata (Poky/Yocto) are yo=
u using? =A0master? =A0danny? =A0etc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0How is your network device configured?<br>
<br>
=A0 =A0 =A0 =A0 I am on branch master.<br>
=A0 =A0 =A0 =A0 My network device is *not* configured. That is the whole po=
int/?problem?. The kernel knowns nothing about the NIC at boot.<br>
=A0 =A0 =A0 =A0 It is not detected until it first detects the USB 2.0 host =
adapter. Then after a few moments the NIC is probed and eth0 becomes availa=
ble through the ASIX driver. But its<br>
=A0 =A0 =A0 =A0 too late,<br>
=A0 =A0 =A0 =A0 the /etc/init.d/networking is already done trying ifup :(<b=
r>
=A0 =A0 =A0 =A0 Is there some configuration on network level I can do to fi=
x this? Right now I have an ugly patch in /etc/init.d/networking that spins=
 until eth0 comes up. It solves the<br>
sync<br>
=A0 =A0 =A0 =A0 issue, but also requires some sort of timeout to not get st=
uck forever if the device is never inserted :(<br>
<br>
<br>
=A0 =A0 Is your ethernet driver compiled in or a kernel module?<br>
<br>
=A0 =A0 I&#39;m using a compiled in driver (the same one BTW) and it works =
fine.<br>
<br>
<br>
It is compiled into the kernel. If you look at boot log I sent in the initi=
al mail you can see that the actual ASIX device (D-Link DUB-E100) is detect=
ed much later than the host<br>
adapter :( How is it in your case?<br>
Maybe it is the actual device that is not responding quickly enough? Are yo=
u pre-configuring anything in your bootargs prepared from U-Boot for eth?<b=
r>
</blockquote>
<br>
No, I don&#39;t do anything special at all. =A0My boot log is attached.<br>
You can see that the interface (on the USB) is found quite early.<br>
That said, the system works fine even if I plug it in later on.<br>
<br>
You still did not show us your &#39;/etc/network/interfaces&#39; file.<br>
Mine contains these lines which make it handle the network device<br>
coming and going:<br>
=A0 =A0# Wired interface (on optional board)<br>
=A0 =A0auto eth0<br>
=A0 =A0iface eth0 inet dhcp<br>
<br>
<br></blockquote></div></div></blockquote><div>That is what I have. I use w=
hatever default poky gave me ;)<br>But looking at your log makes me wonder =
if your system simply are running a lot more other stuff causing networking=
 to be delayed enough for the ASIX device to be probed before /etc/init.d/n=
etworking is executed?<br>
Also, this<br>[=A0=A0=A0 1.999420]=A0 gadget: Ethernet Gadget, version: Mem=
orial Day 2008<br>[=A0=A0=A0 2.005798]=A0 gadget: g_ether ready<br>I have n=
ot added USB gadget interface support for Ethernet in my kernel. Do I reall=
y need it? I don&#39;t think that the ASIX is using that interface, is it n=
ot using the old classic USB device modell?<br>
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"H=
OEnZb"><div class=3D"h5"><blockquote class=3D"gmail_quote" style=3D"margin:=
0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

</blockquote>
<br></div></div>
Sorry for the extra noise in the log - I didn&#39;t realize that it<br>
was still on while I was checking the /etc/network/interfaces file...<div c=
lass=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>No prob=
lem ;)<br></div><br></div>Hans<br><br>

--14dae9c0935698cade04d99d5e33--
