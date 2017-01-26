Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03E23E004E5; Thu, 26 Jan 2017 06:22:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.17.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F23C4E003E1
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 06:22:14 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue102
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0MGzR4-1cjSFy31kY-00DkkO
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 15:22:12 +0100
From: <colin.helliwell@ln-systems.com>
To: "'Yocto discussion list'" <yocto@yoctoproject.org>
Date: Thu, 26 Jan 2017 14:22:11 -0000
Organization: LN Systems Limited
Message-ID: <123e01d277df$9629cd60$c27d6820$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdJ335Sp4czwVRDSRxmTf03q7Fq93g==
X-Provags-ID: V03:K0:zYXBkSS67FnYvsIWhL04N34PtC9U++mQ/4I5WJ4qp/J+PRp0kGN
	n4DoTNx1/w0okusiKWguzyW6eGbmjQA1K5BR5LDSMU4+zbDFA3xb6HqRoTpAjqn7nABwnDV
	2hMWZORMvTwOfNEJExPmJKNHxu5ApnkTGRvGhd5ap/Ofg5RU1mhN3mGEBSmRpViceI66rT3
	hmrnfXG0pjNzLEwRi0PCw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:4JFEX7qSZ/U=:/kiDZnmSMXDlM2RusxCC2b
	4uPzYfsZupcBOv3d2Sa9dvFneNuPENPTvii0Q46FWYq3gXuAw2tbpLuKl/yR+lhzLXgHZ+ISY
	Ei3RQ0w7q1plgGV2f/8pueYmAeHRCIIYkbBy1+uJlz57XQpe1ZaSSblWW9tYzXaMVaNzr7KB/
	VlhV9EGSQSCIdYs43KahuKdVS+xM+YsAAPBPtPIfjifEaStMGxCryC9LuH8I+9M8qpX0Np5eC
	0lL8CBsrS/N6061vievcBe2V2CYs/10tbubxz/XjYG433RFHu2Td4Wfc5eYROH0SdHsbLMf+9
	IIqVPYD9RNvQDEXLYzyoo6s2IcGiHkrpTH5jHqDhm82nYe6/zCM0KCHigBF5IgXq2+6kJmOU6
	yn4Lp1Uv8L3Ya3LxpQJM9WEh9xYrrm1srecq5Wa0L6xnl9uuszSFyz4n+3zPhS/B83boxduIB
	nZAN9rA1XB3hzHIEYqv/6W01IhfeivRusJPiYN26w4awGKevYeih3F2DLZruBGvitauJncL5v
	5SNHyfnJWNqJLfnbJmaCUcy7KXapmBoK0VrIyhvZm5/kDi6XoPc3lVOfEl9uG3aJk4IARbW39
	XzKXwWrrWDWciMKnZWRAxA9aBaCHKBJ9NsEEmOwZ5g8dlBQ73JPRGkmmkMhU0Jxnjh5T/ZHA2
	T05F1Duuxd8D90zxYgXvN8b/zxoB8WSbqLUtJlVojTpwIYx/63Wbm8zSp0+njiawhk0LzINjd
	Box5c8MOI8/3gbqR
Subject: QEMU with host USB serial
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Jan 2017 14:22:18 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_123F_01D277DF.962C6570"
Content-Language: en-gb

------=_NextPart_000_123F_01D277DF.962C6570
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm investigating using qemu to give us some test capability, for which we
need to use the host's serial devices.

I have a qemu build which boots up fine; I'm trying to give it access to the
host USB. To keep it simple(r), I've seen mention of FTDI's device
(0403:6001) in the qemu source so that's what I've plugged in. I've done a
'chmod me:me' on the relevant /dev/bus/usb/xxx/yyy node.

 

I can't though figure out what options I should be passing to runqemu to
hook this in. I daresay I may need bootparams too, but am first just trying
to get past 'qemuparams'.

As a starting point, I'm trying things like

    runqemu qemux86-64 nographic qemuparams="-usbdevice serial"

 

which reports

 

Continuing with the following parameters:

KERNEL:
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-
64/bzImage-qemux86-64.bin]

ROOTFS:
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-
64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4]

FSTYPE: [ext4]

Setting up tap interface under sudo

Acquiring lockfile for tap0...

-net nic,model=virtio -net tap,vlan=0,ifname=tap0,script=no,downscript=no
-cpu core2duo -drive
file=/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemu
x86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=virtio,forma
t=raw -show-cursor -usb -usbdevice wacom-tablet -vga vmware   -nographic
-usbdevice serial -m 256

Running qemu-system-x86_64...

