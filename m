Return-Path: <janez.svetokravsky@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91A12E00DF8; Wed,  7 Feb 2018 10:48:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (janez.svetokravsky[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22418E007E1
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 10:48:11 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id e1so3436988ita.0
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 10:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kFcFdA+j13PwwIRSYTdrRcbsJ4d31vayWmfAdT/LExg=;
	b=NmPYKDOsnYs1oo3sEpGukLFQlufHx4JNSsQkyikAMo+9Uz8TLFtgQ3lFosrYqC3QuH
	lAsxjaTpvX4hoUanb4Fm7JMcVy69lSsKI9Yr8j4gsONwybzcidQGW2mzBd0mqRLEb+ij
	NsbkaFUFDs2brChGJqjPlnJW5OlvDgOkXJPV62YI78pq5iJq5HdsIbPExMrmXJVBkjSa
	r7898XcclZzdou2/ErflVf81uVipX3ElCH3ExYimIO6Zhpq2ZX5dNHEYst0DPSu01Rii
	mUn3G/C5Ymyzex9Ug09bmwXQxbFNZ2pTLxaEe4pYHTo/4sVmLD4dRgMQ7qo1mfavw1mG
	ndRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kFcFdA+j13PwwIRSYTdrRcbsJ4d31vayWmfAdT/LExg=;
	b=Gw578dlpwYYaZ5v4aJJKqryBT6Npi59VjFgfwOFkowZ7tNCH3D35RVE5T48eMjMszE
	hP9zRFRpXYCqQpQNf76JbjAW52WqEx/BuudiEweBBwz4LDvGpeXe8kvqK8kZRqWHALIK
	TsSqHNBB4eTpmQRjOVlbNaEzFAIfNA8gXUjAq3AoxGu2h1z8V0sSnZ+K/CEIGTfWOEBG
	XuPcA8d3zJXWwBXCTGSfIzvSIpFqwR8PhJXrU1Lss1a4E30FBmkbTAOqwZnJP3BSs1IM
	YxcwsfoLmYFL2Bbt5HfLoQBDovuGIs/dqnK+77MGBJ8x1YQmOS6NhePdWd3fcR0m3/zP
	BCpg==
X-Gm-Message-State: APf1xPA3tJovNB1LoAF9AhBN8+zvHmSP++i4zP9pLX1aU+L8aHdL3fnc
	J0GbvBA+OOLxCv1PILLG2ErJtK3AHnOuVdA3MfQ+UA==
X-Google-Smtp-Source: AH8x227XkpkIQQaXAKZQ8HcY6TD6PVyTpwZAd4JQ0bYqf41+oCZnK3Fvb4SHqoLOQ9a94rUma9N8QxRHuus8qcf3RJk=
X-Received: by 10.36.29.81 with SMTP id 78mr9267458itj.53.1518029291152; Wed,
	07 Feb 2018 10:48:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.203.197 with HTTP; Wed, 7 Feb 2018 10:48:10 -0800 (PST)
From: Janez Svetokravsky <janez.svetokravsky@gmail.com>
Date: Wed, 7 Feb 2018 19:48:10 +0100
Message-ID: <CACy3EUChjZSqN+5Vw1uUDYiLbx_cipsF3dpZ2HG=z_0YEw4Kbw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Changing gcc version and arch for single yocto recipe
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
X-List-Received-Date: Wed, 07 Feb 2018 18:48:12 -0000
Content-Type: multipart/alternative; boundary="001a1143e172a8690f0564a3bc23"

--001a1143e172a8690f0564a3bc23
Content-Type: text/plain; charset="UTF-8"

Hello,

I have just stumbled upon interesting problem, which i do not know how to
solve. I am using yocto to build image for ARM cortex-A9 CPU. default gcc
used is version 5.2

Beside ARM cortex-A9 there is cortex-m0plus chip, which is located on the
same board. From now on i will use abbreviations A9 and M0. Occasionally A9
is used to upgrade software on M0, therefor upgrade image for M0 is located
in rootfs which is accessed by A9. Until now, i used different
compiler/environment to compile firmware for M0 and afterwards copied M0
image to A9 rootfs.

I would like to move compiling of M0 firmware into yocto. gcc version used
for M0 firmware is different and must not be changed, same goes for A9. So
my question is: Is it possible to specify different version of gcc and
different architecture, for single yocto recipe?

--001a1143e172a8690f0564a3bc23
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:normal;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;white-space:normal;word-sp=
acing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;color:rgb(0,0,0);font-family:Helvetica;font-si=
ze:12px;float:none;display:inline">Hello,</span><div style=3D"font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:nor=
mal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial;color:rgb(0,0,0)=
;font-family:Helvetica;font-size:12px"><br></div><div style=3D"font-style:n=
ormal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:no=
rmal;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;color:rgb(0,0,0=
);font-family:Helvetica;font-size:12px">I have just stumbled upon interesti=
ng problem, which i do not know how to solve. I am using yocto to build ima=
ge for ARM cortex-A9 CPU. default gcc used is version 5.2</div><div style=
=3D"font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><br></div><div styl=
e=3D"font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:normal;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;white-space:normal;word-spacing:0px;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;color:rgb(0,0,0);font-family:Helvetica;font-size:12px">Beside ARM cortex-=
A9 there is cortex-m0plus chip, which is located on the same board. From no=
w on i will use abbreviations A9 and M0. Occasionally A9 is used to upgrade=
 software on M0, therefor upgrade image for M0 is located in rootfs which i=
s accessed by A9. Until now, i used different compiler/environment to compi=
le firmware for M0 and afterwards copied M0 image to A9 rootfs.</div><div s=
tyle=3D"font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:normal;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;color:rgb(0,0,0);font-family:Helvetica;font-size:12px"><br></div><div =
style=3D"font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:normal;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial;color:rgb(0,0,0);font-family:Helvetica;font-size:12px">I would like t=
o move compiling of M0 firmware into yocto. gcc version used for M0 firmwar=
e is different and must not be changed, same goes for A9. So my question is=
: Is it possible to specify different version of gcc and different architec=
ture, for single yocto recipe?</div><br></div>

--001a1143e172a8690f0564a3bc23--
