Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D22ECAAD5
	for <webhook@archiver.kernel.org>; Mon,  5 Sep 2022 18:15:54 +0000 (UTC)
Subject: Help required for the Bluetooth USB dongle with yocto Dunfell
 #dunfell
To: yocto@lists.yoctoproject.org
From: "Mahendra Sondagar" <mahendrasondagar08@gmail.com>
X-Originating-Location: Surat, Gujarat, IN (103.240.78.172)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 05 Sep 2022 11:15:46 -0700
Message-ID: <nywh.1662401746088325232.vNao@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="KDhf0GSTnfQ26EZxynF6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Sep 2022 18:15:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57980

--KDhf0GSTnfQ26EZxynF6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.. There

Hope all are doing well

I'm playing with the TP-Link Bluetooth dongle
For the instance, i have enabled all necessary drivers from the menuconfig
Not only that, but i have also manually added the firmware as per the few s=
uggestions in rootfs of the yocto images

Those firmware are *rtl8761b_fw.bin* and *rtl8761b_config.bin*
During the boot, i can see that these drivers are loaded along with the hci=
0

Now the main issue is, *hciconfig hci0 up* is not working
The error message that, I'm getting is *Bluetooth: Unable to create CMAC cr=
ypto context*

here are the brief Bluetooth logs

---------------------------------------------------------------------------=
-----------
[=C2=A0=C2=A0=C2=A0 0.146896] Bluetooth: Core ver 2.22
[=C2=A0=C2=A0=C2=A0 0.147022] Bluetooth: HCI device and connection manager =
initialized
[=C2=A0=C2=A0=C2=A0 0.147053] Bluetooth: HCI socket layer initialized
[=C2=A0=C2=A0=C2=A0 0.147075] Bluetooth: L2CAP socket layer initialized
[=C2=A0=C2=A0=C2=A0 0.147135] Bluetooth: SCO socket layer initialized
[=C2=A0=C2=A0=C2=A0 1.846271] Bluetooth: RFCOMM socket layer initialized
[=C2=A0=C2=A0=C2=A0 1.846342] Bluetooth: RFCOMM ver 1.11
[=C2=A0=C2=A0=C2=A0 1.846375] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[=C2=A0=C2=A0=C2=A0 1.846390] Bluetooth: BNEP filters: multicast
[=C2=A0=C2=A0=C2=A0 1.846414] Bluetooth: BNEP socket layer initialized
[=C2=A0=C2=A0=C2=A0 3.836720] Bluetooth: Starting self testing
[=C2=A0=C2=A0=C2=A0 3.923010] Bluetooth: ECDH test passed in 81376 usecs
[=C2=A0=C2=A0=C2=A0 3.929313] Bluetooth: Unable to create CMAC crypto conte=
xt
[=C2=A0=C2=A0=C2=A0 3.933496] Bluetooth: Finished self testing
[=C2=A0=C2=A0=C2=A0 5.081021] Bluetooth: hci0: RTL: examining hci_ver=3D0a =
hci_rev=3D000b lmp_ver=3D0a lmp_subver=3D8761
[=C2=A0=C2=A0=C2=A0 5.091216] Bluetooth: hci0: RTL: rom_version status=3D0 =
version=3D1
[=C2=A0=C2=A0=C2=A0 5.096024] Bluetooth: hci0: RTL: loading rtl_bt/rtl8761b=
_fw.bin
[=C2=A0=C2=A0=C2=A0 5.108225] Bluetooth: hci0: RTL: loading rtl_bt/rtl8761b=
_config.bin
[=C2=A0=C2=A0=C2=A0 5.118750] Bluetooth: hci0: RTL: cfg_sz 25, total sz 116=
89
[=C2=A0=C2=A0=C2=A0 5.248253] Bluetooth: hci0: RTL: fw version 0x097bec43
[=C2=A0=C2=A0 74.094149] Bluetooth: Unable to create CMAC crypto context

-----------------------------------------------------------

Remember, i have already installed required bluetooth tools with the image

Such as bluez & dbus

------------------------------------------------------------
IMAGE_INSTALL_append =3D " \
dbus \
bluez5 \
packagegroup-tools-bluetooth \
expat \
"
DISTRO_FEATURES_append =3D " \
bluetooth \
"
-----------------------------------------------------------------

Can any one help me here?

All suggestions are welcome:)

Thanks
Mahendra (MS)

