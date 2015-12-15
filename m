Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4C20E00AD2; Tue, 15 Dec 2015 13:59:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8456CE0079A
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 13:59:37 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id o67so35070791iof.3
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 13:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=FoFAlgBtc6YRjmq4Vj6gLtH2+gEKTSDVv8yVbzH1tn0=;
	b=lTgovG32Fj8z2jCYaXbSBJyLc3hWWxqTndTrtYggfi+wVjd08Fn+Mn8OHlT4apq87l
	gu73X31+YiVdwb1LXwavx97yqxA+r/9qObWh6huE9qkBktYWGXthNQwYAgyzQEbypysi
	FNyV5Ybe0ZUSIfsMSnd3uft9xCt2KESeNnQqaNClR8180w7blWVM2QOtn2AwKvFFhlEO
	Im18Nhtaxx75qtrhPX0ID3U5CWECEGKfwupPYDGqeNwuw6d/Wbyv3Jxa90azqM94IoVr
	nZYlRMAgTgmHYeLxmUaTM2IIJQIXi48E6Agx7UPZDnl4nR5acYAi3XUWARRipFPRB1JV
	ssWA==
MIME-Version: 1.0
X-Received: by 10.107.149.9 with SMTP id x9mr44657649iod.170.1450216776593;
	Tue, 15 Dec 2015 13:59:36 -0800 (PST)
Received: by 10.79.36.195 with HTTP; Tue, 15 Dec 2015 13:59:36 -0800 (PST)
Date: Tue, 15 Dec 2015 15:59:36 -0600
Message-ID: <CAOsp8o9Cuz3YvvBrZcH9jJx+5Rz=vKmfD1LUNt977XhHYthmew@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Custom license in file header
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
X-List-Received-Date: Tue, 15 Dec 2015 21:59:40 -0000
Content-Type: multipart/alternative; boundary=001a1140fa06d0f76d0526f6e71c

--001a1140fa06d0f76d0526f6e71c
Content-Type: text/plain; charset=UTF-8

I am trying to pull in the stream benchmark utility into my custom layer.
However this appears to have a custom license. It's in the header of
stream.c, but it's also copied here:

https://www.cs.virginia.edu/stream/FTP/Code/LICENSE.txt

For simplicity, I am simply using stream.c and providing beginline/endline
parameters to get the proper section of the C header, e.g.:

LIC_FILES_CHKSUM = "file://stream.c;beginline=13;endline=41"


That allows me to properly set LIC_FILES_CHKSUM - but what do I set for
LICENSE? It's a completely non-standard license. Do I have to copy this
license somewhere as a common license, despite it only being used for this
one utility? A bit unclear about these details.

Thanks
Michael

--001a1140fa06d0f76d0526f6e71c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to pull in the stream benchmark utility into m=
y custom layer. However this appears to have a custom license. It&#39;s in =
the header of stream.c, but it&#39;s also copied here:<div><br></div><div><=
a href=3D"https://www.cs.virginia.edu/stream/FTP/Code/LICENSE.txt">https://=
www.cs.virginia.edu/stream/FTP/Code/LICENSE.txt</a><br></div><div><br></div=
><div>For simplicity, I am simply using stream.c and providing beginline/en=
dline parameters to get the proper section of the C header, e.g.:</div><div=
><br></div><div><div>LIC_FILES_CHKSUM =3D &quot;file://stream.c;beginline=
=3D13;endline=3D41&quot;</div></div><div><br></div><div><br></div><div>That=
 allows me to properly set LIC_FILES_CHKSUM - but what do I set for LICENSE=
? It&#39;s a completely non-standard license. Do I have to copy this licens=
e somewhere as a common license, despite it only being used for this one ut=
ility? A bit unclear about these details.</div><div><br></div><div>Thanks</=
div><div>Michael</div></div>

--001a1140fa06d0f76d0526f6e71c--
