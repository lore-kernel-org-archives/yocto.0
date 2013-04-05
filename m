Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70C97E01460
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 07:13:33 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id t2so81430qcq.14
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 07:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=AwFq7vX7XkZuueojxVsWUKFvPhedOOi/RuxqCIHHK+Q=;
	b=MrVyFchQKbG193cam4e/N2PK5maM9jzmkaHbeWRM+J8tQjMnmElzy5YDc3ynohS+UU
	h/LQi2V69b3TD+QQv9AcTCEnUBJe8QtyP0RTSDKXsBQ7le9wnlGlb1mg4zY9G1p3lRaX
	Zz82HXfoAEg1QcnS4wyP1qkJgTrayeoyuKHf88K5D/VORiizc2U8SU0+bmR0G6fmhuXP
	DZfZ2s21p9BJk/epDEwcnggm9y85CkdU2woUUhqzoN8q0Sx1aZFazeV8+LF+/PeKLQ1F
	zi9kr6bcw2N+xB4oxlQ5/3VJqYLOLBNon114rqbfz+mUD93dpKzPgM9grGIazilCMsod
	PE/g==
MIME-Version: 1.0
X-Received: by 10.224.63.76 with SMTP id a12mr8073395qai.16.1365171212885;
	Fri, 05 Apr 2013 07:13:32 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Fri, 5 Apr 2013 07:13:32 -0700 (PDT)
In-Reply-To: <515ED8CA.60601@mlbassoc.com>
References: <CAFyqS9rPxsUqhnNYzCVF4y96DoMDsF2LKV8Xk7ds7Ad3Y+3jYA@mail.gmail.com>
	<515EA47A.5070400@mlbassoc.com>
	<CAFyqS9q3zWuKN+YK_HqGfb-JPHBN1+LpR+ZcYVbg95a8PZY4Dg@mail.gmail.com>
	<515EC823.1050703@mlbassoc.com>
	<CAFyqS9p+jUqGKmiJpaL2RGGc7RPpbbUMwo8zgySA-fDr8HyZOw@mail.gmail.com>
	<515ED061.8060403@mlbassoc.com> <515ED14E.7010102@mlbassoc.com>
	<CAFyqS9rR-vb3K8DGrcp=cFwRt2mTQRTQ=cYoJZ3g6AFzhMUqEw@mail.gmail.com>
	<515ED8CA.60601@mlbassoc.com>
Date: Fri, 5 Apr 2013 16:13:32 +0200
Message-ID: <CAFyqS9pp+O=URfqZz1SGY8xvO7a6Meqk7AnhDuO6YqhdbEP-5w@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Apr 2013 14:13:33 -0000
Content-Type: multipart/alternative; boundary=047d7bf1664c33a38b04d99db1f7

