Return-Path: <ccvk.chaitanya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B4E2E00C08; Fri, 22 Feb 2019 07:17:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ccvk.chaitanya[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 983A0E00BAB
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 07:17:13 -0800 (PST)
Received: by mail-oi1-f178.google.com with SMTP id q81so1964257oic.5
	for <yocto@yoctoproject.org>; Fri, 22 Feb 2019 07:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=b+kTMCXmCXSuyf+4eaum15CTedqmM6xYjZwIN9B+wek=;
	b=N+8sU8tV5lUar/95ozbTA/fWORDwj2nOE5iIFXsbNLbmoQGQ9v2CxWINgEO8w9Kf01
	4tq6kd3sDHSE0MjSretqEQNvqzmiKrAjI10wIZeMR9jm4fmZWYv941S6/4QIDGPtb/8o
	JEhYsdl2X3Hcj+dBxGrdjZanmK0/XeE9PivuNRJAslLAwcwGrk1sHcXCrHhPCBrH+Cxn
	7w5YEQdytJadXvtCryFktOV3EAzJQYFa0KSRXxG6/W6XIha3+no5Oefji6vOiDyLzok1
	zg5uO+Hyl+v6x2FzJW91U/YcmjEP5mB5HEjAPgkzDAATHh9FnJjL61beKfCIOOx7lwQA
	+nBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=b+kTMCXmCXSuyf+4eaum15CTedqmM6xYjZwIN9B+wek=;
	b=av8KN6DQnbnxItGtI7ju8SDKYSaMHzaOyL9857W87vc0IBecPTdofDyKhWs48LGuBv
	pr0pvGqj1ii/Gi0dCj959LXrKjVUNckqIO4dKeX4Ka2hCoTaABjfJ6pVhapmVlgr0KX6
	CwaWpGZkMBk37vkIXAXutUnwygYIMvQLVy6C3u6YpfKnD2Uj7lz43kNbN1atBPzH2PO5
	eMfTBQZYnFZb32JVjCK34fg23JnbOfTaDmX0z6yJjE5vt2e/ErLUd7/Fqkx5OjZTD4t1
	3ei8UN4ejt/c2wO7B92HKR0g8fN16N+7UGV8YLPhXQCIdYL45ahA/QuEajxGSp5ponp9
	2EBA==
X-Gm-Message-State: AHQUAuaVuWscSM4jtoe1cqeEuREb4Rfg3yMk1KfeRocSO38pSnFxIp36
	EF4JPpSDptoiphE4g/Y7AogzuVv97tRAMaLLVvFB/A==
X-Google-Smtp-Source: AHgI3IZBM6mRKafQhBN/ye/St76kJCoClWecEwzmQ8xPNAcUmhi1zZ9lLPvj8YCqux+FHoM2vEkF7bO7n/UZ4OMWCg0=
X-Received: by 2002:a05:6808:315:: with SMTP id
	i21mr2884344oie.114.1550848632672; 
	Fri, 22 Feb 2019 07:17:12 -0800 (PST)
MIME-Version: 1.0
From: chaitanya cherukuri <ccvk.chaitanya@gmail.com>
Date: Fri, 22 Feb 2019 10:17:02 -0500
Message-ID: <CALVd-wOQCtsKK5jpMGc5R3-cCrYi-=-sQmGzvnLMCD=pdTk31g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to Install Third party rpm packages
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
X-List-Received-Date: Fri, 22 Feb 2019 15:17:14 -0000
Content-Type: multipart/alternative; boundary="000000000000d9d42305827d15a2"

--000000000000d9d42305827d15a2
Content-Type: text/plain; charset="UTF-8"

Hello All,

I 'm new to YOCTO. I am using YOCTO version 2.5.
I would like to install third party rpm package to my image. Currently I'm
installing rpm package on my target machine using rpm command
  rpm -ivh --prefix=/opt/ example.rpm

Is there any way that I can do this in a recipe, so that my final image has
the rpm installed.

Any help would be appreciated.

Thank you,
Chaithu

--000000000000d9d42305827d15a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif;color:#3d85c6">Hello All,</div><div class=3D"gmail_default=
" style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif;co=
lor:#3d85c6">I &#39;m new to YOCTO. I am using YOCTO version 2.5.</div><div=
 class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif;colo=
r:#3d85c6">I would like to install third party rpm package to my image. Cur=
rently I&#39;m installing rpm package on my target machine using rpm comman=
d</div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans=
-serif;color:#3d85c6">=C2=A0 rpm -ivh --prefix=3D/opt/ example.rpm</div><di=
v class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif;col=
or:#3d85c6"><br></div><div class=3D"gmail_default" style=3D"font-family:com=
ic sans ms,sans-serif;color:#3d85c6">Is there any way that I can do this in=
 a recipe, so that my final image has the rpm installed.</div><div class=3D=
"gmail_default" style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6=
"><br></div><div class=3D"gmail_default" style=3D"font-family:comic sans ms=
,sans-serif;color:#3d85c6">Any help=C2=A0would be appreciated.</div><div cl=
ass=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif;color:#=
3d85c6"><br></div><div class=3D"gmail_default" style=3D"font-family:comic s=
ans ms,sans-serif;color:#3d85c6">Thank you,</div><div class=3D"gmail_defaul=
t" style=3D"font-family:comic sans ms,sans-serif;color:#3d85c6">Chaithu</di=
v><div><br></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><br></div></div></div>

--000000000000d9d42305827d15a2--
