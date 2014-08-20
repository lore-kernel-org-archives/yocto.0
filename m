Return-Path: <alex.r.damian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B715E007FE; Wed, 20 Aug 2014 10:53:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.r.damian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC94E004F5
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 10:53:11 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id m20so8021580qcx.38
	for <yocto@yoctoproject.org>; Wed, 20 Aug 2014 10:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ogLj5Z5xH0T0MjLhIP6EG0KJ+kEmMu+KPXDWRQeMSG8=;
	b=SsdEq3Kc3f3cFagA987L10d782Gvt0Qa1hWJqI9wQKACiCnEcQKTwRcPDaM/Puzojv
	PhnxQb4sE8ttUEi6pt1OJYxKyMjTbXE4nIVFCp9tHK/5lESHFhTqrJw4flEzw/ICnLoB
	uV7DuUqvY3YW2KyltBuBCSNtPhuMjvTvDUCoHWZNEnj8IbJzhjD5EGTA+UesnUrKwAwq
	+oaEUfoDM5I0CQA0bGd4ouBjsT0lBoPoQZVohVC0a4uOs9Fo/T9iZ4q5qELMJLG9kTmS
	dhlgsxFiM6RMdZ91wS03aNZnMu+Z5hi/L/2fuzDzPggr4bqtNlQJkTjH/ZxfO7FNgqkD
	e5qQ==
MIME-Version: 1.0
X-Received: by 10.229.136.133 with SMTP id r5mr62215545qct.31.1408557190948;
	Wed, 20 Aug 2014 10:53:10 -0700 (PDT)
Received: by 10.224.127.66 with HTTP; Wed, 20 Aug 2014 10:53:10 -0700 (PDT)
Date: Wed, 20 Aug 2014 18:53:10 +0100
Message-ID: <CAL7ttbfhyeXxh1xHkAreqJG8_kBd8ND6wkiBSb3Jt2Ry1=MUig@mail.gmail.com>
From: Alex Damian <alex.r.damian@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: should systemd be considered harmful ?
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
X-List-Received-Date: Wed, 20 Aug 2014 17:53:15 -0000
Content-Type: multipart/alternative; boundary=001a1135f3e8032fd30501134768

--001a1135f3e8032fd30501134768
Content-Type: text/plain; charset=UTF-8

Hello,

In release 216, systemd includes a caching nameserver, and full TTY stream
parsing. See details

http://lists.freedesktop.org/archives/systemd-devel/2014-August/022295.html

I think the ever growing number of components in systemd will create
conflicts with the normal tools, like libresolv, used in traditional UNIX
systems.

I think the number of components shipped with and required by systemd is
pretty outside the scope for an init system.

I would argue that the monolithic systemd is not in line with the UNIX
philosophy of small tools that do one thing and do it well, and that it is
actually contra-productive to use it in embedded systems due to the large
number of dependencies needed to get it to run, as well as the difficulty
to debug when something goes amiss.

Can I get your opinions in the respect that systemd is a useful tool to
have in the Yocto Project ?


Cheers,
Alex

--001a1135f3e8032fd30501134768
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hello,<br><br></div>In release 216, systemd=
 includes a caching nameserver, and full TTY stream parsing. See details <b=
r><br><a href=3D"http://lists.freedesktop.org/archives/systemd-devel/2014-A=
ugust/022295.html">http://lists.freedesktop.org/archives/systemd-devel/2014=
-August/022295.html</a><br>
<br>I think the ever growing number of components in systemd will create co=
nflicts with the normal tools, like libresolv, used in traditional UNIX sys=
tems.<br><br>I think the number of components shipped with and required by =
systemd is pretty outside the scope for an init system. <br>
<br>I would argue that the monolithic systemd is not in line with the UNIX =
philosophy of small tools that do one thing and do it well, and that it is =
actually contra-productive to use it in embedded systems due to the large n=
umber of dependencies needed to get it to run, as well as the difficulty to=
 debug when something goes amiss.<br>
</div><br></div>Can I get your opinions in the respect that systemd is a us=
eful tool to have in the Yocto Project ?<br><br><br>Cheers,<br>Alex<br></di=
v>

--001a1135f3e8032fd30501134768--
