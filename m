Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B8A5E01715
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 00:43:00 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id e14so10891398iej.36
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 00:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MSGtUCubv+/uPt4IBLVaGA03zFXDfQwjOVhV2syBOlI=;
	b=XcapCqtBEylL5fC8m0nJhcQzGHv/wxuN7dC2d60h5ZVCRr+owmviYDuZXy5mBCFeZS
	tW8zTR3KRAJMrniXW1wx4cJieiDVpzIt+FOv33Pr/vH2kjOpk89pauawC+Wvi5/gV8Qk
	O1L9nbpJ65/UQ7b7J7ym5KDCr1kAIZ6mZ12LS2Df2zs0U36kPIAQu/KaiV+r8A68xq9H
	OhFBGuVGMoSb78Fz3MoIyArXuzsFRrYztlZibJVKjJDYcMuD+hJ5eOcW4Bm8LorUOYqf
	bXnEI+K8Rivs2YAbO14A2znfq7HIcqUe4nq5ex1nG3E6lp3XmWISBrHsK9K8q2eosGp/
	cvBg==
MIME-Version: 1.0
X-Received: by 10.50.153.50 with SMTP id vd18mr8363756igb.6.1382341378901;
	Mon, 21 Oct 2013 00:42:58 -0700 (PDT)
Received: by 10.50.231.161 with HTTP; Mon, 21 Oct 2013 00:42:58 -0700 (PDT)
Date: Mon, 21 Oct 2013 08:42:58 +0100
Message-ID: <CAM1ZcoXu8kWs2ZuQ=n8wvdtw2kjRuSTR6B0=M58oDaiVHd2djQ@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Makefile based package with Makefile in a subdir
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
X-List-Received-Date: Mon, 21 Oct 2013 07:43:06 -0000
Content-Type: multipart/alternative; boundary=089e013a009ed9127504e93b6e7a

--089e013a009ed9127504e93b6e7a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have a recipe that fetches the code from git. I want to run the makefile
located in a subdir of the the repo with the flags and options defined in
it.
Bitbake cannot find the makefile. I've tried adding

EXTRA_OEMAKE += "-I${S}/include -C${MAKEFILE_FOLDER}"

but I'm still getting

make: *** No targets specified and no makefile found.  Stop.

What am I doing wrong?

Thanks,
Katu

--089e013a009ed9127504e93b6e7a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>I have a re=
cipe that fetches the code from git. I want to run the makefile located in =
a subdir of the the repo with the flags and options defined in it. <br></di=
v>
Bitbake cannot find the makefile. I&#39;ve tried adding<br><br>EXTRA_OEMAKE=
 +=3D &quot;-I${S}/include -C${MAKEFILE_FOLDER}&quot;<br><br></div>but I&#3=
9;m still getting<br><br>make: *** No targets specified and no makefile fou=
nd.=A0 Stop.<br>
<br></div>What am I doing wrong?<br><br></div>Thanks,<br></div>Katu<br></di=
v>

--089e013a009ed9127504e93b6e7a--
