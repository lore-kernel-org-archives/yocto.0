Return-Path: <leodmendesjr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A9EFE00B92; Thu, 14 Feb 2019 05:57:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (leodmendesjr[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DF0FE00708
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 05:57:05 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id s16so3675236vsk.4
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 05:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=xPu7QmnUsr49i3KFJErK34zHgvpTCQGFGAumZ5wRz1Q=;
	b=fnWXTsGFIz3RqTmVrQAdKSaaqEynnvpcsBO1N4pwwI4c29g/oaqZz4JIEYtShcQcfR
	jGjFsqvnHtjBR3JJe1bBmCZ3kNdQG6gAi5Ze6GWTEgk0Agd0moDmj+keo5KGB72qtQcT
	p4rAJoYsIKMq6h1NBHve6au6VwRUtQHeaz7xhV8sgmQFfmNgZ8MjMl814QnAVuOtB1+W
	M+J0cFOQheQ9DOSJc5o9bx4aXywvO+LEl7Lqs237nMDw72N6DEuVUrV9/XjWjSLcGvpb
	fFwu0gZMTW+Hz4ESFPm4UWQdSf3MAUQAZgdeRWFbC8pHszA1Tzem0DeAO3IulcwN6Le+
	8U/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=xPu7QmnUsr49i3KFJErK34zHgvpTCQGFGAumZ5wRz1Q=;
	b=HZjGX9w0FM1L3mOl3am0zByvgLlBpQVTQ2CeedMgvChCNHsBrsXGVkrGNFwzukzaZT
	RSB+fBhcDbn0A0Z1PUykfBTl+NsM5sSgA5MfuQWvCOrz2D0Ak3FwttFXGAeGQRVy/850
	LcmBASsT7mekwbQRAqhxzoK0FnLqZ9Cqm630mWJHYOlKnFEXMIEIRKmgU8s5seLICzyu
	mOPsNvYfxhl5Md9QK/91FvWV+EKd4I7IMg7kueFYLgfErNgz9dNSX/D8opjziyq0jdX5
	cl8S3H5XT2b1XxMJTXby71istcvySa9mcSdLFtRoJ5yObkaLEWgYeYgdJP37ogaCfI+T
	9Ggg==
X-Gm-Message-State: AHQUAubk8fv5RiXGffgN6cewS617+xIWDSnT6Tbc/SebmPxLTOUrhEJO
	lZMrhpbR9snyVu6pGhqiw/ArC4kzkUBfRHnh2G8BiDk=
X-Google-Smtp-Source: AHgI3Ia92HoWiw6qp6U9zffXWdKI3HhR86dkI2A58tLh5/ybj0UZpd266HQlYu2ItZuEGvtwTjcZgncUAMjGxEFxsmw=
X-Received: by 2002:a67:ffca:: with SMTP id w10mr1993326vsq.115.1550152624303; 
	Thu, 14 Feb 2019 05:57:04 -0800 (PST)
MIME-Version: 1.0
From: Leonardo Jose Duarte MendesJunior <leodmendesjr@gmail.com>
Date: Thu, 14 Feb 2019 11:56:46 -0200
Message-ID: <CAA3Hs=ffrGTgWXBkzi0FQejoaFaWp+LSqgr=Q8_ZMnJLpi-LHw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: icecast
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
X-List-Received-Date: Thu, 14 Feb 2019 13:57:05 -0000
Content-Type: multipart/alternative; boundary="00000000000084f3b50581db08c4"

--00000000000084f3b50581db08c4
Content-Type: text/plain; charset="UTF-8"

I'm trying to compile the package icecast. The package icecast is old. The
package depends on xslt.
When I compile this package, I had the issue with xslt.
How to use pkgconfig if the own source code use him ?

--00000000000084f3b50581db08c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-gE gmail-iv gmail-gt" style=3D"padding=
:20px 0px 0px;font-size:12.8px;font-family:Roboto,RobotoDraft,Helvetica,Ari=
al,sans-serif"><table cellpadding=3D"0" class=3D"gmail-cf gmail-gJ" style=
=3D"border-collapse:collapse;margin-top:0px;width:auto;font-size:0.875rem;l=
etter-spacing:0.2px;display:block"><tbody style=3D"display:block"></tbody><=
/table></div><div id=3D"gmail-:4q" style=3D"font-family:Roboto,RobotoDraft,=
Helvetica,Arial,sans-serif;font-size:medium"><div class=3D"gmail-qQVYZb"></=
div><div class=3D"gmail-utdU2e"></div><div class=3D"gmail-btm"></div></div>=
<div class=3D"gmail-" style=3D"font-family:Roboto,RobotoDraft,Helvetica,Ari=
al,sans-serif;font-size:medium"><div class=3D"gmail-aHl" style=3D""></div><=
div id=3D"gmail-:5c" tabindex=3D"-1"></div><div id=3D"gmail-:4d" class=3D"g=
mail-ii gmail-gt" style=3D"font-size:12.8px;direction:ltr;margin:8px 0px 0p=
x;padding:0px"><div id=3D"gmail-:4e" class=3D"gmail-a3s gmail-aXjCH" style=
=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-stretch:normal;font-size:small;line-height:1.5;font-family:Arial,H=
elvetica,sans-serif"><div dir=3D"ltr">I&#39;m trying to compile the package=
 icecast. The package icecast is old. The package depends on xslt.<div>When=
 I compile this package, I had the issue with xslt.</div><div>How to use pk=
gconfig if the own source code use him ?</div></div></div></div></div></div=
>

--00000000000084f3b50581db08c4--
