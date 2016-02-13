Return-Path: <mdlcameras@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77621E00CA7; Sat, 13 Feb 2016 00:11:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mdlcameras[at]gmail.com)
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
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1D4DE00CA2
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 00:11:40 -0800 (PST)
Received: by mail-lf0-f53.google.com with SMTP id j78so64196964lfb.1
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 00:11:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=JfePGKkYIq3dVYCmOilMntVB1xDHvQe2iDEmfH/ugmM=;
	b=AF/J3U7D8B2Dvj62/tmf1BZZWU5lPcT6J8FEy6D3Rp8Fr0kyENxCldplfVtxRh3Gjr
	I3VbqhZAkp207k/GdN83WvO0Qtn07ElXI8QA+m4tBzLloAbXifmxQA61AE6G97sGWYeU
	KRrUS7fuzglUEK3mxiS2cmRXJLdH/OO0cx/+nG2HhXajurhIdmpMUdQ8H+LWcNgZ8sZ5
	LKLA92h3c9BEBEGukPlcumpzWURUnzpzvALSacekkflANvMAY1GcGKKSLecr41mMiPDo
	6XlYURXuZY4Cqc0gFWUwCbcMDSbnV/dlUjfPTFwAkBYiA3wdEjRLXHzG/JEuA/pn7+xA
	v8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=JfePGKkYIq3dVYCmOilMntVB1xDHvQe2iDEmfH/ugmM=;
	b=irFvTiEAYt3nVPeQQwg7g4ft6oIHJSX88/1b9sXYPsy+261/y+4C/bhz9Yj0mxpick
	l481vFMimGkAHWLlAE7S/3MEpeB/rSfYBUQy2Ds3XnHQr98PUYqmOUJiiFvvsTLoyo3u
	jCw2cPhhLU3tTxfw7CeSSyeyCfoBQJgTVHD8glTNddlcacvP7gVGLvXa890lbP4TjyB2
	yQhzE/RUBLv7eoPN4ZaV8p6jPhXjrvMBLJi66jTENR9VEPMu0MwcMWKy0Y3Juqav3ALp
	3Q86VS0Hx0X3EyElt2AWL/hDgENSixM8hW0jRo3nY51xI2MGyl9Fg9+MbgG3lWvmoih6
	9x0g==
X-Gm-Message-State: AG10YOQ/FdK6wZcdzbjF0c/6/OkjIIzcSWzZUyMvh3UlonH2CQ96UMgYPk0QjheV+gcvf2hyEj8KC4OgvDNAMw==
MIME-Version: 1.0
X-Received: by 10.25.83.137 with SMTP id h131mr2570720lfb.0.1455351098307;
	Sat, 13 Feb 2016 00:11:38 -0800 (PST)
Received: by 10.114.11.1 with HTTP; Sat, 13 Feb 2016 00:11:38 -0800 (PST)
Date: Sat, 13 Feb 2016 10:11:38 +0200
Message-ID: <CAGuQk8qmvxWOohnryREFhuC27CCuz8JedUUM0gfcqWwYgZtO1w@mail.gmail.com>
From: Marius Liebenberg <mdlcameras@gmail.com>
To: yocto@yoctoproject.org
Subject: Qt5Svg libs not included in image
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
X-List-Received-Date: Sat, 13 Feb 2016 08:11:41 -0000
Content-Type: multipart/alternative; boundary=001a114199ca3cfe55052ba255f5

--001a114199ca3cfe55052ba255f5
Content-Type: text/plain; charset=UTF-8

Hi
I am using Scott's recipes for BBB whit the latest stable kernel.
I am compiling the qt5-image and it all works.
The problem I have is I do not know how to get qtsvg support into the image
(libQt5Svg is missing). Well or any other plugins or libraries for that
matter.
Please indicate where I can go look to get some guidance.

Regards
Marius

--001a114199ca3cfe55052ba255f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<div>I am using Scott&#39;s=C2=A0recipes=C2=A0for BBB wh=
it the latest stable kernel.</div><div style=3D"">I am compiling the qt5-im=
age and it all works.=C2=A0</div><div style=3D"">The problem I have is I do=
 not know how to get qtsvg support into the image (libQt5Svg is missing). W=
ell or any other plugins or libraries for that matter.</div><div style=3D""=
>Please=C2=A0indicate=C2=A0where I can go look to get some guidance.</div><=
div style=3D""><br></div><div style=3D"">Regards</div><div style=3D"">Mariu=
s</div></div>

--001a114199ca3cfe55052ba255f5--
