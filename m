Return-Path: <carlon.luca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C323E00AD5; Sat,  1 Jul 2017 07:14:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carlon.luca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.42 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF2B3E00857
	for <yocto@yoctoproject.org>; Sat,  1 Jul 2017 07:14:10 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id 191so29894132oii.2
	for <yocto@yoctoproject.org>; Sat, 01 Jul 2017 07:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=p0gWBhlV+ZSUJp/apJgfW714fvlSlu0mGIB5NoBKcOA=;
	b=GpLiwa7JwRVABAiWheNdNk6XWnyEDF1ZlwGcXNGX3cPveEzWcVfWFUDNhPy8c/3Ueu
	4Qo8BlqhPPOZyhC2GOZsOvpeW5F2I3XCWMRiztnqsY6Lvh8P9xcNlgQeud61Ag3iDGia
	odSrmuKwGW2VPvz0s5CYk0bPLzUPVbvrL6HXasWJNCAp2tpkAUpGQVBvg3vucttBDgns
	SVICyW+2Angf3LjBFkG0EwVgMaKsqLCEFQrXHvEjQXRI8maKKym4fv23rjjempEm/y+v
	z5bV/khREYkDo2RQYhNjeVD+vafmfL463XDTCTNEdf8y0uScr12RFurdTjpwRlvd/gik
	eVSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=p0gWBhlV+ZSUJp/apJgfW714fvlSlu0mGIB5NoBKcOA=;
	b=BryS8ZPKbn8ieQhQsAr2QjrTtVxkJ8vBovX3QzHjyI4A0le58/2hZygmLip8uHbQbg
	5SBnzyJGaMJ2mBpAMb7/3gbM/b9FS0DTGJ9ZEbtwJ7cNoy/q/9fsS8Yrcj1WOHa/2dKQ
	AllbUFggvRrjgQoW21O3iwWmtBGQKvGiSGv3H95IXQl8AGvu2kIwDt7w4J7bmB8JGExE
	eSBNRfNINMvlfKPQS4jo8ndFARygktwEsrF2Aa5/wQhkR5v2vVX7dD/uBm8cQmgRhjdq
	bWc3OQjYJvaRtjzbA7EMsH4+iWUYLN08TiPEhx3S5TADiaarVBb7SpaD5ZJ4SO4sFTqT
	d3fA==
X-Gm-Message-State: AKS2vOwZSGQ7byWQ6YXpxBOYr5R/CL2x5EODRvHEAgGG+EZ+fMzTeEFQ
	7+nqoMq4iruEcTD72loXQYMTVGNiL1SH
X-Received: by 10.202.232.200 with SMTP id f191mr16661874oih.71.1498918449268; 
	Sat, 01 Jul 2017 07:14:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.59.194 with HTTP; Sat, 1 Jul 2017 07:14:08 -0700 (PDT)
From: Luca Carlon <carlon.luca@gmail.com>
Date: Sat, 1 Jul 2017 16:14:08 +0200
Message-ID: <CAMC=D=s4wf8hqA-dGENm1_aJvmsfL2wwQs--oFspLgbPb0N-+A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-java] Illegal instruction building jaxp1.3
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
X-List-Received-Date: Sat, 01 Jul 2017 14:14:14 -0000
Content-Type: multipart/alternative; boundary="001a11406bd8b74e650553422535"

--001a11406bd8b74e650553422535
Content-Type: text/plain; charset="UTF-8"

Hello! I'm trying to add openjre-8 to my armv8 image. When I try to build,
it seems to fail with this error: http://paste.ubuntu.com/24996638/.
Illegal instruction seems to suggest it was built for another architecture.
I tried to investigate a bit and it seems like the javac being used is not
the system one, is this correct? I checked the javac executable being used
and it seems to execute properly.
I also tried to simply replace the javac command in the do_compile phase
with /usr/bin/javac and the package builds properly.
Any idea what is happening and how to fix properly?
Regards.

Luca

--001a11406bd8b74e650553422535
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello! I&#39;m trying to add openjre-8 to my armv8 image. =
When I try to build, it seems to fail with this error:=C2=A0<a href=3D"http=
://paste.ubuntu.com/24996638/">http://paste.ubuntu.com/24996638/</a>. Illeg=
al instruction seems to suggest it was built for another architecture. I tr=
ied to investigate a bit and it seems like the javac being used is not the =
system one, is this correct? I checked the javac executable being used and =
it seems to execute properly.<div>I also tried to simply replace the javac =
command in the do_compile phase with /usr/bin/javac and the package builds =
properly.</div><div>Any idea what is happening and how to fix properly?</di=
v><div>Regards.</div><div><br></div><div>Luca</div></div>

--001a11406bd8b74e650553422535--
