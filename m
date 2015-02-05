Return-Path: <adm.dizon@pciltd.com.sg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A0F1E00993; Wed,  4 Feb 2015 21:43:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from webmail.pciltd.com.sg (webmail.pciltd.com.sg [119.73.250.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B645EE00948
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 21:43:10 -0800 (PST)
Received: from PCISGEX.pciltd.com.sg ([192.168.0.147]) by
	PCISGEX.pciltd.com.sg ([192.168.0.147]) with mapi id 14.03.0123.003;
	Thu, 5 Feb 2015 13:43:09 +0800
From: "Alvin D.M. DIZON" <adm.dizon@pciltd.com.sg>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Confused with adding drivers to kernel via bitbake -c menuconfig
Thread-Index: AdBBBp72pUpF/D8hRIC++Qu4bx8STA==
Date: Thu, 5 Feb 2015 05:43:08 +0000
Message-ID: <46557CEF4ABDB54B92C59390D2741FD1BD8C09@PCISGEX.pciltd.com.sg>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [116.50.213.202]
MIME-Version: 1.0
Subject: Confused with adding drivers to kernel via bitbake -c menuconfig
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
X-List-Received-Date: Thu, 05 Feb 2015 05:43:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to the generic USB bluetooth driver "btusb" to my i.MX6Q SABRE=
 SD, so that my USB Bluetooth dongle(Cambridge Silicon Radio). Upon reading=
 https://community.freescale.com/docs/DOC-100847 I enabled the Bluetooth su=
bsystem support, RFCOMM, BNEP, and HIDP, as well as the HCI USB driver. I s=
aved the .config file and copied it to the directory where my Linux recipe =
is (linux-imx_3.10.17.bb). I then renamed my .config file into defconfig, m=
ade a new folder called "files" and placed the defconfig in it. I also made=
 a .bbappend file that contained

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI +=3D "file://defconfig"

I then ran "bitbake -c cleansstate linux-imx", after that I ran "bitbake fs=
l-image-x11". I flashed the resulting .sdcard file to an SD card, booted up=
 my board, but found no trace of btusb. I tried doing "bitbake -f -c compil=
e linux-imx" and then "bitbake -f -c deploy linux-imx", and copied the resu=
lting uImage to my SD card's /media/Boot folder, but still no trace of btus=
b. I checked the tar archive for the kernel modules found in the /tmp/deplo=
y/images/imx6qsabresd folder, and found two files called modules.order and =
modules.builtin, the btusb driver is listed in the modules.builtin file, bu=
t not mentioned in the modules.order file, I have also tried compiling the =
driver as module, and then ran the same commands as listed in the said link=
, but could not find the module. What am I doing wrong here? Any help will =
be will be appreciated, since I am new to Linux and the Yocto Project.

Thanks,
Alvin
[PCI]

  Innovative Manufacturing Solutions. Professionally Delivered!

The information contained in this email is confidential and is intended for=
 addressee(s) only. If you have received this email in error, please notify=
 the originator immediately. Nothing in this email shall constitute an offe=
r or acceptance leading to a legally binding contract which shall only aris=
e from a formal written agreement between yourselves and ourselves in the f=
orm of a Purchase Order issued by us and accepted by you in writing. For th=
e avoidance of doubt, this email shall not be construed in any way as a for=
mal written agreement. We accept no liability for any damage arising from a=
lteration of the contents of this message by a third party or as a result o=
f any virus being passed on. Please consider your environmental responsibil=
ity before printing this e-mail.