--047d7bf1664c33a38b04d99db1f7
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 5, 2013 at 3:59 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2013-04-05 07:50, Hans Beck=E9rus wrote:
>
>>
>>
>> On Fri, Apr 5, 2013 at 3:27 PM, Gary Thomas <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>
>>     On 2013-04-05 07:23, Gary Thomas wrote:
>>
>>         On 2013-04-05 06:57, Hans Beck=E9rus wrote:
>>
>>
>>
>>             On Fri, Apr 5, 2013 at 2:48 PM, Gary Thomas <
>> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<m=
ailto:
>> gary@mlbassoc.com>>> wrote:
>>
>>                  On 2013-04-05 06:38, Hans Beck=E9rus wrote:
>>
>>
>>
>>                      On Fri, Apr 5, 2013 at 12:16 PM, Gary Thomas <
>> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<m=
ailto:
>> gary@mlbassoc.com>>
>>             <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto=
:
>> gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
>>
>>                           On 2013-04-05 03:08, Hans Beck=E9rus wrote:
>>
>>                               Hi. In our configuration we do not have an
>> on-board Ethernet device. It connected to the USB-host adapter.
>>                               It seems that probing of such devices are
>> done very late in the kernel boot-up which means it gets out of sync wit=
h
>> the network init script(s)
>>                               and the NIC thus has to be brought up
>> manually after boot.
>>
>>                               ...
>>                               usb 1-1: new high-speed USB device number =
2
>> using xusbps-ehci
>>                               hub 1-1:1.0: USB hub found
>>                               hub 1-1:1.0: 4 ports detected
>>                               VFS: Mounted root (ext2 filesystem) on
>> device 1:0.
>>                               devtmpfs: mounted
>>                               Freeing init memory: 152K
>>                               INIT: version 2.88 booting
>>                               usb 1-1.4: new high-speed USB device numbe=
r
>> 3 using xusbps-ehci
>>                               Starting Bootlog daemon: bootlogd: cannot
>> allocate pseudo tty: No such file or directory
>>                               bootlogd.
>>                               Configuring network interfaces... ifconfig=
:
>> SIOCGIFFLAGS: No such device
>>                               INIT: Entering runlevel: 5
>>                               Starting Dropbear SSH server: NET:
>> Registered protocol family 10
>>                               dropbear.
>>                               Starting syslogd/klogd: done
>>                               Stopping Bootlog daemon: bootlogd.
>>                               asix 1-1.4:1.0: eth0: register 'asix' at
>> usb-xusbps-ehci.0-1.4, ASIX AX88772 USB 2.0 Ethernet, fc:75:16:cf:6a:86
>>                               ...
>>
>>                               Is there some way to configure a system
>> through Yocto to handle this scenario?
>>
>>
>>                           I run exactly this setup on many different
>> platforms with no issues
>>                           so it can definitely be done with Poky/Yocto.
>>
>>                           What system (target) are you using?
>>                           What version of the metadata (Poky/Yocto) are
>> you using?  master?  danny?  etc
>>                           How is your network device configured?
>>
>>                      I am on branch master.
>>                      My network device is *not* configured. That is the
>> whole point/?problem?. The kernel knowns nothing about the NIC at boot.
>>                      It is not detected until it first detects the USB
>> 2.0 host adapter. Then after a few moments the NIC is probed and eth0
>> becomes available through the ASIX
>>             driver. But its
>>                      too late,
>>                      the /etc/init.d/networking is already done trying
>> ifup :(
>>                      Is there some configuration on network level I can
>> do to fix this? Right now I have an ugly patch in /etc/init.d/networking
>> that spins until eth0 comes up. It
>>             solves the
>>             sync
>>                      issue, but also requires some sort of timeout to no=
t
>> get stuck forever if the device is never inserted :(
>>
>>
>>                  Is your ethernet driver compiled in or a kernel module?
>>
>>                  I'm using a compiled in driver (the same one BTW) and i=
t
>> works fine.
>>
>>
>>             It is compiled into the kernel. If you look at boot log I
>> sent in the initial mail you can see that the actual ASIX device (D-Link
>> DUB-E100) is detected much later than
>>             the host
>>             adapter :( How is it in your case?
>>             Maybe it is the actual device that is not responding quickly
>> enough? Are you pre-configuring anything in your bootargs prepared from
>> U-Boot for eth?
>>
>>
>>         No, I don't do anything special at all.  My boot log is attached=
.
>>         You can see that the interface (on the USB) is found quite early=
.
>>         That said, the system works fine even if I plug it in later on.
>>
>>         You still did not show us your '/etc/network/interfaces' file.
>>         Mine contains these lines which make it handle the network devic=
e
>>         coming and going:
>>             # Wired interface (on optional board)
>>             auto eth0
>>             iface eth0 inet dhcp
>>
>>
>> That is what I have. I use whatever default poky gave me ;)
>> But looking at your log makes me wonder if your system simply are runnin=
g
>> a lot more other stuff causing networking to be delayed enough for the A=
SIX
>> device to be probed before
>> /etc/init.d/networking is executed?
>> Also, this
>> [    1.999420]  gadget: Ethernet Gadget, version: Memorial Day 2008
>> [    2.005798]  gadget: g_ether ready
>> I have not added USB gadget interface support for Ethernet in my kernel.
>> Do I really need it? I don't think that the ASIX is using that interface=
,
>> is it not using the old classic
>> USB device modell?
>>
>
> No, this is only for OTG support which is not needed for you to use
> the ASIX device.
>
> Correct. I have no use for ever leaving host mode on this system so OTG i=
s
most likely overkill.


> As for the timing, maybe I've just been very lucky :-)  I can see that
> if the device isn't present when the system runs 'ifup eth0' (or the
> equivalent) you'll have a problem.  That's what connman is for - I don't
> use it, but it might help you out.
>
> I should take a look at it. But it already sounds like something much
bigger than this simple system should really need.
Thanks for all the help so far. If anything else comes to your mind, please
tell me. I guess I will have to live with my Q&D patch for now ;)

