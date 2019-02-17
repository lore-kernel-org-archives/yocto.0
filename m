Return-Path: <peterson.russell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B84B5E00CAD; Sun, 17 Feb 2019 05:55:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (peterson.russell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 890A9E00C50
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2019 05:55:15 -0800 (PST)
Received: by mail-qt1-f173.google.com with SMTP id j36so16446951qta.7
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2019 05:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4oAZ3p/eO8I9oU8ArXBGjwklBwv0cun9Xj3V2Ya3dOU=;
	b=qDwiC3VmZtLc/vWfXStUh/0agGGyAHel7hv3ADI7ZndG5kKPm/Ui++ii76dHMvn1GD
	RMV8dAQe50ebfdIVnN79Mnq3rMSUNUjOnn3hlOQgVDCsQDD9INzoyUlT2vUnprINlB6o
	9wr1yaEz3ijbhu61KklSOARuk+M5jLsfA7OgdZLY9LgKJwT/1lbWe58f8TH0XA9aAmpS
	Fh2xkV1mlA24ONcC/t4ak5UplP1cmzGyGuGmdiCqJsNXampuC1Mvd0evjc6gnoCMfQPw
	lK4cXtc1djZZlHtiC/2uS38a1k8gUNiiebCFydiSAS7ikyawKpKI0i+beq3nufeSVqEc
	3qJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4oAZ3p/eO8I9oU8ArXBGjwklBwv0cun9Xj3V2Ya3dOU=;
	b=Mj0wLOIa/L99Ls+USbVB03iKwZhjBXHb7rcpfskOxI8mFz2s2yZO2BKJ0lot479tQt
	EQYPVnB6CnOF/Yr74qs4aNYSTbNc6L9E8UPVl8hp5AwUYrrGPx+XQ4elDd7gJSSBerXD
	JWUJh3rTUDhheEpPINSYL5PIWYWWcUPVEFK5zM7mg7jc2V0ckbRxloEOTWewGXw/lzkB
	gHwI/fvWIG4ZYsFcaTUF3IPcoPYZP7QPopYjWiasekIAEzd69ZEL8rIS31rwxxONvYzm
	2Z/LFWggLAP4Q3qk/ChvuOtAbjgbvIGNxuD/VciLiqZ9ZuPpopAIL+uqwXRctDbPnogR
	ATZA==
X-Gm-Message-State: AHQUAubK3UGLjaN7muV9aDdPdP+fcNDz+XX4xkWKUSg61IFDlBmB6Fv8
	zyyZjt2l/Pcv5iw0D3ypmmtRWOiH6hbfnOnVXP/L2g==
X-Google-Smtp-Source: AHgI3Ib+Ku65tyuYKqn0ajXplQC0HQdzvExnov7wGnxzxmsbxy4l6dmX0aZw5T2SSlFKge7R5Jxg0XrstWTor6XW1DI=
X-Received: by 2002:ac8:37ac:: with SMTP id d41mr14920283qtc.46.1550411714522; 
	Sun, 17 Feb 2019 05:55:14 -0800 (PST)
MIME-Version: 1.0
From: Russell Peterson <peterson.russell@gmail.com>
Date: Sun, 17 Feb 2019 08:57:58 -0500
Message-ID: <CAJxG=fn_Ev42cWFupLf3ayU4-+GYkW8cSMrCw73qTd9TJn=2wA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: kernel module override
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
X-List-Received-Date: Sun, 17 Feb 2019 13:55:18 -0000
Content-Type: multipart/alternative; boundary="0000000000007ff5500582175b03"

--0000000000007ff5500582175b03
Content-Type: text/plain; charset="UTF-8"

Hello,

I have what I would think is an unusual requirement regarding a kernel
module and could use some advice.

I have a kernel module that has been heavily modified... to the point where
we have a separate recipe for it and treat it as an out-of-tree module.
This works by not setting the kernel config file to build that module and
our meta layer builds and installs the module.  No problem... works fine
for us.

The problem is that we now want to enable another module that relies on the
module we build out of tree.  The issue is that the check config sees we
have not enabled our out of tree module and thus the sanitized config does
not contain this module that we want to enable.  If we enable the modified
module in the config file there is, of course, a package conflict.

I have tried using "virtual/mymodule" preferred provider but that fails
since it seems to have a recipe "granularity" and we still need
virtual/kernel.  I have also messed around with
KERNEL_MODULE_PACKAGE_PREFIX and KERNEL_MODULES_RDEPENDS_BLACKLIST but I
get the sense I'm trying to put a square peg in a round hole.

I do realize this is an unusual situation and the question "why don't you
just patch the existing driver in the kernel?" is obvious.  We do have our
reasons that I won't go into.

Is there any obvious way we can simply "eclipse" an existing kernel module
with an out-of-tree module?  Is there a way I could add a config fragment
that doesn't get validated/sanitized, for example?

Regards,

Russell

--0000000000007ff5500582175b03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I have what I would think is an =
unusual requirement regarding a kernel module and could use some advice.</d=
iv><div><br></div><div>I have a kernel module that has been heavily modifie=
d... to the point where we have a separate recipe for it and treat it as an=
 out-of-tree module.=C2=A0 This works by not setting the kernel config file=
 to build that module and our meta layer builds and installs the module.=C2=
=A0 No problem... works fine for us.</div><div><br></div><div>The problem i=
s that we now want to enable another module that relies on the module we bu=
ild out of tree.=C2=A0 The issue is that the check config sees we have not =
enabled our out of tree module and thus the sanitized config does not conta=
in this module that we want to enable.=C2=A0 If we enable the modified modu=
le in the config file there is, of course, a package conflict.</div><div><b=
r></div><div>I have tried using &quot;virtual/mymodule&quot; preferred prov=
ider but that fails since it seems to have a recipe &quot;granularity&quot;=
 and we still need virtual/kernel.=C2=A0 I have also messed around with KER=
NEL_MODULE_PACKAGE_PREFIX and KERNEL_MODULES_RDEPENDS_BLACKLIST but I get t=
he sense I&#39;m trying to put a square peg in a round hole.</div><div><br>=
</div><div>I do realize this is an unusual situation and the question &quot=
;why don&#39;t you just patch the existing driver in the kernel?&quot; is o=
bvious.=C2=A0 We do have our reasons that I won&#39;t go into.=C2=A0=C2=A0<=
/div><div><br></div><div>Is there any obvious way we can simply &quot;eclip=
se&quot; an existing kernel module with an out-of-tree module?=C2=A0 Is the=
re a way I could add a config fragment that doesn&#39;t get validated/sanit=
ized, for example?</div><div><br></div><div>Regards,</div><div><br></div><d=
iv>Russell</div><div><br></div><div><br></div><div><br></div></div>

--0000000000007ff5500582175b03--