--KDhf0GSTnfQ26EZxynF6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi.. There</p>
<p>Hope all are doing well <br /><br />I'm playing with the TP-Link Bluetoo=
th dongle <br />For the instance, i have enabled all necessary drivers from=
 the menuconfig <br />Not only that, but i have also manually added the fir=
mware as per the few suggestions in rootfs of the yocto images&nbsp;<br /><=
br /><br />Those firmware are <strong>rtl8761b_fw.bin</strong> and <strong>=
rtl8761b_config.bin</strong><br />During the boot, i can see that these dri=
vers are loaded along with the hci0<br /><br />Now the main issue is, <stro=
ng>hciconfig hci0 up</strong> is not working <br />The error message that, =
I'm getting is <strong>Bluetooth: Unable to create CMAC crypto context</str=
ong><br /><br />here are the brief Bluetooth logs <br /><br />-------------=
-------------------------------------------------------------------------<b=
r />[&nbsp;&nbsp;&nbsp; 0.146896] Bluetooth: Core ver 2.22<br />[&nbsp;&nbs=
p;&nbsp; 0.147022] Bluetooth: HCI device and connection manager initialized=
<br />[&nbsp;&nbsp;&nbsp; 0.147053] Bluetooth: HCI socket layer initialized=
<br />[&nbsp;&nbsp;&nbsp; 0.147075] Bluetooth: L2CAP socket layer initializ=
ed<br />[&nbsp;&nbsp;&nbsp; 0.147135] Bluetooth: SCO socket layer initializ=
ed<br />[&nbsp;&nbsp;&nbsp; 1.846271] Bluetooth: RFCOMM socket layer initia=
lized<br />[&nbsp;&nbsp;&nbsp; 1.846342] Bluetooth: RFCOMM ver 1.11<br />[&=
nbsp;&nbsp;&nbsp; 1.846375] Bluetooth: BNEP (Ethernet Emulation) ver 1.3<br=
 />[&nbsp;&nbsp;&nbsp; 1.846390] Bluetooth: BNEP filters: multicast<br />[&=
nbsp;&nbsp;&nbsp; 1.846414] Bluetooth: BNEP socket layer initialized<br />[=
&nbsp;&nbsp;&nbsp; 3.836720] Bluetooth: Starting self testing<br />[&nbsp;&=
nbsp;&nbsp; 3.923010] Bluetooth: ECDH test passed in 81376 usecs<br />[&nbs=
p;&nbsp;&nbsp; 3.929313] Bluetooth: Unable to create CMAC crypto context<br=
 />[&nbsp;&nbsp;&nbsp; 3.933496] Bluetooth: Finished self testing<br />[&nb=
sp;&nbsp;&nbsp; 5.081021] Bluetooth: hci0: RTL: examining hci_ver=3D0a hci_=
rev=3D000b lmp_ver=3D0a lmp_subver=3D8761<br />[&nbsp;&nbsp;&nbsp; 5.091216=
] Bluetooth: hci0: RTL: rom_version status=3D0 version=3D1<br />[&nbsp;&nbs=
p;&nbsp; 5.096024] Bluetooth: hci0: RTL: loading rtl_bt/rtl8761b_fw.bin<br =
/>[&nbsp;&nbsp;&nbsp; 5.108225] Bluetooth: hci0: RTL: loading rtl_bt/rtl876=
1b_config.bin<br />[&nbsp;&nbsp;&nbsp; 5.118750] Bluetooth: hci0: RTL: cfg_=
sz 25, total sz 11689<br />[&nbsp;&nbsp;&nbsp; 5.248253] Bluetooth: hci0: R=
TL: fw version 0x097bec43<br />[&nbsp;&nbsp; 74.094149] Bluetooth: Unable t=
o create CMAC crypto context<br /><br />-----------------------------------=
------------------------<br /><br />Remember, i have already installed requ=
ired bluetooth tools with the image <br /><br />Such as bluez &amp; dbus <b=
r /><br />------------------------------------------------------------<br /=
>IMAGE_INSTALL_append =3D " \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; dbus \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bluez5 \<br />&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; packagegroup-tools-bluetooth \<br /=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; expat \<br />"<br />DISTRO_FEAT=
URES_append =3D " \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bluetooth \<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<br />---------------------------=
--------------------------------------<br /><span class=3D"co2"></span></p>
<p><br />Can any one help me here?<br /><br />All suggestions are welcome:)=
<br /><br />Thanks <br />Mahendra (MS)</p>

--KDhf0GSTnfQ26EZxynF6--

