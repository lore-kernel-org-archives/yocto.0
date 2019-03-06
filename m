Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9F0EE00C43; Wed,  6 Mar 2019 08:11:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
	[209.85.167.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEEA2E0096F
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 08:11:56 -0800 (PST)
Received: by mail-oi1-f171.google.com with SMTP id g16so10296083oib.1
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 08:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=/7FZIhKq5tWE8+ab0Nhr1l/iqC+7esv4q1iNVuacGoQ=;
	b=DUwin102499bRIoLU4oRWlk77snX6qODG0edQ84Fp019e0LTAJSWTvnVMSYvx/XH2i
	W0Pr/QUlc1QGf87r7/C+dpXwHkbUwOq1qlAaYPXhYSGgP8RgRnPb+pdWqmN+Am8NbpoA
	zyCbNSZR9t1T+9KaEU8W9fqdxOnCUCUNrRH7OIr3BFayhPVjukA7fQ6CLfJoo8zoJ3/V
	Zd2l6FIaOLXjTuFiMgOV0193dtzStI2aIGs4CLh0K4O7jzCX6LmD3PuLz4LL8+g20UlB
	42UuzlZCXBZ9cp9GfBgRvfjdXMdZw6VdEYphuENHSkrRFJ5G0NE5kQ3mwvyEXw/mU6Cx
	iUsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=/7FZIhKq5tWE8+ab0Nhr1l/iqC+7esv4q1iNVuacGoQ=;
	b=nggKTaSnYipIudofa4A8hA6P2sidTQAltET/MAe8k7a80B/WG3CealULBRaURd4wJY
	i2sMx6mWlvCRr9K0Oqq+IdTpcreN26HZUxs8zD6YYqEMsqf47hhdd9YGNcihMHaYduwW
	7dJNPxSiSOsC3SLzj1gh/cS7p1B+WpyLG6BlbHfQOReW57WGbabQg9rMTCPu3cSdJ5Cq
	E2BSY+OjgZ+3AlDdf/4zTISEV9ykiYAKyVGUxL/gOOuYWfwxx6FKhLnQk+Mr4Ca3a8rU
	2+8PSfGOaFPiMSURe8/VYhdJb1ZAIxHR9n8zc/wyogNZm4ElJWygq+Mf6oBX7SVyxiTj
	oGCA==
X-Gm-Message-State: APjAAAVc7leeVgGqhOI2jAOmbXKN67m9tjgyzvfEmY9pR0LVBaRaH39N
	clTy0Jko9+TI5mmCwcVrVHqo4M3oCTn3pstkrr/N+Tl6VMA=
X-Google-Smtp-Source: APXvYqyFtnLNzrodZODHXto17202j0pQEmomkkcnthwYn9TXbh/Y/+HK2kALwR7AC6ClmPp9YuOQydgZq4Dl8zhUDrM=
X-Received: by 2002:aca:3306:: with SMTP id z6mr2140695oiz.45.1551888715834;
	Wed, 06 Mar 2019 08:11:55 -0800 (PST)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 6 Mar 2019 17:11:45 +0100
Message-ID: <CACKFPN2EV_vT+U6h13jV4dv8UB2kYLjjzGnTze_qRjtLvXqs9A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: INHIBIT_SYSROOT_STRIP
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
X-List-Received-Date: Wed, 06 Mar 2019 16:11:58 -0000
Content-Type: multipart/alternative; boundary="000000000000a370e405836f3fb5"

--000000000000a370e405836f3fb5
Content-Type: text/plain; charset="UTF-8"

Hi all,

this is not a request for help.

Today, I've found a very nice option which is not documented
which is the INHIBIT_SYSROOT_STRIP and is used in the sysroot_strip()
inside the poky/meta/classes/staging.bbclass.

I had an issue with a recipe that had a few binaries that I wanted to add
to the
recipe-sysroot-native in order to build another package and I was getting
errors
because the do_populate_sysroot couldn't strip those binaries. I've
searched in
the source and found that the author of that code was handling this case,
but it's
not documented (at least in the latest mega-manual).

Therefore, I'm dropping this message as a reference to other that might
need it.

Regards,
Dimitris

--000000000000a370e405836f3fb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi all,<div><br></div><div>this is not a request for help.</div><=
div><br></div><div>Today, I&#39;ve found a very nice option which is not do=
cumented</div><div>which is the=C2=A0INHIBIT_SYSROOT_STRIP and is used in t=
he sysroot_strip()</div><div>inside the=C2=A0poky/meta/classes/staging.bbcl=
ass.</div><div><br></div><div>I had an issue with a recipe that had a few b=
inaries that I wanted to add to the</div><div>recipe-sysroot-native in orde=
r to build another package and I was getting errors<br></div><div>because t=
he=C2=A0do_populate_sysroot couldn&#39;t strip those binaries. I&#39;ve sea=
rched in</div><div>the source and found that the author of that code was ha=
ndling this case, but it&#39;s</div><div>not documented (at least in the la=
test mega-manual).</div><div><br></div><div>Therefore, I&#39;m dropping thi=
s message as a reference to other that might need it.</div><div><br></div><=
div>Regards,</div><div>Dimitris</div></div></div></div></div></div>

--000000000000a370e405836f3fb5--
