Return-Path: <maxx1109@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E267FE00AF2; Sat, 23 Jan 2016 03:12:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxx1109[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48443E00948
	for <yocto@yoctoproject.org>; Sat, 23 Jan 2016 03:12:16 -0800 (PST)
Received: by mail-lb0-f182.google.com with SMTP id oh2so53379242lbb.3
	for <yocto@yoctoproject.org>; Sat, 23 Jan 2016 03:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=T9Odrm3HPqisxbJYHX+cXpGTXjOZUQV7WfRGhlqjOVY=;
	b=NRviFyvvTbW5CSRaMqBe1NtcNikehK5KWUS03/beOD+t7jkfTsAiHai+w+EGfY+h1A
	DCJFKUXy454jwTYzKii0sy87/9obrh7isxyQR+Uk/lZYQoRZ/bqfAIkmIp+Y6H6FwMf5
	UDXtoXD8SYnTzRySbb590zad9Z9HcPCsJWlf2P0ACs0bcTRsYDEcEVJ/+XV51/cb+T/v
	4xs7x/tlvd8Mb+bTfoajyzJLKYLwSuutVABm2l95X3alniMSd/8JBOdLdPf1eyrp7/Pm
	oI5wVb6vNs6MD0fUveaVETCZrDGQrjLZ+3R0mMNUMOiUDSW2zFv5EFplpOEn1KGtoR2Z
	Jj/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=T9Odrm3HPqisxbJYHX+cXpGTXjOZUQV7WfRGhlqjOVY=;
	b=Pup2oU2N3UXf8O78lLQob8HcTroXn8Osg6B4KlqRfxlkit/ClogDJ+F1Muzaj/oPgL
	arvH233WvgxXzT7jjcbFqHQGu25NNiWoUv33QtolEju96wcaTg4B4N14FnKmObjJVFT/
	p0gnlCH/lauYAtkEnEQVEG2vNy+j8xA9H3wv/V3JCe0Vh36VW/M6LPyEECL61D4Fslhl
	btn5EEA6qmyd1BFscqvJR4WpOSycI/XtYA5auTeLiWSaMmvS4zISQwkzKQ1gzC1ulZA6
	RR6FngIk5mqRs9j2yap5BdnygiEDi1g86Ww69pA7a4wV91gmtPMt8qmpXlMtUynSmufP
	kouw==
X-Gm-Message-State: AG10YOSvxLaCwHOv1rbC5+nzqUo07+Nd1eBWDP3jgxWSJpOxciB/StvCMWLGXSBWBz81+WZuzTKcr+ZfW/VyZQ==
MIME-Version: 1.0
X-Received: by 10.112.167.104 with SMTP id zn8mr2943556lbb.91.1453547534550;
	Sat, 23 Jan 2016 03:12:14 -0800 (PST)
Received: by 10.25.133.135 with HTTP; Sat, 23 Jan 2016 03:12:14 -0800 (PST)
Date: Sat, 23 Jan 2016 13:12:14 +0200
Message-ID: <CAHpaHKnL3wa6nX+2HdjVNVkSUinQzd2wg0EE+Xk3Y1mCXF9+9w@mail.gmail.com>
From: Max Sht <maxx1109@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Wed, 27 Jan 2016 09:45:12 -0800
Subject: Image size
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
X-List-Received-Date: Sat, 23 Jan 2016 11:12:25 -0000
Content-Type: multipart/alternative; boundary=001a11c25aee760dfd0529fe68ad

--001a11c25aee760dfd0529fe68ad
Content-Type: text/plain; charset=UTF-8

Hi.

Thank you in advance for your support.
I'm using Yocto project Linux for the iMX6 CPU and imx6ulevk board.

I think that I have a problem with image size. I've seen the basic image
for that board and it's size was about 6Mb, but it didn't contain any
graphical library.
I need a basic graphical library, so I added FB library. My image size is
now larger than 350Mb.
Is it normal? Is there a possibility to make the image *much* smaller with
some other graphic library?

I'm very to new to Linux, and hope that you can help me.

--001a11c25aee760dfd0529fe68ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Hi.<br><br></div><div dir=3D"ltr">Thank y=
ou in advance for your support. <br></div><div dir=3D"ltr">I&#39;m using Yo=
cto project Linux for the iMX6 CPU and imx6ulevk board.<br><br></div><div d=
ir=3D"ltr">I think that I have a problem with image size. I&#39;ve seen the=
 basic image for that board and it&#39;s size was about 6Mb, but it didn&#3=
9;t contain any graphical library. <br></div><div dir=3D"ltr">I need a basi=
c graphical library, so I added FB library. My image size is now larger tha=
n 350Mb.<br></div><div dir=3D"ltr">Is it normal? Is there a possibility to =
make the image <u>much</u> smaller with some other graphic library? <br></d=
iv><div dir=3D"ltr"><br>I&#39;m very to new to Linux, and hope that you can=
 help me. </div></div>

--001a11c25aee760dfd0529fe68ad--
