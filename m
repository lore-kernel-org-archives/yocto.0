Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98F3EE0074B; Fri, 31 Aug 2018 11:51:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
	[209.85.219.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F763E005B1
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 11:51:26 -0700 (PDT)
Received: by mail-yb1-f171.google.com with SMTP id e18-v6so1232875ybq.5
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 11:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=d/6Lo9HpveSddooNSOlec/qGyZZvma+Xe5PUm/3avbs=;
	b=Xu5m+cRb8xq6icxOWkPpoAJDW+Vew7zL5L/TpIEeuRCAbeMQnCZHxfa1g4NktmFUto
	pQQgIXV+e/8XYB2i+E1pVqD0wCbIUPVbOuwR9aRfKS4I/veRvy/DUvYm28YHRqCXpa9Y
	ZaDJ3lu27qdhvfD0x0XG8BiNPIpiv2qYF7yAgDQBaE3bCOVaNWi512jPTD/A+GtEZybN
	q2Qfxkg4d0SO8sC6I7KzsPXKkT1oXDZt4WX4jw5EspGIIO6fSBJz2StccOEp0U7x61AR
	25qymY8GqdBaeK4xbJakaEZrv1/wgHa+nhe6ItLeun/YZ8rmhVbv8H2lR5VSwp/mOOUA
	fMrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=d/6Lo9HpveSddooNSOlec/qGyZZvma+Xe5PUm/3avbs=;
	b=ViukcMLjUAxmr07sGd369z08d5+7aw+/pypWI43jiwpMUtpCwbdsqnSZnp4tspiUoK
	4+jLRjuTwPrzYk1gITJKi9ik4Fbbm0+cnCEr+5Z8CuFy8Zms7aY0K6j813YHwYZl4IRY
	DhgBVZ5dmCo4UkQY3yZvGNByodXmA1++Hc9v/hPrI/Wzx347FQZwyfOlBXUHLLbAuUxs
	a3K387qg/Cd3PbxBFqybX8iLztcCDt4V0n3QnkddKPAZ6uxKss9V4lJVa1e/TaUhDebA
	y307xCDtdWunob3RipOzCxp08ugVU5b7YPBpiEbuEGaAEl45kNZm/JZJ/On6pEhXsved
	z6RQ==
X-Gm-Message-State: APzg51Cqh8ikacEtMuK9KD2etS4wfw9NCCRL1h1JzbNTQdSzLpvV9W5C
	podFjO5lTeykLjp522BOWG2n2+PgWytHDJXA5gtbz0cW
X-Google-Smtp-Source: ANB0VdbhEAgAjQgA24hzKTbyFm4bK8fOCnR7mVQqlWBQGFY1zFOPw131g3Iiqg/WLLGg+D+YE4xMD8oDiyo0p6vlrq8=
X-Received: by 2002:a25:bfcc:: with SMTP id
	q12-v6mr4693708ybm.326.1535741485671; 
	Fri, 31 Aug 2018 11:51:25 -0700 (PDT)
MIME-Version: 1.0
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Fri, 31 Aug 2018 13:50:49 -0500
Message-ID: <CAJgxT3-S1YEfm62PTQYtukLTO19oeskNWaTC2u8qZag5z8X-Lg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-mingw] Previous adventures in attempting a nativesdk-python ?
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
X-List-Received-Date: Fri, 31 Aug 2018 18:51:27 -0000
Content-Type: multipart/alternative; boundary="000000000000b86be90574bfadc5"

--000000000000b86be90574bfadc5
Content-Type: text/plain; charset="UTF-8"

I've recently been wishing that it were possible to supply a working MinGW
build of Python so that various utilities implemented in Python (e.g.,
nativesdk-glib-2.0-codegen) could be included in SDK's built with
meta-mingw.

There are some directions [1] that claim to provide sufficient patches to
build a functional native Windows copy of CPython with MinGW. Has anybody
ever tried phrasing a meta-mingw python recipe in terms of something like
that? Alternately: is it known already to be hopeless? :)

[1] https://bitbucket.org/puqing/python-mingw

-Matt

--000000000000b86be90574bfadc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve recently been wishing that it were possible to su=
pply a working MinGW build of Python so that various utilities implemented =
in Python (e.g., nativesdk-glib-2.0-codegen)=C2=A0could be included in SDK&=
#39;s built with meta-mingw.<div><br></div><div>There are some directions [=
1] that claim to provide sufficient patches to build a functional native Wi=
ndows copy of CPython with MinGW. Has anybody ever tried phrasing a meta-mi=
ngw python recipe in terms of something like that? Alternately: is it known=
 already to be hopeless? :)</div><div><br></div><div>[1]=C2=A0<a href=3D"ht=
tps://bitbucket.org/puqing/python-mingw" rel=3D"nofollow" style=3D"margin:0=
px;padding:0px;border:0px;font-variant-numeric:inherit;font-variant-east-as=
ian:inherit;font-stretch:inherit;line-height:inherit;font-family:Arial,&quo=
t;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px;vertical-align:b=
aseline;box-sizing:inherit;color:rgb(0,89,153)">https://bitbucket.org/puqin=
g/python-mingw</a></div><div><br></div><div>-Matt</div></div>

--000000000000b86be90574bfadc5--