/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/sysroots/x86_64-linux/u
sr/bin/qemu-system-x86_64 -kernel
/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-6
4/bzImage-qemux86-64.bin -net nic,model=virtio -net
tap,vlan=0,ifname=tap0,script=no,downscript=no -cpu core2duo -drive
file=/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemu
x86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=virtio,forma
t=raw -show-cursor -usb -usbdevice wacom-tablet -vga vmware -no-reboot
-nographic -usbdevice serial -m 256 -serial mon:stdio -serial null --append
"vga=0 uvesafb.mode_option=640x480-32 root=/dev/vda rw mem=256M
ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1 rootfstype=ext4
console=ttyS0"

qemu-system-x86_64: -usbdevice serial: character device specification needed

qemu-system-x86_64: -usbdevice serial: Failed to create USB device
'usb-serial'

qemu: could not add USB device 'serial'

Set 'tap0' nonpersistent

Releasing lockfile of preconfigured tap device 'tap0'

 

Or

   runqemu qemux86-64 nographic qemuparams="-device
usb-serial,vendorid=0403,productid=6001"

 

which reports

 

Please use simplified serial or kvm options instead

Continuing with the following parameters:

KERNEL:
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-
64/bzImage-qemux86-64.bin]

ROOTFS:
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-
64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4]

FSTYPE: [ext4]

Setting up tap interface under sudo

Acquiring lockfile for tap0...

-net nic,model=virtio -net tap,vlan=0,ifname=tap0,script=no,downscript=no
-cpu core2duo -drive
file=/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemu
x86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=virtio,forma
t=raw -show-cursor -usb -usbdevice wacom-tablet -vga vmware   -nographic
-device usb-serial,vendorid=0403,productid=6001 -m 256

Running qemu-system-x86_64...

/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/sysroots/x86_64-linux/u
sr/bin/qemu-system-x86_64 -kernel
/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux86-6
4/bzImage-qemux86-64.bin -net nic,model=virtio -net
tap,vlan=0,ifname=tap0,script=no,downscript=no -cpu core2duo -drive
file=/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemu
x86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=virtio,forma
t=raw -show-cursor -usb -usbdevice wacom-tablet -vga vmware -no-reboot
-nographic -device usb-serial,vendorid=0403,productid=6001 -m 256 -serial
null --append "vga=0 uvesafb.mode_option=640x480-32 root=/dev/vda rw
mem=256M ip=192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=1
rootfstype=ext4 console=ttyS0"

QEMU 2.4.0 monitor - type 'help' for more information

(qemu) usb_device_add 1 'wacom-tablet'

usb_device_add success 'wacom-tablet'

qemu-system-x86_64: -device usb-serial,vendorid=0403,productid=6001:
Property '.vendorid' not found

Set 'tap0' nonpersistent

Releasing lockfile of preconfigured tap device 'tap0'

 

 

Can someone clue me in on the correct syntax please!

Thanks

 


