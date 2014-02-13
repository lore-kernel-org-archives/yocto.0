Return-Path: <luca.silicio@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E852E007D6
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 08:43:20 -0800 (PST)
Received: by mail-ob0-f170.google.com with SMTP id va2so12490523obc.1
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 08:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=msCMQfmtatMoHt+vqM+eoBhHTUBWlRALpomyzqpgwic=;
	b=pHSJxE/GTSL7plDqOv8WeyZBhzLW03/lt4ywboBq/Qwsz12k1GxR3FoUNz/yMhTuRf
	N7lmz4CXJnuwhBh3B/eOV6c0eusEw2x3IG605qXBCzhUIemAx7zZ/o7Z6MnKAR2ASbuW
	tGH67mNIzk19lrQzmJoDvEsM1565PgSgt8M9YneDs4b591un/TEJZZYQfeiqvclZqv0A
	aPeISX5V0dHawJtc9IkkufWc3bu1YRPhLMKwzzeEGUitM+SLb4acqYX00frRjxk4eGAJ
	1m6hE4fW5E88mfK500iScizMIf0bYVs8Oo7qJ0offpNEJ6wfE6K2vd1m86ZYiFvkKDuc
	ccjw==
MIME-Version: 1.0
X-Received: by 10.182.19.132 with SMTP id f4mr2080112obe.14.1392309800038;
	Thu, 13 Feb 2014 08:43:20 -0800 (PST)
Received: by 10.182.120.36 with HTTP; Thu, 13 Feb 2014 08:43:19 -0800 (PST)
Date: Thu, 13 Feb 2014 17:43:19 +0100
Message-ID: <CACHXdpFexqTc56vA8w03bFRgdi3rBvUgSRc+MnM5UzKGmck1nA@mail.gmail.com>
From: Luca Silicio <luca.silicio@gmail.com>
To: yocto@yoctoproject.org
Subject: Intel BSP for Quark from standard kernel to rt-preempt kernel
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
X-List-Received-Date: Thu, 13 Feb 2014 16:43:21 -0000
Content-Type: multipart/alternative; boundary=001a11c2aa6a0c7c6d04f24c6398

--001a11c2aa6a0c7c6d04f24c6398
Content-Type: text/plain; charset=ISO-8859-1

Hi all, I'm new to Yocto Project and, since an Intel Galileo board arrived
into my hand, I'm having to do with the Intel Galileo BSP to start learning
it:
https://downloadcenter.intel.com/Detail_Desc.aspx?agr=Y&DwnldID=23171&lang=eng&wapkw=galileo+software+drivers

My purpose is to build a rt-preempt image to do some didactic robotics
demo, instead of use the standard non-realtime one that is produced by
"bitbake image-spi" or "bitbake image-full" compilation.

I don't understand if this switch from standard to rt-preempt configuration
requires only few textual editings or a deep knowledge of Yocto Project
metadata and many hours of work.
Thanks a lot for any suggestion,
Lucadvp

--001a11c2aa6a0c7c6d04f24c6398
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi all, I&#39;m new to Yocto Project and, s=
ince an Intel Galileo board arrived into my hand, I&#39;m having to do with=
 the Intel Galileo BSP to start learning it:<br><a href=3D"https://download=
center.intel.com/Detail_Desc.aspx?agr=3DY&amp;DwnldID=3D23171&amp;lang=3Den=
g&amp;wapkw=3Dgalileo+software+drivers">https://downloadcenter.intel.com/De=
tail_Desc.aspx?agr=3DY&amp;DwnldID=3D23171&amp;lang=3Deng&amp;wapkw=3Dgalil=
eo+software+drivers</a><br>
<br></div>My purpose is to build a rt-preempt image to do some didactic rob=
otics demo, instead of use the standard non-realtime one that is produced b=
y &quot;bitbake image-spi&quot; or &quot;bitbake image-full&quot; compilati=
on.<br>
<br></div>I don&#39;t understand if this switch from standard to rt-preempt=
 configuration requires only few textual editings or a deep knowledge of Yo=
cto Project metadata and many hours of work.<br></div>Thanks a lot for any =
suggestion,<br>
Lucadvp<br></div>

--001a11c2aa6a0c7c6d04f24c6398--
