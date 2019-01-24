Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C31EE00D05; Thu, 24 Jan 2019 13:15:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E50ADE00C75
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 13:15:17 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id y56so5741658edd.11
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2019 13:15:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1DDp0T4fw7PZuyEnAbn/ogyt+PdE9ZQ7fFVHOKpLIu0=;
	b=Oj9MJXSbEp5uY/Y1Lm+daV4sQ5Oc6TCH5UFp5A7Ml7chQQiuqa4D+8Cz6h6F4tTdHz
	aRjsPm77vOPo9+tfxW9MOJxxs8UgfnuhQwsKq75ptfd0aN5ArQ3IwI8xKvuTL9tLIQmx
	lPXnEMtjIcDb/OZF5QTLg9AGbDoOVFE8uWNwwQRrn23VsLIZr1aowSiSKZfvJV3fRy6c
	E4cbmhNTrmhW6Dblx/XfoYDWXJTLPbMmrxRHahdRQ3y2WdlnRO5RDXyPjAueghnaVtBO
	NJ/B6V3yibwVkHtuUQWnw+S9AX+ML5aFHvftNSbPV1HlRI4koIGzWuR+E6Egg4hilMi1
	PVQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1DDp0T4fw7PZuyEnAbn/ogyt+PdE9ZQ7fFVHOKpLIu0=;
	b=SIRi+OZJbHo1fD7XBrfhpRX99JqOxOmM5D2ylsYOCTAn6mPllSxQ+IdkIjY2Zwzf5w
	cpWMvF4jOwsdwQR6diryMT/Q3Bnr+WWF0gtyXRTBZ0DmNeYxdBOhUmIoDiLKxLPGDrcc
	6Q/5PJsc3Yny2+QMu7bmIoD2803Z6CQ1olaBK3acaPot5tsUAcAe+VD5mESUsFqLQbM0
	jMiM+zrnkb8Miqn2KGVwAKYy/7OVdYY60eKfsQXN19ygZ28gGoaICF+Ne5Mezs3fwmJ2
	EbPiDSOa5/lf5muAMMNObmHrNVjpF3eKx3sKm2zFIaLLgqRhSnSaEbxgdj54Jy5a2YoR
	d5Gw==
X-Gm-Message-State: AJcUukdK2V496EyfhIXC3lFqa8kMbPa9CMVXAdxjPPjj4Ih3wu8cHXmB
	uMafpBpTvuG1o5ls2rYtF0QHX07EE4pH+beFUv5fk/EK
X-Google-Smtp-Source: ALg8bN4jEyb4eBbviAQTsBmyDGt4dumI8sbESWUpQXcQYdYH9ghBHwjzDhPxhAhVNYDIiJm348XHIoxP/qGLWKCHLT4=
X-Received: by 2002:a17:906:6c97:: with SMTP id
	s23-v6mr7369422ejr.79.1548364516704; 
	Thu, 24 Jan 2019 13:15:16 -0800 (PST)
MIME-Version: 1.0
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 24 Jan 2019 13:15:05 -0800
Message-ID: <CAFNP8OtOc8+nU+tdqp=mgnxKLA+B9bqh5kfqyPKyMi+3U=7wkg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Yocto Project Team Development Environment
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
X-List-Received-Date: Thu, 24 Jan 2019 21:15:20 -0000
Content-Type: multipart/alternative; boundary="00000000000000485b05803ab5aa"

--00000000000000485b05803ab5aa
Content-Type: text/plain; charset="UTF-8"

Hi,

I am looking for real-world feedback from people involved with YP
development in a team environment.  I have a section (
https://yoctoproject.org/docs/2.6.1/dev-manual/dev-manual.html#usingpoky-changes-collaborate)
that discusses that environment.

If anyone is inclined, it would be cool to get some feedback on the
section.

Thanks very much!
Scott

--00000000000000485b05803ab5aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>I =
am looking for real-world feedback from people involved with YP development=
 in a team environment.=C2=A0 I have a section (<a href=3D"https://yoctopro=
ject.org/docs/2.6.1/dev-manual/dev-manual.html#usingpoky-changes-collaborat=
e">https://yoctoproject.org/docs/2.6.1/dev-manual/dev-manual.html#usingpoky=
-changes-collaborate</a>) that discusses that environment.=C2=A0=C2=A0</div=
><div><br></div><div>If anyone is inclined, it would be cool to get some fe=
edback on the section.=C2=A0 <br></div><div><br></div><div>Thanks very much=
!</div><div>Scott<br></div></div></div>

--00000000000000485b05803ab5aa--
