Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BDFCE0084F; Thu, 13 Nov 2014 23:12:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
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
	*      [209.85.213.193 listed in list.dnswl.org]
Received: from mail-ig0-f193.google.com (mail-ig0-f193.google.com
	[209.85.213.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 216D9E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 23:12:29 -0800 (PST)
Received: by mail-ig0-f193.google.com with SMTP id hl2so215868igb.8
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 23:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/pvVCtxqCJmwzRD+41zDKOHmx2zf5EPhsFnsCYeCfIw=;
	b=JCBtC5Fqh1PTtRNo0dDDXieGD/uJAzi4CblsMRzO4nLHYRje/vYqMd3FOMVJ5g2MWD
	4GFQxPqHJf5ksgvl2kVARYsRFYLzmKi1U+7h92rDD0CfbLe18+FI/mK3WMa+LHIa7U7c
	rjUX5McdJ1l6IkDm+a2YOaKY5dvvmX9uKDhCfRiDCcX2sdrtNRYjEMj5BIV2Hzq40O+b
	PMcYVhEKEfvQmi0eIpDGw0ygHbMKpObXaReAW/5Yn1Cv2Oj/JmcG3OjL4K8KmYZhz6hB
	FKD6/p4O0WR8nodvjjwjFve/YGZQFJeXDiyueGHLFHopASFK5KXnti3+rrJyWHX1asqK
	g0Pg==
MIME-Version: 1.0
X-Received: by 10.42.237.211 with SMTP id kp19mr230763icb.70.1415949148810;
	Thu, 13 Nov 2014 23:12:28 -0800 (PST)
Received: by 10.50.155.170 with HTTP; Thu, 13 Nov 2014 23:12:28 -0800 (PST)
Date: Thu, 13 Nov 2014 23:12:28 -0800
Message-ID: <CAGMdoFnkFtyjZ7R1jzBM3WUCYEi_A-httnntQZFBVgiahBz9tw@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Web frameworks on embedded linux
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
X-List-Received-Date: Fri, 14 Nov 2014 07:12:34 -0000
Content-Type: multipart/alternative; boundary=047d7b6d7c2808f4380507cc5a38

--047d7b6d7c2808f4380507cc5a38
Content-Type: text/plain; charset=UTF-8

I've been trying to get an existing python flask application running on an
embedded linux distro (Poky).  The web app was originally deployed on a
Debian distro.  I need to move the application to a less heftier board
and wanted to try a distro created by Yocto, rather than try to pare down
Debian.

I've been following the chain of dependencies for the web application and
adding them to Yocto to try and get the app to work (nginx, uwsgi, python,
pyserial, etc.), and hit a bump - Python's built-in logging and codecs
modules are not provided by Yocto.  Maybe I can add them myself, or maybe
I'll rip them out of the application, but I wanted to take a step back and
see if maybe Python/Flask is not the best app framework to use in an
embedded linux distro.

CPU is not a problem.  This board has ARM Cortex A9 processor running at
667MHz.  RAM should be OK as well at 512MB, but I am limited by the 32 MB
flash size on the board. I started with core-image-minimal on Poky (which
was ~3MB), and I'm up to almost 8MB now.  I guesstimate that I'm maybe 50%
of the way along the dependency chain. I haven't even gotten to flask yet,
just the webserver, uwsgi and plain python.  The size I'm referring to is
just the ramdisk image, not including FSBL nor u-boot (which are minimal
and shouldn't grow much, if at all, at this point).  I don't know what I'll
eventually end up at, but I do have to share the 32MB flash with other
data; it's not dedicated to the OS/Linux.  How much space the OS gets is
still up in the air.  I'd say at least 16 MB and maybe as much as 20-24 MB.

While it would be nice to reuse the already written web application, if the
Python/Flask stack turns out to be too heavy, a port/rewrite is not out of
the question.  This application just displays a web frontend to get/set
values on a device over a serial port.

So I wanted to get the list's thoughts and experience on:

1) Web application frameworks to use with an embedded linux constrained by
image size.  How well supported by Yocto recipes is the framework?  I've
been intrigued by the Lua language and the Kepler/Orbit web framework for
Lua, but except for Lua, there doesn't appear to be Yocto recipes for them.


2) Python modules that Yocto doesn't provide recipes for, like logging and
codecs modules.  How difficult is it to augment python-core?  Is it just a
matter of adding your own recipe in your own layer? Logging and codecs is
normally a part of a default Python install, so not sure yet how I would go
about adding this.

Thanks for your help.

Edward

--047d7b6d7c2808f4380507cc5a38
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve been trying to get an existing python flask appli=
cation running on an embedded linux distro (Poky).=C2=A0 The web app was or=
iginally deployed on a Debian distro.=C2=A0 I need to move the application =
to a less heftier board and=C2=A0wanted to try a distro created by Yocto, r=
ather than try to pare down Debian.<br><br>I&#39;ve been following the chai=
n of dependencies for the web application and adding them to Yocto to try a=
nd get the app to work (nginx, uwsgi, python, pyserial, etc.), and hit a bu=
mp - Python&#39;s built-in logging and codecs modules are not provided by Y=
octo.=C2=A0 Maybe I can add them myself, or maybe I&#39;ll rip them out of =
the application, but I wanted to take a step back and see if maybe Python/F=
lask is not the best app framework to use in an embedded linux distro. =C2=
=A0<br><br>CPU is not a problem.=C2=A0 This board has ARM Cortex A9 process=
or running at 667MHz.=C2=A0 RAM should be OK as well at 512MB, but I am lim=
ited by the 32 MB flash size on the board. I started with core-image-minima=
l on Poky (which was ~3MB), and I&#39;m up to almost 8MB now.=C2=A0 I guess=
timate that I&#39;m maybe 50% of the way along the dependency chain. I have=
n&#39;t even gotten to flask yet, just the webserver, uwsgi and plain pytho=
n.=C2=A0 The size I&#39;m referring to is just the ramdisk image, not inclu=
ding FSBL nor u-boot (which are minimal and shouldn&#39;t grow much, if at =
all, at this point).=C2=A0 I don&#39;t know what I&#39;ll eventually end up=
 at, but I do have to share the 32MB flash with other data; it&#39;s not de=
dicated to the OS/Linux.=C2=A0 How much space the OS gets is still up in th=
e air.=C2=A0 I&#39;d say at least 16 MB and maybe as much as 20-24 MB.<br><=
br>While it would be nice to reuse the already written web application, if =
the Python/Flask stack turns out to be too heavy, a port/rewrite is not out=
 of the question.=C2=A0 This application just displays a web frontend to ge=
t/set values on a device over a serial port.<br><br>So I wanted to get the =
list&#39;s thoughts and experience on:<br><br>1) Web application frameworks=
 to use with an embedded linux constrained by image size.=C2=A0 How well su=
pported by Yocto recipes is the framework?=C2=A0 I&#39;ve been intrigued by=
 the Lua language and the Kepler/Orbit web framework for Lua, but except fo=
r Lua, there doesn&#39;t appear to be Yocto recipes for them. =C2=A0<br><br=
>2) Python modules that Yocto doesn&#39;t provide recipes for, like logging=
 and codecs modules.=C2=A0 How difficult is it to augment python-core?=C2=
=A0 Is it just a matter of adding your own recipe in your own layer? Loggin=
g and codecs is normally a part of a default Python install, so not sure ye=
t how I would go about adding this.<br><div><br></div><div>Thanks for your =
help.</div><div><br></div><div>Edward</div></div>

--047d7b6d7c2808f4380507cc5a38--
