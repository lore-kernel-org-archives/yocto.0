Return-Path: <fede.vitali@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4B1EE00C08
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 08:19:14 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id i4so9529708oah.38
	for <yocto@yoctoproject.org>; Mon, 31 Mar 2014 08:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ssPr2Ocf4lbenh4Y8Z1ks7avF8YYsR70Z/W52CV6+/U=;
	b=QYxo4rH716MlxiJuk5x2ZAoL8OXAFi16aPAH96TVjcZYZPtcunEPSD0WzLxvQt3fZB
	YzuCaSof/h42wpcjyrAwW5ofx1xk9Awfy6R/INXh7YMKCy5qN7VPtbjkLHOkRu4LV6A/
	qzgVzwC4bxSpP0mjJd1psWRaEd8TimhF9/RknYJvQIocGzIk7hkBNygacwrnt2YTrV1O
	k/2ahbTzA+z/vjdMwt/fvPCVYYKTShtlG0/N8DdWy6rPiwJf7R4gmXjQjkPV1uD8mv3y
	YFJV9mNe7vJUds9oyYLoZCCkdt14uf8156dp8s7TEov/EMP2HLOTe/axJb40fAeBtsi5
	nX3Q==
MIME-Version: 1.0
X-Received: by 10.60.83.234 with SMTP id t10mr14178052oey.4.1396279153649;
	Mon, 31 Mar 2014 08:19:13 -0700 (PDT)
Received: by 10.76.101.112 with HTTP; Mon, 31 Mar 2014 08:19:13 -0700 (PDT)
Date: Mon, 31 Mar 2014 17:19:13 +0200
Message-ID: <CAD78y+7HQ18cjdxz9_xC0DAp_Q-HnDZ15CU5YT6CfXRUHpteQw@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: [meta-freescale] Problems concerning qte-in-use-image
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
X-List-Received-Date: Mon, 31 Mar 2014 15:19:15 -0000
Content-Type: multipart/alternative; boundary=089e0116019cf5ee2b04f5e892fd

--089e0116019cf5ee2b04f5e892fd
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

I've build qte-in-use image for imx6qsabrelite and I have some problems
running qt embedded applications.
Some of the problems are:

1. after the boot completes and login I try to launch the demo application:

# qtdemoE -qws

my screen goes black and nothing happens. The board hangs, non answer also
via serial connection

2. I build and run a simple application, it runs correctly, but when I
close the application the board hangs,
and I have to reset it.

I've read some discussion about qte-in-use-image, but I didn't found a
solution...

Any help will be appreciated.

Thank you,
Federico

--089e0116019cf5ee2b04f5e892fd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;ve build qte-in-use =
image for=A0imx6qsabrelite and I have some problems running qt embedded app=
lications.</div><div>Some of the problems are:</div><div><br></div><div>1. =
after the boot completes and login I try to launch the demo application:</d=
iv>
<div><br></div><div># qtdemoE -qws</div><div><br></div><div>my screen goes =
black and nothing happens. The board hangs, non answer also via serial conn=
ection</div><div><br></div><div>2. I build and run a simple application, it=
 runs correctly, but when I close the application the board hangs,</div>
<div>and I have to reset it.</div><div><br></div><div>I&#39;ve read some di=
scussion about qte-in-use-image, but I didn&#39;t found a solution...=A0</d=
iv><div><br></div><div>Any help will be appreciated.</div><div><br></div>
<div>Thank you,</div><div>Federico</div><div><br></div></div>

--089e0116019cf5ee2b04f5e892fd--
