Return-Path: <drew@moseleynet.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 507FBE00973; Sat, 13 May 2017 10:27:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 155C9E007DD
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 10:27:07 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id l74so8366318ywe.2
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 10:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=moseleynet.net; s=google;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=DjG+Yp9fZqGN87yiZa/n5u/p4Z/cp0fsiZRrOEwDPQw=;
	b=psTnOHvIPqtbSS+se4Dsj+ryLcbxVZ5Trv5AG+AJXPwhAoblhUkDoprzZO+DM3uGZ6
	Vuddq6N2foFEUULC1Rn1WgxgjR0i15MRq0Mgfvd/dQ5DcRNyZRzykt4Fasnh65JeicOO
	HlHp25PHitNUV19zs6ZCitFgcK8zqXweggF4E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=DjG+Yp9fZqGN87yiZa/n5u/p4Z/cp0fsiZRrOEwDPQw=;
	b=XqAO5kSUJtXF4u5UxOrGfALwZ5JhXs+GU0cD3HO16jmo20oXQiEMSs4sOaev10hqeJ
	TQj0ZvVgkK7Vyex6EAwhJUUYo9aMn5AkcKcXDHJntpQ/SAtfcbEgIHLyc84ahega4LBA
	huXgRvPDkBlccMn98gW1t4CWa5bmegM84D3U4oRoc6YnFnYVbEx0QfAcIMk66bdh4Phc
	kQ1AOzUyhq5gh6gXy5qgaEWmsTjiRBY24k3j9OffUc/nQkF/9vxI26RlEcr8LsJwxkYf
	9OOz3U1i+QVx9helrlxITP9cXnkRXMA63MCsJao3GCTEKQYol8x0i9CEaCkg2uN+vJ3i
	FP5Q==
X-Gm-Message-State: AODbwcBmtpUSE2vcYJKqAqzciChrpY4eYVe9vaAwZg/gZfFqobh04dzG
	I/PcfZSAgywhhIu/goE=
X-Received: by 10.129.107.67 with SMTP id g64mr7871455ywc.130.1494696426191;
	Sat, 13 May 2017 10:27:06 -0700 (PDT)
Received: from [10.242.221.163] ([71.46.59.77])
	by smtp.gmail.com with ESMTPSA id
	e62sm3078302ywa.62.2017.05.13.10.27.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 13 May 2017 10:27:05 -0700 (PDT)
From: Drew Moseley <drew@moseleynet.net>
Message-Id: <1109B552-16B4-4CAB-9EEC-246CC8DDDDE8@moseleynet.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Sat, 13 May 2017 13:27:03 -0400
In-Reply-To: <CAFq4t4guS_reh=GHja7bwGQTC76krOF1Dfz1iYSJDYfqQ=2BtQ@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
References: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
	<CAHUNapR8kNs89_RjU7FpLoqnGbuD0xcnP8meU5P-KmBovWFZWA@mail.gmail.com>
	<em0c047a6c-ad89-4ee5-a271-862399749ce1@r59400-12>
	<CAHUNapTAuyhpDJ8ATx+arrGaN_JTy1ubs98zdTzJxh97gcxmbw@mail.gmail.com>
	<CAFq4t4guS_reh=GHja7bwGQTC76krOF1Dfz1iYSJDYfqQ=2BtQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: dhcp eth0 network
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
X-List-Received-Date: Sat, 13 May 2017 17:27:11 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_950D7DEC-020B-4F52-925B-9D7B792EF18C"

--Apple-Mail=_950D7DEC-020B-4F52-925B-9D7B792EF18C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Peter,

First question, after you manually configure with ifconfig, can you =
actually connect to external devices on the network?  If so that implies =
that your driver is functioning properly and that you really only need =
to figure out how to configure DHCP and automatic configuration.  If no =
connections are possible after the manual configuration then the you =
likely have a driver issue.

I played with both sysvinit and systemd based configurations and it =
seems the automatic DHCP addressing is handled slightly differently in =
these environments.=20

In the case of sysvinit, busybox-udhcpc client is installed and _should_ =
be bringing your interface up automatically. This worked out-of-the-box =
for me with no extra config changes needed.