Hans

--047d7bf1664c33a38b04d99db1f7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Apr 5, 2013 at 3:59 PM, Gary Tho=
mas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_b=
lank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
On 2013-04-05 07:50, Hans Beck=E9rus wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"im">
<br>
<br>
On Fri, Apr 5, 2013 at 3:27 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt; wrot=
e:<br>

<br>
=A0 =A0 On 2013-04-05 07:23, Gary Thomas wrote:<br>
<br>
=A0 =A0 =A0 =A0 On 2013-04-05 06:57, Hans Beck=E9rus wrote:<br>
<br>
<br>
<br></div><div class=3D"im">
=A0 =A0 =A0 =A0 =A0 =A0 On Fri, Apr 5, 2013 at 2:48 PM, Gary Thomas &lt;<a =
href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &=
lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbas=
soc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_=
blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;&gt; wrote:<br>

<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0On 2013-04-05 06:38, Hans Beck=E9rus wro=
te:<br>
<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0On Fri, Apr 5, 2013 at 12:16 PM,=
 Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gar=
y@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlb=
assoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"ma=
ilto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;&gt;<br>
</div><div><div class=3D"h5">
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com" tar=
get=3D"_blank">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlba=
ssoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D=
"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a> &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com=
</a>&gt;&gt;&gt;&gt; wrote:<br>

<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 On 2013-04-05 03:08, Ha=
ns Beck=E9rus wrote:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Hi. In our conf=
iguration we do not have an on-board Ethernet device. It connected to the U=
SB-host adapter.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 It seems that p=
robing of such devices are done very late in the kernel boot-up which means=
 it gets out of sync with the network init script(s)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 and the NIC thu=
s has to be brought up manually after boot.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ...<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 usb 1-1: new hi=
gh-speed USB device number 2 using xusbps-ehci<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 hub 1-1:1.0: US=
B hub found<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 hub 1-1:1.0: 4 =
ports detected<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 VFS: Mounted ro=
ot (ext2 filesystem) on device 1:0.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 devtmpfs: mount=
ed<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Freeing init me=
mory: 152K<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 INIT: version 2=
.88 booting<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 usb 1-1.4: new =
high-speed USB device number 3 using xusbps-ehci<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Starting Bootlo=
g daemon: bootlogd: cannot allocate pseudo tty: No such file or directory<b=
r>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 bootlogd.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Configuring net=
work interfaces... ifconfig: SIOCGIFFLAGS: No such device<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 INIT: Entering =
runlevel: 5<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Starting Dropbe=
ar SSH server: NET: Registered protocol family 10<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 dropbear.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Starting syslog=
d/klogd: done<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Stopping Bootlo=
g daemon: bootlogd.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 asix 1-1.4:1.0:=
 eth0: register &#39;asix&#39; at usb-xusbps-ehci.0-1.4, ASIX AX88772 USB 2=
.0 Ethernet, fc:75:16:cf:6a:86<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ...<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Is there some w=
ay to configure a system through Yocto to handle this scenario?<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 I run exactly this setu=
p on many different platforms with no issues<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 so it can definitely be=
 done with Poky/Yocto.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 What system (target) ar=
