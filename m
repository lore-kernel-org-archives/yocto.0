Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15DEFE00D3A; Tue,  9 Jul 2019 02:12:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A12E00CF4
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 02:12:00 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id j5so22228780ioj.8
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 02:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dpUe+2uR8LuuJYx6jOlwf2Xnr+rBLyuu8sPi0/CiWIE=;
	b=UxMH9Ew7Nw5opOF4L4NPU6Pv5rPR4z0csxtQ3h5uZr7tzHbV5QQhyj/7Qpm5y5sGOk
	Yb+VvpicfcD5vrHB4uQlEM6CK3WG+BTAjB9rUZvawVyYCK5eYOLdRzW/2j80ajc/Iy5c
	zTkDe51TeFzAUE9nlLw8dwH1rMejHTnMChCAGQfpyV6j0p6Mfl8wVD+S1hF9RFS1YO6N
	Ylmj3bsMfjZ2NUDpAVaHVnv/THwvNlhK/WfT2Oe32FKHh4iLGfY5M+N1OE0aOyOuILPc
	h+rNefW2a9Xxmz8x0/HFTysXN1tX1UBGyzxsrFb56c8ADNYrWlq8ysGMU4Lvel2lEKqD
	IA6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dpUe+2uR8LuuJYx6jOlwf2Xnr+rBLyuu8sPi0/CiWIE=;
	b=couNlJUx/zyFh7g9wNf78aR05hhkdrldAyybV8eHGdc3a/cHvOxDVm+Ii351bJ0HL8
	NQwztpn8Rm4VxsVoSJ1nIicQI1SZFd48OUcOxooT9dKHcIq1JNIuDt8xhWUl9oPcNZ9G
	xq1dFs6Gtcw68ihIIpCrpx31aWCWCRjNog8pugrxZ4CWOPCE7lO42omSkU3c3XlPCW+G
	D9H0H5JQz7zzmfYvVYaqW9MIIwQYPyiizSjGSjm8L79hquBlzcCmzdHtxxMa+pp6o0KK
	RXqHExmGeXyKshOdRfswnP8yjULTFu+YzBpdq9llLtp+WR8bgflJccXdqj5PA1W1rKag
	OxSA==
X-Gm-Message-State: APjAAAV/cvE/oBmP/6/KbOKeIDWTC7/dUF89eZMiu0kn2BZjFmLTGWcQ
	PIy5RHa71AsYmIOHnVPEPLpiexRQC4DTDHv+iTU=
X-Google-Smtp-Source: APXvYqxDD1HU8JvXAzBorHPvziQQj5f0J1it4C2K6QGbxk6dfwB1eIS/pj8lr60UVYe6Z3vZlqiuA8jSmf92JdYRBOU=
X-Received: by 2002:a6b:c38b:: with SMTP id
	t133mr24119029iof.162.1562663520396; 
	Tue, 09 Jul 2019 02:12:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAGAf8LzyVbxJ--aDihMZyokOo+Sn18s=4vQvX91Y5jBpvbc_Bg@mail.gmail.com>
	<CAG+Ob8YYxVf4d9LEjL5Z9KEm3zP4xBMHr-H46rqumXOLLJAZyA@mail.gmail.com>
	<CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
In-Reply-To: <CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
From: Onur Eser <onureser12@gmail.com>
Date: Tue, 9 Jul 2019 12:11:48 +0300
Message-ID: <CAG+Ob8bWkY+zhVbhfDUu_mfrpA-DNvVb4K-vfu=3BuhGsp_Akw@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Tue, 09 Jul 2019 09:12:02 -0000
Content-Type: multipart/alternative; boundary="000000000000096d84058d3bf42a"

--000000000000096d84058d3bf42a
Content-Type: text/plain; charset="UTF-8"

Zoran,

I know you are not a Qt Layers expert. I am trying to describe my problem
to experts via common mails, so they will not missunderstand my issue.
Oh lord, whole new building... I am not a time traveller, but I can say
that I will wait for 10 hours or something for that to build, and it will
fail because of something else.
The worst part is, it gives the error on the FINAL STEP. After hours and
hours and hours.
Anyway, I will try thud branch. Wish me luck.

Others can still offer solutions, I will keep this build too.
Onur

--000000000000096d84058d3bf42a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Zoran,</div><div><br></div><div>I kn=
ow you are not a Qt Layers expert. I am trying to describe my problem to ex=
perts via common mails, so they will not missunderstand my issue.</div><div=
>Oh lord, whole new building... I am not a time traveller, but I can say th=
at I will wait for 10 hours or something for that to build, and it will fai=
l because of something else.<br></div></div><div>The worst part is, it give=
s the error on the FINAL STEP. After hours and hours and hours.</div><div>A=
nyway, I will try thud branch. Wish me luck.</div><div><br></div><div>Other=
s can still offer solutions, I will keep this build too.</div><div>Onur<br>=
</div></div>

--000000000000096d84058d3bf42a--
