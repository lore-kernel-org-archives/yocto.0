Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56E7CE00C45; Wed, 12 Dec 2018 02:20:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45BFFE00566
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 02:20:43 -0800 (PST)
Received: by mail-it1-f173.google.com with SMTP id h65so8939400ith.3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 02:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=pSkI6HIjNQXOdapfPCGIUkyok2qeqsvnciEP/ARHauI=;
	b=E3OkmJEToqLxf8+2YbVTksYa+CobSpq1fxWWjioISLgFw5N93KkNz2yqdZ+wwAtqdZ
	Hwa6+AarusruZvd+9snVeI1thV/+6oxoBRdaDxuGBfrO3c7MX/uMehhB9zYwmLYTqyde
	0qZ4G+QnfqzvVvMCR5tjj3kLfMvxjiSaiE59NPILV2yT64NdQ0U0+hd/I3H/1i26bjqE
	HWT+QITUo1QoesSU9fe9DOllzaKEHQwUOFykQl1LSPwp8c9rQ4En28wINIB9zd49Owt+
	0B2tA0cdpZJjdNILqjGIevvoXHFkgLLj5HcVuI/nta7QIYKUEy3hvPiT3lLEPtuTerVZ
	Jg5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=pSkI6HIjNQXOdapfPCGIUkyok2qeqsvnciEP/ARHauI=;
	b=BLijbVhV/5ZhG5IEKqZYYo8myaU4hUy3dPty+KStSm8Dr1rBKKbFpSQm/oxqwMjnQR
	9qZ+dq/EPhXSfPS1U5nQ2uqrjmvleT86kCn/w6MiPq/LFtRbJpu5JWCqsN7KucaTS1Xp
	KS5fuNpHMu1Bg6Crd7sd6ZHXEOAKEeenTryfxHB6E9pU7j39MMFbiQfkkjQeRaoey9mH
	dvovbPo/EaanI9XUmPHYCZmmFwZuI+xSZsTzXtXS6ULvPjaF9bGdcUUseK6qQV+WXLZ+
	oQS653+qpW/0ISDWwX6vodzsjV1vniXSwCZcP2mRz2b6VZbdPBJcITXvAlTV4Haf0YmM
	SyBQ==
X-Gm-Message-State: AA+aEWaUnN90+LNOrINu6K2y/pVNbgL+1XjIw7urVRilyCR1/jKBhvF/
	eEaR5XjVyXPkqR5WkpXaMXDBo+Vo7RuzZj2PxEpasbrf
X-Google-Smtp-Source: AFSGD/XaXXz2yy5VgET5LrAAVb+PP0ZlhQzJG+ja2M7DZ6sNneM/uKmReUZvJQBrLtNr9VgBGFeq4Oc18Rh5WrBQ0FA=
X-Received: by 2002:a24:6890:: with SMTP id v138mr5555165itb.53.1544610042486; 
	Wed, 12 Dec 2018 02:20:42 -0800 (PST)
MIME-Version: 1.0
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Wed, 12 Dec 2018 11:20:31 +0100
Message-ID: <CAFq4t4gaWYqo10_uRB-DDDMb+bp9eLxHGurMbLkvXLgMNHtBoQ@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Fri, 14 Dec 2018 08:21:49 -0800
Subject: lib source code change
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
X-List-Received-Date: Wed, 12 Dec 2018 10:20:44 -0000
Content-Type: multipart/alternative; boundary="000000000000e6244a057cd08ccb"

--000000000000e6244a057cd08ccb
Content-Type: text/plain; charset="UTF-8"

I ahve built an imamge and SDK where opencv is part of that. Now I do need
to change this lib.Instead of rebuilding all I am trying to change just the
library.

How should I deploy that change to reflecte the eSDK (cross toolchain) and
modify (update) target image.

I wonder if "devtool modify" can be use and how for this?

--000000000000e6244a057cd08ccb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I ahve built an imamge and SDK where opencv is part of tha=
t. Now I do need to change this lib.Instead of rebuilding all I am trying t=
o change just the library.<div><br></div><div>How should I deploy that chan=
ge to reflecte the eSDK (cross toolchain) and modify (update) target image.=
=C2=A0<div><div><br></div><div>I wonder if &quot;devtool modify&quot; can b=
e use and how for this?</div></div></div></div>

--000000000000e6244a057cd08ccb--
