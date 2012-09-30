Return-Path: <munoz0raul@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C00C2E01382
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2012 08:58:46 -0700 (PDT)
Received: by lbcs4 with SMTP id s4so2026778lbc.35
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2012 08:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Be6JJkAcG2BTRfkBTf12GwbcwJE70wY8UkQHcR8hWwM=;
	b=RsttNNVeDKjlIxxfkMBF0mrZfMYBMiIl0BSLbZe2LhryZt66wlM5wZrLgjnJ0bYsC1
	LXhTRCiSTqxmV9A5ZztK5/xZRTJJhojVThkyiSgVfePNZWK8to6IvpIOeYwXckSrv9Wq
	7QNpTnQLXLpOupzTGxczSuBLx234Q3ACn11Czmxg9KlMr7m30QztU/+pK6oNJaEjUXCB
	TQX+0UwjdOpE1bphBs9IUhKi/aEXJTGgA7DQUcb7LdInEA3Ooc8ysJmhj7H1cO6BQ9HY
	ZSjdR3KZhqblq3b0t/x795Rz6hN+Za0RbTKnII/sDKhOo7W7EJvOX34h7MzKwZEGV+kn
	OmEA==
MIME-Version: 1.0
Received: by 10.152.104.145 with SMTP id ge17mr9835578lab.34.1349020723068;
	Sun, 30 Sep 2012 08:58:43 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Sun, 30 Sep 2012 08:58:43 -0700 (PDT)
Date: Sun, 30 Sep 2012 12:58:43 -0300
Message-ID: <CANmVirjogLPbktEA2cCEmak7VOUh7PiEd3TWDZC6ZaT20C5W5g@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: yocto@yoctoproject.org
Subject: Kernel Stop in Freeing init memory: 228K
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 30 Sep 2012 15:58:47 -0000
Content-Type: multipart/alternative; boundary=f46d0408d3bbfe3ebc04caed5cec

--f46d0408d3bbfe3ebc04caed5cec
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

*Hello All,*
*
*
*Im using yocto with meta-ti and meta-openembedded.*
*
*
*I have some packeges in my local.conf.*
*
*
*
*
IMAGE_INSTALL_append =3D " \
        tcc \
        curl \
        perl \
        minicom \
        libcap \
        ppp \
        ppp-dialin \
        usbutils \
        mtd-utils \
        iptables \
        openssh \
        dhcp-server \
        dhcp-client \
        perl \
        ddclient \
        kernel-modules \
        udev-extraconf \
        openvpn \
        bridge-utils \
        nodejs \
        connman"
*
*
*In this case all is ok and I have this console:*

...
[    1.874328] VFS: Mounted root (ext4 filesystem) readonly on device 179:2=
.
[    1.888763] devtmpfs: mounted
[    1.892425] Freeing init memory: 228K
INIT: version 2.88 booting
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file
or directory
bootlogd.
[    2.438598] EXT4-fs (mmcblk0p2): warning: mounting unchecked fs, running
e2fsck is recommended
[    2.459899] EXT4-fs (mmcblk0p2): re-mounted. Opts: user_xattr,barrier=3D=
1
Undefined groups:
Skipping /etc/default/volatiles/99_dbus
Configuring network interfaces... [    9.157012]
[    9.157012] CPSW phy found : id is : 0x7c0f1
[    9.163909] PHY 0:01 not found
[    9.168151] ADDRCONF(NETDEV_UP): eth0: link is not ready
done.
Sun Sep 30 15:00:00 UTC 2012
Running postinst /etc/rpm-postinsts/100...
[    9.638946] Bluetooth: Core ver 2.16
[    9.642883] NET: Registered protocol family 31
[    9.647552] Bluetooth: HCI device and connection manager initialized
[    9.654266] Bluetooth: HCI socket layer initialized
[    9.659362] Bluetooth: L2CAP socket layer initialized
[    9.664703] Bluetooth: SCO socket layer initialized
[    9.676666] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    9.722381] NET: Registered protocol family 23
[    9.733215] IrCOMM protocol (Dag Brattli)
[    9.773864] Bluetooth: RFCOMM TTY layer initialized
[    9.779022] Bluetooth: RFCOMM socket layer initialized
[    9.784484] Bluetooth: RFCOMM ver 1.11
INIT: Entering runlevel: 5
chgrp: unknown group messagebus
Starting Connection Manager
Starting OpenBSD Secure Shell server: sshd
  generating ssh RSA key...
  generating ssh ECDSA key...
  generating ssh DSA key...
