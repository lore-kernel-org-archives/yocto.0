Return-Path: <neuberfran@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBE6CE00D29; Wed, 30 Dec 2015 05:02:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (neuberfran[at]gmail.com)
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
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2706E00BC1
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 05:01:57 -0800 (PST)
Received: by mail-vk0-f43.google.com with SMTP id f2so165011748vkb.3
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 05:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=cyCReKvZilratHrTrRhCGyGllALZ7cVmEOOlKm960tI=;
	b=ea07SkaE8Yp1QmlKZWoyozBVnkojl/qOQ0l4WUDledRAkkmOYEA/z7qR8NG9Jsqxqw
	jQdXmVUUkauQAhEhfpZdA3PHoKNvM9qmhN7UD1Wufbgwyh5eB/EWyLYihJShbL5W03ie
	IIaFmTCBQCzqsq89pa8cCiGkkZ+125zpTksmBeupIRb1v87uYWqa82vXBlCGzUg/w9Zl
	70Oz4UPb/7zHdvyKyxMqIyWytRgkAkfCX/aOlh58wTVrp5xoMoMh+/NNtqr9M0WoYpIt
	tL11fsv/nYMSPprn2XOAHseN9hthT//UUzZtxXK36Ii5dP1LGUOVhdgqU8HqJSxDTgpo
	hydg==
MIME-Version: 1.0
X-Received: by 10.31.180.215 with SMTP id d206mr32173313vkf.125.1451480516419; 
	Wed, 30 Dec 2015 05:01:56 -0800 (PST)
Received: by 10.31.47.71 with HTTP; Wed, 30 Dec 2015 05:01:56 -0800 (PST)
Date: Wed, 30 Dec 2015 10:01:56 -0300
Message-ID: <CABWL1PnM8O+6T2ME3gQRAygUCkJnRMFgBW7Z8NGkrs4qYtpTbw@mail.gmail.com>
From: neuber sousa <neuberfran@gmail.com>
To: yocto@yoctoproject.org
Subject: NSUPDATE Package in intel edison with yocto version 159
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
X-List-Received-Date: Wed, 30 Dec 2015 13:02:01 -0000
Content-Type: multipart/alternative; boundary=001a1143f35694667405281d243b

--001a1143f35694667405281d243b
Content-Type: text/plain; charset=UTF-8

I'm trying to to this:
http://mkaczanowski.com/golang-build-dynamic-dns-service-go/


But I have error with NSUPDATE package


*root@neuberfran:~# opkg install nsupdate*
Unknown package 'nsupdate'.
Collected errors:

opkg_install_cmd: Cannot install package nsupdate


Please help

--001a1143f35694667405281d243b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"background-image:initial;b=
ackground-repeat:initial"><span style=3D"font-size:9.5pt;font-family:Arial,=
sans-serif">I&#39;m trying to to this:=C2=A0<a href=3D"http://mkaczanowski.=
com/golang-build-dynamic-dns-service-go/" target=3D"_blank">http://mkaczano=
wski.com/golang-build-dynamic-dns-service-go/</a></span></p><p class=3D"Mso=
Normal" style=3D"background-image:initial;background-repeat:initial"><br></=
p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-repeat:=
initial"><span style=3D"font-size:9.5pt;font-family:Arial,sans-serif">But
I have error with NSUPDATE package</span></p><p class=3D"MsoNormal" style=
=3D"background-image:initial;background-repeat:initial"><span style=3D"font=
-size:9.5pt;font-family:Arial,sans-serif"><br></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-repeat:=
initial"><span style=3D"font-size:9.5pt;font-family:Arial,sans-serif"><b><i=
><u>root@neuberfran:~#
opkg install nsupdate</u></i></b><br>
Unknown package &#39;nsupdate&#39;.<br>
Collected errors:</span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-repeat:=
initial"><span style=3D"font-size:9.5pt;font-family:Arial,sans-serif">opkg_=
install_cmd:
Cannot install package nsupdate</span></p><p class=3D"MsoNormal" style=3D"b=
ackground-image:initial;background-repeat:initial"><span style=3D"font-size=
:9.5pt;font-family:Arial,sans-serif"><br></span></p><p class=3D"MsoNormal" =
style=3D"background-image:initial;background-repeat:initial"><span style=3D=
"font-size:9.5pt;font-family:Arial,sans-serif">Please help</span></p></div>

--001a1143f35694667405281d243b--
