Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D083AE00815; Tue, 27 Jan 2015 11:10:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
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
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19A4EE00753
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:10:13 -0800 (PST)
Received: by mail-la0-f43.google.com with SMTP id q1so15079798lam.2
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 11:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=uJpBoAK38T1vUN1yC8kLuo26gXUpXPbM8pprTpRyegA=;
	b=bmNkIQ8Wko746VqpT93J69tiGMmej5hDjJ7hcFn6IilswZiAcYbwm10/QEzCx931kK
	cyhc7qk/7CMdqmnnbTo3RwPtd/ryttQ9NOAzIQeT1LEROFazmQemJCeQaG78VKfZpn9l
	aBmym1YmyTYM3aP3cBXI6U1TjX1EneBVqRiPY0DW7IN9wfBiolgD1Xhrg43fwVzMYJd5
	2gnTQPDZrWpAoTY1BKAHDRjPfZDpd3m9h2KfYY/+IKFue665juPCKVpiv8QkU6Qjapvb
	In7X8IZiGLYjaPUD08lH/YPy7ylWPbNcalIbl27GzHC6a/hBU+f/u01A1OlDnKI/8UgK
	9e4Q==
MIME-Version: 1.0
X-Received: by 10.112.167.68 with SMTP id zm4mr3593434lbb.93.1422385811039;
	Tue, 27 Jan 2015 11:10:11 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.24.12 with HTTP; Tue, 27 Jan 2015 11:10:11 -0800 (PST)
Date: Tue, 27 Jan 2015 17:10:11 -0200
X-Google-Sender-Auth: sf5mVQXEhHytPMvFuR_i3dRMUc0
Message-ID: <CABKVDBBhtFuQrZCRY+tHUXT5bt65VeSwkJDY2hqU-X3kD+E6=g@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Install package in deploy/deb
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
X-List-Received-Date: Tue, 27 Jan 2015 19:10:19 -0000
Content-Type: multipart/alternative; boundary=001a11c2623e002abf050da701ed

--001a11c2623e002abf050da701ed
Content-Type: text/plain; charset=UTF-8

I have a package .deb in deploy/deb/all/xyz.deb is possible to install it
with ROOTFS_POSTPROCESS_COMMAND?

-- 

*Att,Cleiton Bueno*

--001a11c2623e002abf050da701ed
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span id=3D"result_box" class=3D"" lang=3D"en"><span class=
=3D"">I have</span> <span class=3D"">a</span> <span class=3D"">package .deb=
 in</span> <span class=3D"">deploy/</span><span class=3D"">deb</span><span =
class=3D"">/al</span>l<span class=3D"">/</span><span class=3D"">xyz.deb</sp=
an> <span class=3D"">is possible to</span> <span class=3D"">install</span> =
<span class=3D"">it</span> <span class=3D"">with</span> <span class=3D"">RO=
OTFS_POSTPROCESS_COMMAND</span><span>?</span></span><br clear=3D"all"><br>-=
- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><b>At=
t,<br>Cleiton Bueno</b></i><br><br></div></div></div></div></div></div></di=
v></div></div></div>
</div>

--001a11c2623e002abf050da701ed--