done.
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.

Yocto (Built by Poky 7.0.1) 1.2.1 beaglebone ttyO0


*My problem is that when I install some packages like cloud9.*
*
*
IMAGE_INSTALL_append =3D " \
        tcc \
        curl \
        perl \
        minicom \
        libcap \
        ppp \
        ppp-dialin \
        usbutils \
        mtd-utils \
        iptables \
        openssh \
        dhcp-server \
        dhcp-client \
        perl \
        ddclient \
        kernel-modules \
        udev-extraconf \
        openvpn \
        bridge-utils \
        nodejs \
        *cloud9 \*
        connman"
*
*
* and recompile my image my console stop at mesange:*
*
*
*[    1.892425] Freeing init memory: 228K*
*
*
*And I get this console:*

......
[    1.746856] Waiting for root device /dev/mmcblk0p2...
[    1.791595] mmc0: host does not support reading read-only switch.
assuming write-enable.
[    1.802612] mmc0: new high speed SDHC card at address 1234
[    1.809020] mmcblk0: mmc0:1234 SA04G 3.63 GiB
[    1.816467]  mmcblk0: p1 p2
[    1.866363] EXT4-fs (mmcblk0p2): mounted filesystem without journal.
Opts: (null)
[    1.874359] VFS: Mounted root (ext4 filesystem) readonly on device 179:2=
.
[    1.889068] devtmpfs: mounted
[    1.892730] Freeing init memory: 228K

* This happen to me when I add some other packeges to!*
*
*
*Some One can Help me to solve this?*
*
*
*Thanks FOr all help!*
*
*


--=20
*Raul Rosetto Mu=F1oz*

--f46d0408d3bbfe3ebc04caed5cec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<b>Hello All,</b><div><b><br></b></div><div><b>Im using yocto with meta-ti =
and=A0meta-openembedded.</b></div><div><b><br></b></div><div><b>I have some=
 packeges in my local.conf.</b></div><div><b><br></b></div><div><b><br></b>=
</div>
<div><div><font face=3D"courier new, monospace">IMAGE_INSTALL_append =3D &q=
uot; \</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =
=A0 tcc \</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =
=A0 =A0 curl \</font></div>
<div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 perl \</font></d=
iv><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 minicom \</fo=
nt></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 libcap =
\</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 pp=
p \</font></div>
<div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 ppp-dialin \</fo=
nt></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 usbutil=
s \</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 =
mtd-utils \</font></div><div>
<font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 iptables \</font></di=
v><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 openssh \</fon=
t></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 dhcp-ser=
ver \</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =
=A0 dhcp-client \</font></div>
<div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 perl \</font></d=
iv><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 ddclient \</f=
ont></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 kernel=
-modules \</font></div><div>
<font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 udev-extraconf \</fon=
t></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 openvpn =
\</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 br=
idge-utils \</font></div><div>
<font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 nodejs \</font></div>=
<div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 connman&quot;</f=
ont></div></div><div><b><br></b></div><div><b>In this case all is ok and I =
have this console:</b></div>
<div><br></div><div><font face=3D"courier new, monospace">...</font></div><=
div><font face=3D"courier new, monospace">[ =A0 =A01.874328] VFS: Mounted r=
oot (ext4 filesystem) readonly on device 179:2.</font></div><div><div><font=
 face=3D"courier new, monospace">[ =A0 =A01.888763] devtmpfs: mounted</font=
></div>
<div><font face=3D"courier new, monospace">[ =A0 =A01.892425] Freeing init =
memory: 228K</font></div><div><font face=3D"courier new, monospace">INIT: v=
ersion 2.88 booting</font></div><div><font face=3D"courier new, monospace">=
Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such file=
 or directory</font></div>
