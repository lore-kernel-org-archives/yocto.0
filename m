Return-Path: <geonho@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8964DE00C28; Wed, 16 Jan 2019 03:57:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (geonho[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06E26E0048C
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 03:57:03 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id a11so6711244otr.10
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 03:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LaV5Us4Cyn+h64IFFeBJB7b9y6twW2/Zntxx982zNek=;
	b=OgW+HIipuX3hetHNYeWiOmxyHm2CtUCuwomRFGHj6dA9g+Z6WnQ4JPeOlenzs6Q88q
	ZL+la4RVd6Xs3jhjwc0/FPrE9RWgCEUuLiRy46OTSwJTlAC4ZJyTEmmyPieYRrDAAxEL
	cNjkN3009/1qpCRXFc637VErNuuNQmhUJ0ex6KgAl4qbeRB/SPy84CR8Z2ZYyzC7WSLz
	1BygQR+PYTmsBrA1YsiKv4H7OpvNc/g8dOh8QK2PEvMISrfPhlTQYY4FfzK2QJ7tk4SO
	fkebAezIUotip7neDmg8fq5IzBemrinmwwe4B98hD1rixEY0R8Wo+xU5xVS/72cdKkk0
	Yrtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LaV5Us4Cyn+h64IFFeBJB7b9y6twW2/Zntxx982zNek=;
	b=VTSikdblvX2npf9LO/4RwkMpCwuxLxqhrNJSwRe22UCDFe6vJNeGzm42tnY1z//+H2
	oFz0tQlOJgoIliGin58zJbXXaCt4289JetlmD+GcX5E+g68MMhlo4WXLMhQZA3Eidc1V
	fAfuOUdtYl4ktOQ5xX8cajszvO/qBDjPwnFgs8ya175m2C5Wimbq0A15m3oFRG+r6PG1
	h1VPLFY4H+CMpn8h2u9HDBdKLNmbiHad9fjuumOFSgfe03oeTGkInnSyCNjRWOJ4gcYM
	YktYBn4w3VUeqKUY2B+MmGGdzjz6bPxnqOWLBynPxyO2/A8lpnOwVhtT3IYOR5mR0hJo
	by1w==
X-Gm-Message-State: AJcUukcpD6ou3Q23IT51vk/xHN6jmFH+GkmuQjpxZKWiQKLTpzwm3W7J
	M1H6HL0wtw2dhpahesd47M127Q7u/u1/0d/48oMBdg==
X-Google-Smtp-Source: ALg8bN4j3G6YRNvC7PjugJ0cmmOr6gugyu+hPM99N0/m8P+X0+wPaJWpCh8KtItyfjYZkUzq9fUbI3dhleRaIst+/9A=
X-Received: by 2002:a9d:63cd:: with SMTP id e13mr5599922otl.319.1547639822956; 
	Wed, 16 Jan 2019 03:57:02 -0800 (PST)
MIME-Version: 1.0
From: Geonho Kim <geonho@gmail.com>
Date: Wed, 16 Jan 2019 20:56:56 +0900
Message-ID: <CAHXu0M5uH0E7Fy484oLHQ5t2=ve=JJTht0p+f-H8eb--US8uxg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 21 Jan 2019 08:09:28 -0800
Subject: (rocko) python3-pycario : Waf cannot unpacked
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
X-List-Received-Date: Wed, 16 Jan 2019 11:57:04 -0000
Content-Type: multipart/alternative; boundary="000000000000e33e23057f91f9f5"

--000000000000e33e23057f91f9f5
Content-Type: text/plain; charset="UTF-8"

Hi,

I have some build error problem.
Now, I have working on rocko release.
When I have built, I met this error message

build_src/tmp/work/aarch64-poky-linux/python3-pycairo/1.10.0-r2/temp/log.do_configure.81617
Log data follows:
| DEBUG:Executing shell function do_configure
| sh :1: bunzip2: not found
| Error: Waf cannot be unpacked, check that bzip2 support is preset.
......

It seems that uninstalled bzip2 to host and sysroot-native area, but bzip2
is installed to
host pc and sysroot-native location.

Do you know how to fix this?

--000000000000e33e23057f91f9f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I have some build error probl=
em.</div><div>Now, I have working on rocko release.=C2=A0</div><div>When I =
have built, I met this error message</div><div><br></div><div>build_src/tmp=
/work/aarch64-poky-linux/python3-pycairo/1.10.0-r2/temp/log.do_configure.81=
617</div><div>Log data follows:</div><div>| DEBUG:Executing shell function =
do_configure</div><div>| sh :1: bunzip2: not found</div><div>| Error: Waf c=
annot be unpacked, check that bzip2 support is preset.</div><div>......</di=
v><div><br></div><div>It seems that uninstalled bzip2 to host and sysroot-n=
ative area, but bzip2 is installed to</div><div>host pc and sysroot-native =
location.=C2=A0</div><div><br></div><div>Do you know how to fix this?</div>=
</div>

--000000000000e33e23057f91f9f5--
