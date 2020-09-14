Subject: Ethernet device with systemd-networkd on Yocto won't work (rejects ARP replies), but does work with /etc/network/interfaces #systemd #yocto
To: yocto@lists.yoctoproject.org
From: eliranl@amazon.com
X-Originating-Location: Frankfurt am Main, Hesse, DE (54.239.6.186)
X-Originating-Platform: Linux Firefox 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 14 Sep 2020 11:31:21 -0700
Message-ID: <mu1M.1600108281958934138.htNV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="X8WDFXqy7PFCWhEUrlg0"

--X8WDFXqy7PFCWhEUrlg0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
(since this is a long post, i divided it to sections)

*TL;DR*

I have a networking issue in my Yocto dist; Somehow,=C2=A0my ethernet devi=
ce won't work with systemd-networkd, but will work with /etc/network/interf=
aces.

*Problem*
I have an Nvidia Jetson AGX Xavier device which runs a Yocto Thud distribu=
tion based on meta-tegra's=C2=A0tegra-minimal-initramfs ( https://github.co=
m/OE4T/meta-tegra/blob/master/recipes-core/images/tegra-minimal-initramfs.b=
b ) , which is a small initrd for Jetson Xavier, except it was modified to =
run with coreutils instead of busybox, and with systemd.

It has an eth0 device which is configured (with a config file in /etc/syst=
emd/network) with a static IP address. The Xavier's Ethernet port is connec=
ted directly to another Ubuntu PC, which is also on the same subnet with a =
different static IP address.

I cannot get the Xavier's network device to work with systemd-networkd;

Once the device boots into the initrd, it appears as if the network device=
 is configured correctly:

* `ifconfig` shows that eth0 is configured with the correct IP address
* The following messages appear in 'dmesg':
[=C2=A0=C2=A0 12.390612] gpio tegra-gpio wake20 for gpio=3D52(G:4)
[=C2=A0=C2=A0 15.242016] eqos 2490000.ether_qos eth0: Link is Up - 1Gbps/F=
ull - flow control off

However, when I ping the Ubuntu machine on the other end of the cable, the=
re's no response.

*Debugging*

* When running tcpdump on the Ubuntu machine, it shows that the Ubuntu mac=
hine receives an ARP request, and sends a reply back:

>=20
> 20:00:55.280337 ARP, Request who-has 192.168.13.10 tell 192.168.13.6,
> length 46
> 20:00:55.280362 ARP, Reply 192.168.13.10 is-at 3c:fd:fe:81:f1:93 (oui
> Unknown), length 28
> 20:00:56.291843 ARP, Request who-has 192.168.13.10 tell 192.168.13.6,
> length 46
> 20:00:56.291866 ARP, Reply 192.168.13.10 is-at 3c:fd:fe:81:f1:93 (oui
> Unknown), length 28

* But, the arp cache on the Xavier is not updated after that; Running 'cat=
 /proc/net/arp' on the Xavier device shows that:

>=20
>=20
>=20
> xavier:~$ cat /proc/net/arp
> IP address=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 HW type=C2=A0=C2=A0=C2=A0=
=
=C2=A0 Flags=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 HW address=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mask=C2=A0=C2=A0=C2=A0=
=
=C2=A0
> Device
> 192.168.13.10=C2=A0=C2=A0=C2=A0 0x1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 0x0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 00:00:00:=
00:00:00=C2=A0=C2=A0=C2=A0=C2=A0 *=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0
> eth0
>=20
>=20

(192.168.13.0 is the address of the machine i tried to ping. as you can se=
e its MAC address is not updated).

* There are no iptable rules in the Xavier (according to iptables -L).
* Running 'networkctl status' on the device, shows that its State is "rout=
able (configuring)", however i'm not sure if it's a problem or not, after s=
earching what it means.

* I've also tried to look if I somehow installed another networking servic=
e that conflicts with systemd-networkd, but it doesn't seem like it:

>=20
>=20
>=20
> xavier:~$ systemctl list-units|grep -i net|awk '{print $1}'
> sys-devices-2490000.ether_qos-net-eth0.device
> sys-devices-virtual-net-dummy0.device
> sys-subsystem-net-devices-dummy0.device
> sys-subsystem-net-devices-eth0.device
> systemd-resolved.service
> network-online.target
> network.target
> nss-lookup.target
>=20
>=20

*Using /etc/network/interface does work*

If i 'move' to using /etc/network/interfaces by doing:

1. Running: systemctl stop systemd-networkd.{socket,service}

2. Write an equivalent configuration in /etc/network/interfaces

3. Restart eth0: ifconfig eth0 down; ifconfig eth0 up

Then, all of a sudden the ping works.

