Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BC8FE00CAE; Thu, 24 Nov 2016 02:40:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B27C8E00955
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 02:40:18 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id a197so108968426wmd.0
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 02:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=XEFjN0rmckk3rf2fzkVdoyGE6KMsLpDnQtWpbVgd6BY=;
	b=NqLUSi2zcxNdK2D0QZ0KpsG2KBgR/zBQK9RcRF0GqjCKCudocVUWEpaxTwGoeH5oz6
	lm4ISdw3g7DcX5uzIF1NkIwHEOeDRQxv2CVZKgfWecIi+R6FcgxZYFkBPcabratBNGkV
	FWrZ/eLx8H3/8UFGZG9cJSA5Rx3Norxzhz221kSAQMoplRfrXIHoQ/7ZJdpVLvr+SV9D
	Wd5oQ641UmUUi9Q4QPSNrbweGTVy2Otl+Xxt1wR8OyYfpGNXmw04dsBFcK79/Bv3fQpI
	YXSqD67A/7AjM6zUren+J29bolhD6tMMoiJjOISElz+bhxAYga/DGlJgGt+ReXpTP1ko
	PzKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XEFjN0rmckk3rf2fzkVdoyGE6KMsLpDnQtWpbVgd6BY=;
	b=a2RMxBw3epaX+qJLbwisHiILoz3/iwxSPv3anWMlSJDWDPinNkB7GY7SX2tm+2FSiq
	tBB0LcjIWGllKv2cwu9EJblrmsOnBHamPKSYoPH1mKV/KUhrLoVqGDtdyvuIjVbFQYi7
	Mp+oPycb5CmroVxFC9espzHWte2SsTTDzfb5gfUGdzAByeoVLMN5s/zeDVd1OeA2u8xm
	URq8ZSVwGGbvovTyuy+HJPAW9q6GEa1L/9zcYb43gMwVxOOUWRx4N6Wmz7ZPYpStgZL0
	Fiq3ia+VWqgHYxFz9FE47HX4btML9X94DR6rfKFvdok8myEa2RFtLAbf6AeIcOuew5AH
	pVew==
X-Gm-Message-State: AKaTC0333zNADVAbEX7cBx4qMqJ+d2IZ6gCs5NVDDId2dFPAszjGwu6VO35aXl6pLr7Ly9q64Jna77fp3hyMkQ==
X-Received: by 10.194.119.68 with SMTP id ks4mr1532113wjb.171.1479984017048;
	Thu, 24 Nov 2016 02:40:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.117.41 with HTTP; Thu, 24 Nov 2016 02:40:16 -0800 (PST)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 24 Nov 2016 11:40:16 +0100
Message-ID: <CAFq4t4gmAmVmsxJY-78kooGzBWNJ0O47OQ8+1VFd0x7o0tzxjA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: change/modify recipe for OpenCV
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
X-List-Received-Date: Thu, 24 Nov 2016 10:40:24 -0000
Content-Type: multipart/alternative; boundary=089e011821cc9c0b61054209a112

--089e011821cc9c0b61054209a112
Content-Type: text/plain; charset=UTF-8

Dears,

I'm building Yocto image and this includes OpenCV 2.4 release.

For example my loca.conf looks similar as
http://www.engcore.com/2014/02/building-opencv-2-4-x-for-freescales-i-mx6-bsp-yocto/
:

..
*CORE_IMAGE_EXTRA_INSTALL += "libopencv-core-dev libopencv-highgui-dev*
*libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"*
..


I have located recipes *.bb @
*../sources/meta-openembedded/meta-oe/recipes-support/opencv/*
*opencv_2.4.bb <http://opencv_2.4.bb>*
*opencv_3.0.bb <http://opencv_3.0.bb>*

*.bbapend @
*../sources/meta-fsl-arm/openembedded-layer/recipes-support/opencv/*
*opencv_2.4.bbappend*
*opencv_3.0.bbappend*

Within fsl-imx-base.inc I can see reference to opencv_2.4.bbappend
*../sources/meta-fsl-bsp-release/imx/meta-sdk/conf/distro/include*

..
BBMASK .=
"|meta-fsl-arm/openembedded-layer/recipes-support/opencv/opencv_2.4.bbappend"
..

but replacing with 3.0 doesn't compile with 3.0.

I'd like to have OpenCV 3.0 installed.

1) How/what to modify/configure to get installed OpenCV 3.0 into image ?
2) How to control OpenCV build for Yocto and how packageconfig option to
use to turn on/off individual OpenCV options?


Thank you for your advice very much.

--089e011821cc9c0b61054209a112
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dears,<div><br></div><div>I&#39;m building Yocto image and=
 this includes OpenCV 2.4 release.=C2=A0</div><div><br></div><div>For examp=
le my loca.conf looks similar as <a href=3D"http://www.engcore.com/2014/02/=
building-opencv-2-4-x-for-freescales-i-mx6-bsp-yocto/">http://www.engcore.c=
om/2014/02/building-opencv-2-4-x-for-freescales-i-mx6-bsp-yocto/</a>:</div>=
<div><br></div><div>..</div><div><div><i>CORE_IMAGE_EXTRA_INSTALL +=3D &quo=
t;libopencv-core-dev libopencv-highgui-dev</i></div><div><i>libopencv-imgpr=
oc-dev libopencv-objdetect-dev libopencv-ml-dev&quot;</i></div></div><div>.=
.</div><div><br></div><div><br></div><div>I have located recipes *.bb @</di=
v><div><i>../sources/meta-openembedded/meta-oe/recipes-support/opencv/</i><=
/div><div><i><a href=3D"http://opencv_2.4.bb">opencv_2.4.bb</a></i></div><d=
iv><div><i><a href=3D"http://opencv_3.0.bb">opencv_3.0.bb</a></i></div></di=
v><div><br></div><div>*.bbapend @</div><div><div><i>../sources/meta-fsl-arm=
/openembedded-layer/recipes-support/opencv/</i></div></div><div><div><i>ope=
ncv_2.4.bbappend</i></div><div><i>opencv_3.0.bbappend</i></div></div><div><=
i><br></i></div><div>Within fsl-imx-base.inc I can see reference to=C2=A0op=
encv_2.4.bbappend</div><div><i>../sources/meta-fsl-bsp-release/imx/meta-sdk=
/conf/distro/include</i></div><div><br></div><div>..</div><div>BBMASK .=3D =
&quot;|meta-fsl-arm/openembedded-layer/recipes-support/opencv/opencv_2.4.bb=
append&quot;<br></div><div>..</div><div><br></div><div>but replacing with 3=
.0 doesn&#39;t compile with 3.0.</div><div><br></div><div>I&#39;d like to h=
ave OpenCV 3.0 installed.=C2=A0</div><div><br></div><div>1) How/what to mod=
ify/configure to get installed OpenCV 3.0=C2=A0into image ?</div><div>2) Ho=
w to control OpenCV build for Yocto and how packageconfig option to use to =
turn on/off individual OpenCV options?=C2=A0</div><div><br></div><div><br><=
/div><div>Thank you for your advice very much.</div><div><br></div></div>

--089e011821cc9c0b61054209a112--
