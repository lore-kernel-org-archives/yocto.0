Return-Path: <zaifupb@gmail.com>
Received: from mail-qc0-f194.google.com (mail-qc0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C792E013D0
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 03:32:06 -0700 (PDT)
Received: by mail-qc0-f194.google.com with SMTP id s10so59733qcv.1
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 03:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=XEzkhvLNZ1YNjnXnaZyjAtSjVBVmohvsRFG1hlXWIwc=;
	b=b2MkfxBf6gG7UpgiSqCWWTCIDT/SdSI3YPlOB/5iSHTDJKaEWgdkJhN4P8GnXvvPMD
	wVQzfd/zJodqE5f2yMs3PiizcBKIh5G4Q3t5s+I0AtEv7av5zv6wqFvk0+sPx1lU7ni4
	5HYNYfe7MeaSS0vnF6FM2jxf7sH+83yrNUL37eLvYq+NlvNsAhIml5nE/JjiGWQjejjG
	RAW/2pkNrgMq1G7yMxwp0FhQPsai2TNPcbRqCMHOeG6Yt/d6vnjcidaksOr1ooLUinXu
	qdY861FAikOb6pEk8wISU1jZIvQ4Es/plkEOJdhSmCU6xfCvQW/9Bp2/ruy5r4aewsHl
	Kaiw==
MIME-Version: 1.0
X-Received: by 10.224.128.9 with SMTP id i9mr1200409qas.81.1367922725185; Tue,
	07 May 2013 03:32:05 -0700 (PDT)
Received: by 10.229.164.76 with HTTP; Tue, 7 May 2013 03:32:05 -0700 (PDT)
Date: Tue, 7 May 2013 12:32:05 +0200
Message-ID: <CABx0rKE=Jo2E1XY=-Lm6+zFyOSB6NekUNp83FzjsHOvNLrQbFw@mail.gmail.com>
From: Zaif upb <zaifupb@gmail.com>
To: yocto@yoctoproject.org
Subject: Build Custom Image with OpenCV and Gstreamer
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
X-List-Received-Date: Tue, 07 May 2013 10:32:06 -0000
Content-Type: multipart/alternative; boundary=001a11c2cafc1d8f4104dc1e5421

--001a11c2cafc1d8f4104dc1e5421
Content-Type: text/plain; charset=ISO-8859-1

Hello,

I am trying to build my own custom image for Gumstix. I followed
Gumstix-YoctoProject-Repo<https://github.com/gumstix/Gumstix-YoctoProject-Repo>
instructions
here and successfully built  *gumstix-console-image. *Now, i am trying
to *Integrate
the GStreamer and OpenCV libraries into the image. (either as compiled
packages or integrated into the file system). *
*
*
*There is a gumstix-console-image.bb file in
poky/meta-gumstix/recipes-images/gumstix. What changes should i make to
that .bb file for OpenCV ?Do i need to make changes in
gumstix-console-image.bb file or any other ideas to make my own custom
image ?*
*
*
*Thank You,*
*
*
*Regards,*
*Zaif*

--001a11c2cafc1d8f4104dc1e5421
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div style>I am trying to build my ow=
n custom image for Gumstix. I followed <a href=3D"https://github.com/gumsti=
x/Gumstix-YoctoProject-Repo">Gumstix-YoctoProject-Repo</a>=A0instructions h=
ere and successfully built =A0<i>gumstix-console-image. </i>Now, i am tryin=
g to=A0<b id=3D"docs-internal-guid-70117eed-7e83-788c-0e31-e3842ef14878" st=
yle=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);background-color=
:transparent;vertical-align:baseline;white-space:pre-wrap"><font face=3D"ar=
ial, helvetica, sans-serif">Integrate the GStreamer and OpenCV libraries in=
to the image. (either as compiled packages or integrated into the file syst=
em). </font></span></b></div>
<div style><b style=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);=
background-color:transparent;vertical-align:baseline;white-space:pre-wrap">=
<font face=3D"arial, helvetica, sans-serif"><br></font></span></b></div><di=
v style>
<b style=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);background-=
color:transparent;vertical-align:baseline;white-space:pre-wrap"><font face=
=3D"arial, helvetica, sans-serif">There is a <i><a href=3D"http://gumstix-c=
onsole-image.bb">gumstix-console-image.bb</a></i> file in <i>poky/meta-gums=
tix/recipes-images/gumstix</i>. What changes should i make to that .bb file=
 for OpenCV ?Do i need to make changes in <i><a href=3D"http://gumstix-cons=
ole-image.bb">gumstix-console-image.bb</a></i> file or any other ideas to m=
ake my own custom image ?</font></span></b></div>
<div style><b style=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);=
background-color:transparent;vertical-align:baseline;white-space:pre-wrap">=
<font face=3D"arial, helvetica, sans-serif"><br></font></span></b></div><di=
v style>
<b style=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);background-=
color:transparent;vertical-align:baseline;white-space:pre-wrap"><font face=
=3D"arial, helvetica, sans-serif">Thank You,</font></span></b></div><div st=
yle>
<b style=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);background-=
color:transparent;vertical-align:baseline;white-space:pre-wrap"><font face=
=3D"arial, helvetica, sans-serif"><br></font></span></b></div><div style><b=
 style=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);background-co=
lor:transparent;vertical-align:baseline;white-space:pre-wrap"><font face=3D=
"arial, helvetica, sans-serif">Regards,</font></span></b></div>
<div style><b style=3D"font-weight:normal"><span style=3D"color:rgb(0,0,0);=
background-color:transparent;vertical-align:baseline;white-space:pre-wrap">=
<font face=3D"arial, helvetica, sans-serif">Zaif</font></span></b></div></d=
iv>

--001a11c2cafc1d8f4104dc1e5421--
