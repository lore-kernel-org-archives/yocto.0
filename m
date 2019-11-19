Return-Path: <shravan@bluesparq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10438E00E12; Tue, 19 Nov 2019 07:54:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com
	[209.85.222.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D4CE00D9E
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 07:54:08 -0800 (PST)
Received: by mail-ua1-f45.google.com with SMTP id 31so6660563uas.9
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2019 07:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bluesparq-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=dt6vfIrkl0BHA0iOpGpSYjtgxd61lpp6jAOBIdbM0Xg=;
	b=m4HA08FM57PAhnTPVaICC18ED9+WGS5K1i54PmYayEBdYcqyZOBKSoUIzoGNloRjek
	8vdSOeED5Y8cAMto6BXLev0YqBeVeQSicaZtsn06WZWMPkgx1BImgG16fnqfboXFNdQz
	oe657cq6A0snZAlFx2ukuuixIGyr9/DNwXFFQNw39GXpFR19QyVfBD6vdnMizhGkWYaS
	F13jvBLkbSUxGt0+aCcMs+Asfv0MWPCgNn6qa7Dsq4m/qS+bJEGP9MEXoR6K5knRJgJJ
	cvVYUayK60Aa+QmlOsTy9ZhNM0TTb47jX5vofqZqOszalez9Dliq/Fza+wHGI6+aZF8u
	IAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dt6vfIrkl0BHA0iOpGpSYjtgxd61lpp6jAOBIdbM0Xg=;
	b=ZJ/2ckW9vCr22IAjB9B7qO+WgOaeQQjQOytaNCjleEQL+ZwgfbZ+V1hIYO54h6BSBe
	mnJb26dMy3VxfdbotQl26IykqDga4Le6HGrjpneq5Y8PSJ7BUA3e5XHNyZrWWWCtpeY3
	NNomaolpcLy0fckrQoH1zrxQ3BpJB+AemcgqDd4r+7nzPgk9Nuyz+BxvV1OS2VXOdThf
	WX6fyLn1e/AJPW2e2sWHMtfut/EuApfSj3ElVIIxj0cin52YVaXMZDvcMLs3JCLQ3I8X
	3MmVr9cs2gPcTqw+Yq0ernwHj67G0wyYuD6ENExpw7rIC+azvsih1XFFDD7COlzCL+qI
	TLdQ==
X-Gm-Message-State: APjAAAVFdcxOYEuN5XKYHQpuGHK8oGiiTUN1EVWwYjtHdIrOMYwFTL01
	ieXZd+/Vqi0OTlGbWcjCQMNvH4+B9Wk3TrtjKRPpsdyD
X-Google-Smtp-Source: APXvYqz+QR8evOSFWtpq5MCxZIkP+MqmChOdxEr3VDYpSkOzTXnWWvH93m0X+nzyisw4VQFmuwILDQzA7sr6J/oYRBQ=
X-Received: by 2002:ab0:1602:: with SMTP id k2mr21062784uae.103.1574178847663; 
	Tue, 19 Nov 2019 07:54:07 -0800 (PST)
MIME-Version: 1.0
From: Shravan Singh <shravan@bluesparq.com>
Date: Tue, 19 Nov 2019 10:53:57 -0500
Message-ID: <CABjzrPSGSdztQvLcQTsqs_vU+SaxQ9cCuTL2ceyHcq7eYuD_Yg@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Thu, 21 Nov 2019 01:12:37 -0800
Subject: Installing a Kernel module.
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
X-List-Received-Date: Tue, 19 Nov 2019 15:54:11 -0000
Content-Type: multipart/alternative; boundary="000000000000073f6b0597b51335"

--000000000000073f6b0597b51335
Content-Type: text/plain; charset="UTF-8"

Hello All,

So I am having a little problem in understanding why I am unable to
autoload a module in my image.

So I made modifications to
1. KCONFIG, MAKEFILE
2. Added a source and header file to driver/input/touchscreen
3. Added a file in /boot/arm/dts/overlays
4. Created a patch and added that patch in
/meta-raspberrypi-warrior/recipes/kernel/linux/linux-raspberrypi_4.19.bb
5. Added the overlay file in rpi_base.inc
6. In my local.conf added it under KERNEL_MODULE_AUTOLOAD_append

created the image without any issues. But after I install that Image I do
not see the module anymore?

Why Is that Am I missing something?


Regards,
Shravan Singh
(239) 243-0838

Blue Sparq, Inc.
928 NE 24th Lane unit 4 and 5.
Cape Coral, FL 33993

IMPORTANT: The contents of this email and any attachments are confidential.
They are intended for the named recipient(s) only. If you have received
this email by mistake, please notify the sender immediately and do not
disclose the contents to anyone or make copies thereof.

--000000000000073f6b0597b51335
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div><br></div><div>So I am having a =
little problem in understanding why I am unable to autoload a module in my =
image.</div><div><br></div><div>So I made modifications to <br></div><div>1=
. KCONFIG, MAKEFILE <br></div><div>2. Added a source and header file to dri=
ver/input/touchscreen <br></div><div>3. Added a file in /boot/arm/dts/overl=
ays</div><div>4. Created a patch and added that patch in /meta-raspberrypi-=
warrior/recipes/kernel/linux/<a href=3D"http://linux-raspberrypi_4.19.bb">l=
inux-raspberrypi_4.19.bb</a></div><div>5. Added the overlay file in rpi_bas=
e.inc</div><div>6. In my local.conf added it under KERNEL_MODULE_AUTOLOAD_a=
ppend</div><div><br></div><div>created the image without any issues. But af=
ter I install that Image I do not see the module anymore?</div><div><br></d=
iv><div>Why Is that Am I missing something?</div><div><br></div><div><br></=
div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail=
_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><span style=3D"background-color:rgba(255,255,255,0)"></=
span>Regards,<br>Shravan Singh<br>(239) 243-0838<br><br>Blue Sparq, Inc.<br=
>928 NE 24th Lane unit 4 and 5.<br>Cape Coral, FL 33993<br><font size=3D"1"=
><br>IMPORTANT: The contents of this email and any attachments are confiden=
tial. They are intended for the named recipient(s) only. If you have receiv=
ed this email by mistake, please notify the sender immediately and do not d=
isclose the contents to anyone or make copies thereof.</font><br></div></di=
v></div></div></div></div></div></div></div></div>

--000000000000073f6b0597b51335--
