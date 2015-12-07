Return-Path: <mike987418@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C434E00AA6; Mon,  7 Dec 2015 05:03:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mike987418[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 079C9E0049B
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 05:03:02 -0800 (PST)
Received: by iofh3 with SMTP id h3so180236326iof.3
	for <yocto@yoctoproject.org>; Mon, 07 Dec 2015 05:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1D2XSItf4wY8hz+nwW4StM/Fb9sQ8iygYkqR3U+ZgNY=;
	b=gJeJvAxR5qLC2uHCtTvswCnN+aeJLmYvsBIVdXzqM834r1m4B+Dh5JdX0rOAChTktb
	pOsElNh3WjDJ3QjQNeMqyvvdSMRj2KVj3m7Qk4L++mCnIm7/lZDHgM+qJGjfOSJdI3qR
	8X7xoJeuGrRm2uBEdL53VEvXkw5aOma7LJqTeYqPIXHNHL7COVWaurM7BJGQk9OObd0C
	9BUNG+EdzXezLCf3dCr5VP2LJh+qiLdljNvHgQlBE2Co07BG1h3EAwI8zxfGAtz2UQEy
	9FI7ThobxeV8rbK391d0J3ftlGVuf2mI8FUEuq9ttuV8sIyvPPbHDKFUS1MukQ9vl4RQ
	ZTrQ==
MIME-Version: 1.0
X-Received: by 10.107.19.197 with SMTP id 66mr30280214iot.41.1449493382331;
	Mon, 07 Dec 2015 05:03:02 -0800 (PST)
Received: by 10.36.29.139 with HTTP; Mon, 7 Dec 2015 05:03:02 -0800 (PST)
Date: Mon, 7 Dec 2015 14:03:02 +0100
Message-ID: <CADkGNzhWGEV8+fW2nuKEvWUvftqB8is7WOK0A3EGpFhe5mTYAA@mail.gmail.com>
From: mike9874 channel <mike987418@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 07 Dec 2015 07:38:15 -0800
Subject: PREEMPT-RT patch: wrong header
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
X-List-Received-Date: Mon, 07 Dec 2015 13:03:04 -0000
Content-Type: multipart/alternative; boundary=001a113f9474288d9d05264e7aad

--001a113f9474288d9d05264e7aad
Content-Type: text/plain; charset=UTF-8

Hello,
i am building an image for qeumux86 with the PREEMT-RT patch. Therefore I
use the following in my image.conf file:
PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-rt"
PREFERRED_VERSION_linux-yocto-rt ?= "4%"

I get an image with the 4.1.8-rt8-yocto-preempt-rt kernel. I have an
Application which is also build into the image where I try to use
SCHED_DEADLINE with sched_setattr() and struct sched_attr from <sched.h>.
My bitbake compiler throws following error: storage size of
'scheduling_attribut' isn't known.
Where do I get the correct Headers to compile my application?

Regards,
Mike

--001a113f9474288d9d05264e7aad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello,<br></div>i am building an =
image for qeumux86 with the PREEMT-RT patch. Therefore I use the following =
in my image.conf file:<br>PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux=
-yocto-rt&quot;<br>PREFERRED_VERSION_linux-yocto-rt ?=3D &quot;4%&quot;<br>=
<br></div>I get an image with the 4.1.8-rt8-yocto-preempt-rt kernel. I have=
 an Application which is also build into the image where I try to use SCHED=
_DEADLINE with sched_setattr() and struct sched_attr from &lt;sched.h&gt;. =
My bitbake compiler throws following error: storage size of &#39;scheduling=
_attribut&#39; isn&#39;t known.<br></div>Where do I get the correct Headers=
 to compile my application?<br><br></div>Regards,<br></div>Mike<br></div>

--001a113f9474288d9d05264e7aad--
