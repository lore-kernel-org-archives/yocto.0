Return-Path: <Yukatharsani_Jeyachandran@comcast.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C25A7E006D3; Mon,  2 May 2016 08:12:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from vaadcmhout01.cable.comcast.com (vaadcmhout01.cable.comcast.com
	[96.114.28.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 409D1E006C7
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 08:12:45 -0700 (PDT)
X-AuditID: 60721c4b-f794b6d0000016d9-0b-57276e6c239d
Received: from VAADCEX47.cable.comcast.com (vaadcmhoutvip.cable.comcast.com
	[96.115.73.56]) (using TLS with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by vaadcmhout01.cable.comcast.com (SMTP Gateway) with SMTP id
	A9.13.05849.C6E67275; Mon,  2 May 2016 11:12:45 -0400 (EDT)
Received: from VAADCEX48.cable.comcast.com (147.191.103.225) by
	VAADCEX47.cable.comcast.com (147.191.103.224) with Microsoft SMTP
	Server (TLS) id 15.0.1130.7; Mon, 2 May 2016 11:12:43 -0400
Received: from VAADCEX48.cable.comcast.com ([fe80::3aea:a7ff:fe12:5e40]) by
	VAADCEX48.cable.comcast.com ([fe80::3aea:a7ff:fe12:5e40%19]) with mapi
	id 15.00.1130.005; Mon, 2 May 2016 11:12:43 -0400
From: "Jeyachandran, Yukatharsani (Contractor)"
	<Yukatharsani_Jeyachandran@comcast.com>
To: Paul Knopf <pknopf@medxchange.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Booting live images (core-image-minimal-initramfs) on ARM
Thread-Index: AQHRpIEXEGU1dv/nDESERySB0UV33Z+lvEwO
Date: Mon, 2 May 2016 15:12:43 +0000
Message-ID: <1462201963010.35715@comcast.com>
References: <CABfz71dUBbkQdidZkzLijTpesepXUJ0uUn4P5W3Nd6Cw2y27AQ@mail.gmail.com>
In-Reply-To: <CABfz71dUBbkQdidZkzLijTpesepXUJ0uUn4P5W3Nd6Cw2y27AQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [68.87.29.7]
MIME-Version: 1.0
X-CFilter-Loop: Forward
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRmVeSWpSXmKPExsWSUOxpoZubpx5u8OiYmMX/xWtZLSa9XMPm
	wORxYOUkZo/2E31sAUxRXDYpqTmZZalF+nYJXBlT985iKpijVtFx+i5jA+NPhS5GTg4JAROJ
	5vknmCFsMYkL99azdTFycQgJbGGSOHTqGZRzkFHidfdmZgjnBKPEhm2X2EBa2AQiJaZ9PANm
	iwhES0w9uJMJxBYW8JPY1b+BHSIeKHH1+AtWCNtIYuvCTrA4i4CKxL7VW4DqOTh4BXQlJi6K
	AwkLCQRILL70G6yEE6j1Yus9sJGMQNd9P7UGzGYWEJe49WQ+E8TVAhJL9pyH+kBU4uXjf6wQ
	toHE1qX7WCBsOYm5r++xQPSGSBx8PxusnldAUOLkzCdQNeISh4/sYJ3AKD4LyYpZSFpmIWmB
	iOtJ3Jg6hQ3C1pZYtvA1M4StKzHj3yEWZPEFjOyrGOXKEhNTknMz8ktLDAz1khOTclL1kvNz
	kxOLS0D0JkZQzBbJeO9gXPfT/RCjAAejEg+vXpJ6uBBrYllxZe4hRgkOZiURXuksoBBvSmJl
	VWpRfnxRaU5q8SFGaQ4WJXFe7yilcCGB9MSS1OzU1ILUIpgsEwenVAPj7KSD11a+vruCuf/w
	er8W/9sGT08GZhuLBJmdudBkN636w7Hc8Ku+pQEPJ/m/cHds1nYqYTnTvMRjw/VlBclLlvyq
	OFRqIXf/20rnm01PL/4wObFHzSfkq+uipBlCt5+uDPmTw9+9sWOCgVZ3JF9J77Lb7O23bgpu
	O2OX0Dv9v1DRxrndn1nWKbEUZyQaajEXFScCALSgsHLVAgAA
Subject: Re: Booting live images (core-image-minimal-initramfs) on ARM
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
X-List-Received-Date: Mon, 02 May 2016 15:12:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_146220196301035715comcastcom_"

--_000_146220196301035715comcastcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hi,

Edit IMAGE_FSTYPES variable:-


Add this line IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}" in machine configura=
tion file or conf/local.conf file.

By default, INITRAMFS_FSTYPES set to "cpio-gz" in meta/conf/bitbake.conf fi=
le.


Thanks and Regards,
Yukatharsani J.



________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Paul Knopf <pknopf@medxchange.com>
Sent: Monday, May 2, 2016 10:43 AM
To: yocto@yoctoproject.org
Subject: [yocto] Booting live images (core-image-minimal-initramfs) on ARM

I have created kernel with an initramfs bundled that uses "initramfs-live-b=
oot" to search for a "root.img" file on any mounted media devices (/media/*=
/root.img). I have added some rules to udev to automount a block device cor=
rectly.

However, when I attempt to create the live image, it depends on syslinux, w=
hich isn't available for ARM.

ERROR: Nothing PROVIDES 'syslinux'
ERROR: syslinux was skipped: incompatible with host arm-poky-linux-gnueabi =
(not in COMPATIBLE_HOST)

I have the following in my image.

IMAGE_FSTYPES =3D "live"

Why do we need the syslinux dependency? I have already booted my kernel via=
 u-boot, so it seems unnecessary. Is there another IMAGE_FSTYPE that is com=
patible with the "initramfs-live-boot" package? cramfs? If so, do I need to=
 change the "init-live.sh" script in "initramfs-live-boot" to support this =
new file type?

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com<mailto:pknopf@medxchange.com>

--_000_146220196301035715comcastcom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} P{margin-top:0;margin-bottom:0;}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><br>
</p>
<pre>Hi,<br><br>Edit IMAGE_FSTYPES variable:-<br><br><pre class=3D"content"=
><span class=3D"p_add">Add this line IMAGE_FSTYPES =3D &quot;${INITRAMFS_FS=
TYPES}&quot; in machine configuration file or conf/local.conf file.<br><br>=
By default, </span><span class=3D"p_add">INITRAMFS_FSTYPES</span><span clas=
s=3D"p_add"> set to &quot;cpio-gz&quot; in meta/conf/bitbake.conf file.<br>=
<br><br>Thanks and Regards,<br>Yukatharsani J.<br></span></pre><em><br></em=
><em></em></pre>
<p><br>
</p>
<div style=3D"color: rgb(33, 33, 33);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b> yocto-bounces@yoctop=
roject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Paul Knopf &=
lt;pknopf@medxchange.com&gt;<br>
<b>Sent:</b> Monday, May 2, 2016 10:43 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Booting live images (core-image-minimal-initramfs) =
on ARM</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>I have created kernel with an initramfs bundled that uses &quot;initra=
mfs-live-boot&quot; to search for a &quot;root.img&quot; file on any mounte=
d media devices (/media/*/root.img). I have added some rules to udev to aut=
omount a block device correctly.</div>
<div><br>
</div>
<div>However, when I attempt to create the live image, it depends on syslin=
ux, which isn't available for ARM.</div>
<div><br>
</div>
<div>
<div>ERROR: Nothing PROVIDES 'syslinux'</div>
<div>ERROR: syslinux was skipped: incompatible with host arm-poky-linux-gnu=
eabi (not in COMPATIBLE_HOST)</div>
</div>
<div><br>
</div>
<div>I have the following in my image.</div>
<div><br>
</div>
<div>
<div>IMAGE_FSTYPES =3D &quot;live&quot;</div>
</div>
<div><br>
</div>
<div>Why do we need the syslinux dependency? I have already booted my kerne=
l via u-boot, so it seems unnecessary. Is there another IMAGE_FSTYPE that i=
s compatible with the &quot;initramfs-live-boot&quot; package? cramfs? If s=
o, do I need to change the &quot;init-live.sh&quot;
 script in &quot;initramfs-live-boot&quot; to support this new file type?</=
div>
<br clear=3D"all">
<div>
<div class=3D"gmail_signature">
<div dir=3D"ltr">
<div>Thanks,</div>
<div>Paul Knopf</div>
<div>Software Engineer</div>
<div>Med X Change, Inc</div>
<div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medx=
change.com</a></div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_146220196301035715comcastcom_--
