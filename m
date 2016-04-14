Return-Path: <sujith.h@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62577E00CAE; Thu, 14 Apr 2016 02:23:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sujith.h[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 339C6E00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 02:23:21 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id f105so59449381qge.2
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 02:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=SCvTTECjXOcRqVysb3aUpy/+LpEJA2NAeHvXQtM1Nek=;
	b=ewUhpCl8CBh8ca4R1Us4K3ijTC32A6RciN9LwRokYe1jvHsmyEAtc9fr/o6KX9X6V+
	zzghr1Dptp6Z9r/pdACEmWfmZnhHsKtpnnbXAuCzOv5Z6K1PRevTQ99AY+My/iLBSoaS
	X1Sn9Ng4/4mMVq/055fJbhTx/eoFJ4OXAtCHv2l4Bvb4hUZ15lsxy6BOaiN0qGLMasrV
	YUD6RYs4ecaL2/NzQ9iws0z5gGEZMPaI9jlHFWj4F41E+lIkNkksVm2SvK8V8m4iIUjL
	ue+i+O7yFDt8pHoKcGrZdD5LO94Wece9RCUbP2J9+mh7sgdzdfjiI4BYLvnp743XY1Oe
	300Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=SCvTTECjXOcRqVysb3aUpy/+LpEJA2NAeHvXQtM1Nek=;
	b=XCq3Sr+MazOECDjvfu7xsFh0KlfxOQWcPdIvp5cB5gL6NemDFPwvw7tUJsFa6jcDBp
	6DQx5FwV0zPqMUlKw2Gwhk1hnpXtSzZ/Iyvu0qkoRLupZetC8s60kUMX/wi76OelV45y
	pLN2yCnhjrKw79FBz+CtdtFi72x31VdV0AgM18aIrGKoyBntty3TtL9GH6NAD6BT9gxZ
	g63tkP4GJRTT/WimAHzXM/WsVp7KpqrQTowfk/7lR480t6Pj9Qi45Gqm1ALY5j66MPBF
	BoL77eP0ipNwPRrBOLxWATjMb2iwfcuKU2nsnJiZlKgH0wjLTB6JWGucgdCErojomttD
	a7Hg==
X-Gm-Message-State: AOPr4FX53D01aB/r2atkHlxQsC2saUVACTcVoOdRferAHkotCMiaajhQ5zPRl9GEeD4hYbJ6yAfq7GSp93KHPQ==
X-Received: by 10.140.36.231 with SMTP id p94mr16478831qgp.79.1460625801320;
	Thu, 14 Apr 2016 02:23:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.89.178 with HTTP; Thu, 14 Apr 2016 02:23:01 -0700 (PDT)
From: sujith h <sujith.h@gmail.com>
Date: Thu, 14 Apr 2016 14:53:01 +0530
Message-ID: <CADyYWLkKaW0fFjentEq7h9AgojtHyLRFRnmCd7heA+bTBX515w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-qt5] How to increase depth of qemuarm from bootargs?
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
X-List-Received-Date: Thu, 14 Apr 2016 09:23:29 -0000
Content-Type: multipart/alternative; boundary=001a11c11b00099d7805306e7279

--001a11c11b00099d7805306e7279
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to build Qt5 from meta-qt5 ( master branch ) with poky( machine
is qemuarm). The qtbase is built successfully and is installed into
core-image-sato. When I run : runqemu qemuarm
I can see the matchbox window launched successfully.The qtbase is having
gles2 enabled in the PACKAGECONFIG and gl is removed from PACKAGECONFIG. In
mesa I have enabled gallium. I do see a problem when I try to run qtbase
opengl examples.The gui gets displayed. But the image(s) associated with it
never displays. For example lets say there is an example known as cube.
When I try to run cube ( with -platform xcb), I could see a black screen.
The cube image never comes. So my query is if it's possible to increase the
depth ( default used is 16 for qemuarm ) to 24 through bootargs? If so a
helping hand would be great. Let me know if more information is required
regarding my setup. I have poky + meta-qt5 + meta-oe + meta-ruby layers in
bblayers.conf.

Thanks,
Sujith H

--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
<Project>Contributor to Yocto project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info
C-x C-c

--001a11c11b00099d7805306e7279
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi all,<br><br></div>I am trying to build Qt5 fr=
om meta-qt5 ( master branch ) with poky( machine is qemuarm). The qtbase is=
 built successfully and is installed into core-image-sato. When I run : run=
qemu qemuarm<br></div><div>I can see the matchbox window launched successfu=
lly.The qtbase is having gles2 enabled in the PACKAGECONFIG and gl is remov=
ed from PACKAGECONFIG. In mesa I have enabled gallium. I do see a problem w=
hen I try to run qtbase opengl examples.The gui gets displayed. But the ima=
ge(s) associated with it never displays. For example lets say there is an e=
xample known as cube. When I try to run cube ( with -platform xcb), I could=
 see a black screen. The cube image never comes. So my query is if it&#39;s=
 possible to increase the depth ( default used is 16 for qemuarm ) to 24 th=
rough bootargs? If so a helping hand would be great. Let me know if more in=
formation is required regarding my setup. I have poky + meta-qt5 + meta-oe =
+ meta-ruby layers in bblayers.conf.<br><br></div><div>Thanks,<br></div><di=
v>Sujith H<br></div><div><div><div><br>-- <br><div class=3D"gmail_signature=
"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>=E0=B4=B8=E0=B5=81=E0=B4=9C=
=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=E0=B4=BF=E0=B4=A6=E0=B4=BE=
=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;Project&gt;Contributor to K=
DE project<br></div><div>&lt;Project&gt;Contributor to Yocto project<br></d=
iv><div><a href=3D"http://fci.wikia.com/wiki/Anti-DRM-Campaign" target=3D"_=
blank">http://fci.wikia.com/wiki/Anti-DRM-Campaign</a><br>&lt;Blog&gt; <a h=
ref=3D"http://sujithh.info" target=3D"_blank">http://sujithh.info</a><br></=
div><div>C-x C-c<br></div></div></div></div></div>
</div></div></div></div>

--001a11c11b00099d7805306e7279--
