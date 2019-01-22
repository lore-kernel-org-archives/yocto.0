Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED408E00CBA; Tue, 22 Jan 2019 08:59:36 -0800 (PST)
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
	*      [209.85.167.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8604E00C59
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 08:59:35 -0800 (PST)
Received: by mail-oi1-f194.google.com with SMTP id u18so17957502oie.10
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2019 08:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iH1UkNMytiZngN3w1iqjPDDAMtRRlopbhUPQ6fj/lqI=;
	b=DRY4gSJa8zjEn5NW2UFN5zaSOWFWTLtU75KGPtTEM0QBv9+qplUU1SEJQcfaWwph/n
	EXjMgzmLmxajBoob/MMIQFfvIGIAOD+hKe980VPMzoxO69kG8zTpxRuFXdCNmcLkxj8v
	bavHr1jzg4lorl23ZokAx15EdAe/E14a8ARxs3w2lSKwxRzzjc3LdEiNM2PvOFxoXW8I
	X+j9EyftkyzJXRcPu8yHRCvHcA/1ptRM0GHCxedIdbPfLHx3Nnod3pB+08mOBHJ9UbtC
	TGnBuubxtyj8UEtidzbbUj2w8AbsQZ2L7EuQ6OcaQ49o+RCFL9APBCQqLcBBczHrNelI
	FbCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iH1UkNMytiZngN3w1iqjPDDAMtRRlopbhUPQ6fj/lqI=;
	b=QsrY57Unesp9ynMZKbJ/iQUUewJZrX8iAE331nyq04QwNyYi3SNandbnUG00goOGJZ
	e9N4F5t9F3YB0554E0q/dJAvonTt2gxp/NmYt9uc/Lnio5stREG7k426YWjacoQECaBT
	+z2jBHTo1BliFSZg3vGuw2kTZG2Dr82qe/bdF1NpS0rJ35Wp/9LUerPFhZXzeAlNX3yg
	EpSsshvjCQ4VaNaIsrdS2Cw70k5PNyY4U3KMWzANyLuXviCZHG0vyZcv0EvKKJXVBQx5
	XuvMNjpg1tdY9pYCJ5aaPH2M33Md/AsCvshaCsFKLVzetPQs4TDmRWnU9N+bb5Kmp2Qp
	bp8Q==
X-Gm-Message-State: AJcUukdwGYfoNWCMbqVuIKqrZMcGGfqbH4QrAuT/WvaUMjYrjk2KZxYk
	7ucehcIgWMxNanG2lycJTAsbcgBcuJjVySp/9AHzxrjEPXI=
X-Google-Smtp-Source: ALg8bN5dDmKVe3LLCmNjtFx2PeqyADU/HEdFQ0saya6eM4Rj8o86YV4MposoXrNX8535XqtXstpvjr+l3GAbLjx2wcI=
X-Received: by 2002:a05:6808:34e:: with SMTP id
	j14mr8472092oie.32.1548176374890; 
	Tue, 22 Jan 2019 08:59:34 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 22 Jan 2019 17:59:24 +0100
Message-ID: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: dnf fail in do_rootfs cannot find shared library
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
X-List-Received-Date: Tue, 22 Jan 2019 16:59:37 -0000
Content-Type: multipart/alternative; boundary="000000000000e006b605800ee6f9"

--000000000000e006b605800ee6f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am struggling with a recipe which more or less just downloads binaries
and creating a package. We have previously been using ipkg but now we have
switched to rpm in our builds. One of the binaries in the packages is a
library let's call it libx_media_1.0.so. This library is part of the
package that the recipe is producing. The library is placed under
/usr/lib/. When building the image I am getting the following error

ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
.....
...
Error:
 Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media, but
none of the providers can be installed
  - conflicting requests
  - nothing provides libx_media_1.0.so()(64bit) needed by
x_media-1.0-r44.imx8mq

ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs

Here is the output from running the command file on the library

usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
version 1 (SYSV), dynamically linked, stripped

I have also verified that the library is part of the produced rpm so that
is not the issue.

Dose anyone have any suggestion on how to debug this problem? Because I am
out of ideas

BR
M=C3=A5ns Zigher

--000000000000e006b605800ee6f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am struggling with a recipe which=
 more or less just downloads binaries and creating a package. We have previ=
ously been using ipkg but now we have switched to rpm in our builds. One of=
 the binaries in the packages is a library let&#39;s call it=C2=A0<a href=
=3D"http://libx_media_1.0.so/" target=3D"_blank">libx_media_1.0.so</a>. Thi=
s library is part of the package that the recipe is producing. The library =
is placed under /usr/lib/. When building the image I am getting the followi=
ng error</div><div><br></div><div><div>ERROR: base-image-1.0-r0 do_rootfs: =
Could not invoke dnf. Command</div><div>.....</div><div>...</div><div>Error=
:=C2=A0</div><div>=C2=A0Problem: package packagegroup-x-media-1.0-r11.noarc=
h requires x_media, but none of the providers can be installed</div><div>=
=C2=A0 - conflicting requests</div><div>=C2=A0 - nothing provides=C2=A0<a h=
ref=3D"http://libx_media_1.0.so/" target=3D"_blank">libx_media_1.0.so</a>()=
(64bit) needed by x_media-1.0-r44.imx8mq</div><div><br></div><div>ERROR: ba=
se-image-1.0-r0 do_rootfs: Function failed: do_rootfs</div></div><div><br><=
/div><div>Here is the output from running the command file on the library</=
div><div><br></div><div>usr/lib/<a href=3D"http://libx_media_1.0.so/" targe=
t=3D"_blank">libx_media_1.0.so</a>: ELF 64-bit LSB shared object, ARM aarch=
64, version 1 (SYSV), dynamically linked, stripped<br></div><div><br></div>=
<div>I have also verified that the library is part of the produced rpm so t=
hat is not the issue.</div><div><br></div><div>Dose anyone have any suggest=
ion on how to debug this problem? Because I am out of ideas</div><div><br><=
/div><div>BR</div><div>M=C3=A5ns Zigher</div></div>

--000000000000e006b605800ee6f9--
