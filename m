Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FC78E00DCF; Fri, 25 Nov 2016 20:18:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6967AE00CC3
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 20:18:53 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 3so7097516pgd.0
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 20:18:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=R/6oMoo0nFRop+5yK6IwEIlxW9GltSAHZ6P/Y9MGHnc=;
	b=PamHaGV5rFMgyzB+hSPfu/wJRuGTZ25FMdU3RE/+JYMXzdh5XQUoJZGxB8GjPLL88+
	oaSu8Xqiz2/OwljLfG2R/QHxeizhBBoqlcUY503qGlvtOoO8xtgiwZtSLRZTsfMRyw0O
	5kvfzDfdd9xExzAm6GJRAnIAEG25ypv4+SUGx0pCRhpWRjBcAPWzEbMQ6lkvtZC15OJN
	O4RaE4zC45ZJhz51Rf9HpS4M3x1G1Z2cYh4Ry1vZ6XnQVtc2usHe7HnepTAv9mkZ9jRx
	Xi38kfJpgZoGbX/uc4gP6UmZ81ex96XZba+8v1b1mM3rpyOqBlPLKD/81F20Mklfsihg
	PMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=R/6oMoo0nFRop+5yK6IwEIlxW9GltSAHZ6P/Y9MGHnc=;
	b=jXPxpiTi/NbZIemjrJRJ0CNssPuPLdNWf17u7AsS8G/syPRrAVN+2yEBcAxm1C9qyc
	aVhbIMmme9HTaxVrOklahpnj3io9LIhDayJk5tqKFmY7vRbZEBxvnznU7s1tkXS7w+1x
	9apDtki5LCAjrBENrU7eHED19XDdrvKXUTFbcNj/eOJz9bccPzlkdjnC5gu5io8Y5Aa3
	TDVPTRBCZxjbsQ1TV7NZmTrQrP/Po9ogIkooRxs33K6+zC84knlEKhsmn8s4lq4su/aP
	lZfOCgXGltVwkYvg5OnbSU5esyRag4rAa9I7TXfzVCd6zOwKAoV645vVLSVKc5OMNR9/
	5Fsw==
X-Gm-Message-State: AKaTC03AwVdbNO2a1dZJlAqT4MNyB3TeKK/tlRcSa222OaRpXl0Op+cby0VGkbb2qxJv2w==
X-Received: by 10.99.94.194 with SMTP id s185mr20315463pgb.35.1480133933605;
	Fri, 25 Nov 2016 20:18:53 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:38de:4871:ed5d:b69f?
	([2601:646:8882:b8c:38de:4871:ed5d:b69f])
	by smtp.gmail.com with ESMTPSA id
	24sm70921899pfh.41.2016.11.25.20.18.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Nov 2016 20:18:53 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Message-Id: <45A4BE89-4E1E-433C-A7DE-DABDF691ACF8@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Date: Fri, 25 Nov 2016 20:18:52 -0800
In-Reply-To: <CAFq4t4gmAmVmsxJY-78kooGzBWNJ0O47OQ8+1VFd0x7o0tzxjA@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
References: <CAFq4t4gmAmVmsxJY-78kooGzBWNJ0O47OQ8+1VFd0x7o0tzxjA@mail.gmail.com>
X-Mailer: Apple Mail (2.3251)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: change/modify recipe for OpenCV
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
X-List-Received-Date: Sat, 26 Nov 2016 04:18:58 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8FE25112-6C04-4716-9113-C2328CB37F38"

--Apple-Mail=_8FE25112-6C04-4716-9113-C2328CB37F38
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 24, 2016, at 2:40 AM, Peter Balazovic =
<balazovic.peter@gmail.com> wrote:
>=20
> Dears,
>=20
> I'm building Yocto image and this includes OpenCV 2.4 release.=20
>=20
> For example my loca.conf looks similar as =
http://www.engcore.com/2014/02/building-opencv-2-4-x-for-freescales-i-mx6-=
bsp-yocto/ =
<http://www.engcore.com/2014/02/building-opencv-2-4-x-for-freescales-i-mx6=
-bsp-yocto/>:
>=20
> ..
> CORE_IMAGE_EXTRA_INSTALL +=3D "libopencv-core-dev =
libopencv-highgui-dev
> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"
> ..
>=20
>=20
> I have located recipes *.bb @
> ../sources/meta-openembedded/meta-oe/recipes-support/opencv/
> opencv_2.4.bb <http://opencv_2.4.bb/>
> opencv_3.0.bb <http://opencv_3.0.bb/>
>=20
> *.bbapend @
> ../sources/meta-fsl-arm/openembedded-layer/recipes-support/opencv/
> opencv_2.4.bbappend
> opencv_3.0.bbappend
>=20
> Within fsl-imx-base.inc I can see reference to opencv_2.4.bbappend
> ../sources/meta-fsl-bsp-release/imx/meta-sdk/conf/distro/include
>=20
> ..
> BBMASK .=3D =
"|meta-fsl-arm/openembedded-layer/recipes-support/opencv/opencv_2.4.bbappe=
nd"
> ..
>=20
> but replacing with 3.0 doesn't compile with 3.0.
>=20
> I'd like to have OpenCV 3.0 installed.=20
>=20
> 1) How/what to modify/configure to get installed OpenCV 3.0 into image =
?