In the case of systemd, there didn=E2=80=99t seem to be a DHCP client =
configured in the default configuration (for my Beaglebone and Raspberry =
Pi builds anyway).  I manually included the connman package in my build =
and the interface was automatically configured. It looks like using the =
networkd PACKAGECONFIG option for the systemd package may be another =
solution but I had mixed results with that; it may require extra config =
files in /etc/systemd/networkd or some such but since connman worked for =
me I stopped investigating.

I=E2=80=99m not sure that=E2=80=99s the best answer and I=E2=80=99d love =
to hear if there is a cleaner solution for getting a DHCP client in a =
systemd-based configuration but it may work to at least get you up and =
running.  Of course this solution requires a rebuild of your target =
image.  If your image truly does not have a DHCP client installed then =
you may have to rebuild.

HTH,

Drew

> On May 13, 2017, at 5:25 AM, Peter Balazovic =
<balazovic.peter@gmail.com> wrote:
>=20
> Hello,
>=20
> Unfortunately I have no knowledge about that how image is built :(  I =
got just that image downloaded which is already built.=20
>=20
> BUT after applying ifconfig I got network working and connection =
established... Now I wanna do it permanetly and dhcp instead of static =
IP.
>=20
> root@imx6qpsabreauto:~# ifconfig eth0 10.171.88.8 netmask 255.0.0.0 up
> root@imx6qpsabreauto:~# ifconfig
> eth0      Link encap:Ethernet  HWaddr ee:d2:50:0d:f3:33
>           inet addr:10.171.88.8  Bcast:10.255.255.255  Mask:255.0.0.0
>           inet6 addr: fe80::ecd2:50ff:fe0d:f333/64 Scope:Link
>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>           RX packets:4447 errors:0 dropped:951 overruns:0 frame:0
>           TX packets:254 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:1000
>           RX bytes:640741 (625.7 KiB)  TX bytes:37067 (36.1 KiB)
>=20
> lo        Link encap:Local Loopback
>           inet addr:127.0.0.1  Mask:255.0.0.0
>           inet6 addr: ::1/128 Scope:Host
>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>           RX packets:2000 errors:0 dropped:0 overruns:0 frame:0
>           TX packets:2000 errors:0 dropped:0 overruns:0 carrier:0
>           collisions:0 txqueuelen:0
>           RX bytes:152000 (148.4 KiB)  TX bytes:152000 (148.4 KiB)
>=20
> root@imx6qpsabreauto:~#
>=20
> within /etc/network directory
>=20
> root@imx6qpsabreauto:/etc/network# ls
> if-down.d  if-post-down.d  if-pre-up.d  if-up.d  interfaces
> root@imx6qpsabreauto:/etc/network# vi interfaces
>=20
> auto lo
> iface lo inet loopback
>=20
> auto eth0
> iface eth0 inet dhcp
> ~
> ~
> ~
>=20
>=20
>=20
> After reset I need to set network again and static ...
>=20
> cheers,
> Peter
>=20
>=20
>=20
> On Fri, May 12, 2017 at 9:55 PM, Trevor Woerner <twoerner@gmail.com =
<mailto:twoerner@gmail.com>> wrote:
> Hi Peter,
>=20
> There isn't enough information here for me to help you.
>=20
> Could you please list the commands and steps you used to build the =
image?
> - what repositories are you using?
> - what branches of those repositories?
> - if you changed any config files, what did you change?
> - what command did you run to build your image?
> - what did bitbake print as your build configuration?
>=20
> Which i.mx <http://i.mx/> board are you using? There are dozens of =
them.
>=20
> Best regards,
>     Trevor
>=20
>=20
> On Fri, May 12, 2017 at 3:34 PM, peter@gmail.com =
<mailto:peter@gmail.com>
> <balazovic.peter@gmail.com <mailto:balazovic.peter@gmail.com>> wrote:
> > I build on i.mx <http://i.mx/> (NXP) machine, I want to get =
configured as dhcp  (no
> > static)...
> >
> >
> > ------ Original Message ------
> > From: "Trevor Woerner" <twoerner@gmail.com =
<mailto:twoerner@gmail.com>>
> > To: "Peter Balazovic" <balazovic.peter@gmail.com =
<mailto:balazovic.peter@gmail.com>>
> > Cc: "Yocto list discussion" <yocto@yoctoproject.org =
<mailto:yocto@yoctoproject.org>>
> > Sent: 5/12/2017 9:32:17 PM
> > Subject: Re: [yocto] dhcp eth0 network
> >
> >> Hi Peter,
> >>
> >> For what MACHINE are you building? What's your target hardware? Can
> >> you summarize the steps you took to build your image?
> >>
> >> What do you want eth0 to do? dhcp or static ip?
> >>
> >> Best regards,
> >>     Trevor
> >>
> >>
> >> On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic
> >> <balazovic.peter@gmail.com <mailto:balazovic.peter@gmail.com>> =
wrote:
> >>>
> >>>  Dears,
> >>>
> >>>  I got Yocto image and unfortunatelly network is not somehow =
enabled &
> >>>  proprely configured. After "ifconfig" no eth0 configured.
> >>>
> >>>
> >>>>  ifconfig
> >>>
> >>>  lo    Link encap:Local Loopback
> >>>         inet addr:127.0.0.1 Mask:255.0.0.0
> >>>   ....
> >>>
> >>>
> >>>
> >>>>  /etc/network
> >>>>  ls
> >>>
> >>>  if-down.d if-post-down.d if-pre-up.d  if-up.d
> >>>
> >>>
> >>>  How should I setup "eth0" to get network working properly?
> >>>
> >>>  Thanks.
> >>>
> >>>
> >>>
> >>>  --
> >>>  _______________________________________________
> >>>  yocto mailing list
> >>>  yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >>>  https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> >>>
> >
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_950D7DEC-020B-4F52-925B-9D7B792EF18C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hi Peter,<div class=3D""><br class=3D""></div><div =
class=3D"">First question, after you manually configure with ifconfig, =
can you actually connect to external devices on the network? &nbsp;If so =
that implies that your driver is functioning properly and that you =
really only need to figure out how to configure DHCP and automatic =
configuration. &nbsp;If no connections are possible after the manual =
configuration then the you likely have a driver issue.</div><div =
class=3D""><br class=3D""></div><div class=3D"">I played with both =
sysvinit and systemd based configurations and it seems the automatic =
DHCP addressing is handled slightly differently in these =
environments.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">In the case of sysvinit, busybox-udhcpc client is installed =
and _should_ be bringing your interface up automatically. This worked =
out-of-the-box for me with no extra config changes needed.</div><div =
class=3D""><br class=3D""></div><div class=3D"">In the case of systemd, =
there didn=E2=80=99t seem to be a DHCP client configured in the default =
configuration (for my Beaglebone and Raspberry Pi builds anyway). =
&nbsp;I manually included the connman package in my build and the =
interface was automatically configured. It looks like using the networkd =
PACKAGECONFIG option for the systemd package may be another solution but =
I had mixed results with that; it may require extra config files in =
/etc/systemd/networkd or some such but since connman worked for me I =
stopped investigating.</div><div class=3D""><br class=3D""></div><div =
class=3D"">I=E2=80=99m not sure that=E2=80=99s the best answer and I=E2=80=
=99d love to hear if there is a cleaner solution for getting a DHCP =
client in a systemd-based configuration but it may work to at least get =
you up and running. &nbsp;Of course this solution requires a rebuild of =
your target image. &nbsp;If your image truly does not have a DHCP client =
installed then you may have to rebuild.</div><div class=3D""><br =
class=3D""></div><div class=3D"">HTH,</div><div class=3D""><br =
class=3D""></div><div class=3D"">Drew</div><div class=3D""><br =
class=3D""></div><div class=3D""><div><blockquote type=3D"cite" =
class=3D""><div class=3D"">On May 13, 2017, at 5:25 AM, Peter Balazovic =
&lt;<a href=3D"mailto:balazovic.peter@gmail.com" =
class=3D"">balazovic.peter@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"">Hello,</div><div class=3D""><br =
class=3D""></div>Unfortunately I have no knowledge about that how image =
is built :( &nbsp;I got just that image downloaded which is already =
built.&nbsp;<div class=3D""><br class=3D""></div><div class=3D"">BUT =
after applying <font face=3D"monospace, monospace" =
class=3D"">ifconfig</font> I got network working and connection =
established... Now I wanna do it permanetly and dhcp instead of static =
IP.<div class=3D""><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D""><font face=3D"monospace, monospace" =
class=3D"">root@imx6qpsabreauto:~# ifconfig eth0 10.171.88.8 netmask =
255.0.0.0 up</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">root@imx6qpsabreauto:~# ifconfig</font></div><div =
class=3D""><font face=3D"monospace, monospace" class=3D"">eth0 &nbsp; =
&nbsp; &nbsp;Link encap:Ethernet &nbsp;HWaddr =
ee:d2:50:0d:f3:33</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet =
addr:10.171.88.8 &nbsp;Bcast:10.255.255.255 =
&nbsp;Mask:255.0.0.0</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet6 addr: =
fe80::ecd2:50ff:fe0d:f333/64 Scope:Link</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; UP BROADCAST RUNNING MULTICAST &nbsp;MTU:1500 =
&nbsp;Metric:1</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX packets:4447 =
errors:0 dropped:951 overruns:0 frame:0</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; TX packets:254 errors:0 dropped:0 overruns:0 =
carrier:0</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; collisions:0 =
txqueuelen:1000</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; RX bytes:640741 =
(625.7 KiB) &nbsp;TX bytes:37067 (36.1 KiB)</font></div><div =
class=3D""><font face=3D"monospace, monospace" class=3D""><br =
class=3D""></font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">lo &nbsp; &nbsp; &nbsp; &nbsp;Link encap:Local =
Loopback</font></div><div class=3D""><font face=3D"monospace, monospace" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet addr:127.0.0.1 =
&nbsp;Mask:255.0.0.0</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet6 addr: =
::1/128 Scope:Host</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UP LOOPBACK =
RUNNING &nbsp;MTU:65536 &nbsp;Metric:1</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; RX packets:2000 errors:0 dropped:0 overruns:0 =
frame:0</font></div><div class=3D""><font face=3D"monospace, monospace" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TX packets:2000 errors:0 =
dropped:0 overruns:0 carrier:0</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; collisions:0 txqueuelen:0</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; RX bytes:152000 (148.4 KiB) &nbsp;TX bytes:152000 (148.4 =
KiB)</font></div><div class=3D""><font face=3D"monospace, monospace" =
class=3D""><br class=3D""></font></div><div class=3D""><font =
face=3D"monospace, monospace" =
class=3D"">root@imx6qpsabreauto:~#</font></div></div></div><div =
class=3D""><br class=3D""></div><div class=3D"">within /etc/network =
directory</div><div class=3D""><br class=3D""></div><div class=3D""><div =
class=3D""><font face=3D"monospace, monospace" =
class=3D"">root@imx6qpsabreauto:/etc/network# ls</font></div><div =
class=3D""><font face=3D"monospace, monospace" class=3D"">if-down.d =
&nbsp;if-post-down.d &nbsp;if-pre-up.d &nbsp;if-up.d =
&nbsp;interfaces</font></div></div><div class=3D""><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">root@</font><span =
style=3D"font-family:monospace,monospace" class=3D"">imx6qp</span><font =
face=3D"monospace, monospace" class=3D"">sabreauto:/etc/network# vi =
interfaces</font></div></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D""><br class=3D""></font></div><div class=3D""><div =
class=3D""><font face=3D"monospace, monospace" class=3D"">auto =
lo</font></div><div class=3D""><font face=3D"monospace, monospace" =
class=3D"">iface lo inet loopback</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D""><br class=3D""></font></div><div =
class=3D""><font face=3D"monospace, monospace" class=3D"">auto =
eth0</font></div><div class=3D""><font face=3D"monospace, monospace" =
class=3D"">iface eth0 inet dhcp</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">~</font></div><div =
class=3D""><font face=3D"monospace, monospace" =
class=3D"">~</font></div><div class=3D""><font face=3D"monospace, =
monospace" class=3D"">~</font></div></div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div><div class=3D"">After reset I need to set network again =
and static ...</div><div class=3D""><br class=3D""></div><div =
class=3D"">cheers,</div><div class=3D"">Peter</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div></div></div><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On Fri, =
May 12, 2017 at 9:55 PM, Trevor Woerner <span dir=3D"ltr" =
class=3D"">&lt;<a href=3D"mailto:twoerner@gmail.com" target=3D"_blank" =
class=3D"">twoerner@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Peter,<br class=3D"">=

<br class=3D"">
There isn't enough information here for me to help you.<br class=3D"">
<br class=3D"">
Could you please list the commands and steps you used to build the =
image?<br class=3D"">
- what repositories are you using?<br class=3D"">
- what branches of those repositories?<br class=3D"">
- if you changed any config files, what did you change?<br class=3D"">
- what command did you run to build your image?<br class=3D"">
- what did bitbake print as your build configuration?<br class=3D"">
<br class=3D"">
Which <a href=3D"http://i.mx/" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">i.mx</a> board are you using? There are dozens of them.<br =
class=3D"">
<br class=3D"">
Best regards,<br class=3D"">
&nbsp; &nbsp; Trevor<br class=3D"">
<div class=3D"HOEnZb"><div class=3D"h5"><br class=3D"">
<br class=3D"">
On Fri, May 12, 2017 at 3:34 PM, <a href=3D"mailto:peter@gmail.com" =
class=3D"">peter@gmail.com</a><br class=3D"">
&lt;<a href=3D"mailto:balazovic.peter@gmail.com" =
class=3D"">balazovic.peter@gmail.com</a>&gt; wrote:<br class=3D"">
&gt; I build on <a href=3D"http://i.mx/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">i.mx</a> (NXP) machine, I want to get =
configured as dhcp&nbsp; (no<br class=3D"">
&gt; static)...<br class=3D"">
&gt;<br class=3D"">
&gt;<br class=3D"">
&gt; ------ Original Message ------<br class=3D"">
&gt; From: "Trevor Woerner" &lt;<a href=3D"mailto:twoerner@gmail.com" =
class=3D"">twoerner@gmail.com</a>&gt;<br class=3D"">
&gt; To: "Peter Balazovic" &lt;<a =
href=3D"mailto:balazovic.peter@gmail.com" =
class=3D"">balazovic.peter@gmail.com</a>&gt;<br class=3D"">
&gt; Cc: "Yocto list discussion" &lt;<a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a>&gt;<br class=3D"">
&gt; Sent: 5/12/2017 9:32:17 PM<br class=3D"">
&gt; Subject: Re: [yocto] dhcp eth0 network<br class=3D"">
&gt;<br class=3D"">
&gt;&gt; Hi Peter,<br class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt; For what MACHINE are you building? What's your target hardware? =
Can<br class=3D"">
&gt;&gt; you summarize the steps you took to build your image?<br =
class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt; What do you want eth0 to do? dhcp or static ip?<br class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt; Best regards,<br class=3D"">
&gt;&gt;&nbsp; &nbsp; &nbsp;Trevor<br class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt;<br class=3D"">
&gt;&gt; On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic<br class=3D"">
&gt;&gt; &lt;<a href=3D"mailto:balazovic.peter@gmail.com" =
class=3D"">balazovic.peter@gmail.com</a>&gt; wrote:<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&nbsp; Dears,<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&nbsp; I got Yocto image and unfortunatelly network is not =
somehow enabled &amp;<br class=3D"">
&gt;&gt;&gt;&nbsp; proprely configured. After "ifconfig" no eth0 =
configured.<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&gt;&nbsp; ifconfig<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&nbsp; lo&nbsp; &nbsp; Link encap:Local Loopback<br =
class=3D"">
&gt;&gt;&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;inet addr:127.0.0.1 =
Mask:255.0.0.0<br class=3D"">
&gt;&gt;&gt;&nbsp; &nbsp;....<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&gt;&nbsp; /etc/network<br class=3D"">
&gt;&gt;&gt;&gt;&nbsp; ls<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&nbsp; if-down.d if-post-down.d if-pre-up.d&nbsp; if-up.d<br =
class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&nbsp; How should I setup "eth0" to get network working =
properly?<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&nbsp; Thanks.<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;&gt;&gt;&nbsp; --<br class=3D"">
&gt;&gt;&gt;&nbsp; ______________________________<wbr =
class=3D"">_________________<br class=3D"">
&gt;&gt;&gt;&nbsp; yocto mailing list<br class=3D"">
&gt;&gt;&gt;&nbsp; <a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">
&gt;&gt;&gt;&nbsp; <a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a><br class=3D"">
&gt;&gt;&gt;<br class=3D"">
&gt;<br class=3D"">
</div></div></blockquote></div><br class=3D""></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_950D7DEC-020B-4F52-925B-9D7B792EF18C--
