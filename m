Return-Path: <jwenxi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06D7BE00B66; Mon,  2 Jun 2014 08:06:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jwenxi[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D1CE00985
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 08:05:49 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id j5so10830035qga.14
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 08:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=mE0rQKPBn0uuX1fjmBsX9CQRvhquHbUKtqUfd4ciAZE=;
	b=fxWMKVx7/FlYzNkyB3LcPQTPjNnos5FxBaGqAxrgYkbkQHBXwDKfNPbIa+699mfG8f
	/FYBLGTvnQUHcDEpHVuieVTsJn/dVcM7GaOA5yqx121zCGg2SVNsIJQ5dUmI1C1/nw3y
	QMcRuYRsWKJZ5QJK0F3znxbSsuw98k+X5hc8fx3EqBnMp/9vXqd0TVu5RwvJ0xfBbelQ
	5ZGgkiXywWg/B/znIWQ6zGx7mRyRgKAgq/gE6PPNDNF1khE8wgrUxYeTW/B7DqVUdy/G
	gkLfANm/B9D/JL/Dc2UiToTSYFnHRlc5SuRDtfmMq5no/aWvBy/cJEOwxmz0T1QFMVtI
	U8Rw==
X-Received: by 10.224.124.67 with SMTP id t3mr51053937qar.70.1401721548474;
	Mon, 02 Jun 2014 08:05:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.47.109 with HTTP; Mon, 2 Jun 2014 08:05:28 -0700 (PDT)
From: Wenxi Jin <jwenxi@gmail.com>
Date: Mon, 2 Jun 2014 17:05:28 +0200
Message-ID: <CAEsi-O6EKoUqH4Yc05Wt3eo6w7gBgaq5SF3w_1vVf3ZJEkEmhw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 02 Jun 2014 08:17:01 -0700
Subject: How to change linux kernel to my own linux kernel repository in poky-tiny
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
X-List-Received-Date: Mon, 02 Jun 2014 15:06:08 -0000
Content-Type: multipart/alternative; boundary=001a11c3ac1ef89a0c04fadbba5f

--001a11c3ac1ef89a0c04fadbba5f
Content-Type: text/plain; charset=UTF-8

Hi,

1. By following "Hands-on kernel lab" meta-lab4-qemux86 tutorial, I managed
to use my own linux kernel repository. And then I realized the bzImage.bin
file is around 87M which is totally not acceptable on my target platform
MIPS.

Q1: How should I reduce the kernel size?

2. Then I found out there is linux-tiny which is giving <4M kernel image.
But I could not figure out how to make it pointing to my own linux kernel
repository.

Q2: Should I use linux-tiny? Or should I stick with the 1. method?

Basically what I want is to use my own linux kernel repository and <4M
kernel size.

Any help would be so much appreciated! :)

BR
Wenxi

--001a11c3ac1ef89a0c04fadbba5f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>1. By following &quot;Hands-on kern=
el lab&quot; meta-lab4-qemux86 tutorial, I managed to use my own linux kern=
el repository. And then I realized the bzImage.bin file is around 87M which=
 is totally not acceptable on my target platform MIPS.</div>

<div><br></div><div>Q1: How should I reduce the kernel size?</div><div><br>=
</div><div>2. Then I found out there is linux-tiny which is giving &lt;4M k=
ernel image. But I could not figure out how to make it pointing to my own l=
inux kernel repository.</div>

<div><br></div><div>Q2: Should I use linux-tiny? Or should I stick with the=
 1. method?</div><div><br></div><div>Basically what I want is to use my own=
 linux kernel repository and &lt;4M kernel size.</div><div><br></div><div>

Any help would be so much appreciated! :)</div><div><br></div><div>BR</div>=
<div>Wenxi</div></div>

--001a11c3ac1ef89a0c04fadbba5f--
