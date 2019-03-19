Return-Path: <aruner92@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC9F3E00D24; Tue, 19 Mar 2019 03:26:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aruner92[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C07E00D15
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 03:26:17 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id e13so7074462ioq.6
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 03:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Nm8YtF8cWihc8CC2tKw3ZrKj4spUJ600CGccevWnSJ4=;
	b=uXJgfMlGwm4F9hXpHciwrkDx9c1iK5vqXl1zVirqAd9K14oca+vbXM0L/grDwDk3nu
	wHtBv6Ff7LP7I+I1Zl2dGgLBJgpxJFB6y2cQobVlz/IQC5htZOEq2kUJZ4JaiUHHsF0Q
	azlgjZzfUyhZ0vi4w5ZHwQd/nMb20F3uY/gKx8vB4zzpU2q13p/VQw0FZVNLinyAywY9
	8awid/mVUBQRLtqJ70eqE8ARpOzEObhAgyAgoyXftlW0Un0DazoCRvw7R3Xd5D8lYQEK
	7HEuui5tlIPevUFkEO41oHM2TpwrOD0WNQyEk7nZ8A8xNUMe9PSrTb/ZW/OLIiOQCPDt
	febg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Nm8YtF8cWihc8CC2tKw3ZrKj4spUJ600CGccevWnSJ4=;
	b=SD2MY9Z4AjU26gBkColqeitz8WlJxFfCHAptjeWuhB2j6zgmYwuYIEPXyOZ1ZnluTQ
	6te2ne5kRvbQ2RLFqPN4V8Wiq+4xBJ0wmtEEIKdysjDg/P+ne6tbSGsE1FcuokbjRrX+
	929I8USvVYrUbGCHBcQYNzKRdvGVHRKrDgdUS32LVBWytUX67S2gk2bFeqpNvpn6oLN4
	AEP+3AT2PEolzGupvmGeEGJHRjZ40D3b29I8jOoWYO8QlGjzFtJNMQYLacQcX7tTa4BW
	rU07K2Wh8XPf8uwhrDAP/RRHBwByn6NO7guYn+fCb7yH1/UOMC0/5WmIbzZOJKAp6GAo
	5w2g==
X-Gm-Message-State: APjAAAXIkktDIEjxWoR3zxuyn5r5JlxMuUZrTrqH1UpCFJZ0SmFAwu6Y
	GlzVC7arbX502gtDVM1fksb3bSHSMGZJDIZgRGIDQQ==
X-Google-Smtp-Source: APXvYqy6YcaiPML45JFl63GaDUDc3UjKg02joIolxVCHJAhv2dDQVzHv79qavG5IZRGRwd0ri1H2aR9C6kQvMPqnTf4=
X-Received: by 2002:a5d:9806:: with SMTP id a6mr853376iol.296.1552991176601;
	Tue, 19 Mar 2019 03:26:16 -0700 (PDT)
MIME-Version: 1.0
From: Arunkumar V <aruner92@gmail.com>
Date: Tue, 19 Mar 2019 15:56:00 +0530
Message-ID: <CALCW+OmkL2NhhdTqJ5A-fAztRqWLJk4rztxYLvCZz=8P=dZ2qA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 20 Mar 2019 04:41:27 -0700
Subject: how to make writable permission for home/root in read-only rootfs (yocto build)
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
X-List-Received-Date: Tue, 19 Mar 2019 10:26:17 -0000
Content-Type: multipart/alternative; boundary="0000000000006bb4a605846fef4e"

--0000000000006bb4a605846fef4e
Content-Type: text/plain; charset="UTF-8"

HI

can any one explain me how to config the /home/root as writable in
read-only rootfs?

is any setting to do with local file or .bbclass?
if any macros need to be enable, please

--0000000000006bb4a605846fef4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI=C2=A0<div><br></div><div>can any one explain me how to =
config the /home/root as writable in read-only rootfs?</div><div><br></div>=
<div>is any setting to do with local file or .bbclass?</div><div>if any mac=
ros need to be enable, please=C2=A0</div></div>

--0000000000006bb4a605846fef4e--
