Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64BA6E00CED; Tue, 22 Jan 2019 21:01:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF9C0E00CE8
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 21:01:56 -0800 (PST)
Received: by mail-qk1-f175.google.com with SMTP id q8so507851qke.1
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 21:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gb1Rg2dBkBRzoqMpHjFFgFy4i228N1GZMfdUC3zkIfA=;
	b=RJ2ni4U1Ep+FyXffuwmolDwrb5/9sBKdvthysT9u0y0fowI9eF2axdKgWfByqJB1Az
	iMtW+vLaVxdfoyfDBFZIJb4ihamOFrESQTiIsLaH3TqtAbkVPBFRETfEu0jlIOqIPx5W
	2ou+tWSUHnqgnLqQ6JuaoUw/GbbyuLK9hUfboG0AkzTwTwCY53NEyVPTe/7vFm72y3rx
	2ru5FnX6r4xosD26mq68yGSH1710l/69Uk4bzdjevef818HuaE+6BFJESP4ESI5T9ZNX
	hsVhxPFsXrho1MgF6syLkOioypYBD8AKXzwF+dwYWYUANFRuTDZH2vRfqtVdsF7IIHoJ
	e2PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gb1Rg2dBkBRzoqMpHjFFgFy4i228N1GZMfdUC3zkIfA=;
	b=omkM4cvN83rtK3ci2pVoWoolsoFsNhROIcGQwZvaQzfBosKsBmtWRppkMDWDnltbEQ
	yNGsYSpmz2wVWxcAVSD/KQmMJ6EPpYHR0y8qz+LO1ZzQR6lcvf9t8oZ81+vU2hL1Xrcw
	X4ZCkPaDAE8uFTW7p9w3glr7IouR6xYImz6jY28MUZDhXdJyLmSkYXqH5qIWP5xRyy1M
	i3F70YOaNoDACxwXMwK834/KuP7dU36BypsuP890H3f15jWUuQVmr44YAT8brLV9odIb
	LBbht4GaxdZ5FS+QL3IrQfZCqgeRyLrAZ1uYVMNjNhtFv0Dg0YbE8d8P1bl7+AB6VXt5
	M8uQ==
X-Gm-Message-State: AJcUukd1P+FXyogzzo2GhO5+N0fZk1lk0gv5qiENZohRl8R4FV6OFfJv
	74Cy+ZeZS9i+Jp73A/tOhwASiBbPE7YyAlo8itJqUtSP
X-Google-Smtp-Source: ALg8bN5ey/48LpBJarnCXtDj262t2mATzwoq23BxwoVk8tEzt+39RCq9TOP3yTO0Szy1RcmdF6zgqKwIYREau/fHB+Q=
X-Received: by 2002:a37:dcc1:: with SMTP id v184mr612843qki.212.1548219715782; 
	Tue, 22 Jan 2019 21:01:55 -0800 (PST)
MIME-Version: 1.0
References: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
	<CAGAf8LxwaWjAFeP8AH4L95iq=wTJC5x=ufp20rckweqyPJw81w@mail.gmail.com>
	<CAP71WjzTkMxPmgDTK36zTcDfOoTBFBWBgTQ=D=EK4JwinJCMrg@mail.gmail.com>
	<CAGAf8LyfbCqc5AeaDhxOAEwhL_KOe7mkE68d3afgv4DFJPVPmg@mail.gmail.com>
	<CAP71WjwvZPmn2zrMsvX6Cipm4zu4kROme-PVZFHueG_44dJPkg@mail.gmail.com>
	<fc2bbe75-1300-14c5-aa35-621bc01f5bbb@berginkonsult.se>
In-Reply-To: <fc2bbe75-1300-14c5-aa35-621bc01f5bbb@berginkonsult.se>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 23 Jan 2019 06:01:43 +0100
Message-ID: <CAGAf8LwA8uffG80p5AuF1QF1qyY-hyB3F1+kzu3HtC1OhJbbjQ@mail.gmail.com>
To: Peter Bergin <peter@berginkonsult.se>
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
X-List-Received-Date: Wed, 23 Jan 2019 05:01:58 -0000
Content-Type: multipart/alternative; boundary="000000000000318ebe058018fed8"

