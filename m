Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72FCDE00B9F; Thu, 25 Oct 2018 04:19:47 -0700 (PDT)
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
	*      [209.85.167.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB576E00B5E
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 04:19:46 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id p125-v6so6303454oic.3
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 04:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HtsT9tJ9SJh3AUtdMJhFNCuY9Wifn0xaTdKeWV0hDfk=;
	b=HuF3Q1PrQKGRCJGnZqzBPwZiGG5jD7HxqvkNPRlZCmfehA8kwSUm1Y1xiMgHztTXNv
	XgiN2NXKf+Q6GtYIJyEum7JADIfL6u/XlZSh0BX7TqNPoULKmbRGEOGFhfhjZxCWtIkX
	fbHmJMhEIPDKsmoq+/Y69h0RzDuoT+IQNhw91vMeIQlug7z9c1fqX7w9oNytvzbgHXY2
	d50It3Vx3zQ7QkeqmRbaeW3esUb9ZAg5aaBNUOjXhVQvUVKiZ+bU0xEi3J89IiyGt62A
	W2WQDjmAXBlaYVvyMe7TKnIDdZyXtXwPJN1sdAaYXOi5Ty+JcJb39yCkXQLy+RTfTcyf
	Fsaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HtsT9tJ9SJh3AUtdMJhFNCuY9Wifn0xaTdKeWV0hDfk=;
	b=NBQVXt/N2HhoxVRcC9zDVKq+/xgQQcENV7dYMr8B5gZCHm6pvwrLXh4g7PV+SVPZhk
	OhgPFvf4xz2o3NBf2U6l8Gn1gvPM6sqmUAupKmmBoCfJcXMExaDt8reX1ptwGxvzx9rj
	o5yw78g/91FpDloSHg1mmOrlFKFeFzAEROWRFqfCc4YqfrOnmKewDLByQOGU7xkhr9nf
	PkvHBVwVqgUrwQUinB9UCCWhEoZR2fFzNVBg1PZ4RRa+d8v0lTmDwdIa34p5fej4LZha
	lSLOueRXNnFHVQZcbFXKIno2+Wh33Iu4WuKfh1KylO0bx/BrJNTiGi3FFHSMoRonii9f
	90fw==
X-Gm-Message-State: AGRZ1gLPAmufQZ0o/LIZH4BPk3+3hHGni3qmwo2bBQvhzzf4hEx6IWo7
	8OeG4rDVLm181BMw+7PwiAIczYqqoyJ7zqMBk1TxrQVI/ho=
X-Google-Smtp-Source: AJdET5eaSQzmKwTMEbQI8XmhN6ElrcRAHkSjY6zD7hIjjk0Gz6OpXwQawBisdK1l9PLfTHOASfz/dUGsiwxlNhGuX3Q=
X-Received: by 2002:a54:4d8b:: with SMTP id
	y11-v6mr196179oix.168.1540466386014; 
	Thu, 25 Oct 2018 04:19:46 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Thu, 25 Oct 2018 13:19:34 +0200
Message-ID: <CAEhQi8nL7haOo+ogungBB_1hR0rRqNszFkgEHyr_SYE1dq477w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [SDK] including kernel devsrc to the SDK failes
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
X-List-Received-Date: Thu, 25 Oct 2018 11:19:47 -0000
Content-Type: multipart/alternative; boundary="000000000000ba190f05790bc719"

--000000000000ba190f05790bc719
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to add the kernel devsrc to the SDK but I am getting the
following error

Problem: conflicting requests
  - nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.imx8mqevk

I have applied the following patch to try and fix this problem.

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D8af11c1c=
dd8fa08217e702b57cf96e9030db52b2

I have verified that it was applied and run kernel-devsrc works. The error
is from do_populate_sdk and I am suspecting that the problem is related to
me using rpm. I believe rpm might be to smart in this case detecting the
dependency and resulting dnf from failing when running the task
do_populate_sdk. Any suggestion on how to get forward on this error. I
would like to run dnf manually to check any dependency of the kernel-devsrc
rpm package but cannot figure out how.

BR
M=C3=A5ns Zigher

--000000000000ba190f05790bc719
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi,</div><div><br><=
/div><div>I am trying to add the kernel devsrc to the SDK but I am getting =
the following error</div><div><br></div><div>Problem: conflicting requests=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br=
></div><div>=C2=A0 - nothing provides /bin/awk needed by kernel-devsrc-1.0-=
r0.imx8mqevk</div><div><br></div><div>I have applied the following patch to=
 try and fix this problem.</div><div><br></div><div><a href=3D"http://git.y=
octoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D8af11c1cdd8fa08217e7=
02b57cf96e9030db52b2">http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto=
/commit/?id=3D8af11c1cdd8fa08217e702b57cf96e9030db52b2</a><br></div><div><b=
r></div><div>I have verified that it was applied and run kernel-devsrc work=
s. The error is from do_populate_sdk and I am suspecting that the problem i=
s related to me using rpm. I believe rpm might be to smart in this case det=
ecting the dependency and resulting dnf from failing when running the task =
do_populate_sdk. Any suggestion on how to get forward on this error. I woul=
d like to run dnf manually to check any dependency of the kernel-devsrc rpm=
 package but cannot figure out how.</div><div><br></div><div>BR</div><div>M=
=C3=A5ns Zigher</div></div></div></div>

--000000000000ba190f05790bc719--
