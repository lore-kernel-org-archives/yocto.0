Return-Path: <ridishonline@gmail.com>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2CC5E007DC
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 12:44:50 -0800 (PST)
Received: by mail-ob0-f178.google.com with SMTP id uz6so15946934obc.37
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 12:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=/Mp+norTuZoLz3o1Q6kiO21HDLAwwZvpJFfckUxqQL8=;
	b=KplyBxA6eQKNQDJlhaUZdzACi2teQefYxBrJuW0T/CxAZXvlUPBN5DA9efQZgnrZE3
	loQiU14DEC3eStBWRABsjRLfXYNcvsX8HMDgKRAADtU0HVCYxJ+wR4ojehMTIPoEwR5h
	uhGv2wNIJI+6Ox7KbVim2beyq9lCW0CY6ibopw7bJAVAixPuXztVXwl04yE3T6TfFPNl
	9eqFY9joLfSiFj+F1PvcJdXS9151Z7K1qcCw1mxIUQgT6dOjBj6tQ+WrcgAbtuge1pJZ
	42niCThCDqd2M7k50mV3E3vKKP6xdlfpNAPX4ZOQBzlHPDTXjIvr8/wbt36en2/P3sSE
	U2Fg==
MIME-Version: 1.0
X-Received: by 10.60.97.36 with SMTP id dx4mr49293286oeb.40.1388781890104;
	Fri, 03 Jan 2014 12:44:50 -0800 (PST)
Received: by 10.60.140.164 with HTTP; Fri, 3 Jan 2014 12:44:50 -0800 (PST)
Date: Fri, 3 Jan 2014 12:44:50 -0800
Message-ID: <CAMHavcKB0BT3E280_GFrWpZgbY8ct89n59ZeX=YFh10Z9U=AUA@mail.gmail.com>
From: Ridish Rema Aravindan <ridishonline@gmail.com>
To: yocto@yoctoproject.org, hans.beckerus@gmail.com
Cc: Balaji_Punnuru@cable.comcast.com, Shiva.Mallushetty@lntinfotech.com,
	"ridish.ra" <ridish.ra@lntinfotech.com>,
	Padmapriya.Kumarasamy@lntinfotech.com,
	KalyanKumar.Nagabhirava@lntinfotech.com, Sanjay_Dorairaj@cable.comcast.com
Subject: libtool problem? - In poky dora
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
X-List-Received-Date: Fri, 03 Jan 2014 20:44:52 -0000
Content-Type: multipart/alternative; boundary=089e013a2b083af2c504ef16fbb1

--089e013a2b083af2c504ef16fbb1
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I work for Comcast and basically we are trying to cross compile using the
toolchain and rootfs generated as part
of poky-dora-10.0.0.0 compilation. We used the target image for compilation
as core-image-x11 with the machine
configured as qemux86.

Now the issue described by Hans dated Sep 4th 2013 in libtool of poky-chris
[1.4] seems to be present in poky dora too
while I was cross compiling DirectFB 1.4.3 for qemux86 platform.

https://lists.yoctoproject.org/pipermail/yocto/2013-September/015890.html

After debugging, I could see that the libtool complains about .la files
that have been moved and .la file have entries like
this:

dependency_libs=' =/usr/lib/libglapi.la =/usr/lib/libXdamage.la
=/usr/lib/libXfixes.la =/usr/lib/libXfixes.la =/usr/lib/libX11-xcb.la
=/usr/lib/libxcb-glx.la =/usr/lib/libxcb-dri2.la =/usr/lib/libXxf86vm.la
=/usr/lib/libXext.la =/usr/lib/libXext.la =/usr/lib/libX11.la
=/usr/lib/libX11.la =/usr/lib/libxcb.la
=/usr/lib/libxcb.la=/usr/lib/libXau.la =/usr/lib/libXdmcp.la
=/usr/lib/libXau.la
=/usr/lib/libXdmcp.la =/usr/lib/libdrm.la -lm -lpthread -ldl'

I also tried to apply patch described in the above mentioned thread and
seems like the patch doesn't apply.

So could you please help providing me the patch for this issue on poky dora
10.0.0?

