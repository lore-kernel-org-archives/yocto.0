Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B8E5E00973; Sat, 13 May 2017 10:59:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA9C4E007DD
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 10:59:28 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id l9so58132586wre.1
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 10:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:cc:date:message-id:in-reply-to:references:reply-to
	:user-agent:mime-version;
	bh=QfUpy9awqWhuWVuUKEbfS57FI6mfuNwEexsom/sSl9A=;
	b=Ldx08ZAczkGMrIuBAY8j2yLQKBuF2FadMA3YiT8GyoASngqw2LREqsPVHZ5YCO1hLY
	o4/ZI8jLsESlE7eh4fxIE7hidw3QHNaX0QvgIAcAHpr5S5najga37si1JcuCsS+sYG/w
	ssJxX7MuJ4spKTZg7S7g8Jc/zMDl4TmTyh5o0Ggy8kWlqjCAObkHfjzT+Qdwkv3mX86+
	0Xz2/HyNcHvPoLRTxhy7nDU1AZI8+gil0UlMgVWszFTYN7xxrq4y0k9Img7+beZXVKQh
	9Nj/Lvw8BDDjhhgD9bpjqZMZoXT7xum32tBC8dpa2PqOiY/2iPeMMfyjlAAVtcOG+KsJ
	cImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:cc:date:message-id:in-reply-to
	:references:reply-to:user-agent:mime-version;
	bh=QfUpy9awqWhuWVuUKEbfS57FI6mfuNwEexsom/sSl9A=;
	b=HrQDccHhX3jmCmISRFNhTv8mpiuASz0tZHpaub3Nv/dGzH0lh5Yy24JaLGUAW/9+au
	rasK8O786oxJmHmytPhQl8HeiKDqpW5ZbfOcbfXRph8GsbQq2E2yrWqC7npcQX6FgJW8
	/IMn1i1Ya0UUjID159yEbBUvLl7dYZlVknDEbxBguLXGvbcYfvsOW3KC9Jcbqs3/K15a
	NT1m903T+aKbAGUt+xo+I2HiFq4WzZ4pRrzom/PZ80iR1Qz5UwD4R8YouswIjKt+4CWj
	VPDGhJ8cvQlRhYOOuB7NDfu1v2mTVkR/+2wCpMeXnUotjpyEiUVZkmzrDdFC78Ka8oqz
	npkw==
X-Gm-Message-State: AODbwcDtmc8R26T44lQ9FGLBfiK7rcJakS1C3VEybl4jbXDgoSOfR6Ne
	2m36nisF7jKFBUBZ9f8=
X-Received: by 10.223.130.15 with SMTP id 15mr7549226wrb.59.1494698368161;
	Sat, 13 May 2017 10:59:28 -0700 (PDT)
Received: from [192.168.15.102] ([141.170.140.31])
	by smtp.gmail.com with ESMTPSA id
	u88sm6489273wrc.20.2017.05.13.10.59.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 13 May 2017 10:59:27 -0700 (PDT)
From: "gmail.com" <balazovic.peter@gmail.com>
To: "Drew Moseley" <drew@moseleynet.net>
Date: Sat, 13 May 2017 17:59:24 +0000
Message-Id: <em2a60633a-0593-4c92-ba65-70d87a500bae@r59400-12>
In-Reply-To: <1109B552-16B4-4CAB-9EEC-246CC8DDDDE8@moseleynet.net>
References: <CAFq4t4gKvAj=ne_fL4ah6a18rP0_PCveqBvzFvBqX8YwkkOwCg@mail.gmail.com>
	<CAHUNapR8kNs89_RjU7FpLoqnGbuD0xcnP8meU5P-KmBovWFZWA@mail.gmail.com>
	<em0c047a6c-ad89-4ee5-a271-862399749ce1@r59400-12>
	<CAHUNapTAuyhpDJ8ATx+arrGaN_JTy1ubs98zdTzJxh97gcxmbw@mail.gmail.com>
	<CAFq4t4guS_reh=GHja7bwGQTC76krOF1Dfz1iYSJDYfqQ=2BtQ@mail.gmail.com>
	<1109B552-16B4-4CAB-9EEC-246CC8DDDDE8@moseleynet.net>
