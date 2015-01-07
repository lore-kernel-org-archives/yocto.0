Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFC2DE00571; Wed,  7 Jan 2015 14:00:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC5F2E002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 14:00:18 -0800 (PST)
Received: by mail-we0-f179.google.com with SMTP id q59so1976843wes.10
	for <yocto@yoctoproject.org>; Wed, 07 Jan 2015 14:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=cP5a+aWNNrN5I5IwHHIHWm3m8rWsn06NYyfJt/TnLz8=;
	b=IphFZqq2XcHNq/jed+P3qRTY8dLj9WPkruL3PZQT3VIR0qX/V/iWIHXOqW4jwzH87J
	Ug8qFyaXljtXZ5ZHvzstUcdK+VDxu0FGlkFXXOD2LOcg4jbDg8eSZk4LYGaIaYLmrNNd
	2xmi95h4twxI2AJi0fvPjskr8iFA2T/MRdAQ6IrSN9JJxKijUVu6r0tcOOY7ygyj1Gvu
	aUpLcFAGx1w8zoWwK1T7LY7bG7xJwy7eRFTvIiYjKxPIyM6Wa9k55sYCikpRRkYv0sb0
	e3gRIGVI3Pynqog9ACAxm7n6eX3gw7Mi2ZSsbobd6j/tt8Vh2bTAPx1N/CuflDh6O7pY
	LRNg==
X-Received: by 10.180.101.98 with SMTP id ff2mr52645865wib.83.1420668009520;
	Wed, 07 Jan 2015 14:00:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.179.137 with HTTP; Wed, 7 Jan 2015 13:59:49 -0800 (PST)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 7 Jan 2015 22:59:49 +0100
Message-ID: <CAEfap_C2-_1MfnZg=CTnP_bdd9tkbJ649UfXjXXmUqgiu+uTtw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Booting .hddimg from USB failed -> ramdisk not found /dev/ram0 - HELP!
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
X-List-Received-Date: Wed, 07 Jan 2015 22:00:24 -0000
Content-Type: multipart/alternative; boundary=f46d041826220d2628050c170c83

--f46d041826220d2628050c170c83
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello folks!

I have the following problem/question.
1) I built a standard .hddimg core-image-sato genericx86 on ubuntu 14.10
2) Afterwards, this .hddimg was deployed to USB device (USB-ZIP method)
3) Tried to boot Atom PC from the USB Device -> *ERROR: cound not found
ramdisk*

so initrd is trying to find /dev/ram0 which does not exist in the image. I
checked rootfs and there is nothing under
../poky/build/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootfs/=
dev

I googled this up and there is a thread telling to check the .config file
for *CONFIG_BLK_DEV_RAM *settings*.*
I have the following entries in:
../poky/build/tmp/work/genericx86-poky-linux/linux-yocto/3.10.35+gitAUTOINC=
+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-build/.config
...
CONFIG_BLK_DEV_RAM=3Dy
CONFIG_BLK_DEV_RAM_COUNT=3D16
CONFIG_BLK_DEV_RAM_SIZE=3D4096
...

I also *bitbake core-image-sato -c cleansstate* twice already.
I also* bitbake core-image-sato -c menuconfig *once more and
afterwards *bitbake
linux-yocto* again.
I also tried IRC channels, but no answer so far...

Can anyone help me? How can i force bitbake to create /dev/ram0 under
rootfs?
Or maybe there is another trick to boot the image from USB?

best regards
simon:-)

Viele Gr=C3=BCsse
Simon Bolek

mit freundlichem Gruss / best regards / pozdrawiam / atentamente
Simon P. Bolek
------------------------------------------------------
Dipl. Inf. Simon P. Bolek
SAP Consultant
Business Mobile and IVI Solutions
mailto: simon.bolek@arcom-ivi.de
http://www.arcom-ivi.de/
XING: https://www.xing.com/profile/SimonP_Bolek

--f46d041826220d2628050c170c83
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div></div>Hello folks!<br><br></div><div>I have=
 the following problem/question. <br>1) I built a standard .hddimg core-ima=
ge-sato genericx86 on ubuntu 14.10<br></div><div>2) Afterwards, this .hddim=
g was deployed to USB device (USB-ZIP method)<br></div><div>3) Tried to boo=
t Atom PC from the USB Device -&gt; <b>ERROR: cound not found ramdisk</b><b=
r><br></div><div>so initrd is trying to find /dev/ram0 which does not exist=
 in the image. I checked rootfs and there is nothing under <br>../poky/buil=
d/tmp/work/genericx86-poky-linux/core-image-sato/1.0-r0/rootfs/dev<br></div=
><div><br>I googled this up and there is a thread telling to check the .con=
fig file for <i>CONFIG_BLK_DEV_RAM </i>settings<i>.</i> <br>I have the foll=
owing entries in:<br>../poky/build/tmp/work/genericx86-poky-linux/linux-yoc=
to/3.10.35+gitAUTOINC+7df9ef8ee4_2ee37bfe73-r0/linux-genericx86-standard-bu=
ild/.config<br>...<br>CONFIG_BLK_DEV_RAM=3Dy<br>CONFIG_BLK_DEV_RAM_COUNT=3D=
16<br>CONFIG_BLK_DEV_RAM_SIZE=3D4096<br></div><div>...<br><br></div><div>I =
also <b><i>bitbake core-image-sato -c cleansstate</i></b> twice<i> </i>alre=
ady.<br></div><div>I also<b> bitbake core-image-sato -c menuconfig </b>once=
 more and afterwards <b>bitbake linux-yocto</b> again.<br></div><div>I also=
 tried IRC channels, but no answer so far...<br><br></div><div>Can anyone h=
elp me? How can i force bitbake to create /dev/ram0 under rootfs?<br></div>=
<div>Or maybe there is another trick to boot the image from USB?<br></div><=
div><br></div>best regards<br></div>simon:-)<br><div><div><div><br clear=3D=
"all"><div><div class=3D"gmail_signature">Viele Gr=C3=BCsse<br>Simon Bolek<=
br><br>mit freundlichem Gruss / best regards / pozdrawiam / atentamente<br>=
Simon P. Bolek<br>------------------------------------------------------<br=
>Dipl. Inf. Simon P. Bolek<br>SAP Consultant<br><div>Business=C2=A0<span st=
yle=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse=
">Mobile and IVI Solutions</span><br><span style=3D"font-family:arial,sans-=
serif;font-size:13px;border-collapse:collapse"></span><div>mailto: <a href=
=3D"mailto:simon.bolek@arcom-ivi.de" target=3D"_blank">simon.bolek@arcom-iv=
i.de</a><div><a href=3D"http://www.arcom-ivi.de/" target=3D"_blank">http://=
www.arcom-ivi.de/</a><br>XING: <a href=3D"https://www.xing.com/profile/Simo=
nP_Bolek" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><b=
r></div></div></div></div></div>
</div></div></div></div>

--f46d041826220d2628050c170c83--