<div><font face=3D"courier new, monospace">bootlogd.</font></div><div><font=
 face=3D"courier new, monospace">[ =A0 =A02.438598] EXT4-fs (mmcblk0p2): wa=
rning: mounting unchecked fs, running e2fsck is recommended</font></div><di=
v><font face=3D"courier new, monospace">[ =A0 =A02.459899] EXT4-fs (mmcblk0=
p2): re-mounted. Opts: user_xattr,barrier=3D1</font></div>
<div><font face=3D"courier new, monospace">Undefined groups:</font></div><d=
iv><font face=3D"courier new, monospace">Skipping /etc/default/volatiles/99=
_dbus</font></div><div><font face=3D"courier new, monospace">Configuring ne=
twork interfaces... [ =A0 =A09.157012]=A0</font></div>
<div><font face=3D"courier new, monospace">[ =A0 =A09.157012] CPSW phy foun=
d : id is : 0x7c0f1</font></div><div><font face=3D"courier new, monospace">=
[ =A0 =A09.163909] PHY 0:01 not found</font></div><div><font face=3D"courie=
r new, monospace">[ =A0 =A09.168151] ADDRCONF(NETDEV_UP): eth0: link is not=
 ready</font></div>
<div><font face=3D"courier new, monospace">done.</font></div><div><font fac=
e=3D"courier new, monospace">Sun Sep 30 15:00:00 UTC 2012</font></div><div>=
<font face=3D"courier new, monospace">Running postinst /etc/rpm-postinsts/1=
00...</font></div>
<div><font face=3D"courier new, monospace">[ =A0 =A09.638946] Bluetooth: Co=
re ver 2.16</font></div><div><font face=3D"courier new, monospace">[ =A0 =
=A09.642883] NET: Registered protocol family 31</font></div><div><font face=
=3D"courier new, monospace">[ =A0 =A09.647552] Bluetooth: HCI device and co=
nnection manager initialized</font></div>
<div><font face=3D"courier new, monospace">[ =A0 =A09.654266] Bluetooth: HC=
I socket layer initialized</font></div><div><font face=3D"courier new, mono=
space">[ =A0 =A09.659362] Bluetooth: L2CAP socket layer initialized</font><=
/div><div>
<font face=3D"courier new, monospace">[ =A0 =A09.664703] Bluetooth: SCO soc=
ket layer initialized</font></div><div><font face=3D"courier new, monospace=
">[ =A0 =A09.676666] Bluetooth: HIDP (Human Interface Emulation) ver 1.2</f=
ont></div>
<div><font face=3D"courier new, monospace">[ =A0 =A09.722381] NET: Register=
ed protocol family 23</font></div><div><font face=3D"courier new, monospace=
">[ =A0 =A09.733215] IrCOMM protocol (Dag Brattli)</font></div><div><font f=
ace=3D"courier new, monospace">[ =A0 =A09.773864] Bluetooth: RFCOMM TTY lay=
er initialized</font></div>
<div><font face=3D"courier new, monospace">[ =A0 =A09.779022] Bluetooth: RF=
COMM socket layer initialized</font></div><div><font face=3D"courier new, m=
onospace">[ =A0 =A09.784484] Bluetooth: RFCOMM ver 1.11</font></div><div><f=
ont face=3D"courier new, monospace">INIT: Entering runlevel: 5</font></div>
<div><font face=3D"courier new, monospace">chgrp: unknown group messagebus<=
/font></div><div><font face=3D"courier new, monospace">Starting Connection =
Manager</font></div><div><font face=3D"courier new, monospace">Starting Ope=
nBSD Secure Shell server: sshd</font></div>
<div><font face=3D"courier new, monospace">=A0 generating ssh RSA key...</f=
ont></div><div><font face=3D"courier new, monospace">=A0 generating ssh ECD=
SA key...</font></div><div><font face=3D"courier new, monospace">=A0 genera=
ting ssh DSA key...</font></div>
<div><font face=3D"courier new, monospace">done.</font></div><div><font fac=
e=3D"courier new, monospace">Starting syslogd/klogd: done</font></div><div>=
<font face=3D"courier new, monospace">Stopping Bootlog daemon: bootlogd.</f=
ont></div>
<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace">Yocto (Built by Poky 7.0.1) 1.2.1 beaglebone tt=
yO0</font></div></div><div><br></div><div><br></div><div><b>My problem is t=
hat when I install some packages like cloud9.</b></div>
<div><b><br></b></div><div><font face=3D"courier new, monospace">IMAGE_INST=
ALL_append =3D &quot; \</font></div><div><font face=3D"courier new, monospa=
ce">=A0 =A0 =A0 =A0 tcc \</font></div><div><font face=3D"courier new, monos=
pace">=A0 =A0 =A0 =A0 curl \</font></div>
<div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 perl \</font></d=
iv><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 minicom \</fo=
nt></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 libcap =
\</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 pp=
p \</font></div>
<div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 ppp-dialin \</fo=
nt></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 usbutil=
s \</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 =
mtd-utils \</font></div><div>
<font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 iptables \</font></di=
v><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 openssh \</fon=
t></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 dhcp-ser=
ver \</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =
=A0 dhcp-client \</font></div>
<div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 perl \</font></d=
iv><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 ddclient \</f=
ont></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 kernel=
-modules \</font></div><div>
<font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 udev-extraconf \</fon=
t></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 openvpn =
\</font></div><div><font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 br=
idge-utils \</font></div><div>
<font face=3D"courier new, monospace">=A0 =A0 =A0 =A0 nodejs \</font></div>=
<div><font color=3D"#ff0000"><font face=3D"courier new, monospace">=A0 =A0 =
=A0 =A0=A0</font><b>cloud9 \</b></font></div><div><span style=3D"font-famil=
y:&#39;courier new&#39;,monospace">=A0 =A0 =A0 =A0 connman&quot;</span></di=
v>
<div><b><br></b></div><div><b>=A0and recompile my image my console stop at=
=A0mesange:</b></div><div><b><br></b></div><div><b><font color=3D"#ff0000">=
[ =A0 =A01.892425] Freeing init memory: 228K</font></b></div><div><b><br></=
b></div>
<div><b>And I get this console:</b></div><div><br></div><div><font face=3D"=
courier new, monospace">......</font></div><div><div><font face=3D"courier =
new, monospace">[ =A0 =A01.746856] Waiting for root device /dev/mmcblk0p2..=
.</font></div>
<div><font face=3D"courier new, monospace">[ =A0 =A01.791595] mmc0: host do=
es not support reading read-only switch. assuming write-enable.</font></div=
><div><font face=3D"courier new, monospace">[ =A0 =A01.802612] mmc0: new hi=
gh speed SDHC card at address 1234</font></div>
<div><font face=3D"courier new, monospace">[ =A0 =A01.809020] mmcblk0: mmc0=
:1234 SA04G 3.63 GiB=A0</font></div><div><font face=3D"courier new, monospa=
ce">[ =A0 =A01.816467] =A0mmcblk0: p1 p2</font></div><div><font face=3D"cou=
rier new, monospace">[ =A0 =A01.866363] EXT4-fs (mmcblk0p2): mounted filesy=
stem without journal. Opts: (null)</font></div>
<div><font face=3D"courier new, monospace">[ =A0 =A01.874359] VFS: Mounted =
root (ext4 filesystem) readonly on device 179:2.</font></div><div><font fac=
e=3D"courier new, monospace">[ =A0 =A01.889068] devtmpfs: mounted</font></d=
iv><div>
<font face=3D"courier new, monospace">[ =A0 =A01.892730] Freeing init memor=
y: 228K</font></div><div><font face=3D"courier new, monospace"><br></font><=
/div><div><div><b>=A0This happen to me when I add some other packeges to!</=
b></div>
<div><b><br></b></div><div><b>Some One can Help me to solve this?</b></div>=
<div><b><br></b></div><div><b>Thanks FOr all help!</b></div></div></div><di=
v><b><br></b></div><div><br></div><div><br>-- <br><b>Raul Rosetto Mu=F1oz</=
b><br>

</div>

--f46d0408d3bbfe3ebc04caed5cec--