User-Agent: eM_Client/7.0.30068.0
Mime-Version: 1.0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: dhcp eth0 network
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: "gmail.com" <balazovic.peter@gmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 May 2017 17:59:33 -0000
Content-Type: multipart/alternative;
	boundary="------=_MB2E8D3CD4-4AEB-4BB0-AC9F-D2F4F9A615DF"

--------=_MB2E8D3CD4-4AEB-4BB0-AC9F-D2F4F9A615DF
Content-Type: text/plain; format=flowed; charset=utf-8
Content-Transfer-Encoding: quoted-printable

>after you manually configure with ifconfig, can you actually connect to=20
>external devices on the network?
Yes, I can connect - network works fine with external devices...


BTW usually I do changes of "interfaces" file at /etc/network to switch=20
between DHCP or static IP.

>>auto lo
>>iface lo inet loopback
>>
>>auto eth0
>>iface eth0 inet dhcp
>
>>
after reset eth0 is not up and I do always

>>ifconfig eth0 10.171.88.8 netmask 255.0.0.0 up

So for now I can set static IP and network works fine but I want to have=20
DHCP and have that configuration permanent.


------ Original Message ------
From: "Drew Moseley" <drew@moseleynet.net>
To: "Peter Balazovic" <balazovic.peter@gmail.com>
Cc: "Yocto list discussion" <yocto@yoctoproject.org>
Sent: 5/13/2017 7:27:03 PM
Subject: Re: [yocto] dhcp eth0 network

