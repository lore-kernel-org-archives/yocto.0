Return-Path: <daltonfury42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 543CCE00C71; Sat, 13 Feb 2016 12:20:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daltonfury42[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1201E00C41
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 12:20:51 -0800 (PST)
Received: by mail-vk0-f51.google.com with SMTP id e185so83137464vkb.1
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 12:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=SLPV9Qh/NpiqYBRAJzljpoe4pSpk8MrKDdALZSdxr2g=;
	b=uLz5VW2Hv1abDszNCgh/RN5PVrk49GBgSDrILxlwMtebHuENfWmNSEocy8zJsuvaVX
	OKIm9brpdPkLmC5Ua2W9s2HU5AyGSn/bsJuNaqWINFA6i9wzJI2lRnodgLfGZsgeje/8
	0p6OI+uAAjjNeVUXTU+L+oNm1y1Zva2FKfLrjJXGiIAnohtA2OdXJ4n2mBk/J0lACX5x
	UJOHVmFxxSkQnN9uQyTez7Z39fq/usapvds9MHNHnpd5zJbZ3f64gxBXOnJ6fAh51UR/
	cJ0NxW00hnRUP4ts0Ctc95IOyHeCG9QLfbUwXEo6byIhVKyQoPM/vstg/NB53fgKCeZQ
	ht9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-type;
	bh=SLPV9Qh/NpiqYBRAJzljpoe4pSpk8MrKDdALZSdxr2g=;
	b=Vhl+XgfSMXNSH7SkJJ4pjahaMeEDth6J6j95kVgLmu1RjPp/6IPK8wVfhhO0535ASf
	N/127NjKEGpqkxGyyOLhHrEulnQWsP4ilTlTVTlU2XWEcRu8U0sDGo+GCci58VM6iGqS
	BzSuXquaR4ye4MyGh8E9Ql/+g6YkjA5+szeSnTY3cPYsd75QWj7luUUyepn6p8oajq6s
	EpNg3Kr2CSd097P1dd5tuNi1vygn76spjeuJi8IZ8TNzeUYiuQOqvZVdJ2ojJpJ+fnQ5
	3hOafmZgwZcEF/t3vwMGSFtpXDsSPTgM6Miq1QHqYnA447shdCihK4Qg/V3QP/zFHTGJ
	wIig==
X-Gm-Message-State: AG10YOTYZc+yzNQrPHBjKisp9qDnjeYnVwqanAc9JVOQJs6/UDkRccn0ExVOYmQ2rWQH9zby8jOAoVQTIZTJcg==
X-Received: by 10.31.135.79 with SMTP id j76mr6104404vkd.91.1455394850592;
	Sat, 13 Feb 2016 12:20:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.167.9 with HTTP; Sat, 13 Feb 2016 12:20:11 -0800 (PST)
From: Dalton Fury <daltonfury42@gmail.com>
Date: Sun, 14 Feb 2016 01:50:11 +0530
Message-ID: <CALH0Xh=3+2VCptbVzL67e4Hwf+cyKm=AL6fYfNrR9Ca+ReF+Vw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Compiling OpenCV with CUDA support.
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
X-List-Received-Date: Sat, 13 Feb 2016 20:20:53 -0000
Content-Type: multipart/alternative; boundary=001a114592e413dc2a052bac850c

--001a114592e413dc2a052bac850c
Content-Type: text/plain; charset=UTF-8

I have been trying to compile OpenCV 3.0 with CUDA support on a NVidia
Jetson TK1 (which supports CUDA). According to the OpenCV docs:

"To enable CUDA support, configure OpenCV using CMake with WITH_CUDA=ON .
When the flag is set and if CUDA is installed, the full-featured OpenCV
CUDA module is built. Otherwise, the module is still built but at runtime
all functions from the module throw Exception
<http://docs.opencv.org/3.0-beta/modules/core/doc/utility_and_system_functions_and_macros.html#Exception%20:%20public%20std::exception>
 "

So CUDA is a build time dependency for OpenCV. Cuda libraries are provided
by Nvidia in binary form via .deb files. So what I did was to make recipes
that installs the binaries from the .deb files. I wrote them in such a way
that all other binaries are dependencies (DEPENDS) of cuda-toolkit-6-5 so
that when I install cuda-toolkit-6-5, every library associated with CUDA
gets installed.

I then made cuda-toolkit-6-5 a build dependency (DEPENDS) of opencv, and
added the -WITH_CUDA=ON cmake flag. But still when I inspect the
do_configure logs of OpenCV, I find that CUDA support has not been turned
on.

I am guessing that FindCUDA.cmake is not finding the binaries installed by
cuda-toolkit-6-5.

How do I fix this? Or were do I check for the problem?


Here are the recipes I wrote for installing CUDA binaries:
https://github.com/daltonfury42/meta-yocto-jetson-mylayer/tree/master/recipes-cuda/cuda

Here is the recipe that I used for OpenCV which is a modification of the
one from meta-oe:
https://github.com/daltonfury42/meta-yocto-jetson-mylayer/blob/master/recipes-opencv/opencv/opencv_3.0.bb


Here is the do_configure log: https://paste.ubuntu.com/15042198/

--001a114592e413dc2a052bac850c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have been trying to compile OpenCV 3.0 with CUDA support=
 on a NVidia Jetson TK1 (which supports CUDA). According to the OpenCV docs=
:=C2=A0<div><br></div><div><span style=3D"color:rgb(0,0,0);font-family:&#39=
;Open Sans&#39;,&#39;Lucida Grande&#39;,&#39;Lucida Sans Unicode&#39;,Genev=
a,Verdana,sans-serif;font-size:14px;line-height:18.2px;text-align:justify">=
&quot;To enable CUDA support, configure OpenCV using=C2=A0</span><tt style=
=3D"font-family:Consolas,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera San=
s Mono&#39;,monospace;font-size:14px;min-width:780px;max-width:1080px;color=
:rgb(0,48,72);padding:1px;line-height:18.2px;text-align:justify"><span>CMak=
e</span></tt><span style=3D"color:rgb(0,0,0);font-family:&#39;Open Sans&#39=
;,&#39;Lucida Grande&#39;,&#39;Lucida Sans Unicode&#39;,Geneva,Verdana,sans=
-serif;font-size:14px;line-height:18.2px;text-align:justify">=C2=A0with=C2=
=A0</span><tt style=3D"font-family:Consolas,&#39;DejaVu Sans Mono&#39;,&#39=
;Bitstream Vera Sans Mono&#39;,monospace;font-size:14px;min-width:780px;max=
-width:1080px;color:rgb(0,48,72);padding:1px;line-height:18.2px;text-align:=
justify"><span>WITH_CUDA=3DON</span></tt><span style=3D"color:rgb(0,0,0);fo=
nt-family:&#39;Open Sans&#39;,&#39;Lucida Grande&#39;,&#39;Lucida Sans Unic=
ode&#39;,Geneva,Verdana,sans-serif;font-size:14px;line-height:18.2px;text-a=
lign:justify">=C2=A0. When the flag is set and if CUDA is installed, the fu=
ll-featured OpenCV CUDA module is built. Otherwise, the module is still bui=
lt but at runtime all functions from the module throw=C2=A0</span><tt style=
=3D"text-decoration:none;font-family:Consolas,&#39;DejaVu Sans Mono&#39;,&#=
39;Bitstream Vera Sans Mono&#39;,monospace;font-size:12px;line-height:18.2p=
x;text-align:justify;min-width:780px;max-width:1080px;padding:1px;font-weig=
ht:bold;border:0px;background-color:transparent"><span><a href=3D"http://do=
cs.opencv.org/3.0-beta/modules/core/doc/utility_and_system_functions_and_ma=
cros.html#Exception%20:%20public%20std::exception" title=3D"class Exception=
 : public std::exception" style=3D"color:rgb(40,120,162);text-decoration:no=
ne;font-family:&#39;Open Sans&#39;,&#39;Lucida Grande&#39;,&#39;Lucida Sans=
 Unicode&#39;,Geneva,Verdana,sans-serif;font-size:14px;line-height:18.2px;t=
ext-align:justify" target=3D"_blank">Exception</a><font color=3D"#2878a2">=
=C2=A0</font><font color=3D"#000000">&quot;</font></span></tt><br></div><di=
v><tt style=3D"text-decoration:none;font-family:Consolas,&#39;DejaVu Sans M=
ono&#39;,&#39;Bitstream Vera Sans Mono&#39;,monospace;font-size:12px;line-h=
eight:18.2px;text-align:justify;min-width:780px;max-width:1080px;padding:1p=
x;font-weight:bold;border:0px;background-color:transparent"><span><font col=
or=3D"#000000"><br></font></span></tt></div><div style=3D"text-align:justif=
y"><font color=3D"#000000" face=3D"Consolas, DejaVu Sans Mono, Bitstream Ve=
ra Sans Mono, monospace"><span style=3D"font-size:12px;line-height:18.2px">=
So CUDA is a build time dependency for OpenCV. Cuda libraries are provided =
by Nvidia in binary form via .deb files. So what I did was to make recipes =
that installs the binaries from the .deb files. I wrote them in such a way =
that all other binaries are dependencies (DEPENDS) of cuda-toolkit-6-5 so t=
hat when I install cuda-toolkit-6-5, every library associated with CUDA get=
s installed.</span></font></div><div style=3D"text-align:justify"><font col=
or=3D"#000000" face=3D"Consolas, DejaVu Sans Mono, Bitstream Vera Sans Mono=
, monospace"><span style=3D"font-size:12px;line-height:18.2px"><br></span><=
/font></div><div style=3D"text-align:justify"><font color=3D"#000000" face=
=3D"Consolas, DejaVu Sans Mono, Bitstream Vera Sans Mono, monospace"><span =
style=3D"font-size:12px;line-height:18.2px">I then made cuda-toolkit-6-5 a =
build dependency (DEPENDS) of opencv, and added the -WITH_CUDA=3DON cmake f=
lag. But still when I inspect the do_configure logs of OpenCV, I find that =
CUDA support has not been turned on.</span></font></div><div style=3D"text-=
align:justify"><font color=3D"#000000" face=3D"Consolas, DejaVu Sans Mono, =
Bitstream Vera Sans Mono, monospace"><span style=3D"font-size:12px;line-hei=
ght:18.2px"><br></span></font></div><div style=3D"text-align:justify"><font=
 color=3D"#000000" face=3D"Consolas, DejaVu Sans Mono, Bitstream Vera Sans =
Mono, monospace"><span style=3D"font-size:12px;line-height:18.2px">I am gue=
ssing that FindCUDA.cmake is not finding the binaries installed by cuda-too=
lkit-6-5.</span></font></div><div style=3D"text-align:justify"><font color=
=3D"#000000" face=3D"Consolas, DejaVu Sans Mono, Bitstream Vera Sans Mono, =
monospace"><span style=3D"font-size:12px;line-height:18.2px"><br></span></f=
ont></div><div style=3D"text-align:justify"><font color=3D"#000000" face=3D=
"Consolas, DejaVu Sans Mono, Bitstream Vera Sans Mono, monospace"><span sty=
le=3D"font-size:12px;line-height:18.2px">How do I fix this? Or were do I ch=
eck for the problem?=C2=A0</span></font></div><div style=3D"text-align:just=
ify"><br></div><div style=3D"text-align:justify"><font color=3D"#000000" fa=
ce=3D"Consolas, DejaVu Sans Mono, Bitstream Vera Sans Mono, monospace"><spa=
n style=3D"font-size:12px;line-height:18.2px"><br></span></font></div><div =
style=3D"text-align:justify"><font color=3D"#000000" face=3D"Consolas, Deja=
Vu Sans Mono, Bitstream Vera Sans Mono, monospace"><span style=3D"font-size=
:12px;line-height:18.2px">Here are the recipes I wrote for installing CUDA =
binaries:=C2=A0<a href=3D"https://github.com/daltonfury42/meta-yocto-jetson=
-mylayer/tree/master/recipes-cuda/cuda" target=3D"_blank">https://github.co=
m/daltonfury42/meta-yocto-jetson-mylayer/tree/master/recipes-cuda/cuda</a><=
/span></font></div><div style=3D"text-align:justify"><font color=3D"#000000=
" face=3D"Consolas, DejaVu Sans Mono, Bitstream Vera Sans Mono, monospace">=
<span style=3D"font-size:12px;line-height:18.2px"><br></span></font></div><=
div style=3D"text-align:justify"><font color=3D"#000000" face=3D"Consolas, =
DejaVu Sans Mono, Bitstream Vera Sans Mono, monospace"><span style=3D"font-=
size:12px;line-height:18.2px">Here is the recipe that I used for OpenCV whi=
ch is a modification of the one from meta-oe:=C2=A0<a href=3D"https://githu=
b.com/daltonfury42/meta-yocto-jetson-mylayer/blob/master/recipes-opencv/ope=
ncv/opencv_3.0.bb" target=3D"_blank">https://github.com/daltonfury42/meta-y=
octo-jetson-mylayer/blob/master/recipes-opencv/opencv/opencv_3.0.bb</a></sp=
an></font><span style=3D"font-size:12px;line-height:18.2px;color:rgb(0,0,0)=
;font-family:Consolas,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera Sans M=
ono&#39;,monospace">=C2=A0</span></div><div style=3D"text-align:justify"><s=
pan style=3D"font-size:12px;line-height:18.2px;color:rgb(0,0,0);font-family=
:Consolas,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera Sans Mono&#39;,mon=
ospace"><br></span></div><div style=3D"text-align:justify"><span style=3D"f=
ont-size:12px;line-height:18.2px;color:rgb(0,0,0);font-family:Consolas,&#39=
;DejaVu Sans Mono&#39;,&#39;Bitstream Vera Sans Mono&#39;,monospace">Here i=
s the do_configure log:=C2=A0</span><font color=3D"#000000" face=3D"Consola=
s, DejaVu Sans Mono, Bitstream Vera Sans Mono, monospace"><span style=3D"fo=
nt-size:12px;line-height:18.2px"><a href=3D"https://paste.ubuntu.com/150421=
98/" target=3D"_blank">https://paste.ubuntu.com/15042198/</a></span></font>=
</div></div>

--001a114592e413dc2a052bac850c--
