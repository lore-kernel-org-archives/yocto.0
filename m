Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C792E00D0E; Thu, 24 Jan 2019 01:27:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB754E00B43
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 01:27:04 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id 81so4669937otj.2
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 01:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BW4pMXvRy/zy575AkEDVGCHbsv8bvACZmK5urO7yabI=;
	b=OHqjkqIWq+F/kxsc6RD9nbSf1C9mejL6u97qOnuxBQUpqcRGwp78++gOjnlO7aSxxF
	eRbU1i38RCL9RYo093++nQCvY2NytpyWAMXZvT+1KFVL8H6BuJ2ki7X0tRyl3rLCgEle
	4Z+nVjfHFlqLWIVONDTFCIZ5YRn+WijVdY5AvuMsXAksUQVogsvUbDuwDV2qzj0H2JpU
	VkwfzLKNCeiy9OMRURGE7t1SrztzX7kGjSfFtawhkdM5yy1oiAQaVLOivzyQMgddBFkG
	vvQH+mMngsGYlXNzSy/bPcnJSMtqUvCV1teGWWw67l4n6RF6DglJXrcrsI51++6V0paS
	bc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BW4pMXvRy/zy575AkEDVGCHbsv8bvACZmK5urO7yabI=;
	b=pYQa1gZ6sRglnlS+2o6+9FFfgmWPf5KbnlSRgYW/JsD49O1S1czp5qExPKRRwT88GC
	Ah6xof6k5uqk+w6nMw3RQgJS/6umCnbrjrVU89bTjM+i6FxTLkz5AMVS+llD+e3jaW8G
	r4pgCRu1o5BqhsDPSecaP6gp0F4Hdw/GB/mDcv16y+NIwyLr6ZZVuo60V2x4ZybN4Lzu
	D5Wv14iJR4lbRnNGemVetgvkLavVakn4SK+q0U5qcg3aJN6S+s1JbRvboj9ClS2b3mRz
	ZudmOswAhYbMsG2evHaKZvmPXXraCiEz48wJT1AIloMYACAMyznPJyL3E84pVTlTadV3
	uQxw==
X-Gm-Message-State: AJcUukdLHbWviepCovxS/4z9B0QXaVeLYBWaW3CzZ2LGIx1Eug1jb2CE
	Jk0fZ2VqFv5scp4zwAPydKDlouYw/RX0z7qem4QIKsgEeqw=
X-Google-Smtp-Source: ALg8bN7IGl7AaLFWvkcq88L2XsMS/Ad/Br7Ufhh8RkRyNSabghWHgpF1YaherfuE4b/pogegUg9sBxfM3EIG4h3SwOo=
X-Received: by 2002:a9d:bf7:: with SMTP id 110mr4086793oth.320.1548322024111; 
	Thu, 24 Jan 2019 01:27:04 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 24 Jan 2019 10:26:53 +0100
Message-ID: <CAEhQi8kvySMX3+oXwhEOSJjzA9gHukaavFjgjgDZAuWqcP0Udg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to prevent dnf to check for dependencies during do_rootfs task
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
X-List-Received-Date: Thu, 24 Jan 2019 09:27:05 -0000
Content-Type: multipart/alternative; boundary="0000000000003ec31c058030d09b"

--0000000000003ec31c058030d09b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a recipe where I am getting a set of binaries files from a third
party. These files are not well put together. For example they are linked
to none versioned so-files for example

 0x0000000000000001 (NEEDED)             Shared library: [libnss3.so]
 0x0000000000000001 (NEEDED)             Shared library: [libnssutil3.so]
 0x0000000000000001 (NEEDED)             Shared library: [libnspr4.so]
 0x0000000000000001 (NEEDED)             Shared library: [libffmpeg.so]
 0x0000000000000001 (NEEDED)             Shared library: [libuuid.so]
 0x0000000000000001 (NEEDED)             Shared library: [libasound.so]
 0x0000000000000001 (NEEDED)             Shared library: [libmetrics.so]
 0x0000000000000001 (NEEDED)             Shared library: [libpthread.so.0]
 0x0000000000000001 (NEEDED)             Shared library: [libcutils.so]
 0x0000000000000001 (NEEDED)             Shared library:
[libglibc_bridge.so]
 0x0000000000000001 (NEEDED)             Shared library: [libcurl.so]

Some of these files are not supplied by the third party so for example
libuuid.so is not supplied by them and this causes some friction when using
rpm as the package. The dnf package manager will complain that nothing is
supplying libuuid.so which is correct. I have tried to solve this by
including libuuid.so.1 to the package and then create a link libuuid.so
that points to the libuuid.so.1 library but dnf is not satisfied with that.
I have made sure that the link is part of the package so it is not a mater
of getting it included in the dev package. Renaming libuuid.so.1 to
libuuid.so will not solve this problem because dnf checks the elf headers
and detects that the SONAME is libuuid.so.1. I have considered using
patchelf to modify the SONAME but at one point I get an error from the
linker so I don't think it is the best approach. When looking at rpmbuild I
can see that there is an option --no-deps so is there a way to supply these
flags when creating the rpm package? Or supply some flags to dnf to prevent
it from checking dependencies? Or are the only option  to get the third
party to supply something usable?

BR
M=C3=A5ns Zigher

--0000000000003ec31c058030d09b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I have a recipe wh=
ere I am getting a set of binaries files from a third party. These files ar=
e not well put together. For example they are linked to none versioned so-f=
iles for example</div><div><br></div><div>=C2=A00x0000000000000001 (NEEDED)=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [libnss3.so=
]</div><div>=C2=A00x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0Shared library: [libnssutil3.so]</div><div>=C2=A00x0000=
000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Shared=
 library: [libnspr4.so]</div><div>=C2=A00x0000000000000001 (NEEDED)=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [libffmpeg.so]</di=
v><div>=C2=A00x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Shared library: [libuuid.so]</div><div>=C2=A00x000000000000000=
1 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [=
libasound.so]</div><div>=C2=A00x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [libmetrics.so]</div><div>=
=C2=A00x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Shared library: [libpthread.so.0]</div><div>=C2=A00x0000000000000001 =
(NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [li=
bcutils.so]</div><div>=C2=A00x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0Shared library: [libglibc_bridge.so]</div><div>=
=C2=A00x0000000000000001 (NEEDED)=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0Shared library: [libcurl.so]</div><div><br></div><div>Some of these f=
iles are not supplied by the third party so for example libuuid.so is not s=
upplied by them and this causes some friction when using rpm as the package=
. The dnf package manager will complain that nothing is supplying libuuid.s=
o which is correct. I have tried to solve this by including libuuid.so.1 to=
 the package and then create a link libuuid.so that points to the libuuid.s=
o.1 library but dnf is not satisfied with that. I have made sure that the l=
ink is part of the package so it is not a mater of getting it included in t=
he dev package. Renaming libuuid.so.1 to libuuid.so will not solve this pro=
blem because dnf checks the elf headers and detects that the SONAME is libu=
uid.so.1. I have considered using patchelf to modify the SONAME but at one =
point I get an error from the linker so I don&#39;t think it is the best ap=
proach. When looking at rpmbuild I can see that there is an option --no-dep=
s so is there a way to supply these flags when creating the rpm package? Or=
 supply some flags to dnf to prevent it from checking dependencies? Or are =
the only option=C2=A0 to get the third party to supply something usable?</d=
iv><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div></div></div>

--0000000000003ec31c058030d09b--