>Hi Peter,
>
>First question, after you manually configure with ifconfig, can you=20
>actually connect to external devices on the network?  If so that=20
>implies that your driver is functioning properly and that you really=20
>only need to figure out how to configure DHCP and automatic=20
>configuration.  If no connections are possible after the manual=20
>configuration then the you likely have a driver issue.
>
>I played with both sysvinit and systemd based configurations and it=20
>seems the automatic DHCP addressing is handled slightly differently in=20
>these environments.
>
>In the case of sysvinit, busybox-udhcpc client is installed and=20
>_should_ be bringing your interface up automatically. This worked=20
>out-of-the-box for me with no extra config changes needed.
>
>In the case of systemd, there didn=E2=80=99t seem to be a DHCP client=20
>configured in the default configuration (for my Beaglebone and=20
>Raspberry Pi builds anyway).  I manually included the connman package=20
>in my build and the interface was automatically configured. It looks=20
>like using the networkd PACKAGECONFIG option for the systemd package=20
>may be another solution but I had mixed results with that; it may=20
>require extra config files in /etc/systemd/networkd or some such but=20
>since connman worked for me I stopped investigating.
>
>I=E2=80=99m not sure that=E2=80=99s the best answer and I=E2=80=99d love t=
o hear if there is a=20
>cleaner solution for getting a DHCP client in a systemd-based=20
>configuration but it may work to at least get you up and running.  Of=20
>course this solution requires a rebuild of your target image.  If your=20
>image truly does not have a DHCP client installed then you may have to=20
>rebuild.
>
>HTH,
>
>Drew
>
>>On May 13, 2017, at 5:25 AM, Peter Balazovic=20
>><balazovic.peter@gmail.com> wrote:
>>
>>Hello,
>>
>>Unfortunately I have no knowledge about that how image is built :(  I=20
>>got just that image downloaded which is already built.
>>
>>BUT after applying ifconfig I got network working and connection=20
>>established... Now I wanna do it permanetly and dhcp instead of static=20
>>IP.
>>
>>root@imx6qpsabreauto:~# ifconfig eth0 10.171.88.8 netmask 255.0.0.0 up
>>root@imx6qpsabreauto:~# ifconfig
>>eth0      Link encap:Ethernet  HWaddr ee:d2:50:0d:f3:33
>>           inet addr:10.171.88.8  Bcast:10.255.255.255  Mask:255.0.0.0
>>           inet6 addr: fe80::ecd2:50ff:fe0d:f333/64 Scope:Link
>>           UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
>>           RX packets:4447 errors:0 dropped:951 overruns:0 frame:0
>>           TX packets:254 errors:0 dropped:0 overruns:0 carrier:0
>>           collisions:0 txqueuelen:1000
>>           RX bytes:640741 (625.7 KiB)  TX bytes:37067 (36.1 KiB)
>>
>>lo        Link encap:Local Loopback
>>           inet addr:127.0.0.1  Mask:255.0.0.0
>>           inet6 addr: ::1/128 Scope:Host
>>           UP LOOPBACK RUNNING  MTU:65536  Metric:1
>>           RX packets:2000 errors:0 dropped:0 overruns:0 frame:0
>>           TX packets:2000 errors:0 dropped:0 overruns:0 carrier:0
>>           collisions:0 txqueuelen:0
>>           RX bytes:152000 (148.4 KiB)  TX bytes:152000 (148.4 KiB)
>>
>>root@imx6qpsabreauto:~#
>>
>>within /etc/network directory
>>
>>root@imx6qpsabreauto:/etc/network# ls
>>if-down.d  if-post-down.d  if-pre-up.d  if-up.d  interfaces
>>root@imx6qpsabreauto:/etc/network# vi interfaces
>>
>>auto lo
>>iface lo inet loopback
>>
>>auto eth0
>>iface eth0 inet dhcp
>>~
>>~
>>~
>>
>>
>>
>>After reset I need to set network again and static ...
>>
>>cheers,
>>Peter
>>
>>
>>
>>On Fri, May 12, 2017 at 9:55 PM, Trevor Woerner <twoerner@gmail.com>=20
>>wrote:
>>>Hi Peter,
>>>
>>>There isn't enough information here for me to help you.
>>>
>>>Could you please list the commands and steps you used to build the=20
>>>image?
>>>- what repositories are you using?
>>>- what branches of those repositories?
>>>- if you changed any config files, what did you change?
>>>- what command did you run to build your image?
>>>- what did bitbake print as your build configuration?
>>>
>>>Which i.mx board are you using? There are dozens of them.
>>>
>>>Best regards,
>>>     Trevor
>>>
>>>
>>>On Fri, May 12, 2017 at 3:34 PM, peter@gmail.com
>>><balazovic.peter@gmail.com> wrote:
>>> > I build on i.mx (NXP) machine, I want to get configured as dhcp =20
>>>(no
>>> > static)...
>>> >
>>> >
>>> > ------ Original Message ------
>>> > From: "Trevor Woerner" <twoerner@gmail.com>
>>> > To: "Peter Balazovic" <balazovic.peter@gmail.com>
>>> > Cc: "Yocto list discussion" <yocto@yoctoproject.org>
>>> > Sent: 5/12/2017 9:32:17 PM
>>> > Subject: Re: [yocto] dhcp eth0 network
>>> >
>>> >> Hi Peter,
>>> >>
>>> >> For what MACHINE are you building? What's your target hardware?=20
>>>Can
>>> >> you summarize the steps you took to build your image?
>>> >>
>>> >> What do you want eth0 to do? dhcp or static ip?
>>> >>
>>> >> Best regards,
>>> >>     Trevor
>>> >>
>>> >>
>>> >> On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic
>>> >> <balazovic.peter@gmail.com> wrote:
>>> >>>
>>> >>>  Dears,
>>> >>>
>>> >>>  I got Yocto image and unfortunatelly network is not somehow=20
>>>enabled &
>>> >>>  proprely configured. After "ifconfig" no eth0 configured.
>>> >>>
>>> >>>
>>> >>>>  ifconfig
>>> >>>
>>> >>>  lo    Link encap:Local Loopback
>>> >>>         inet addr:127.0.0.1 Mask:255.0.0.0
>>> >>>   ....
>>> >>>
>>> >>>
>>> >>>
>>> >>>>  /etc/network
>>> >>>>  ls
>>> >>>
>>> >>>  if-down.d if-post-down.d if-pre-up.d  if-up.d
>>> >>>
>>> >>>
>>> >>>  How should I setup "eth0" to get network working properly?
>>> >>>
>>> >>>  Thanks.
>>> >>>
>>> >>>
>>> >>>
>>> >>>  --
>>> >>>  _______________________________________________
>>> >>>  yocto mailing list
>>> >>>  yocto@yoctoproject.org
>>> >>>  https://lists.yoctoproject.org/listinfo/yocto=20
>>><https://lists.yoctoproject.org/listinfo/yocto>
>>> >>>
>>> >
>>
>>--
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>

--------=_MB2E8D3CD4-4AEB-4BB0-AC9F-D2F4F9A615DF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<?xml version=3D"1.0" encoding=3D"utf-16"?><html><head><style type=3D"text/=
css"><![CDATA[#xd364da36520b4f10a10e6ed219d1e0b0 blockquote.cite2{
	margin-left:5px;
	margin-right:0px;
	padding-left:10px;
	padding-right:0px;
	border-left-width:1px;
	border-left-style:solid;
	border-left-color:#CCC;
	margin-top:3px;
	padding-top:0px;
}
#xd364da36520b4f10a10e6ed219d1e0b0{
	font-family:Tahoma;
	font-size:12pt;
}#xd4c609225b094d08a73c6aa4e55cf26e blockquote.cite2{
	margin-left:5px;
	margin-right:0px;
	padding-left:10px;
	padding-right:0px;
	border-left-width:1px;
	border-left-style:solid;
	border-left-color:#CCC;
	margin-top:3px;
	padding-top:0px;
}
#xd4c609225b094d08a73c6aa4e55cf26e{
	font-family:Tahoma;
	font-size:12pt;
}#x0cc5660ce5eb4306893f9760d39a7cc8 blockquote.cite2{
	margin-left:5px;
	margin-right:0px;
	padding-left:10px;
	padding-right:0px;
	border-left-width:1px;
	border-left-style:solid;
	border-left-color:#CCC;
	margin-top:3px;
	padding-top:0px;
}
#x0cc5660ce5eb4306893f9760d39a7cc8{
	font-family:Tahoma;
	font-size:12pt;
}]]><!--blockquote.cite2
{margin-left: 5px; margin-right: 0px; padding-left: 10px; padding-right: 0p=
x; border-left-width: 1px; border-left-style: solid; border-left-color: rgb=
(204, 204, 204); margin-top: 3px; padding-top: 0px;}
body
{font-family: Tahoma; font-size: 12pt;}
--></style></head><body><div><div id=3D"x0cc5660ce5eb4306893f9760d39a7cc8">

