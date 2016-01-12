Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8701AE00AD7; Tue, 12 Jan 2016 10:26:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.25 listed in list.dnswl.org]
Received: from DUB004-OMC3S16.hotmail.com (dub004-omc3s16.hotmail.com
	[157.55.2.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8168E00AAF
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 10:26:00 -0800 (PST)
Received: from DUB130-W9 ([157.55.2.8]) by DUB004-OMC3S16.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 12 Jan 2016 10:25:59 -0800
X-TMN: [W8e3JFleNDPAdv65IcHYYeT8GBPeTLjW]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W9F5A8A3283B5751875E74DACA0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 12 Jan 2016 18:25:59 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Jan 2016 18:25:59.0751 (UTC)
	FILETIME=[AF89ED70:01D14D66]
Subject: Live Image Behaviour
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
X-List-Received-Date: Tue, 12 Jan 2016 18:26:07 -0000
Content-Type: multipart/alternative;
	boundary="_f7d9d96d-f80f-416b-a671-9ee08d3ac6b8_"

--_f7d9d96d-f80f-416b-a671-9ee08d3ac6b8_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I was testing out a new image this afternoon and all was well until I fdisk=
'd the partitions away on /dev/sda (with the live image booting from a usb =
stick on /dev/sdc).
After this the image stopped booting and started complaining about all sort=
s of FAT errors on /dev/sda and did not mount the root file system.
Nothing I could do to sort out this issue until I dd'd the live image onto =
/dev/sda=2C which then booted from /dev/sda1.
After this I could now also boot from /dev/sdc too but /media/realroot was =
mounted on /dev/sda1.
I renamed the root file system file on /dev/sda1=2C rebooted and now /media=
/realroot was mounted on /dev/sdc1.
All the time I was also able to boot the image fine in qemu.
Regarding the install option on the EFI boot=2C initially it was offering t=
o install on /dev/sdb but this changed to /dev/sda once I'd renamed the roo=
t file system on /dev/sda.
Anyway this suggests to me that the live image will preferentially mount a =
root file system from /dev/sda in preference to the file on the boot device=
.  This wasn't an issue after I followed through the 'install' option as it=
 lays out the installation over two partitions without using a loop-back de=
vice but the issue it had dealing with the 'corrupt' file system on /dev/sd=
a may be significant.
Regards=2CChris
 		 	   		  =

--_f7d9d96d-f80f-416b-a671-9ee08d3ac6b8_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>I was testing out a new image th=
is afternoon and all was well until I fdisk'd the partitions away on /dev/s=
da (with the live image booting from a usb stick on /dev/sdc).<div><br></di=
v><div>After this the image stopped booting and started complaining about a=
ll sorts of FAT errors on /dev/sda and did not mount the root file system.<=
/div><div><br></div><div>Nothing I could do to sort out this issue until I =
dd'd the live image onto /dev/sda=2C which then booted from /dev/sda1.</div=
><div><br></div><div>After this I could now also boot from /dev/sdc too but=
 /media/realroot was mounted on /dev/sda1.</div><div><br></div><div>I renam=
ed the root file system file on /dev/sda1=2C rebooted and now&nbsp=3B<span =
style=3D"font-size: 12pt=3B">/media/realroot was mounted on /dev/sdc1.</spa=
n></div><div><br></div><div>All the time I was also able to boot the image =
fine in qemu.</div><div><br></div><div>Regarding the install option on the =
EFI boot=2C initially it was offering to install on /dev/sdb but this chang=
ed to /dev/sda once I'd renamed the root file system on /dev/sda.</div><div=
><br></div><div>Anyway this suggests to me that the live image will prefere=
ntially mount a root file system from /dev/sda in preference to the file on=
 the boot device. &nbsp=3BThis wasn't an issue after I followed through the=
 'install' option as it lays out the installation over two partitions witho=
ut using a loop-back device but the issue it had dealing with the 'corrupt'=
 file system on /dev/sda may be significant.</div><div><br></div><div>Regar=
ds=2C</div><div>Chris</div><div><br></div> 		 	   		  </div></body>
</html>=

--_f7d9d96d-f80f-416b-a671-9ee08d3ac6b8_--
