Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A068E00C62; Tue, 22 Jan 2019 07:41:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1177AE00C4D
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 07:41:52 -0800 (PST)
Received: by mail-qt1-f178.google.com with SMTP id u47so28023293qtj.6
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 07:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sZ6e0MvovFpAoh+7oFo7MSHaYIrFfrBZQ9OBKPCNwrk=;
	b=c2HZ+vBRy0kvNKYNCdpl1OrLGrThzcp6/gd4t5gp6O81ZuMSAtqfPcEuCJ6V7BpiYX
	ERXGVP0+l6qW1frofrhPEZZTTSjjkPRRZSkc2kaBaYTPSlaa3DnLuVjM0MkRCykWxaYX
	UY3LKP/mHIcjJacfhFh8CEDEeD1er5cHvmaOPDU7vxns5ExKu2ejJc1vr8S+wgrzPJ8u
	XOJnZIhQjzeYZTQz4Wosw9vHrpq9IBqNMhAtlQVbaE5M7kLA7BfHgMfAv7LZwlqki7/z
	Wkzetx1sp3qwVfgejlJjLD0WX8ErQnmAf/LGMRRPuRvZs33QMh0/0U3wmYVlp+Al7CqX
	9OPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sZ6e0MvovFpAoh+7oFo7MSHaYIrFfrBZQ9OBKPCNwrk=;
	b=qzxdglu1LQWaOddCuchC7HYNiugQ1BSQl6aG8XWuoJ2Z916zeOFj6pUjjSDq90G/LN
	AAPpKz6I6JkSxbAzZNovbQE8V/wZgNXoGJe754apekYJgSTRIANKW4grhBdx29cjQLiu
	2DxqNDTl8rCiBFhKg024THoGqVlLJaXsmU765kr7hwFXmuapmbRb1jsiHObAVFyJJRds
	iB2E7j9KijL9avCgqMCPgLhf2e2oe0zSYzyLPdW5+i+NHeiSGQhEk2bNTbCXjgSwoCZu
	fwebYr8i96ZWW87X1n4RPIurRYk6cSYYqjNHJ/LCEwzc7MS9UBtwQZCDu+ANIRfXYgKV
	JzYg==
X-Gm-Message-State: AJcUukenDdPVdUPwBEYf1xaXMTrYAn+GhxgJcC50uBtMAZBff3X47r3L
	hL3JRvWWOgXC+RxqMUPoc6PwVrr8iIfsNsC/Zqw=
X-Google-Smtp-Source: ALg8bN6rG+7R6Cwxr31cHkvByeFoTJfUIzFfyheE3J7SUb0stOWEPgIxaX0FBU7TcYGQyFRK+4zcti2+NjiX3mnhj+o=
X-Received: by 2002:a0c:f90b:: with SMTP id v11mr29432268qvn.236.1548171712117;
	Tue, 22 Jan 2019 07:41:52 -0800 (PST)
MIME-Version: 1.0
References: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
In-Reply-To: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 22 Jan 2019 16:41:39 +0100
Message-ID: <CAGAf8LxwaWjAFeP8AH4L95iq=wTJC5x=ufp20rckweqyPJw81w@mail.gmail.com>
To: Lukasz Zemla <Lukasz.Zemla@woodward.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Systemd service recipe fails while booting from initramfs
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
X-List-Received-Date: Tue, 22 Jan 2019 15:41:54 -0000
Content-Type: multipart/alternative; boundary="000000000000f3c0e205800dd0dc"

--000000000000f3c0e205800dd0dc
Content-Type: text/plain; charset="UTF-8"

Hello Lukasz,

Thank you very much for the advises. I did what you have suggested, and
this does work.

And it solves my basic problem (NO GO for some reason when I had network
manager).

I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my
various pass-through VBox VMs (several designs) via my notebook host to
test them, how different designs VMs connect and interact with DUT.

Lukasz and Peter,

I also will investigate more about systemd service in order to get more
inside info about how to properly configure the service.

Thank you,
Zoran
_______

Here is the transcript after I built new YOCTO BBB DUT initramfs build:

root@beaglebone:~# uname -a
Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l
GNU/Linux
root@beaglebone:~# systemctl restart systemd-networkd
root@beaglebone:~# ps -elf | grep dhc
0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:00:00
grep dhc
root@beaglebone:~# ifconfig eth0 down
root@beaglebone:~# dhclient -4 eth0 -v
Internet Systems Consortium DHCP Client 4.4.1
Copyright 2004-2018 Internet Systems Consortium.
All rights reserved.
For info, please visit https://www.isc.org/software/dhcp/