------=_NextPart_000_123F_01D277DF.962C6570
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-GB =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>I&#8217;m investigating using qemu to give us some =
test capability, for which we need to use the host&#8217;s serial =
devices.<o:p></o:p></p><p class=3DMsoNormal>I have a qemu build which =
boots up fine; I&#8217;m trying to give it access to the host USB. To =
keep it simple(r), I&#8217;ve seen mention of FTDI&#8217;s device =
(0403:6001) in the qemu source so that&#8217;s what I&#8217;ve plugged =
in. I&#8217;ve done a &#8216;chmod me:me&#8217; on the relevant =
/dev/bus/usb/xxx/yyy node.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I =
can&#8217;t though figure out what options I should be passing to =
runqemu to hook this in. I daresay I may need bootparams too, but am =
first just trying to get past &#8216;qemuparams&#8217;.<o:p></o:p></p><p =
class=3DMsoNormal>As a starting point, I&#8217;m trying things =
like<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp;&nbsp; runqemu =
qemux86-64 nographic qemuparams=3D&quot;-usbdevice =
serial&quot;<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>which reports<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Continuing =
with the following parameters:<o:p></o:p></p><p =
class=3DMsoNormal>KERNEL: =
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux=
86-64/bzImage-qemux86-64.bin]<o:p></o:p></p><p class=3DMsoNormal>ROOTFS: =
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux=
86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4]<o:p></o:p></=
p><p class=3DMsoNormal>FSTYPE: [ext4]<o:p></o:p></p><p =
class=3DMsoNormal>Setting up tap interface under sudo<o:p></o:p></p><p =
class=3DMsoNormal>Acquiring lockfile for tap0...<o:p></o:p></p><p =
class=3DMsoNormal>-net nic,model=3Dvirtio -net =
tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu core2duo =
-drive =
file=3D/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images=
/qemux86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=3Dvi=
rtio,format=3Draw -show-cursor -usb -usbdevice wacom-tablet -vga =
vmware&nbsp;&nbsp; -nographic -usbdevice serial -m 256<o:p></o:p></p><p =
class=3DMsoNormal>Running qemu-system-x86_64...<o:p></o:p></p><p =
class=3DMsoNormal>/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/sy=
sroots/x86_64-linux/usr/bin/qemu-system-x86_64 -kernel =
/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux8=
6-64/bzImage-qemux86-64.bin -net nic,model=3Dvirtio -net =
tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu core2duo =
-drive =
file=3D/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images=
/qemux86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=3Dvi=
rtio,format=3Draw -show-cursor -usb -usbdevice wacom-tablet -vga vmware =
-no-reboot -nographic -usbdevice serial -m 256 -serial mon:stdio -serial =
null --append &quot;vga=3D0 uvesafb.mode_option=3D640x480-32 =
root=3D/dev/vda rw mem=3D256M =
ip=3D192.168.7.2::192.168.7.1:255.255.255.0 oprofile.timer=3D1 =
rootfstype=3Dext4 console=3DttyS0&quot;<o:p></o:p></p><p =
class=3DMsoNormal>qemu-system-x86_64: -usbdevice serial: character =
device specification needed<o:p></o:p></p><p =
class=3DMsoNormal>qemu-system-x86_64: -usbdevice serial: Failed to =
create USB device 'usb-serial'<o:p></o:p></p><p class=3DMsoNormal>qemu: =
could not add USB device 'serial'<o:p></o:p></p><p class=3DMsoNormal>Set =
'tap0' nonpersistent<o:p></o:p></p><p class=3DMsoNormal>Releasing =
lockfile of preconfigured tap device 'tap0'<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Or<o:p></o:p></p><p class=3DMsoNormal>&nbsp;&nbsp; =
runqemu qemux86-64 nographic qemuparams=3D&quot;-device =
usb-serial,vendorid=3D0403,productid=3D6001&quot;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>which =
reports<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Please use simplified serial or kvm options =
instead<o:p></o:p></p><p class=3DMsoNormal>Continuing with the following =
parameters:<o:p></o:p></p><p class=3DMsoNormal>KERNEL: =
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux=
86-64/bzImage-qemux86-64.bin]<o:p></o:p></p><p class=3DMsoNormal>ROOTFS: =
[/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux=
86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4]<o:p></o:p></=
p><p class=3DMsoNormal>FSTYPE: [ext4]<o:p></o:p></p><p =
class=3DMsoNormal>Setting up tap interface under sudo<o:p></o:p></p><p =
class=3DMsoNormal>Acquiring lockfile for tap0...<o:p></o:p></p><p =
class=3DMsoNormal>-net nic,model=3Dvirtio -net =
tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu core2duo =
-drive =
file=3D/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images=
/qemux86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=3Dvi=
rtio,format=3Draw -show-cursor -usb -usbdevice wacom-tablet -vga =
vmware&nbsp;&nbsp; -nographic -device =
usb-serial,vendorid=3D0403,productid=3D6001 -m 256<o:p></o:p></p><p =
class=3DMsoNormal>Running qemu-system-x86_64...<o:p></o:p></p><p =
class=3DMsoNormal>/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/sy=
sroots/x86_64-linux/usr/bin/qemu-system-x86_64 -kernel =
/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images/qemux8=
6-64/bzImage-qemux86-64.bin -net nic,model=3Dvirtio -net =
tap,vlan=3D0,ifname=3Dtap0,script=3Dno,downscript=3Dno -cpu core2duo =
-drive =
file=3D/home/colin/100051-karo/fsl-community-bsp/buildq/tmp/deploy/images=
/qemux86-64/core-image-qemu-qemux86-64-20170124145819.rootfs.ext4,if=3Dvi=
rtio,format=3Draw -show-cursor -usb -usbdevice wacom-tablet -vga vmware =
-no-reboot -nographic -device =
usb-serial,vendorid=3D0403,productid=3D6001 -m 256 -serial null --append =
&quot;vga=3D0 uvesafb.mode_option=3D640x480-32 root=3D/dev/vda rw =
mem=3D256M ip=3D192.168.7.2::192.168.7.1:255.255.255.0 =
oprofile.timer=3D1 rootfstype=3Dext4 =
console=3DttyS0&quot;<o:p></o:p></p><p class=3DMsoNormal>QEMU 2.4.0 =
monitor - type 'help' for more information<o:p></o:p></p><p =
class=3DMsoNormal>(qemu) usb_device_add 1 =
'wacom-tablet'<o:p></o:p></p><p class=3DMsoNormal>usb_device_add success =
'wacom-tablet'<o:p></o:p></p><p class=3DMsoNormal>qemu-system-x86_64: =
-device usb-serial,vendorid=3D0403,productid=3D6001: Property =
'.vendorid' not found<o:p></o:p></p><p class=3DMsoNormal>Set 'tap0' =
nonpersistent<o:p></o:p></p><p class=3DMsoNormal>Releasing lockfile of =
preconfigured tap device 'tap0'<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Can someone =
clue me in on the correct syntax please!<o:p></o:p></p><p =
class=3DMsoNormal>Thanks<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_123F_01D277DF.962C6570--
