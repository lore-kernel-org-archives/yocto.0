Return-Path: <rammohanreddy.mvs@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4807BE00C43; Wed, 24 Apr 2019 01:35:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rammohanreddy.mvs[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
	[209.85.210.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1704AE00C43
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 01:35:46 -0700 (PDT)
Received: by mail-pf1-f178.google.com with SMTP id b3so8948555pfd.1
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 01:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CzVJyrv7b9jV85XRQUevAeUA6mlhBYaZhXx0uQu3pXw=;
	b=MCa0u1jwHh4f+TY56ypAagT51l4Z8H8uHFcqXKPpx4jyB1kMjHKstzeD50l9+7u5jg
	uyF0EVuMSgltGgC9dhGN8MG0xD6A6p8Pp1v1VMVrFeGoWgU9Gp42rx1LT66HeWDwonQ/
	GfxP8e7N7JiAi8BpcbePGWzexkJwgr/yaeNThPqOvbThEYe6JNYoMZbvx5pw0kqnyqFU
	n4MQmf73+1yMSvZ/9/J56SQiZfduN6Dw9HcpDqq8/e5WKEil/CesiSE5Dsx8gCM6WR4r
	47MiJNtYr0ryJ/LfCsgZn6F+m1SZStRTZiKnAUKAIpD2KTHggnVeepNh3s3ppMcOExom
	TSng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CzVJyrv7b9jV85XRQUevAeUA6mlhBYaZhXx0uQu3pXw=;
	b=cCI4L1UBGXcLzsTfJz5irAcsBluSw4eAejnTnzQkIFDO3meDSa+fyT1eoMgBlLu6BD
	M0g+UZXCWQ+S7LF3Krl7caMGLnjHbxsyZzR9EPpDQaxwMEYvg5zq9odhiZckYYX+/++Q
	Qph4uJHBxC8YVmSxyxdj+RIa7ZGqQ2XCvly8B6wAQx6zh6zqD7/as5U6j+eCFx7YzXPH
	WKTHRzC9UP6TBZv0qWLHUEgEPYczFi5jM6uEq77BBSEB+lEhUcqKhQHfOwG1iinRxMNI
	mJQD++kLAonb4l4aHUVFUjKZxRdixwVBVNua23jcugZxuYE5+e1rTlJtaZUPh4ZXyCSJ
	Szqw==
X-Gm-Message-State: APjAAAUceIUnT6Aj7hXBfwYWv2XNA0LenpiY29BuCWeiWtDNw8g7T57V
	mUftm8VhEQmmFJhIYaF8tbwwIjb9p0MWmlvHv+Db6ByxGvk=
X-Google-Smtp-Source: APXvYqw4kxVeTtOiUSw3/E47dpmlwZXnipwUIzQOiAOSNbRn6dmEs6Tlzr5RvC25AlqQwqecny54P2KwmLLHCVb3DqY=
X-Received: by 2002:a62:b61a:: with SMTP id j26mr31324971pff.203.1556094943801;
	Wed, 24 Apr 2019 01:35:43 -0700 (PDT)
MIME-Version: 1.0
From: rammohanreddy medapati <rammohanreddy.mvs@gmail.com>
Date: Wed, 24 Apr 2019 14:05:34 +0530
Message-ID: <CAP7zSz9D3eUniobKA1CKY0fv+O3L5GFzDcqce8H4smuQ_aDo7w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 29 Apr 2019 02:44:31 -0700
Subject: yacto build filesystem link dpkg or package
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
X-List-Received-Date: Wed, 24 Apr 2019 08:35:50 -0000
Content-Type: multipart/alternative; boundary="0000000000005cb59705874296ef"

--0000000000005cb59705874296ef
Content-Type: text/plain; charset="UTF-8"

Hi,

i want to link the dpkg package or source code for yacto build system .If
it possible please guide me for adding packages to yacto build system


Thanks,
Rammohan

--0000000000005cb59705874296ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-gs" style=3D"margin:0px;padding:0px 0p=
x 20px;width:1631px;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-ser=
if;font-size:medium"><div class=3D"gmail-"><div id=3D"gmail-:qk" class=3D"g=
mail-ii gmail-gt" style=3D"font-size:12.8px;direction:ltr;margin:8px 0px 0p=
x;padding:0px"><div id=3D"gmail-:qj" class=3D"gmail-a3s gmail-aXjCH" style=
=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-stretch:normal;font-size:small;line-height:1.5;font-family:Arial,H=
elvetica,sans-serif"><div dir=3D"ltr">Hi,<div><br></div><div>i want to link=
 the=C2=A0dpkg=C2=A0package or source code for yacto build system .If it po=
ssible please guide me for adding packages to yacto=C2=A0build system</div>=
<div><br></div><div><br></div><div>Thanks,</div><div>Rammohan</div></div><d=
iv class=3D"gmail-yj6qo"></div><div class=3D"gmail-adL"></div></div></div><=
div class=3D"gmail-hi" style=3D"border-bottom-left-radius:1px;border-bottom=
-right-radius:1px;padding:0px;width:auto;background:rgb(242,242,242);margin=
:0px"></div></div></div><br class=3D"gmail-Apple-interchange-newline"></div=
>

--0000000000005cb59705874296ef--
