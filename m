Return-Path: <zafrullahmehdi@gmail.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8468E00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 03:46:22 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id en1so541842wid.12
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 03:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=6ynJaJiZroRKXO4P9er2hHmeYOKmnWtCAJKDAzSDob0=;
	b=x0Kc4gNmqykwlEmON7FMZV3SpOx3cwUPxAvvzmosjHk149CESQZjnrG0j0+eWZtGNW
	Iq8UZADXh9Kp/stEbhNUv88TpAvX/MHmrOYgE5ms9rymbKX6hAexMLg3Th4vbWgI3frm
	L7EJWhEw3jEMq8kgj42YJKWG9owNS2xxDKin//OuGl1aR/XoLLAfygyE0CVP7eH7yOu5
	SypW6BvKRX8gOfA02B9eyq1UL5y1EUwTLdk0KudXBnV/dToDvBhmCOqEP6ZvR03B6jLA
	OgERtV0dm/ebbRjnDdIfAkelCFsY2Gmol3lzcgCLb87Gml9EuJzDMDotpc5glPGNFdIk
	sjNQ==
X-Received: by 10.180.74.173 with SMTP id u13mr16029438wiv.32.1377081980676;
	Wed, 21 Aug 2013 03:46:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.250.69 with HTTP; Wed, 21 Aug 2013 03:46:00 -0700 (PDT)
From: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Wed, 21 Aug 2013 12:46:00 +0200
Message-ID: <CAAGt+t0US6hq-4dTGqNrSLMZ6Gx3k0ikt0=MLxC4WTUcaoLe0g@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Package Revision number is mandatory?
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
X-List-Received-Date: Wed, 21 Aug 2013 10:46:25 -0000
Content-Type: multipart/alternative; boundary=f46d0437495348ef0404e472e2c9

--f46d0437495348ef0404e472e2c9
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

Package revision number should be included in my bitbake file? I am trying
to build a basic hello world by downloading it from sourceforge. There is
no package revision number to it. It is just a regular hello world program.

How do I add in {PV} my bitbake recipe?

Thanks & Regards,
Zafrullah Syed

--f46d0437495348ef0404e472e2c9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>Package revision number should =
be included in my bitbake file? I am trying to build a basic hello world by=
 downloading it from sourceforge. There is no package revision number to it=
. It is just a regular hello world program.<div>

<br></div><div>How do I add in {PV} my bitbake recipe?<br><div><br></div><d=
iv>Thanks &amp; Regards,</div><div>Zafrullah Syed<br><div><div><br></div>
</div></div></div></div></div>

--f46d0437495348ef0404e472e2c9--
