Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f193.google.com (mail-ve0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45CC3E009F3
	for <yocto@yoctoproject.org>; Sat,  1 Mar 2014 09:44:00 -0800 (PST)
Received: by mail-ve0-f193.google.com with SMTP id oz11so386155veb.4
	for <yocto@yoctoproject.org>; Sat, 01 Mar 2014 09:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/4WnBBsYa73lADtQ83AHG4CQbzDHiEW/A3qAQwvdXl4=;
	b=JU2AODUq8trT/oVL+4fdcj4eV1G7SpBku0NUx4liLqfJz69sf9EXwiy/evvkNiRx3F
	MFSnwmrOjjprt6pVvru02zm/6M5EcehLvi3C8L32FGmf9InIAycO1XkrGmPPnDVjtRpj
	o6cR0VxXgqHAOaBXyYogXM2Bx0uyEbt2OxNxRhkg9MDHwZfioYNnMD6tVCf+w50zLOHu
	/XnctEJTjv5AUgNZyVt2Ej0uJRzd/VNhx0deDd9WhSkBAACkDVoMFSaF6wpB9q+U2SNR
	HDNsiSgVDerP/gXh/Xui9eP3NvRuR1KeEmUb3be6GUbhDYSK7EZwgTuiFKKcMp2AaUBw
	mRfg==
MIME-Version: 1.0
X-Received: by 10.52.107.35 with SMTP id gz3mr18273594vdb.8.1393695839308;
	Sat, 01 Mar 2014 09:43:59 -0800 (PST)
Received: by 10.220.96.14 with HTTP; Sat, 1 Mar 2014 09:43:59 -0800 (PST)
Date: Sat, 1 Mar 2014 10:43:59 -0700
Message-ID: <CAA7h+Eo3iTu0PXAr976Enea82o+L1_p4q-FGeGxdu1ptEzQ41Q@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: yocto@yoctoproject.org
Subject: Gumstix Overo USBip with Yocto
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
X-List-Received-Date: Sat, 01 Mar 2014 17:44:02 -0000
Content-Type: multipart/alternative; boundary=bcaec547c6bf6d4ff804f38f19b2

--bcaec547c6bf6d4ff804f38f19b2
Content-Type: text/plain; charset=ISO-8859-1

I have been fighting with the pre-built from Linaro for the last few weeks
to get the USBip module into the kernel, without any success, and I am
hoping that switching to the Yocto project will solver our problem.

1. Do the pre-built images have the usbip-core and usbip-host already
enabled in the kernel?

2. If not, can I add them or do I need to compile poky myself?

3. If I need to compile poky to enable this module, what config(s) file do
I need to enable this in during the build process?


Thanks in Advance,
Rick

--bcaec547c6bf6d4ff804f38f19b2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>I have been fighting with the pre=
-built from Linaro for the last few weeks to get the USBip module into the =
kernel, without any success, and I am hoping that switching to the Yocto pr=
oject will solver our problem.<br>
<br></div>1. Do the pre-built images have the usbip-core and usbip-host alr=
eady enabled in the kernel? <br><br></div>2. If not, can I add them or do I=
 need to compile poky myself?<br><br></div>3. If I need to compile poky to =
enable this module, what config(s) file do I need to enable this in during =
the build process?<br>
<br><br></div>Thanks in Advance,<br></div>Rick<br></div>

--bcaec547c6bf6d4ff804f38f19b2--