<div><div id=3D"x155280726e10487" style=3D"word-wrap: break-word; -webkit-n=
bsp-mode: space; -webkit-line-break: after-white-space;"><blockquote cite=
=3D"1109B552-16B4-4CAB-9EEC-246CC8DDDDE8@moseleynet.net" type=3D"cite" clas=
s=3D"cite2"><div class=3D"">after you manually configure with ifconfig, can =
you actually connect to external devices on the network?</div></blockquote=
></div></div></div></div><div>Yes, I can connect - network works fine with=
 external devices...</div><div><br /></div><div><br /></div><div>BTW usually =
I do changes of "interfaces" file at /etc/network to switch between DHCP o=
r static IP.=C2=A0</div><div><br /></div><div><div id=3D"xd4c609225b094d08a=
73c6aa4e55cf26e">

<div><div id=3D"x155280726e10487" style=3D"word-wrap: break-word; -webkit-n=
bsp-mode: space; -webkit-line-break: after-white-space;"><blockquote cite=
=3D"1109B552-16B4-4CAB-9EEC-246CC8DDDDE8@moseleynet.net" type=3D"cite" clas=
s=3D"cite2"><div class=3D""><div><blockquote type=3D"cite" class=3D""><div=
 class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div class=3D""><div =
class=3D""><font face=3D"monospace, monospace" class=3D"">auto lo</font></=
div><div class=3D""><font face=3D"monospace, monospace" class=3D"">iface lo =
inet loopback</font></div><div class=3D""><font face=3D"monospace, monospa=
ce" class=3D""><br class=3D"" /></font></div><div class=3D""><font face=3D"=
monospace, monospace" class=3D"">auto eth0</font></div><div class=3D""><fon=
t face=3D"monospace, monospace" class=3D"">iface eth0 inet dhcp</font></div=
></div></div></div></div></blockquote><font face=3D"monospace, monospace"><=
br /></font><blockquote type=3D"cite" class=3D""><div class=3D""><div dir=
=3D"ltr" class=3D""><div class=3D""><div class=3D""><div class=3D""><font f=
ace=3D"monospace, monospace" class=3D""><br /></font></div></div></div></di=
v></div></blockquote></div></div></blockquote></div></div></div></div><div>=
after reset eth0 is not up and I do always</div><div>=C2=A0</div><div><div=
 id=3D"xd364da36520b4f10a10e6ed219d1e0b0">