3.0 is set to be not preferred version if you see the main .bb you will =
see=20

DEFAULT_PREFERENCE =3D "-1=E2=80=9D

remove that and it will kick in

> 2) How to control OpenCV build for Yocto and how packageconfig option =
to use to turn on/off individual OpenCV options?=20
>=20
>=20
> Thank you for your advice very much.
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8FE25112-6C04-4716-9113-C2328CB37F38
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Nov 24, 2016, at 2:40 AM, Peter Balazovic &lt;<a =
href=3D"mailto:balazovic.peter@gmail.com" =
class=3D"">balazovic.peter@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Dears,<div class=3D""><br class=3D""></div><div class=3D"">I'm =
building Yocto image and this includes OpenCV 2.4 =
release.&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D"">For example my loca.conf looks similar as <a =
href=3D"http://www.engcore.com/2014/02/building-opencv-2-4-x-for-freescale=
s-i-mx6-bsp-yocto/" =
class=3D"">http://www.engcore.com/2014/02/building-opencv-2-4-x-for-freesc=
ales-i-mx6-bsp-yocto/</a>:</div><div class=3D""><br class=3D""></div><div =
class=3D"">..</div><div class=3D""><div class=3D""><i =
class=3D"">CORE_IMAGE_EXTRA_INSTALL +=3D "libopencv-core-dev =
libopencv-highgui-dev</i></div><div class=3D""><i =
class=3D"">libopencv-imgproc-dev libopencv-objdetect-dev =
libopencv-ml-dev"</i></div></div><div class=3D"">..</div><div =
class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">I have located recipes *.bb @</div><div class=3D""><i =
class=3D"">../sources/meta-openembedded/meta-oe/recipes-support/opencv/</i=
></div><div class=3D""><i class=3D""><a href=3D"http://opencv_2.4.bb/" =
class=3D"">opencv_2.4.bb</a></i></div><div class=3D""><div class=3D""><i =
class=3D""><a href=3D"http://opencv_3.0.bb/" =
class=3D"">opencv_3.0.bb</a></i></div></div><div class=3D""><br =
class=3D""></div><div class=3D"">*.bbapend @</div><div class=3D""><div =
class=3D""><i =
class=3D"">../sources/meta-fsl-arm/openembedded-layer/recipes-support/open=
cv/</i></div></div><div class=3D""><div class=3D""><i =
class=3D"">opencv_2.4.bbappend</i></div><div class=3D""><i =
class=3D"">opencv_3.0.bbappend</i></div></div><div class=3D""><i =
class=3D""><br class=3D""></i></div><div class=3D"">Within =
fsl-imx-base.inc I can see reference =
to&nbsp;opencv_2.4.bbappend</div><div class=3D""><i =
class=3D"">../sources/meta-fsl-bsp-release/imx/meta-sdk/conf/distro/includ=
e</i></div><div class=3D""><br class=3D""></div><div =
class=3D"">..</div><div class=3D"">BBMASK .=3D =
"|meta-fsl-arm/openembedded-layer/recipes-support/opencv/opencv_2.4.bbappe=
nd"<br class=3D""></div><div class=3D"">..</div><div class=3D""><br =
class=3D""></div><div class=3D"">but replacing with 3.0 doesn't compile =
with 3.0.</div><div class=3D""><br class=3D""></div><div class=3D"">I'd =
like to have OpenCV 3.0 installed.&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D"">1) How/what to modify/configure to get =
installed OpenCV 3.0&nbsp;into image =
?</div></div></div></blockquote><div><br class=3D""></div><div>3.0 is =
set to be not preferred version if you see the main .bb you will =
see&nbsp;</div><div><br class=3D""></div><div>DEFAULT_PREFERENCE =3D =
"-1=E2=80=9D</div><div><br class=3D""></div><div>remove that and it will =
kick in</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"">2) How to control =
OpenCV build for Yocto and how packageconfig option to use to turn =
on/off individual OpenCV options?&nbsp;</div><div class=3D""><br =
class=3D""></div><div class=3D""><br class=3D""></div><div =
class=3D"">Thank you for your advice very much.</div><div class=3D""><br =
class=3D""></div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_8FE25112-6C04-4716-9113-C2328CB37F38--