[11982.445947] net eth0: initializing cpsw version 1.12 (0)
[11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driver
[SMSC LAN8710/LAN8720] (mii_bus:phy_addr=4a101000.mdio:00, irq=POLL)
Listening on LPF/eth0/64:cf:d9:ff:67:05
Sending on   LPF/eth0/64:cf:d9:ff:67:05
Sending on   Socket/fallback
DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
[11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full -
flow control off
DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
DHCPOFFER of 192.168.15.95 from 192.168.15.2
DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
DHCPACK of 192.168.15.95 from 192.168.15.2
suspect value in domain_name option - discarded
chown: unrecognized option '--reference=/etc/resolv.conf'
BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.

Usage: chown [-Rh]... USER[:[GRP]] FILE...
chmod: unrecognized option '--reference=/etc/resolv.conf'
BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.

Usage: chmod [-R] MODE[,MODE]... FILE...
bound to 192.168.15.95 -- renewal in 40023 seconds.
root@beaglebone:~#

On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <Lukasz.Zemla@woodward.com>
wrote:

> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Zoran Stojsavljevic
> Sent: Monday, January 21, 2019 7:56 AM
>
> [...]
>
> > While downloading initramfs on the target system, while bringing kernel
> up, the following
> > happened (actual log):
> > [    0.000000] Kernel command line: console=ttyO0,115200n8
> root=/dev/ram0 ip=dhcp
> > ... [snap]...
> > [  114.064032] Sending DHCP requests ...... timed out!
> > [  190.652571] IP-Config: Auto-configuration of network failed
> > [  190.663158] Freeing unused kernel memory: 1024K
> > [  190.668661] Run /init as init process
> > System time before build time, advancing clock.
> > Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
> > Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or
> directory
> > [!!!!!!] Failed to mount API filesystems, freezing.
> > Freezing execution.
> > [  192.984442] random: crng init done
> > I have two questions (please, could you provide to me some help here):
> > [1] How to fix this run-time bug (what I should do in the configuration)?
> >     I found some interesting explanation about possible solution
> (PACKAGECONFIG):
> >
> https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html
>
> Probably you are missing CONFIG_CGROUPS in your kernel configuration.
> Please read README file in the systemd sources folder - it describes all
> options
> required to be enabled in kernel configuration.
>
> > [2] I would like also to include networkctl service (should I do
> something specific to
> >     enable it, or this is done by default enabling systemd)?
>
> Please add following to your conf/local.conf file:
> PACKAGECONFIG_append_pn-systemd = " networkd"
>
> Best regards,
> Lukasz Zemla
>
> ***
> The information in this email is confidential and intended solely for the
> individual or entity to whom it is addressed.  If you have received this
> email in error please notify the sender by return e-mail, delete this
> email, and refrain from any disclosure or action based on the information.
> ***
>

--000000000000f3c0e205800dd0dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello Lukasz,</div>=
<div><br></div><div>Thank you very much for the advises. I did what you hav=
e suggested, and this does work.</div><div><br></div><div>And it solves my =
basic problem (NO GO for some reason when I had network manager).</div><div=
><br></div><div>I use DUT (BBB) with YOCTO initramfs linux as testing vehic=
le for my various pass-through VBox VMs (several designs) via my notebook h=
ost to test them, how different designs VMs connect and interact with DUT.<=
/div><div><br></div><div>Lukasz and Peter,</div><div><br></div><div>I also =
will investigate more about systemd service in order to get more inside inf=
o about how to properly configure the service.</div><div><br></div><div>Tha=
nk you,</div><div>Zoran</div><div>_______<br></div><div><br></div><div>Here=
 is the transcript after I built new YOCTO BBB DUT initramfs build:</div><d=
iv><br></div><div>root@beaglebone:~# uname -a<br>Linux beaglebone 4.19.7-ju=
mpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l GNU/Linux<br></div><div>root@b=
eaglebone:~# systemctl restart systemd-networkd<br>root@beaglebone:~# ps -e=
lf | grep dhc <br>0 S root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1521=C2=A0 1328=C2=
=A0 0=C2=A0 80=C2=A0=C2=A0 0 -=C2=A0=C2=A0 745 pipe_w 19:14 ttyO0=C2=A0=C2=
=A0=C2=A0 00:00:00 grep dhc<br>root@beaglebone:~# ifconfig eth0 down <br>ro=
ot@beaglebone:~# dhclient -4 eth0 -v<br>Internet Systems Consortium DHCP Cl=
ient 4.4.1<br>Copyright 2004-2018 Internet Systems Consortium.<br>All right=
s reserved.<br>For info, please visit <a href=3D"https://www.isc.org/softwa=
re/dhcp/">https://www.isc.org/software/dhcp/</a><br><br>[11982.445947] net =
eth0: initializing cpsw version 1.12 (0)<br>[11982.550762] SMSC LAN8710/LAN=
8720 4a101000.mdio:00: attached PHY driver [SMSC LAN8710/LAN8720] (mii_bus:=
phy_addr=3D4a101000.mdio:00, irq=3DPOLL)<br>Listening on LPF/eth0/64:cf:d9:=
ff:67:05<br>Sending on=C2=A0=C2=A0 LPF/eth0/64:cf:d9:ff:67:05<br>Sending on=
=C2=A0=C2=A0 Socket/fallback<br>DHCPDISCOVER on eth0 to 255.255.255.255 por=
t 67 interval 7<br>[11984.640851] cpsw 4a100000.ethernet eth0: Link is Up -=
 100Mbps/Full - flow control off<br>DHCPDISCOVER on eth0 to 255.255.255.255=
 port 67 interval 10<br>DHCPOFFER of 192.168.15.95 from 192.168.15.2<br>DHC=
PREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67<br>DHCPACK of=
 192.168.15.95 from 192.168.15.2<br>suspect value in domain_name option - d=
iscarded<br>chown: unrecognized option &#39;--reference=3D/etc/resolv.conf&=
#39;<br>BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.<br><br=
>Usage: chown [-Rh]... USER[:[GRP]] FILE...<br>chmod: unrecognized option &=
#39;--reference=3D/etc/resolv.conf&#39;<br>BusyBox v1.29.2 (2019-01-19 17:2=
4:17 UTC) multi-call binary.<br><br>Usage: chmod [-R] MODE[,MODE]... FILE..=
.<br>bound to 192.168.15.95 -- renewal in 40023 seconds.<br>root@beaglebone=
:~#<br></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla &lt;<=
a href=3D"mailto:Lukasz.Zemla@woodward.com">Lukasz.Zemla@woodward.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From: =
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] On Behalf =
Of Zoran Stojsavljevic<br>
Sent: Monday, January 21, 2019 7:56 AM<br>
<br>
[...]<br>
<br>
&gt; While downloading initramfs on the target system, while bringing kerne=
l up, the following<br>
&gt; happened (actual log):<br>
&gt; [=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line: console=3DttyO0,115=
200n8 root=3D/dev/ram0 ip=3Ddhcp<br>
&gt; ... [snap]...<br>
&gt; [=C2=A0 114.064032] Sending DHCP requests ...... timed out!<br>
&gt; [=C2=A0 190.652571] IP-Config: Auto-configuration of network failed<br=
>
&gt; [=C2=A0 190.663158] Freeing unused kernel memory: 1024K<br>
&gt; [=C2=A0 190.668661] Run /init as init process<br>
&gt; System time before build time, advancing clock.<br>
&gt; Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory<br>
&gt; Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or dire=
ctory<br>
&gt; [!!!!!!] Failed to mount API filesystems, freezing.<br>
&gt; Freezing execution.<br>
&gt; [=C2=A0 192.984442] random: crng init done<br>
&gt; I have two questions (please, could you provide to me some help here):=
<br>
&gt; [1] How to fix this run-time bug (what I should do in the configuratio=
n)?<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0 I found some interesting explanation about pos=
sible solution (PACKAGECONFIG):<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0 <a href=3D"https://lists.yoctoproject.org/pipe=
rmail/yocto/2013-November/016965.html" rel=3D"noreferrer" target=3D"_blank"=
>https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.html</=
a><br>
<br>
Probably you are missing CONFIG_CGROUPS in your kernel configuration.<br>
Please read README file in the systemd sources folder - it describes all op=
tions<br>
required to be enabled in kernel configuration.<br>
<br>
&gt; [2] I would like also to include networkctl service (should I do somet=
hing specific to<br>
&gt;=C2=A0=C2=A0=C2=A0=C2=A0 enable it, or this is done by default enabling=
 systemd)?<br>
<br>
Please add following to your conf/local.conf file:<br>
PACKAGECONFIG_append_pn-systemd =3D &quot; networkd&quot;<br>
<br>
Best regards,<br>
Lukasz Zemla<br>
<br>
***<br>
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information=
.<br>
***<br>
</blockquote></div>

--000000000000f3c0e205800dd0dc--