--000000000000318ebe058018fed8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Peter,

> I'm not sure I got your question correct but I'll try to give you *a
super*
> *simple *network config for systemd-networkd using dhcp.

*Super simple answer.* From my previous answer (from log provided):

[11982.445947] net eth0: initializing cpsw version 1.12 (0)
[11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driver
[SMSC LAN8710/LAN8720] (mii_bus:phy_addr=3D4a101000.mdio:00, irq=3DPOLL)
Listening on LPF/eth0/64:cf:d9:ff:67:05
Sending on   LPF/eth0/64:cf:d9:ff:67:05
Sending on   Socket/fallback





*DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7[11984.640851]
cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow control
offDHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10DHCPOFFER of
192.168.15.95 from 192.168.15.2DHCPREQUEST for 192.168.15.95 on eth0 to
255.255.255.255 port 67DHCPACK of 192.168.15.95 from 192.168.15.2*
suspect value in domain_name option - discarded
chown: unrecognized option '--reference=3D/etc/resolv.conf'
BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.

Best Regards,
Zoran
_______


On Tue, Jan 22, 2019 at 10:08 PM Peter Bergin <peter@berginkonsult.se>
wrote:

> Hi Zoran,
>
> I'm not sure I got your question correct but I'll try to give you a super
> simple network config for systemd-networkd using dhcp.
>
> Add the file '/etc/systemd/network/10-dhcp.network' with the following
> content:
>
>     	[Match]
> 	Name=3D*
>
> 	[Network]
> 	DHCP=3Dyes
>
> Then I hope you will get your interface up with DHCP.
>
> Regards,
> /Peter
>
>
>
> On 2019-01-22 17:45, Nicolas Dechesne wrote:
>
> On Tue, Jan 22, 2019 at 5:38 PM Zoran Stojsavljevic<zoran.stojsavljevic@g=
mail.com> <zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Nicolas,
>
> I build ONLY initramfs to be used on BBB DUT in order to test VMs. I
> do not use mtd neither flash rootfs (as mounted on flash), although in
> the BBB DUT's flash I have embedded Debian stretch. I use different
> ash scripts in U-Boot to bring only ramboot.
>
> Here is the proof:
> root@beaglebone:~# df
> Filesystem           1K-blocks      Used Available Use% Mounted on
> devtmpfs                213596         0    213596   0% /dev
> tmpfs                   251260         0    251260   0% /dev/shm
> tmpfs                   251260      8428    242832   3% /run
> tmpfs                   251260         0    251260   0% /sys/fs/cgroup
> tmpfs                   251260         0    251260   0% /tmp
> tmpfs                   251260       116    251144   0% /var/volatile
>
> But this email thread, my best guess, addresses your concerns:https://lis=
ts.yoctoproject.org/pipermail/yocto/2018-July/041680.html
>
> There is also how to build image with initramfs ONLY, in this thread,
> written by me:https://lists.yoctoproject.org/pipermail/yocto/2018-July/04=
1696.html
>
> thanks, that exactly what I was looking for.
>
>
> I hope this helps.
>
> Zoran
> _______
>
>
> On Tue, Jan 22, 2019 at 4:49 PM Nicolas Dechesne<nicolas.dechesne@linaro.=
org> <nicolas.dechesne@linaro.org> wrote:
>
> hi,
>
> On Tue, Jan 22, 2019 at 4:42 PM Zoran Stojsavljevic<zoran.stojsavljevic@g=
mail.com> <zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Lukasz,
>
> Thank you very much for the advises. I did what you have suggested, and t=
his does work.
>
> And it solves my basic problem (NO GO for some reason when I had network =
manager).
>
> I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my vari=
ous pass-through VBox VMs (several designs) via my notebook host to test th=
em, how different designs VMs connect and interact with DUT.
>
> can you share how you built your initramfs?  Are you saying that you
> are booting an initramfs which then mounts the rootfs where you have
> core-image-minimal?
>
>
> Lukasz and Peter,
>
> I also will investigate more about systemd service in order to get more i=
nside info about how to properly configure the service.
>
> Thank you,
> Zoran
> _______
>
> Here is the transcript after I built new YOCTO BBB DUT initramfs build:
>
> root@beaglebone:~# uname -a
> Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l GN=
U/Linux
> root@beaglebone:~# systemctl restart systemd-networkd
> root@beaglebone:~# ps -elf | grep dhc
> 0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:00:0=
0 grep dhc
> root@beaglebone:~# ifconfig eth0 down
> root@beaglebone:~# dhclient -4 eth0 -v
> Internet Systems Consortium DHCP Client 4.4.1
> Copyright 2004-2018 Internet Systems Consortium.
> All rights reserved.
> For info, please visit https://www.isc.org/software/dhcp/
>
> [11982.445947] net eth0: initializing cpsw version 1.12 (0)
> [11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driver=
 [SMSC LAN8710/LAN8720] (mii_bus:phy_addr=3D4a101000.mdio:00, irq=3DPOLL)
> Listening on LPF/eth0/64:cf:d9:ff:67:05
> Sending on   LPF/eth0/64:cf:d9:ff:67:05
> Sending on   Socket/fallback
> DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
> [11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - f=
low control off
> DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
> DHCPOFFER of 192.168.15.95 from 192.168.15.2
> DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
> DHCPACK of 192.168.15.95 from 192.168.15.2
> suspect value in domain_name option - discarded
> chown: unrecognized option '--reference=3D/etc/resolv.conf'
> BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
>
> Usage: chown [-Rh]... USER[:[GRP]] FILE...
> chmod: unrecognized option '--reference=3D/etc/resolv.conf'
> BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.
>
> Usage: chmod [-R] MODE[,MODE]... FILE...
> bound to 192.168.15.95 -- renewal in 40023 seconds.
> root@beaglebone:~#
>
> On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <Lukasz.Zemla@woodward.com> =
<Lukasz.Zemla@woodward.com> wrote:
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg <yocto-bounces@yoctoproject.org>] On Behalf Of Zoran Stojsavljevic
> Sent: Monday, January 21, 2019 7:56 AM
>
> [...]
>
>
> While downloading initramfs on the target system, while bringing kernel u=
p, the following
> happened (actual log):
> [    0.000000] Kernel command line: console=3DttyO0,115200n8 root=3D/dev/=
ram0 ip=3Ddhcp
> ... [snap]...
> [  114.064032] Sending DHCP requests ...... timed out!
> [  190.652571] IP-Config: Auto-configuration of network failed
> [  190.663158] Freeing unused kernel memory: 1024K
> [  190.668661] Run /init as init process
> System time before build time, advancing clock.
> Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
> Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or directo=
ry
> [!!!!!!] Failed to mount API filesystems, freezing.
> Freezing execution.
> [  192.984442] random: crng init done
> I have two questions (please, could you provide to me some help here):
> [1] How to fix this run-time bug (what I should do in the configuration)?
>     I found some interesting explanation about possible solution (PACKAGE=
CONFIG):
>     https://lists.yoctoproject.org/pipermail/yocto/2013-November/016965.h=
tml
>
> Probably you are missing CONFIG_CGROUPS in your kernel configuration.
> Please read README file in the systemd sources folder - it describes all =
options
> required to be enabled in kernel configuration.
>
>
> [2] I would like also to include networkctl service (should I do somethin=
g specific to
>     enable it, or this is done by default enabling systemd)?
>
> Please add following to your conf/local.conf file:
> PACKAGECONFIG_append_pn-systemd =3D " networkd"
>
> Best regards,
> Lukasz Zemla
>
> ***
> The information in this email is confidential and intended solely for the=
 individual or entity to whom it is addressed.  If you have received this e=
mail in error please notify the sender by return e-mail, delete this email,=
 and refrain from any disclosure or action based on the information.
> ***
>
> --
> _______________________________________________
> yocto mailing listyocto@yoctoproject.orghttps://lists.yoctoproject.org/li=
stinfo/yocto
>
>
>

--000000000000318ebe058018fed8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Peter,<br><div><br>&gt; I&#39;m not sure I got your =
question correct but I&#39;ll try to give you
      <u><i><b>a super</b></i></u></div><div>&gt; <u><i><b>simple </b></i><=
/u>network config for systemd-networkd using dhcp.</div><div><br></div><u><=
i><b>Super simple answer.</b></i></u> From my previous answer (from log pro=
vided):<br><br>[11982.445947] net eth0: initializing cpsw version 1.12 (0)<=
br>[11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY drive=
r [SMSC LAN8710/LAN8720] (mii_bus:phy_addr=3D4a101000.mdio:00, irq=3DPOLL)<=
br>Listening on LPF/eth0/64:cf:d9:ff:67:05<br>Sending on =C2=A0 LPF/eth0/64=
:cf:d9:ff:67:05<br>Sending on =C2=A0 Socket/fallback<br><span style=3D"colo=
r:rgb(255,0,0)"><i><b>DHCPDISCOVER on eth0 to 255.255.255.255 port 67 inter=
val 7<br>[11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/F=
ull - flow control off<br>DHCPDISCOVER on eth0 to 255.255.255.255 port 67 i=
nterval 10<br>DHCPOFFER of 192.168.15.95 from 192.168.15.2<br>DHCPREQUEST f=
or 192.168.15.95 on eth0 to 255.255.255.255 port 67<br>DHCPACK of 192.168.1=
5.95 from 192.168.15.2</b></i></span><br>suspect value in domain_name optio=
n - discarded<br>chown: unrecognized option &#39;--reference=3D/etc/resolv.=
conf&#39;<br><div>BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call bina=
ry.</div><div><br></div><div>Best Regards,</div><div>Zoran</div><div>______=
_<br></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail-m_6094443161088936143gmail_attr">On Tue, Jan 22, 2019 at 10:08 PM=
 Peter Bergin &lt;<a href=3D"mailto:peter@berginkonsult.se" target=3D"_blan=
k">peter@berginkonsult.se</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837mo=
z-cite-prefix">Hi Zoran,<br>
      <br>
      I&#39;m not sure I got your question correct but I&#39;ll try to give=
 you
      a super simple network config for systemd-networkd using dhcp.<br>
      <br>
      Add the file &#39;/etc/systemd/network/10-dhcp.network&#39; with the
      following content:<br>
      <br>
      <pre>=C2=A0=C2=A0=C2=A0 	[Match]
	Name=3D*</pre>
      <pre>	[Network]
	DHCP=3Dyes</pre>
      Then I hope you will get your interface up with DHCP.<br>
      <br>
      Regards,<br>
      /Peter<br>
      <br>
      <br>
      <br>
      On 2019-01-22 17:45, Nicolas Dechesne wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837=
moz-quote-pre">On Tue, Jan 22, 2019 at 5:38 PM Zoran Stojsavljevic
<a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-=
link-rfc2396E" href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bla=
nk">&lt;zoran.stojsavljevic@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"gmail-m_6094443161088936143gmail-m_-53261664725149198=
37moz-quote-pre">Hello Nicolas,

I build ONLY initramfs to be used on BBB DUT in order to test VMs. I
do not use mtd neither flash rootfs (as mounted on flash), although in
the BBB DUT&#39;s flash I have embedded Debian stretch. I use different
ash scripts in U-Boot to bring only ramboot.

Here is the proof:
root@beaglebone:~# df
Filesystem           1K-blocks      Used Available Use% Mounted on
devtmpfs                213596         0    213596   0% /dev
tmpfs                   251260         0    251260   0% /dev/shm
tmpfs                   251260      8428    242832   3% /run
tmpfs                   251260         0    251260   0% /sys/fs/cgroup
tmpfs                   251260         0    251260   0% /tmp
tmpfs                   251260       116    251144   0% /var/volatile

But this email thread, my best guess, addresses your concerns:
<a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-=
link-freetext" href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-=
July/041680.html" target=3D"_blank">https://lists.yoctoproject.org/pipermai=
l/yocto/2018-July/041680.html</a>

There is also how to build image with initramfs ONLY, in this thread,
written by me:
<a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-=
link-freetext" href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-=
July/041696.html" target=3D"_blank">https://lists.yoctoproject.org/pipermai=
l/yocto/2018-July/041696.html</a>
</pre>
      </blockquote>
      <pre class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837=
moz-quote-pre">thanks, that exactly what I was looking for.

</pre>
      <blockquote type=3D"cite">
        <pre class=3D"gmail-m_6094443161088936143gmail-m_-53261664725149198=
37moz-quote-pre">I hope this helps.

Zoran
_______


On Tue, Jan 22, 2019 at 4:49 PM Nicolas Dechesne
<a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-=
link-rfc2396E" href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank=
">&lt;nicolas.dechesne@linaro.org&gt;</a> wrote:
</pre>
        <blockquote type=3D"cite">
          <pre class=3D"gmail-m_6094443161088936143gmail-m_-532616647251491=
9837moz-quote-pre">hi,

On Tue, Jan 22, 2019 at 4:42 PM Zoran Stojsavljevic
<a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-=
link-rfc2396E" href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bla=
nk">&lt;zoran.stojsavljevic@gmail.com&gt;</a> wrote:
</pre>
          <blockquote type=3D"cite">
            <pre class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514=
919837moz-quote-pre">Hello Lukasz,

Thank you very much for the advises. I did what you have suggested, and thi=
s does work.

And it solves my basic problem (NO GO for some reason when I had network ma=
nager).

I use DUT (BBB) with YOCTO initramfs linux as testing vehicle for my variou=
s pass-through VBox VMs (several designs) via my notebook host to test them=
, how different designs VMs connect and interact with DUT.
</pre>
          </blockquote>
          <pre class=3D"gmail-m_6094443161088936143gmail-m_-532616647251491=
9837moz-quote-pre">can you share how you built your initramfs?  Are you say=
ing that you
are booting an initramfs which then mounts the rootfs where you have
core-image-minimal?

</pre>
          <blockquote type=3D"cite">
            <pre class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514=
919837moz-quote-pre">Lukasz and Peter,

I also will investigate more about systemd service in order to get more ins=
ide info about how to properly configure the service.

Thank you,
Zoran
_______

Here is the transcript after I built new YOCTO BBB DUT initramfs build:

root@beaglebone:~# uname -a
Linux beaglebone 4.19.7-jumpnow #1 Tue Jan 22 10:36:57 UTC 2019 armv7l GNU/=
Linux
root@beaglebone:~# systemctl restart systemd-networkd
root@beaglebone:~# ps -elf | grep dhc
0 S root      1521  1328  0  80   0 -   745 pipe_w 19:14 ttyO0    00:00:00 =
grep dhc
root@beaglebone:~# ifconfig eth0 down
root@beaglebone:~# dhclient -4 eth0 -v
Internet Systems Consortium DHCP Client 4.4.1
Copyright 2004-2018 Internet Systems Consortium.
All rights reserved.
For info, please visit <a class=3D"gmail-m_6094443161088936143gmail-m_-5326=
166472514919837moz-txt-link-freetext" href=3D"https://www.isc.org/software/=
dhcp/" target=3D"_blank">https://www.isc.org/software/dhcp/</a>

[11982.445947] net eth0: initializing cpsw version 1.12 (0)
[11982.550762] SMSC LAN8710/LAN8720 4a101000.mdio:00: attached PHY driver [=
SMSC LAN8710/LAN8720] (mii_bus:phy_addr=3D4a101000.mdio:00, irq=3DPOLL)
Listening on LPF/eth0/64:cf:d9:ff:67:05
Sending on   LPF/eth0/64:cf:d9:ff:67:05
Sending on   Socket/fallback
DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 7
[11984.640851] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flo=
w control off
DHCPDISCOVER on eth0 to 255.255.255.255 port 67 interval 10
DHCPOFFER of 192.168.15.95 from 192.168.15.2
DHCPREQUEST for 192.168.15.95 on eth0 to 255.255.255.255 port 67
DHCPACK of 192.168.15.95 from 192.168.15.2
suspect value in domain_name option - discarded
chown: unrecognized option &#39;--reference=3D/etc/resolv.conf&#39;
BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.

Usage: chown [-Rh]... USER[:[GRP]] FILE...
chmod: unrecognized option &#39;--reference=3D/etc/resolv.conf&#39;
BusyBox v1.29.2 (2019-01-19 17:24:17 UTC) multi-call binary.

Usage: chmod [-R] MODE[,MODE]... FILE...
bound to 192.168.15.95 -- renewal in 40023 seconds.
root@beaglebone:~#

On Mon, Jan 21, 2019 at 9:07 AM Lukasz Zemla <a class=3D"gmail-m_6094443161=
088936143gmail-m_-5326166472514919837moz-txt-link-rfc2396E" href=3D"mailto:=
Lukasz.Zemla@woodward.com" target=3D"_blank">&lt;Lukasz.Zemla@woodward.com&=
gt;</a> wrote:
</pre>
            <blockquote type=3D"cite">
              <pre class=3D"gmail-m_6094443161088936143gmail-m_-53261664725=
14919837moz-quote-pre">From: <a class=3D"gmail-m_6094443161088936143gmail-m=
_-5326166472514919837moz-txt-link-abbreviated" href=3D"mailto:yocto-bounces=
@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [<a=
 class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-li=
nk-freetext" href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blan=
k">mailto:yocto-bounces@yoctoproject.org</a>] On Behalf Of Zoran Stojsavlje=
vic
Sent: Monday, January 21, 2019 7:56 AM

[...]

</pre>
              <blockquote type=3D"cite">
                <pre class=3D"gmail-m_6094443161088936143gmail-m_-532616647=
2514919837moz-quote-pre">While downloading initramfs on the target system, =
while bringing kernel up, the following
happened (actual log):
[    0.000000] Kernel command line: console=3DttyO0,115200n8 root=3D/dev/ra=
m0 ip=3Ddhcp
... [snap]...
[  114.064032] Sending DHCP requests ...... timed out!
[  190.652571] IP-Config: Auto-configuration of network failed
[  190.663158] Freeing unused kernel memory: 1024K
[  190.668661] Run /init as init process
System time before build time, advancing clock.
Failed to mount tmpfs at /sys/fs/cgroup: No such file or directory
Failed to mount cgroup at /sys/fs/cgroup/systemd: No such file or directory
[!!!!!!] Failed to mount API filesystems, freezing.
Freezing execution.
[  192.984442] random: crng init done
I have two questions (please, could you provide to me some help here):
[1] How to fix this run-time bug (what I should do in the configuration)?
    I found some interesting explanation about possible solution (PACKAGECO=
NFIG):
    <a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-=
txt-link-freetext" href=3D"https://lists.yoctoproject.org/pipermail/yocto/2=
013-November/016965.html" target=3D"_blank">https://lists.yoctoproject.org/=
pipermail/yocto/2013-November/016965.html</a>
</pre>
              </blockquote>
              <pre class=3D"gmail-m_6094443161088936143gmail-m_-53261664725=
14919837moz-quote-pre">Probably you are missing CONFIG_CGROUPS in your kern=
el configuration.
Please read README file in the systemd sources folder - it describes all op=
tions
required to be enabled in kernel configuration.

</pre>
              <blockquote type=3D"cite">
                <pre class=3D"gmail-m_6094443161088936143gmail-m_-532616647=
2514919837moz-quote-pre">[2] I would like also to include networkctl servic=
e (should I do something specific to
    enable it, or this is done by default enabling systemd)?
</pre>
              </blockquote>
              <pre class=3D"gmail-m_6094443161088936143gmail-m_-53261664725=
14919837moz-quote-pre">Please add following to your conf/local.conf file:
PACKAGECONFIG_append_pn-systemd =3D &quot; networkd&quot;

Best regards,
Lukasz Zemla

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.  If you have received this ema=
il in error please notify the sender by return e-mail, delete this email, a=
nd refrain from any disclosure or action based on the information.
***
</pre>
            </blockquote>
            <pre class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514=
919837moz-quote-pre">--
_______________________________________________
yocto mailing list
<a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-=
link-abbreviated" href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">=
yocto@yoctoproject.org</a>
<a class=3D"gmail-m_6094443161088936143gmail-m_-5326166472514919837moz-txt-=
link-freetext" href=3D"https://lists.yoctoproject.org/listinfo/yocto" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
          </blockquote>
        </blockquote>
      </blockquote>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000318ebe058018fed8--