Thanks,
Ridish

--089e013a2b083af2c504ef16fbb1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi,</div><div><br></div><div>I work fo=
r Comcast and basically we are trying to cross compile using the toolchain =
and rootfs generated as part</div><div>of poky-dora-10.0.0.0 compilation. W=
e used the target image for compilation as core-image-x11 with the machine<=
/div>
<div>configured as qemux86.</div><div><br></div><div>Now the issue describe=
d by Hans dated Sep 4th 2013 in libtool of poky-chris [1.4] seems to be pre=
sent in poky dora too</div><div>while I was cross compiling DirectFB 1.4.3 =
for qemux86 platform.</div>
<div><br></div><div><a href=3D"https://lists.yoctoproject.org/pipermail/yoc=
to/2013-September/015890.html">https://lists.yoctoproject.org/pipermail/yoc=
to/2013-September/015890.html</a><br></div><div><br></div><div>After debugg=
ing, I could see that the=A0<span style=3D"color:rgb(0,0,0);white-space:pre=
-wrap">libtool complains about .la files that have been moved and .la file =
have entries like</span></div>
<div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap">this:</span></di=
v><div><span style=3D"color:rgb(0,0,0);white-space:pre-wrap"><br></span></d=
iv><div><span style=3D"color:rgb(0,0,0);font-family:&#39;Trebuchet MS&#39;,=
sans-serif;font-size:13px">dependency_libs=3D&#39; =3D/usr/lib/<a href=3D"h=
ttp://libglapi.la">libglapi.la</a> =3D/usr/lib/libXdamage.la =3D/usr/lib/li=
bXfixes.la =3D/usr/lib/libXfixes.la =3D/usr/lib/libX11-xcb.la =3D/usr/lib/<=
a href=3D"http://libxcb-glx.la">libxcb-glx.la</a> =3D/usr/lib/<a href=3D"ht=
tp://libxcb-dri2.la">libxcb-dri2.la</a> =3D/usr/lib/libXxf86vm.la =3D/usr/l=
ib/libXext.la =3D/usr/lib/libXext.la =3D/usr/lib/libX11.la =3D/usr/lib/libX=
11.la =3D/usr/lib/<a href=3D"http://libxcb.la">libxcb.la</a> =3D/usr/lib/<a=
 href=3D"http://libxcb.la">libxcb.la</a> =3D/usr/lib/libXau.la =3D/usr/lib/=
libXdmcp.la =3D/usr/lib/libXau.la =3D/usr/lib/libXdmcp.la =3D/usr/lib/<a hr=
ef=3D"http://libdrm.la">libdrm.la</a> -lm -lpthread -ldl&#39;</span><span s=
tyle=3D"color:rgb(0,0,0);white-space:pre-wrap"><br>
</span></div><div><span style=3D"color:rgb(0,0,0);font-family:&#39;Trebuche=
t MS&#39;,sans-serif;font-size:13px"><br></span></div><div><span style=3D"c=
olor:rgb(0,0,0);font-family:&#39;Trebuchet MS&#39;,sans-serif;font-size:13p=
x">I also tried to apply patch described in the above mentioned thread and =
seems like the patch doesn&#39;t apply.</span></div>
<div><span style=3D"color:rgb(0,0,0);font-family:&#39;Trebuchet MS&#39;,san=
s-serif;font-size:13px"><br></span></div><div><span style=3D"color:rgb(0,0,=
0);font-family:&#39;Trebuchet MS&#39;,sans-serif;font-size:13px">So could y=
ou please help providing me the patch for this issue on poky dora 10.0.0?</=
span></div>
<div><span style=3D"color:rgb(0,0,0);font-family:&#39;Trebuchet MS&#39;,san=
s-serif;font-size:13px"><br></span></div><div><span style=3D"color:rgb(0,0,=
0);font-family:&#39;Trebuchet MS&#39;,sans-serif;font-size:13px">Thanks,</s=
pan></div>
<div><span style=3D"color:rgb(0,0,0);font-family:&#39;Trebuchet MS&#39;,san=
s-serif;font-size:13px">Ridish</span></div></div>

--089e013a2b083af2c504ef16fbb1--
