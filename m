Return-Path: <elcapitanbrown@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A641E00B3F; Fri, 21 Jun 2019 10:46:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (elcapitanbrown[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D919E00B31
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2019 10:46:33 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id v19so7382663wmj.5
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2019 10:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QELsaOr0xrBredwl7zZlUw/lGYi17wpm8yYMjzdEocA=;
	b=mDWWLokPFZx1KTFgR+SOahrV9dhv8l8WKg5yShD0Qt4Y0f+iAgiEJXBesW7uHxbd6D
	69tooYnp2cOsfjCyrLdJjK+Q3pDzGkbu91KvdIaem7khcRgh3E8x9rep4JdNBdpwlV82
	qTwWmZDzP1J6zSvx6yJIDPyZivO6z7KcHVBfCbwe8VtontCCinAFz0WlPF5AFwB8duBv
	+vpS+rTi0Jh8EFwoY00cH2NMXDFOIjhLluvZenr680wLMl4SPGWSnRrZgc+SuPV/2bVm
	9r5ynm9RiPu9kywx3j+6uoXbMsCWMj89y83+IR1naIwzqg9RhsRcMD2mN9Jo4JJIDWMb
	4kQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QELsaOr0xrBredwl7zZlUw/lGYi17wpm8yYMjzdEocA=;
	b=sjAyOV0EyZkcO0o6PAARqKymyiEGuhaL97LyGNbqXdF6pMdVGG88tWr58apdiH5aY9
	D3HZXnvtLSjYYlX1oTqQxchc+iys+pJ2S3SAHNKcHV+EsvSECEC/hI8wkgl5WwFN3WdU
	JKWoIIjqZ84E8x85B5kU85DD2umnxnMoJ639e/m+FqopDAhMEhl4ub9Al72kcJGTaCnc
	mnzjvV1zfAuxqoM98z7/cVjadt8n0XwOBj6oBwMh3C0aPZh8HN50BfQ2e0CrGBtwxAPk
	wiEcvnYIxNYMhUyg7P5ObyFlq90uPYS40w7X+rSEQacv8pgITQ8sO+OXrYduFhfJDL/U
	RXEg==
X-Gm-Message-State: APjAAAXatWYTnc/CSOD7Jh/rWQpEKXNa8RljxHfp4ybnDJiXq2sx6eHr
	kI5k4HGkyi1KYHkduW1tj18SzU1+kLqwaXNiZqF1EA==
X-Google-Smtp-Source: APXvYqzfV9PMZxTd+/uM/QPbVbrxIfoTssE2p2iD3pjirH3+LwU4YTPS5KXNgqMh1EJVtQRzAb/+mu7peCkEfEgcJ24=
X-Received: by 2002:a05:600c:2056:: with SMTP id
	p22mr4776938wmg.155.1561139192822; 
	Fri, 21 Jun 2019 10:46:32 -0700 (PDT)
MIME-Version: 1.0
From: Larry Brown <elcapitanbrown@gmail.com>
Date: Fri, 21 Jun 2019 13:46:21 -0400
Message-ID: <CAOmL4UhzAiin-LzbTQjgFbnKw8KOS=7EbktWcByVsXacB1JhpA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Creating my own bsp
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
X-List-Received-Date: Fri, 21 Jun 2019 17:46:35 -0000
Content-Type: multipart/alternative; boundary="000000000000088148058bd90b43"

--000000000000088148058bd90b43
Content-Type: text/plain; charset="UTF-8"

I've come across references to "yocto-bsp" script that should help build a
bsp.  I'm starting from scratch with an arm 7M and trying to use the
raspberrypi bsp as a reference.  There is so much complexity I'm not sure
where to start.

After setting up the files for the Linux kernel I'm using already on the
board and the config, it first complained about TUNE_ARCH not being
present.  This is not present in the meta-raspberrypi content but based on
something I came across this just wants arm.  Then it complains
TUNE_PKGARCH is not set.  I don't know what this is looking for and I'm not
getting effective hits searching for it.  I'm guessing there are going to
be a lot more after these two complaints.  It would be nice to read what
went into a simple bsp that worked under for an arm board.

PS I'm using the warrior release as it worked for bringing up the raspberry
pi.

Any help would be greatly appreciated.

-- 
Larry Brown

--000000000000088148058bd90b43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">I&#39;ve come across references to &quot;yocto-bsp&quot; =
script that should help build a bsp.=C2=A0 I&#39;m starting from scratch wi=
th an arm 7M and trying to use the raspberrypi bsp as a reference.=C2=A0 Th=
ere is so much complexity I&#39;m not sure where to start.</div><div class=
=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"><br></div=
><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif=
">After setting up the files for the Linux kernel I&#39;m using already on =
the board and the config, it first complained about TUNE_ARCH not being pre=
sent.=C2=A0 This is not present in the meta-raspberrypi content but based o=
n something I came across this just wants arm.=C2=A0 Then it complains TUNE=
_PKGARCH is not set.=C2=A0 I don&#39;t know what this is looking for and I&=
#39;m not getting effective hits searching for it.=C2=A0 I&#39;m guessing t=
here are going to be a lot more after these two complaints.=C2=A0 It would =
be nice to read what went into a simple bsp that worked under for an arm bo=
ard.</div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,s=
ans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:comi=
c sans ms,sans-serif">PS I&#39;m using the warrior release as it worked for=
 bringing up the raspberry pi.</div><div class=3D"gmail_default" style=3D"f=
ont-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default"=
 style=3D"font-family:comic sans ms,sans-serif">Any help would be greatly a=
ppreciated.=C2=A0</div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Larry Brow=
n<div><br></div></div></div></div>

--000000000000088148058bd90b43--
