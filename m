Return-Path: <adm.dizon@pciltd.com.sg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92447E007AB; Thu,  5 Feb 2015 17:36:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from webmail.pciltd.com.sg (webmail.pciltd.com.sg [119.73.250.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C34A9E00753
	for <yocto@yoctoproject.org>; Thu,  5 Feb 2015 17:35:55 -0800 (PST)
Received: from PCISGEX.pciltd.com.sg ([192.168.0.147]) by
	PCISGEX.pciltd.com.sg ([192.168.0.147]) with mapi id 14.03.0123.003;
	Fri, 6 Feb 2015 09:35:53 +0800
From: "Alvin D.M. DIZON" <adm.dizon@pciltd.com.sg>
To: =?iso-8859-1?Q?Kevyn-Alexandre_Par=E9?= <kapare@rogue-research.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Confused with adding drivers to kernel via bitbake -c
	menuconfig
Thread-Index: AdBBBp72pUpF/D8hRIC++Qu4bx8STAAGzwsAACKqnvo=
Date: Fri, 6 Feb 2015 01:35:51 +0000
Message-ID: <46557CEF4ABDB54B92C59390D2741FD1BD8C70@PCISGEX.pciltd.com.sg>
References: <46557CEF4ABDB54B92C59390D2741FD1BD8C09@PCISGEX.pciltd.com.sg>,
	<CACgAsMev7C2tTpHTYdQEr=Lb5mXJsi6nAHuJd-fR-4bqkreU2A@mail.gmail.com>
In-Reply-To: <CACgAsMev7C2tTpHTYdQEr=Lb5mXJsi6nAHuJd-fR-4bqkreU2A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [116.50.213.202]
MIME-Version: 1.0
Subject: Re: Confused with adding drivers to kernel via bitbake -c menuconfig
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
X-List-Received-Date: Fri, 06 Feb 2015 01:36:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Kevyn,=0A=
=0A=
Thanks for your help. Do I still have to run bitbake -c cleansstate after c=
reating the configuration fragment? Or do I go straight to bitbake linux-im=
x or bitbake fsl-image-x11?=0A=
=0A=
Thanks=0A=
________________________________________=0A=
From: Kevyn-Alexandre Par=E9 [kapare@rogue-research.com]=0A=
Sent: Friday, February 06, 2015 12:58 AM=0A=
To: Alvin D.M. DIZON=0A=
Subject: Re: [yocto] Confused with adding drivers to kernel via bitbake -c =
menuconfig=0A=
=0A=
Hi Alvin,=0A=
=0A=
On Thu, Feb 5, 2015 at 12:43 AM, Alvin D.M. DIZON=0A=
<adm.dizon@pciltd.com.sg> wrote:=0A=
> Hello,=0A=
>=0A=
> I would like to the generic USB bluetooth driver "btusb" to my i.MX6Q SAB=
RE SD, so that my USB Bluetooth dongle(Cambridge Silicon Radio). Upon readi=
ng https://community.freescale.com/docs/DOC-100847 I enabled the Bluetooth =
subsystem support, RFCOMM, BNEP, and HIDP, as well as the HCI USB driver. I=
 saved the .config file and copied it to the directory where my Linux recip=
e is (linux-imx_3.10.17.bb). I then renamed my .config file into defconfig,=
 made a new folder called "files" and placed the defconfig in it. I also ma=
de a .bbappend file that contained=0A=
=0A=
I personally prefer this approach:=0A=
http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html#changing-=
the-configuration=0A=
second part with the .cfg=0A=
=0A=
Doing this you can then validate it:=0A=
bitbake linux-imx -c configure -f=0A=
=0A=
cat tmp/work/<PATH>/linux-imx/<VERSION>/build/.config | grep CONFIG_BT=0A=
=0A=
>=0A=
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"=0A=
> SRC_URI +=3D "file://defconfig"=0A=
>=0A=
> I then ran "bitbake -c cleansstate linux-imx", after that I ran "bitbake =
fsl-image-x11". I flashed the resulting .sdcard file to an SD card, booted =
up my board, but found no trace of btusb. I tried doing "bitbake -f -c comp=
ile linux-imx" and then "bitbake -f -c deploy linux-imx", and copied the re=
sulting uImage to my SD card's /media/Boot folder, but still no trace of bt=
usb. I checked the tar archive for the kernel modules found in the /tmp/dep=
loy/images/imx6qsabresd folder, and found two files called modules.order an=
d modules.builtin, the btusb driver is listed in the modules.builtin file, =
but not mentioned in the modules.order file, I have also tried compiling th=
e driver as module, and then ran the same commands as listed in the said li=
nk, but could not find the module. What am I doing wrong here? Any help wil=
l be will be appreciated, since I am new to Linux and the Yocto Project.=0A=
>=0A=
=0A=
Before putting it on your SD you could validate that btusb is in=0A=
tmp/work/<PATH>/linux-imx/<VERSION>/image=0A=
=0A=
Or=0A=
=0A=
grep btusb tmp/work/<PATH>/linux-imx/<VERSION>/temp/*=0A=
=0A=
Hope it could help,=0A=
=0A=
-KA=0A=
=0A=
> Thanks,=0A=
> Alvin=0A=
> [PCI]=0A=
>=0A=
>   Innovative Manufacturing Solutions. Professionally Delivered!=0A=
>=0A=
> The information contained in this email is confidential and is intended f=
or addressee(s) only. If you have received this email in error, please noti=
fy the originator immediately. Nothing in this email shall constitute an of=
fer or acceptance leading to a legally binding contract which shall only ar=
ise from a formal written agreement between yourselves and ourselves in the=
 form of a Purchase Order issued by us and accepted by you in writing. For =
the avoidance of doubt, this email shall not be construed in any way as a f=
ormal written agreement. We accept no liability for any damage arising from=
 alteration of the contents of this message by a third party or as a result=
 of any virus being passed on. Please consider your environmental responsib=
ility before printing this e-mail.=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=