<div><div id=3D"x155280726e10487" style=3D"word-wrap: break-word; -webkit-n=
bsp-mode: space; -webkit-line-break: after-white-space;"><blockquote cite=
=3D"1109B552-16B4-4CAB-9EEC-246CC8DDDDE8@moseleynet.net" type=3D"cite" clas=
s=3D"cite2"><div class=3D""><div><blockquote type=3D"cite" class=3D""><div=
 class=3D""><div dir=3D"ltr" class=3D""><div class=3D""><div class=3D""><div =
class=3D""><div class=3D""><font face=3D"monospace, monospace" class=3D"">=
ifconfig eth0 10.171.88.8 netmask 255.0.0.0 up</font></div></div></div></di=
v></div></div></blockquote></div></div></blockquote></div></div></div></div=
><div><br /></div><div>So for now I can set static IP and network works fin=
e but I want to have DHCP and have that configuration permanent.=C2=A0</div=
><div>=C2=A0</div><div><br /></div>
<div>------ Original Message ------</div>
<div>From: "Drew Moseley" &lt;<a href=3D"mailto:drew@moseleynet.net">drew@m=
oseleynet.net</a>&gt;</div>
<div>To: "Peter Balazovic" &lt;<a href=3D"mailto:balazovic.peter@gmail.com"=
>balazovic.peter@gmail.com</a>&gt;</div>
<div>Cc: "Yocto list discussion" &lt;<a href=3D"mailto:yocto@yoctoproject.o=
rg">yocto@yoctoproject.org</a>&gt;</div>
<div>Sent: 5/13/2017 7:27:03 PM</div>
<div>Subject: Re: [yocto] dhcp eth0 network</div><div><br /></div>
<div id=3D"x155280726e10487" style=3D"word-wrap: break-word; -webkit-nbsp-m=
ode: space; -webkit-line-break: after-white-space;"><blockquote cite=3D"110=
9B552-16B4-4CAB-9EEC-246CC8DDDDE8@moseleynet.net" type=3D"cite" class=3D"ci=
te2">
Hi Peter,<div class=3D""><br class=3D"" /></div><div class=3D"">First quest=
ion, after you manually configure with ifconfig, can you actually connect t=
o external devices on the network? =C2=A0If so that implies that your drive=
r is functioning properly and that you really only need to figure out how t=
o configure DHCP and automatic configuration. =C2=A0If no connections are p=
ossible after the manual configuration then the you likely have a driver is=
sue.</div><div class=3D""><br class=3D"" /></div><div class=3D"">I played w=
ith both sysvinit and systemd based configurations and it seems the automat=
ic DHCP addressing is handled slightly differently in these environments.=
=C2=A0</div><div class=3D""><br class=3D"" /></div><div class=3D"">In the c=
ase of sysvinit, busybox-udhcpc client is installed and _should_ be bringin=
g your interface up automatically. This worked out-of-the-box for me with n=
o extra config changes needed.</div><div class=3D""><br class=3D"" /></div>=
<div class=3D"">In the case of systemd, there didn=E2=80=99t seem to be a D=
HCP client configured in the default configuration (for my Beaglebone and R=
aspberry Pi builds anyway). =C2=A0I manually included the connman package i=
n my build and the interface was automatically configured. It looks like us=
ing the networkd PACKAGECONFIG option for the systemd package may be anothe=
r solution but I had mixed results with that; it may require extra config f=
iles in /etc/systemd/networkd or some such but since connman worked for me=
 I stopped investigating.</div><div class=3D""><br class=3D"" /></div><div c=
lass=3D"">I=E2=80=99m not sure that=E2=80=99s the best answer and I=E2=80=
=99d love to hear if there is a cleaner solution for getting a DHCP client=
 in a systemd-based configuration but it may work to at least get you up and =
running. =C2=A0Of course this solution requires a rebuild of your target i=
mage. =C2=A0If your image truly does not have a DHCP client installed then=
 you may have to rebuild.</div><div class=3D""><br class=3D"" /></div><div c=
