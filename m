Subject: iptables conntrack not working in #yocto warrior
To: yocto@lists.yoctoproject.org
From: kcghost@gmail.com
X-Originating-Location: Bethlehem, Pennsylvania, US (64.121.142.251)
X-Originating-Platform: Linux Firefox 76
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 06 Jun 2020 11:48:45 -0700
Message-ID: <ziDW.1591469325793872415.0xQ9@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1iq3CuC0b9lw3Hl3Xw6u"

--1iq3CuC0b9lw3Hl3Xw6u
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Minimal test:
git clone git://git.yoctoproject.org/poky -b warrior
git clone git://git.openembedded.org/meta-openembedded -b warrior
. poky/oe-init-build-env
bitbake-layers add-layer ../meta-openembedded/meta-oe/
bitbake-layers add-layer ../meta-openembedded/meta-python/
bitbake-layers add-layer ../meta-openembedded/meta-networking/
echo "PACKAGECONFIG_append_pn-iptables =3D \" libnfnetlink\"" >> conf/loca=
l.conf
echo "IMAGE_INSTALL_append =3D \"iptables\"" >> conf/local.conf
bitbake core-image-minimal qemu-native qemu-helper-native
runqemu qemux86 nographic

modprobe nf_conntrack
iptables -A INPUT -m conntrack --ctstate INVALID -j DROP
iptables: No chain/target/match by that name.

lsmod
Not tainted
nf_conntrack 86016 0 - Live 0xd0994000
nf_defrag_ipv6 20480 1 nf_conntrack, Live 0xd098e000
nf_defrag_ipv4 16384 1 nf_conntrack, Live 0xd0989000
iptable_filter 16384 0 - Live 0xd0984000
ip_tables 20480 1 iptable_filter, Live 0xd097a000
x_tables 24576 2 iptable_filter,ip_tables, Live 0xd096f000
uvesafb 28672 1 - Live 0xd0964000
uname -a
Linux qemux86 5.0.19-yocto-standard #1 SMP PREEMPT Sat Jun 6 17:40:47 UTC =
2020 i686 GNU/Linux

As far as I can tell the iptables recipe should automatically install the =
necessary kernel modules, and the newer kernels do not require nf-conntrack=
-ipv4.
So with module installed as well as libnfnetlink feature I can't tell why =
it is failing.

Any suggestions? Is there a bug in the recipe? Did I do something dumb?

--1iq3CuC0b9lw3Hl3Xw6u
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Minimal test:<br />git clone git://git.yoctoproject.org/poky -b warrior<br =
/>git clone git://git.openembedded.org/meta-openembedded -b warrior<br />. =
poky/oe-init-build-env<br />bitbake-layers add-layer ../meta-openembedded/m=
eta-oe/<br />bitbake-layers add-layer ../meta-openembedded/meta-python/<br =
/>bitbake-layers add-layer ../meta-openembedded/meta-networking/<br />echo =
"PACKAGECONFIG_append_pn-iptables =3D \" libnfnetlink\"" &gt;&gt; conf/loca=
l.conf<br />echo "IMAGE_INSTALL_append =3D \"iptables\"" &gt;&gt; conf/loca=
l.conf<br />bitbake core-image-minimal qemu-native qemu-helper-native<br />=
runqemu qemux86 nographic<br /><br />modprobe nf_conntrack<br />iptables -A=
 INPUT -m conntrack --ctstate INVALID -j DROP<br />iptables: No chain/targe=
t/match by that name.<br /><br />lsmod<br />&nbsp;&nbsp;&nbsp; Not tainted<=
br />nf_conntrack 86016 0 - Live 0xd0994000<br />nf_defrag_ipv6 20480 1 nf_=
conntrack, Live 0xd098e000<br />nf_defrag_ipv4 16384 1 nf_conntrack, Live 0=
xd0989000<br />iptable_filter 16384 0 - Live 0xd0984000<br />ip_tables 2048=
0 1 iptable_filter, Live 0xd097a000<br />x_tables 24576 2 iptable_filter,ip=
_tables, Live 0xd096f000<br />uvesafb 28672 1 - Live 0xd0964000<br />uname =
-a<br />Linux qemux86 5.0.19-yocto-standard #1 SMP PREEMPT Sat Jun 6 17:40:=
47 UTC 2020 i686 GNU/Linux<br /><br />As far as I can tell the iptables rec=
ipe should automatically install the necessary kernel modules, and the newe=
r kernels do not require nf-conntrack-ipv4.<br />So with module installed a=
s well as libnfnetlink feature I can't tell why it is failing.<br /><br />A=
ny suggestions? Is there a bug in the recipe? Did I do something dumb?

--1iq3CuC0b9lw3Hl3Xw6u--
