Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 117A6E016CA
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 12:52:16 -0700 (PDT)
Received: by mail-ie0-f179.google.com with SMTP id aq17so14580471iec.10
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 12:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8Qm1x7OyZiTmBIUaYz7er/Q4wiT2KaKPpScdtdQrH5U=;
	b=qXE2hRBCYBew3zlTeEX6k/w77W4H3fXZXyRWBGRj17bHoNlhpkZ1tlzwa4mS3KSQcv
	AUTC02sm3kiIKPp6flL49QwlqQxftgn6Mclo9u47MXFv4QvHjv67uKQJSXfQyMyTNAdx
	A3eGarZ4l3KhTqRqsvUqN4xL00N0V5BA8ntCVVffQYKoF5ZXfN2xLzls4c4Ur9F1Td51
	nlr/IrV7VE68rNpsoOcpetV6xr25bHVJleIQr8k/PpaAr31AmLEt3e7VQn8vI9HNKGoJ
	cw2w/nbbnfawKMupcgCj0Lbs3yBzIBcFUnx1DxDpF2qgAevl7deiOTO7x+Tiid/f2jTp
	O8qg==
MIME-Version: 1.0
X-Received: by 10.50.79.164 with SMTP id k4mr18943870igx.10.1381866735584;
	Tue, 15 Oct 2013 12:52:15 -0700 (PDT)
Received: by 10.50.231.161 with HTTP; Tue, 15 Oct 2013 12:52:15 -0700 (PDT)
Date: Tue, 15 Oct 2013 20:52:15 +0100
Message-ID: <CAM1ZcoXQEO9w+gJKfK8xYft=JegKHoWGn8Q6CF=hBd77o0ezyw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: fetch from perforce
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
X-List-Received-Date: Tue, 15 Oct 2013 19:52:17 -0000
Content-Type: multipart/alternative; boundary=089e01294784e6cbc604e8cceb2a

--089e01294784e6cbc604e8cceb2a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

can someone please give me an example of fetching the code from perforce?
I want to map files from perforce and put them in a different tree
structure in the workspace before compiling it. I also need to set user and
password.
I failed to find an example online and I don't understand the perforce
script enough to guess the way to call it.

Thanks a lot,
Katu

--089e01294784e6cbc604e8cceb2a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>can someone please give me an examp=
le of fetching the code from perforce?</div><div>I want to map files from p=
erforce and put them in a different tree structure in the workspace before =
compiling it. I also need to set user and password.</div>
<div>I failed to find an example online and I don&#39;t understand the perf=
orce script enough to guess the way to call it.=A0</div><div><br></div><div=
>Thanks a lot,</div><div>Katu</div></div>

--089e01294784e6cbc604e8cceb2a--
