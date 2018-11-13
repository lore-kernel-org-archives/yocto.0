Return-Path: <samuli.piippo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5491E00C45; Tue, 13 Nov 2018 01:56:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (samuli.piippo[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52D54E00C41
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 01:56:58 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id t189-v6so13046418itf.1
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 01:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=95R0+hVu1nrFRVbyaEgsyONVoaVIcjd3WfABVsUMIz8=;
	b=h6pWvlPJ0NYpnbdstjo38OrXhIjB+oT7scvfMoeDEgKGrdWxI2c1muy2Nw3iBvYktJ
	R1QmnIVvQOKzNiIXGn6Q1lvjV1YvFTbiSED9ycJniHkDV6uyw1zmSfG7Yn1lENH91Tc2
	v5KL028yPFljNRR3fgBcpk66Fv42m8L1xOuLozuVWp3yLAWEZxCGGkfY0qXW3uSj0qPr
	CjH9opOLDiepa74+TIYVnkRKX4U/Q3S+DzsLZXycEx+45IS68J7Rm2ew5mFkWml9ixDB
	cvTX5SOTGk0rrPvWoH29tIQKISszJ+AyYXxvnjCtNcVIP4cFhpobeH5D5Dyxxy9NZ0yx
	wGrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=95R0+hVu1nrFRVbyaEgsyONVoaVIcjd3WfABVsUMIz8=;
	b=NPLwlzym/2FEide7fZoj/jxKi/gUipVDY+IiWRH5IXHlGsRZ3GcNXO58Z0t8VyGoVD
	zPNLx9/SoEOnOzD7shZVwoWIz0LwIZHATMOzPkBJR5MuT+Q24aE+NZQt8OGijImIheDS
	eZ19+8O8Wk4WkuALlUv9fCf5UY/4CPpJP7cWKe+Y0IqdLbrJBLWWrBB/fSc3j6iRpzbq
	i6bA9rzZ2bPwODxRvz7RTS4P1LhpNUILH7gLxjrnFrlGCBiNcCfZyvRKw3kIUVc2CTUx
	LgocZx0XISvFWUIfp3+N/Acpd0Bqdy1Zael90ZaXwEz100QhAUz+BCRgOCCSc5kQn+rN
	LKGQ==
X-Gm-Message-State: AGRZ1gJeM+MfvHs7pduAzJWtG8W2G6W8cqBG1wotU9r9NKkYnC5mGpKm
	2zr83XPeCm5j1UbFfyj2COX+Na9H0gO51iTSTLOrXw==
X-Google-Smtp-Source: AJdET5cq2ejKaZTccOlEeH3Ogo7SoVY6DLC0Bjz5oSOkvTX4Lo9J76kZ0XcPFXM1//+ip3cKplej5duSvGpacOMQdB0=
X-Received: by 2002:a24:4a10:: with SMTP id
	k16-v6mr2974734itb.170.1542103017298; 
	Tue, 13 Nov 2018 01:56:57 -0800 (PST)
MIME-Version: 1.0
From: Samuli Piippo <samuli.piippo@gmail.com>
Date: Tue, 13 Nov 2018 11:56:46 +0200
Message-ID: <CABXoSoXbsZTmZokUW5sfuw2xHP4cENo7iuE5kgffQ-WPOzS-Bg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta-mingw: unable to run executables on Windows
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
X-List-Received-Date: Tue, 13 Nov 2018 09:56:58 -0000
Content-Type: multipart/alternative; boundary="0000000000008da429057a88d69d"

--0000000000008da429057a88d69d
Content-Type: text/plain; charset="UTF-8"

Hi,

I've just upgraded poky and meta-mingw layers from sumo to thud and as a
result a lot of the executables in the toolchain no longer run correctly on
Windows.

I've built meta-toolchain for SDKMACHINE=x86_64-mingw32. From that, gcc/g++
work fine on Windows 10, but ar, as, objdumb, and others hang for ~30
seconds and exit without any output.

Has anyone else seen this?

--0000000000008da429057a88d69d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;ve just upgraded p=
oky and meta-mingw layers from sumo to thud and as a result a lot of the ex=
ecutables in the toolchain no longer run correctly on Windows.</div><div><b=
r></div><div>I&#39;ve built meta-toolchain for SDKMACHINE=3Dx86_64-mingw32.=
 From that, gcc/g++ work fine on Windows 10, but ar, as, objdumb, and other=
s hang for ~30 seconds and exit without any output.</div><div><br></div><di=
v>Has anyone else seen this?</div></div>

--0000000000008da429057a88d69d--
