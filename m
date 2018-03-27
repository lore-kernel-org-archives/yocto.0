Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A54BE00D3D; Tue, 27 Mar 2018 01:07:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi0-f41.google.com (mail-oi0-f41.google.com
	[209.85.218.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13A7AE00D33
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 01:07:16 -0700 (PDT)
Received: by mail-oi0-f41.google.com with SMTP id t16-v6so18435857oih.3
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 01:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bFV07/D0fMd8TuabiYjVqggaZDiBmvNLvnivsEpa/PE=;
	b=SpyWJN1Qw1H77Csi9WLzdc9IpO7mmHBvNKTrq/5pUZUk7qO//8/evx2SVkPJBcdru1
	/h7++2FX6h0aEtmkv+pDOTVuI7HatE5nRE5oy5PnO88dqNPnW4Aa9VrMTi08KC+AFE/l
	PWYsBjTiNMPqWICzdm6ucZYFhQ8MyHpUd7WhPwewgMI+lKc/M6voD3bzcXCuzXXxwEs9
	1HtOVT+/k4jjExiLKhXOoiQ/x1HNxdKLXfMQcbXb1OCvgmKlnJB9KGkvgaQXcTfMHk2G
	V1KUCyk0Nw4rIDSRvGPhYKe++aV1Z0b5YQdX8G3vHHaVjiXkYssGainehRiSsOQaN0SZ
	RPbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bFV07/D0fMd8TuabiYjVqggaZDiBmvNLvnivsEpa/PE=;
	b=fRpux8xSY+1MyiRWzLkEbKIv0Gt9nK38tch0oYQcfaVOo53G/Xo849FOn9ZbGMWVV5
	MaZtuKb3yNhL36xoAk50Jr4K6hdKgI1eSrzBBbE7vadmt2mKKOByqttpQHpXiOMKf+0M
	zjeSB18/v6ySIj8aMYZfuinAwl7RI8KK+dUhzxm+lfqhB/yQXRbfFj2C+FAbmrsRu+p9
	A7wRklj2TMuOoWzI2d4yiMmuNBqszrinCsgPncvVpBqo6epki+hQtu/4QYseKuGqx2be
	Ai332aKLaIzyKIpbUQQ6Ix6iZeMiQwxmLKRkRYYAhIW7SjOkrj/ONgGUEg4oQWOB0nm/
	PqAw==
X-Gm-Message-State: AElRT7FfRAiXOGGcw3DAKa36G2QYEZb13SQ8cd3YoXV6O7VXWrlc2Cr1
	b0gFNnm5+z3vxcrVP/q8nptkrC/QxWWdnmWHdGnTsA==
X-Google-Smtp-Source: AIpwx49eFxA8pPp0kOQe9jbMKNkoUt2XO7s/n1AJJ3W83+T07/8wFqqZrg0m/dkRKPVm6tvl2dmdT1NEMJ6RFw/rRKI=
X-Received: by 10.202.212.85 with SMTP id l82mr6562892oig.102.1522138036136;
	Tue, 27 Mar 2018 01:07:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.77.209 with HTTP; Tue, 27 Mar 2018 01:07:15 -0700 (PDT)
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 27 Mar 2018 10:07:15 +0200
Message-ID: <CAEhQi8k=m6UtLiOZUqwB8+Zc4CtMyGOgR+whN5aaHWE4XZ7iNg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: question on how to include package to the SDK
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
X-List-Received-Date: Tue, 27 Mar 2018 08:07:17 -0000
Content-Type: multipart/alternative; boundary="001a113d2472f1790f0568606038"

--001a113d2472f1790f0568606038
Content-Type: text/plain; charset="UTF-8"

Hi,

I have package that require protobuf and the compiler protoc. I have
included the following

DEPENDS += " protobuf protobuf-native"

and

RDEPENDS_${PN} += " protobuf"

The build works as intended the problem now is that the protoc is not
included in the SDK. In the Yocto ref manual I found the following
description for TOOLCHAIN_HOST_TASK

"This variable lists packages the OpenEmbedded build system uses when
building an SDK, which contains a cross-development environment. The
packages specified by this variable are part of the toolchain set that runs
on the SDKMACHINE
<https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SDKMACHINE>,
and each package should usually have the prefix nativesdk-."

So I have also in by image bb-file included the following

TOOLCHAIN_HOST_TASK += " nativesdk-protobuf"

The build passed without any errors but the protoc is still not included in
the native sdk is included in the target part. I would really appreciate if
you could en-light me on this topic on how to include a package in the sdk.

BR
Mans Zigher

--001a113d2472f1790f0568606038
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have package that require protobu=
f and the compiler protoc. I have included the following</div><div><br></di=
v><div>DEPENDS +=3D &quot; protobuf protobuf-native&quot;</div><div><br></d=
iv><div>and</div><div><br></div><div>RDEPENDS_${PN} +=3D &quot; protobuf&qu=
ot;</div><div><br></div><div>The build works as intended the problem now is=
 that the protoc is not included in the SDK. In the Yocto ref manual I foun=
d the following description for TOOLCHAIN_HOST_TASK</div><div><span style=
=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif;font-size:mediu=
m"><br></span></div><div><span style=3D"color:rgb(51,51,51);font-family:Ver=
dana,Sans,sans-serif">&quot;This variable lists packages the OpenEmbedded b=
uild system uses when building an SDK, which contains a cross-development e=
nvironment. The packages specified by this variable are part of the toolcha=
in set that runs on the</span><span style=3D"color:rgb(51,51,51);font-famil=
y:Verdana,Sans,sans-serif">=C2=A0</span><a class=3D"gmail-link" href=3D"htt=
ps://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-SDKMA=
CHINE" title=3D"SDKMACHINE" style=3D"background:transparent;font-family:Ver=
dana,Sans,sans-serif;color:rgb(68,68,68)"><code class=3D"gmail-filename" st=
yle=3D"font-family:Courier,monospace">SDKMACHINE</code></a><span style=3D"c=
olor:rgb(51,51,51);font-family:Verdana,Sans,sans-serif">, and each package =
should usually have the prefix</span><span style=3D"color:rgb(51,51,51);fon=
t-family:Verdana,Sans,sans-serif">=C2=A0</span><code class=3D"gmail-filenam=
e" style=3D"color:rgb(51,51,51);font-family:Courier,monospace">nativesdk-</=
code><span style=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif=
">.&quot;</span></div><div><span style=3D"color:rgb(51,51,51);font-family:V=
erdana,Sans,sans-serif"><br></span></div><div><span style=3D"color:rgb(51,5=
1,51);font-family:Verdana,Sans,sans-serif">So I have also in by image bb-fi=
le included the following</span></div><div><span style=3D"color:rgb(51,51,5=
1);font-family:Verdana,Sans,sans-serif"><br></span></div><div><span style=
=3D"color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif">TOOLCHAIN_HOST=
_TASK +=3D &quot; nativesdk-protobuf&quot;</span></div><div><span style=3D"=
color:rgb(51,51,51);font-family:Verdana,Sans,sans-serif"><br></span></div><=
div><font color=3D"#333333" face=3D"Verdana, Sans, sans-serif">The build pa=
ssed without any errors but the protoc is still not included in the native =
sdk is included in the target part. I would really appreciate if you could =
en-light=C2=A0me on this topic=C2=A0on how to include a package in the sdk.=
</font></div><div><font color=3D"#333333" face=3D"Verdana, Sans, sans-serif=
"><br></font></div><div><font color=3D"#333333" face=3D"Verdana, Sans, sans=
-serif">BR</font></div><div><font color=3D"#333333" face=3D"Verdana, Sans, =
sans-serif">Mans Zigher</font></div><div><br></div></div>

--001a113d2472f1790f0568606038--