e you using?<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 What version of the met=
adata (Poky/Yocto) are you using? =A0master? =A0danny? =A0etc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 How is your network dev=
ice configured?<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0I am on branch master.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0My network device is *not* confi=
gured. That is the whole point/?problem?. The kernel knowns nothing about t=
he NIC at boot.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0It is not detected until it firs=
t detects the USB 2.0 host adapter. Then after a few moments the NIC is pro=
bed and eth0 becomes available through the ASIX<br>
=A0 =A0 =A0 =A0 =A0 =A0 driver. But its<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0too late,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0the /etc/init.d/networking is al=
ready done trying ifup :(<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Is there some configuration on n=
etwork level I can do to fix this? Right now I have an ugly patch in /etc/i=
nit.d/networking that spins until eth0 comes up. It<br>
=A0 =A0 =A0 =A0 =A0 =A0 solves the<br>
=A0 =A0 =A0 =A0 =A0 =A0 sync<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0issue, but also requires some so=
rt of timeout to not get stuck forever if the device is never inserted :(<b=
r>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Is your ethernet driver compiled in or a=
 kernel module?<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0I&#39;m using a compiled in driver (the =
same one BTW) and it works fine.<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 It is compiled into the kernel. If you look at boot=
 log I sent in the initial mail you can see that the actual ASIX device (D-=
Link DUB-E100) is detected much later than<br>
=A0 =A0 =A0 =A0 =A0 =A0 the host<br>
=A0 =A0 =A0 =A0 =A0 =A0 adapter :( How is it in your case?<br>
=A0 =A0 =A0 =A0 =A0 =A0 Maybe it is the actual device that is not respondin=
g quickly enough? Are you pre-configuring anything in your bootargs prepare=
d from U-Boot for eth?<br>
<br>
<br>
=A0 =A0 =A0 =A0 No, I don&#39;t do anything special at all. =A0My boot log =
is attached.<br>
=A0 =A0 =A0 =A0 You can see that the interface (on the USB) is found quite =
early.<br>
=A0 =A0 =A0 =A0 That said, the system works fine even if I plug it in later=
 on.<br>
<br>
=A0 =A0 =A0 =A0 You still did not show us your &#39;/etc/network/interfaces=
&#39; file.<br>
=A0 =A0 =A0 =A0 Mine contains these lines which make it handle the network =
device<br>
=A0 =A0 =A0 =A0 coming and going:<br>
=A0 =A0 =A0 =A0 =A0 =A0 # Wired interface (on optional board)<br>
=A0 =A0 =A0 =A0 =A0 =A0 auto eth0<br>
=A0 =A0 =A0 =A0 =A0 =A0 iface eth0 inet dhcp<br>
<br>
<br>
That is what I have. I use whatever default poky gave me ;)<br>
But looking at your log makes me wonder if your system simply are running a=
 lot more other stuff causing networking to be delayed enough for the ASIX =
device to be probed before<br>
/etc/init.d/networking is executed?<br>
Also, this<br>
[ =A0 =A01.999420] =A0gadget: Ethernet Gadget, version: Memorial Day 2008<b=
r>
[ =A0 =A02.005798] =A0gadget: g_ether ready<br>
I have not added USB gadget interface support for Ethernet in my kernel. Do=
 I really need it? I don&#39;t think that the ASIX is using that interface,=
 is it not using the old classic<br>
USB device modell?<br>
</div></div></blockquote>
<br>
No, this is only for OTG support which is not needed for you to use<br>
the ASIX device.<br>
<br></blockquote><div>Correct. I have no use for ever leaving host mode on =
this system so OTG is most likely overkill.<br>=A0<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">

As for the timing, maybe I&#39;ve just been very lucky :-) =A0I can see tha=
t<br>
if the device isn&#39;t present when the system runs &#39;ifup eth0&#39; (o=
r the<br>
equivalent) you&#39;ll have a problem. =A0That&#39;s what connman is for - =
I don&#39;t<br>
use it, but it might help you out.<div class=3D"im HOEnZb"></div><br></bloc=
kquote></div>I should take a look at it. But it already sounds like somethi=
ng much bigger than this simple system should really need.<br>Thanks for al=
l the help so far. If anything else comes to your mind, please tell me. I g=
uess I will have to live with my Q&amp;D patch for now ;)<br>
<br>Hans<br><br>

--047d7bf1664c33a38b04d99db1f7--