*My configuration*

* In order to use systemd-networkd, I have tried various combinations of t=
he following configuration parameters in my local.conf, after searching var=
ious resources=C2=A0on the internet for=C2=A0using systemd on Yocto:

>=20
>=20
>=20
> DISTRO_FEATURES_append =3D " systemd coreutils procps"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"
> DISTRO_FEATURES_remove =3D " sysvinit"
> PREFERRED_PROVIDER_udev =3D "systemd"
> VIRTUAL-RUNTIME_syslog =3D ""
> VIRTUAL-RUNTIME_login_manager =3D "shadow"
> #DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
> PREFERRED_PROVIDER_virtual/base-utils =3D "coreutils"
> VIRTUAL-RUNTIME_base-utils =3D "coreutils"
> DISTRO_FEATURES_remove +=3D "wayland directfb busybox"
> VIRTUAL-RUNTIME_base-utils-syslog =3D ""
> PACKAGECONFIG_append_pn-systemd =3D "
>=20
>=20

And none of it seemed to work.

* The following is the non-working systemd network device configuration fi=
le:

>=20
>=20
>=20
> [Match]
> Name=3Deth0
>=20
> [Network]
> Address=3D192.168.13.6/24
> Gateway=3D192.168.13.10
>=20
>=20

* And the following is the working equivalent /etc/network/interfaces file=
:

>=20
>=20
>=20
> auto eth0
> iface eth0 inet static
> address 192.168.13.6
> netmask 255.255.255.0
>=20
>=20

----

I also didn't find a post with similar symptoms.

Does anyone have an idea on how to debug this?

Please accept my apologies if this isn't the right forum, i wasn't sure wh=
ere to sent it to.

Thanks,

Eliran

--X8WDFXqy7PFCWhEUrlg0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />(since this is a long post, i divided it to sections)<br /><br /><=
span style=3D"font-size: 14pt;"><strong>TL;DR</strong></span><br />
<p>I have a networking issue in my Yocto dist; Somehow,&nbsp;my ethernet d=
evice won't work with systemd-networkd, but will work with /etc/network/int=
erfaces.<br /><br /><span style=3D"font-size: 14pt;"><strong>Problem</stron=
g></span><br />I have an Nvidia Jetson AGX Xavier device which runs a Yocto=
 Thud distribution based on<a href=3D"https://github.com/OE4T/meta-tegra/bl=
ob/master/recipes-core/images/tegra-minimal-initramfs.bb" target=3D"_blank"=
 rel=3D"nofollow noopener"> meta-tegra's&nbsp;tegra-minimal-initramfs</a>, =
which is a small initrd for Jetson Xavier, except it was modified to run wi=
th coreutils instead of busybox, and with systemd.</p>
<p>It has an eth0 device which is configured (with a config file in<span c=
lass=3D"st">&nbsp;/etc/systemd/network)</span> with a static IP address. Th=
e Xavier's Ethernet port is connected directly to another Ubuntu PC, which =
is also on the same subnet with a different static IP address.</p>
<p>I cannot get the Xavier's network device to work with systemd-networkd;=
</p>
<p>Once the device boots into the initrd, it appears as if the network dev=
ice is configured correctly:</p>
<ul>
<li>`ifconfig` shows that eth0 is configured with the correct IP address</=
li>
<li>The following messages appear in 'dmesg':<br />[&nbsp;&nbsp; 12.390612=
] gpio tegra-gpio wake20 for gpio=3D52(G:4)<br />[&nbsp;&nbsp; 15.242016] e=
qos 2490000.ether_qos eth0: Link is Up - 1Gbps/Full - flow control off</li>
</ul>
<p>However, when I ping the Ubuntu machine on the other end of the cable, =
there's no response.</p>
<p><br /><span style=3D"font-size: 14pt;"><strong>Debugging</strong></span=
></p>
<ul>
<li>When running tcpdump on the Ubuntu machine, it shows that the Ubuntu m=
achine receives an ARP request, and sends a reply back:</li>
</ul>
<blockquote>20:00:55.280337 ARP, Request who-has 192.168.13.10 tell 192.16=
8.13.6, length 46<br />20:00:55.280362 ARP, Reply 192.168.13.10 is-at 3c:fd=
:fe:81:f1:93 (oui Unknown), length 28<br />20:00:56.291843 ARP, Request who=
-has 192.168.13.10 tell 192.168.13.6, length 46<br />20:00:56.291866 ARP, R=
eply 192.168.13.10 is-at 3c:fd:fe:81:f1:93 (oui Unknown), length 28</blockq=
uote>
<ul>
<li>But, the arp cache on the Xavier is not updated after that; Running 'c=
at /proc/net/arp' on the Xavier device shows that:</li>
</ul>
<blockquote>
<p>xavier:~$ cat /proc/net/arp <br />IP address&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; HW type&nbsp;&nbsp;&nbsp;&nbsp; Flags&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; HW address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; Mask&nbsp;&nbsp;&nbsp;&nbsp; Device<br />192.168.13.10&nbsp;&nbs=
p;&nbsp; 0x1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0x0&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 00:00:00:00:00:00&nbsp;&nbsp;&nbsp;&n=
bsp; *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eth0</p>
</blockquote>
<div style=3D"padding-left: 30px;">(192.168.13.0 is the address of the mac=
hine i tried to ping. as you can see its MAC address is not updated).</div>
<p>&nbsp;</p>
<ul>
<li>There are no iptable rules in the Xavier (according to iptables -L).</=
li>
<li>Running 'networkctl status' on the device, shows that its State is "ro=
utable (configuring)", however i'm not sure if it's a problem or not, after=
 searching what it means.</li>