lass=3D"">HTH,</div><div class=3D""><br class=3D"" /></div><div class=3D"">=
Drew</div><div class=3D""><br class=3D"" /></div><div class=3D""><div><bloc=
kquote type=3D"cite" class=3D""><div class=3D"">On May 13, 2017, at 5:25 AM=
, Peter Balazovic &lt;<a href=3D"mailto:balazovic.peter@gmail.com" class=3D=
"">balazovic.peter@gmail.com</a>&gt; wrote:</div><br class=3D"Apple-interch=
ange-newline" /><div class=3D""><div dir=3D"ltr" class=3D""><div class=3D""=
>Hello,</div><div class=3D""><br class=3D"" /></div>Unfortunately I have no =
knowledge about that how image is built :( =C2=A0I got just that image dow=
nloaded which is already built.=C2=A0<div class=3D""><br class=3D"" /></div=
><div class=3D"">BUT after applying <font face=3D"monospace, monospace" cla=
ss=3D"">ifconfig</font> I got network working and connection established... =
Now I wanna do it permanetly and dhcp instead of static IP.<div class=3D""=
><div class=3D""><br class=3D"" /></div><div class=3D""><div class=3D""><fo=
nt face=3D"monospace, monospace" class=3D"">root@imx6qpsabreauto:~# ifconfi=
g eth0 10.171.88.8 netmask 255.0.0.0 up</font></div><div class=3D""><font f=
ace=3D"monospace, monospace" class=3D"">root@imx6qpsabreauto:~# ifconfig</f=
ont></div><div class=3D""><font face=3D"monospace, monospace" class=3D"">et=
h0 =C2=A0 =C2=A0 =C2=A0Link encap:Ethernet =C2=A0HWaddr ee:d2:50:0d:f3:33</=
font></div><div class=3D""><font face=3D"monospace, monospace" class=3D"">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:10.171.88.8 =C2=A0Bcast:10.255=
.255.255 =C2=A0Mask:255.0.0.0</font></div><div class=3D""><font face=3D"mon=
ospace, monospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 addr=
: fe80::ecd2:50ff:fe0d:f333/64 Scope:Link</font></div><div class=3D""><font =
face=3D"monospace, monospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 UP BROADCAST RUNNING MULTICAST =C2=A0MTU:1500 =C2=A0Metric:1</font></di=
v><div class=3D""><font face=3D"monospace, monospace" class=3D"">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 RX packets:4447 errors:0 dropped:951 overruns:0 fr=
ame:0</font></div><div class=3D""><font face=3D"monospace, monospace" class=
=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 TX packets:254 errors:0 dropped:0=
 overruns:0 carrier:0</font></div><div class=3D""><font face=3D"monospace, m=
onospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueu=
elen:1000</font></div><div class=3D""><font face=3D"monospace, monospace" c=
lass=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX bytes:640741 (625.7 KiB)=
 =C2=A0TX bytes:37067 (36.1 KiB)</font></div><div class=3D""><font face=3D"mon=
ospace, monospace" class=3D""><br class=3D"" /></font></div><div class=3D""=
><font face=3D"monospace, monospace" class=3D"">lo =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Link encap:Local Loopback</font></div><div class=3D""><font face=3D"mono=
space, monospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet addr:1=
27.0.0.1 =C2=A0Mask:255.0.0.0</font></div><div class=3D""><font face=3D"mon=
ospace, monospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 inet6 addr=
: ::1/128 Scope:Host</font></div><div class=3D""><font face=3D"monospace, m=
onospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 UP LOOPBACK RUNNING =
=C2=A0MTU:65536 =C2=A0Metric:1</font></div><div class=3D""><font face=3D"m=
onospace, monospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 RX packe=
ts:2000 errors:0 dropped:0 overruns:0 frame:0</font></div><div class=3D""><=
font face=3D"monospace, monospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 TX packets:2000 errors:0 dropped:0 overruns:0 carrier:0</font></div=
><div class=3D""><font face=3D"monospace, monospace" class=3D"">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 collisions:0 txqueuelen:0</font></div><div class=
=3D""><font face=3D"monospace, monospace" class=3D"">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 RX bytes:152000 (148.4 KiB) =C2=A0TX bytes:152000 (148.4 KiB=
)</font></div><div class=3D""><font face=3D"monospace, monospace" class=3D"=
"><br class=3D"" /></font></div><div class=3D""><font face=3D"monospace, mo=
nospace" class=3D"">root@imx6qpsabreauto:~#</font></div></div></div><div cl=
ass=3D""><br class=3D"" /></div><div class=3D"">within /etc/network directo=
ry</div><div class=3D""><br class=3D"" /></div><div class=3D""><div class=
=3D""><font face=3D"monospace, monospace" class=3D"">root@imx6qpsabreauto:/=
etc/network# ls</font></div><div class=3D""><font face=3D"monospace, monosp=
ace" class=3D"">if-down.d =C2=A0if-post-down.d =C2=A0if-pre-up.d =C2=A0if-u=
p.d =C2=A0interfaces</font></div></div><div class=3D""><div class=3D""><fon=
t face=3D"monospace, monospace" class=3D"">root@</font><span style=3D"font-=
family:monospace,monospace" class=3D"">imx6qp</span><font face=3D"monospace=
, monospace" class=3D"">sabreauto:/etc/network# vi interfaces</font></div><=
/div><div class=3D""><font face=3D"monospace, monospace" class=3D""><br cla=
ss=3D"" /></font></div><div class=3D""><div class=3D""><font face=3D"monosp=
ace, monospace" class=3D"">auto lo</font></div><div class=3D""><font face=
=3D"monospace, monospace" class=3D"">iface lo inet loopback</font></div><di=
v class=3D""><font face=3D"monospace, monospace" class=3D""><br class=3D""=
 /></font></div><div class=3D""><font face=3D"monospace, monospace" class=3D=
"">auto eth0</font></div><div class=3D""><font face=3D"monospace, monospace=
" class=3D"">iface eth0 inet dhcp</font></div><div class=3D""><font face=3D=
"monospace, monospace" class=3D"">~</font></div><div class=3D""><font face=
=3D"monospace, monospace" class=3D"">~</font></div><div class=3D""><font fa=
ce=3D"monospace, monospace" class=3D"">~</font></div></div><div class=3D"">=
<br class=3D"" /></div><div class=3D""><br class=3D"" /></div><div class=3D=
""><br class=3D"" /></div><div class=3D"">After reset I need to set network =
again and static ...</div><div class=3D""><br class=3D"" /></div><div clas=
s=3D"">cheers,</div><div class=3D"">Peter</div><div class=3D""><br class=3D=
"" /></div><div class=3D""><br class=3D"" /></div></div></div><div class=3D=
"gmail_extra"><br class=3D"" /><div class=3D"gmail_quote">On Fri, May 12, 2=
017 at 9:55 PM, Trevor Woerner <span dir=3D"ltr" class=3D"">&lt;<a href=3D"=
mailto:twoerner@gmail.com" class=3D"">twoerner@gmail.com</a>&gt;</span> wro=
te:<br class=3D"" /><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Peter,<br class=3D""=
 />
<br class=3D"" />
There isn't enough information here for me to help you.<br class=3D"" />
<br class=3D"" />
Could you please list the commands and steps you used to build the image?<b=
r class=3D"" />
- what repositories are you using?<br class=3D"" />
- what branches of those repositories?<br class=3D"" />
- if you changed any config files, what did you change?<br class=3D"" />
- what command did you run to build your image?<br class=3D"" />
- what did bitbake print as your build configuration?<br class=3D"" />
<br class=3D"" />
Which <a href=3D"http://i.mx/" rel=3D"noreferrer" class=3D"">i.mx</a> board =
are you using? There are dozens of them.<br class=3D"" />
<br class=3D"" />
Best regards,<br class=3D"" />
=C2=A0 =C2=A0 Trevor<br class=3D"" />
<div class=3D"HOEnZb"><div class=3D"h5"><br class=3D"" />
<br class=3D"" />
On Fri, May 12, 2017 at 3:34 PM, <a href=3D"mailto:peter@gmail.com" class=
=3D"">peter@gmail.com</a><br class=3D"" />
&lt;<a href=3D"mailto:balazovic.peter@gmail.com" class=3D"">balazovic.peter=
@gmail.com</a>&gt; wrote:<br class=3D"" />
&gt; I build on <a href=3D"http://i.mx/" rel=3D"noreferrer" class=3D"">i.mx=
</a> (NXP) machine, I want to get configured as dhcp=C2=A0 (no<br class=3D"=
" />
&gt; static)...<br class=3D"" />
&gt;<br class=3D"" />
&gt;<br class=3D"" />
&gt; ------ Original Message ------<br class=3D"" />
&gt; From: "Trevor Woerner" &lt;<a href=3D"mailto:twoerner@gmail.com" class=
=3D"">twoerner@gmail.com</a>&gt;<br class=3D"" />
&gt; To: "Peter Balazovic" &lt;<a href=3D"mailto:balazovic.peter@gmail.com" =
class=3D"">balazovic.peter@gmail.com</a>&gt;<br class=3D"" />
&gt; Cc: "Yocto list discussion" &lt;<a href=3D"mailto:yocto@yoctoproject.o=
rg" class=3D"">yocto@yoctoproject.org</a>&gt;<br class=3D"" />
&gt; Sent: 5/12/2017 9:32:17 PM<br class=3D"" />
&gt; Subject: Re: [yocto] dhcp eth0 network<br class=3D"" />
&gt;<br class=3D"" />
&gt;&gt; Hi Peter,<br class=3D"" />
&gt;&gt;<br class=3D"" />
&gt;&gt; For what MACHINE are you building? What's your target hardware? Ca=
n<br class=3D"" />
&gt;&gt; you summarize the steps you took to build your image?<br class=3D"=
" />
&gt;&gt;<br class=3D"" />
&gt;&gt; What do you want eth0 to do? dhcp or static ip?<br class=3D"" />
&gt;&gt;<br class=3D"" />
&gt;&gt; Best regards,<br class=3D"" />
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Trevor<br class=3D"" />
&gt;&gt;<br class=3D"" />
&gt;&gt;<br class=3D"" />
&gt;&gt; On Fri, May 12, 2017 at 12:01 PM, Peter Balazovic<br class=3D"" />
&gt;&gt; &lt;<a href=3D"mailto:balazovic.peter@gmail.com" class=3D"">balazo=
vic.peter@gmail.com</a>&gt; wrote:<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 Dears,<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 I got Yocto image and unfortunatelly network is not some=
how enabled &amp;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 proprely configured. After "ifconfig" no eth0 configured=
.<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;&gt;=C2=A0 ifconfig<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 lo=C2=A0 =C2=A0 Link encap:Local Loopback<br class=3D""=
 />
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0inet addr:127.0.0.1 Mask:255.=
0.0.0<br class=3D"" />
&gt;&gt;&gt;=C2=A0 =C2=A0....<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;&gt;=C2=A0 /etc/network<br class=3D"" />
&gt;&gt;&gt;&gt;=C2=A0 ls<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 if-down.d if-post-down.d if-pre-up.d=C2=A0 if-up.d<br cl=
ass=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 How should I setup "eth0" to get network working properl=
y?<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 Thanks.<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;&gt;&gt;=C2=A0 --<br class=3D"" />
&gt;&gt;&gt;=C2=A0 ______________________________<wbr class=3D"">__________=
_______<br class=3D"" />
&gt;&gt;&gt;=C2=A0 yocto mailing list<br class=3D"" />
&gt;&gt;&gt;=C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" class=3D"">yoc=
to@yoctoproject.org</a><br class=3D"" />
&gt;&gt;&gt;=C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" rel=3D"noreferrer" class=3D"">https://lists.yoctoproject.<wbr class=3D"">=
org/listinfo/yocto</wbr></a><br class=3D"" />
&gt;&gt;&gt;<br class=3D"" />
&gt;<br class=3D"" />
</wbr></div></div></blockquote></div><br class=3D"" /></div>
-- <br class=3D"" />_______________________________________________<br clas=
s=3D"" />yocto mailing list<br class=3D"" /><a href=3D"mailto:yocto@yoctopr=
oject.org" class=3D"">yocto@yoctoproject.org</a><br class=3D"" /><a href=3D=
"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.=
org/listinfo/yocto</a><br class=3D"" /></div></blockquote></div><br class=
=3D"" /></div></blockquote></div>
</body></html>

--------=_MB2E8D3CD4-4AEB-4BB0-AC9F-D2F4F9A615DF--
