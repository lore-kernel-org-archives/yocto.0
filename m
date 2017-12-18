Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E04AE00CE8; Mon, 18 Dec 2017 04:08:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f42.google.com (mail-pl0-f42.google.com
	[209.85.160.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47A23E00B99
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 04:08:07 -0800 (PST)
Received: by mail-pl0-f42.google.com with SMTP id 1so3234558plv.0
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 04:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aurdq22YB21QSa6OsYpw/XhGpr2LA8GnuC7f61MF2/w=;
	b=FC31SmkThV2W0+wGbNKMOoGkA3KbDtUyreMBHwg2E3Xp5woaZ3ZzASN1k2jezGhGs4
	i6kjNtpIdcabro2unSCchWx0ojnmurHJdS+x/kEMulfgGtFsD/ACT+Tl/VZb6EXVUlSB
	RhibqW+MMLw+83/5kCW+TceL8IE8Q65gIss27pShI46vEGznn3A8h3YF1MiGt1eCKV+W
	cW05MVHvLceMDT+1e2uy9FZX8fhijy0rrYZpKqzRe9kiORQqxZlmc9J8xiBkOgdaBC0k
	17U2sBsvi3YGmhI+0aqJlKJdsYCzwrq2aTLWdcSYHCW23Q5nXeXols9HkCnEHgzXF9Vu
	wI6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aurdq22YB21QSa6OsYpw/XhGpr2LA8GnuC7f61MF2/w=;
	b=OtNIyDsTPj8ssbUAn3wTfWZglivc8DUrcrr4sI//STDvNM40H2KwziF8b0HIa0hImt
	hizQrgJ+Cf/ZCHg0Xyc07IyuT9GXvnCcgic4wUgJxLXoTLh7QpqMrQ3niAN5V0bGPuz2
	3aVYS9KJN4kmr8+oV+Y93xsftsR8B0nwQREnlC7jPWtam7ciWVF3hlcmyLiSHvmi/v7k
	iplgbJCSe83oOi3gHIjiMS1sy0qsBalDtWGaMDwKVbblV1So5STtIAlHLFvh6dA+fEcy
	WesdhoAOrmZiRWm+l73XK5zKV54oYhwJj9Gzry7mOSlnFX5vdsxfCcMxVw163N8Egdhh
	xUWg==
X-Gm-Message-State: AKGB3mIfQ4Tk1WFGHGoi+NPoROkl+9EvEZiwuov7iOmdCJiN5Sr2sW/5
	g9KIsR7n6g16Vq05Olf71lbx0ULbYncrrFcdzu4=
X-Google-Smtp-Source: ACJfBouvh+Y+2Z+UdmdgleBke3SjpKxp15B+zl0dO4l/2uv1Ki2u+as6ZEO8dJoeUMjUt6QRO4dRuLxaV4bxEXrXu6M=
X-Received: by 10.84.130.37 with SMTP id 34mr6627674plc.379.1513598887382;
	Mon, 18 Dec 2017 04:08:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Mon, 18 Dec 2017 04:08:06 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Mon, 18 Dec 2017 13:08:06 +0100
Message-ID: <CAPb0b+OL92PGuv7qwxX9h9570cu=V7VPCNAgdNxwc09j1aWnwA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: replace hciattach with a compiled binary
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
X-List-Received-Date: Mon, 18 Dec 2017 12:08:08 -0000
Content-Type: multipart/alternative; boundary="94eb2c12f8ee03d30405609c34e6"

--94eb2c12f8ee03d30405609c34e6
Content-Type: text/plain; charset="UTF-8"

hello guys,

i am working with Bluetooth, and thus installed Bluez5.
But the installed hciattach file has size of 108760 and does not work,
where as the one from raspbian has size of 120636 and is working.

is there a way to replace it?

thanks

--94eb2c12f8ee03d30405609c34e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>hello guys,<br><br></div>i am wor=
king with Bluetooth, and thus installed Bluez5. <br></div>But the installed=
 hciattach file has size of 108760 and does not work, where as the one from=
 raspbian has size of 120636 and is working. <br></div><br></div>is there a=
 way to replace it?<br><br></div>thanks<br></div>

--94eb2c12f8ee03d30405609c34e6--