</ul>
<p>&nbsp;</p>
<ul>
<li>I've also tried to look if I somehow installed another networking serv=
ice that conflicts with systemd-networkd, but it doesn't seem like it:</li>
</ul>
<blockquote>
<p>xavier:~$ systemctl list-units|grep -i net|awk '{print $1}'<br />sys-de=
vices-2490000.ether_qos-net-eth0.device<br />sys-devices-virtual-net-dummy0=
.device<br />sys-subsystem-net-devices-dummy0.device<br />sys-subsystem-net=
-devices-eth0.device<br />systemd-resolved.service<br />network-online.targ=
et<br />network.target<br />nss-lookup.target</p>
</blockquote>
<p><span style=3D"font-size: 14pt;"><strong>Using /etc/network/interface d=
oes work</strong></span></p>
<p>If i 'move' to using /etc/network/interfaces by doing:</p>
<p>1. Running: systemctl stop systemd-networkd.{socket,service}</p>
<p>2. Write an equivalent configuration in /etc/network/interfaces</p>
<p>3. Restart eth0: ifconfig eth0 down; ifconfig eth0 up</p>
<p>Then, all of a sudden the ping works.</p>
<p><br /><strong><span style=3D"font-size: 14pt;">My configuration</span><=
/strong></p>
<ul>
<li>In order to use systemd-networkd, I have tried various combinations of=
 the following configuration parameters in my local.conf, after searching v=
arious resources&nbsp;on the internet for&nbsp;using systemd on Yocto:</li>
</ul>
<blockquote>
<p>DISTRO_FEATURES_append =3D " systemd coreutils procps"<br />VIRTUAL-RUN=
TIME_init_manager =3D "systemd"<br />VIRTUAL-RUNTIME_initscripts =3D "syste=
md-compat-units"<br />DISTRO_FEATURES_remove =3D " sysvinit"<br />PREFERRED=
_PROVIDER_udev =3D "systemd"<br />VIRTUAL-RUNTIME_syslog =3D ""<br />VIRTUA=
L-RUNTIME_login_manager =3D "shadow"<br />#DISTRO_FEATURES_BACKFILL_CONSIDE=
RED =3D "sysvinit"<br />PREFERRED_PROVIDER_virtual/base-utils =3D "coreutil=
s"<br />VIRTUAL-RUNTIME_base-utils =3D "coreutils"<br />DISTRO_FEATURES_rem=
ove +=3D "wayland directfb busybox"<br />VIRTUAL-RUNTIME_base-utils-syslog =
=
=3D ""<br />PACKAGECONFIG_append_pn-systemd =3D "</p>
</blockquote>
<p style=3D"padding-left: 30px;">And none of it seemed to work.</p>
<ul>
<li>The following is the non-working systemd network device configuration =
file:</li>
</ul>
<blockquote>
<p>[Match]<br />Name=3Deth0<br /><br />[Network]<br />Address=3D192.168.13=
.6/24<br />Gateway=3D192.168.13.10</p>
</blockquote>
<ul>
<li>And the following is the working equivalent /etc/network/interfaces fi=
le:</li>
</ul>
<blockquote>
<p>auto eth0<br />iface eth0 inet static <br />&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; address 192=
.168.13.6 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; netmask 255.255.255.0</p>
</blockquote>
<p>----<br /><br />I also didn't find a post with similar symptoms.</p>
<p>Does anyone have an idea on how to debug this?<br /><br /><br /></p>
<p>Please accept my apologies if this isn't the right forum, i wasn't sure=
 where to sent it to.</p>
<p>Thanks,</p>
Eliran

--X8WDFXqy7PFCWhEUrlg0--
