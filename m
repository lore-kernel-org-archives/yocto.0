Return-Path: <soniaverma9727@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E6FBE017BB
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 00:26:18 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id q59so2270384wes.37
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 00:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xN4TyRylsGzt8OF+wI2ha8pn8gEK1XiLL4R3A7skExY=;
	b=WARoKYrfuWnvNTzkvLO4aRA++53v/lzoxtAL5JUZeEO/l0ZU43GYc9d/QyzsUUmYM8
	osEoQleNMS14nIbQhw6900tZ8bMOdZ1qLFYNdCZbm0GSaSIhtcRXbIXwfJsCD5TDTbS8
	aFgpUphID3Gzph+tpzKTFMB+hGFHLqUxU9tUnH8EghbeMiNepHizWaAySw7cc4h1lIRJ
	u0H5/LJkHVRqusXKreOgBnR1kBJAM621gsLuk7oSfGEzZ15ac7TpIKYR9lImGR+ZMcUs
	RwtWkIUsQWg05JlrjT9LyRTBRWH2nc1k1E7Q0gprhTK43HcNevGDg6uPF+vXxwSzOxt/
	NmgQ==
MIME-Version: 1.0
X-Received: by 10.194.84.10 with SMTP id u10mr78656wjy.94.1383204377327; Thu,
	31 Oct 2013 00:26:17 -0700 (PDT)
Received: by 10.194.9.193 with HTTP; Thu, 31 Oct 2013 00:26:17 -0700 (PDT)
Date: Thu, 31 Oct 2013 12:56:17 +0530
Message-ID: <CAJ7VayhzG+mPtZU_jehnXLPzjJGQ2kbWEdg=OKtrGzAJCoajxA@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: yocto@yoctoproject.org
Subject: JAVA integration issue
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
X-List-Received-Date: Thu, 31 Oct 2013 07:26:21 -0000
Content-Type: multipart/alternative; boundary=047d7bb04a068ffad904ea045d37

--047d7bb04a068ffad904ea045d37
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

I have integrated JAVA i.e. Openjdk-7, by coping meta-java in yocto and
using IMAGE_INSTALL_append = " openjdk-7-jre command in local.conf
successfully.

But java -version on board shows it is running in interpreted mode.
java version "1.7.0_25"
OpenJDK Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)
*OpenJDK Zero VM (build 23.7-b01, interpreted mode)*

I want java with mixed mode, so that my application performance will be
good.

Can any one please help me regarding this. Thanks in advance.

--
Regards

Sonia Verma

--047d7bb04a068ffad904ea045d37
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>I have integrated JAVA i.e. Ope=
njdk-7, by coping meta-java in yocto and using=A0IMAGE_INSTALL_append =3D &=
quot; openjdk-7-jre command in local.conf successfully.</div><div><br></div=
><div>
But java -version on board shows it is running in interpreted mode.</div><d=
iv><span style=3D"font-family:arial,sans-serif;font-size:13px">java version=
 &quot;1.7.0_25&quot;</span><br style=3D"font-family:arial,sans-serif;font-=
size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">OpenJDK Runtime=
 Environment (IcedTea 2.3.12) (25b30-2.3.12)</span><br style=3D"font-family=
:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-ser=
if;font-size:13px"><b>OpenJDK Zero VM (build 23.7-b01, interpreted mode)</b=
></span><br style=3D"font-family:arial,sans-serif;font-size:13px">
</div><div><br></div><div>I want java with mixed mode, so that my applicati=
on performance will be good.</div><div><br></div><div>Can any one please he=
lp me regarding this. Thanks in advance.</div><div><br></div><div>--</div>
<div>Regards</div><div><br></div><div>Sonia Verma</div><div><br></div></div=
>

--047d7bb04a068ffad904ea045d37--
