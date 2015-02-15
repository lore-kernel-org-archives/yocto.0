Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C7D6E0048B; Sun, 15 Feb 2015 06:01:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
Received: from mail-yh0-f50.google.com (mail-yh0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 357E9E0043F
	for <yocto@yoctoproject.org>; Sun, 15 Feb 2015 06:01:24 -0800 (PST)
Received: by mail-yh0-f50.google.com with SMTP id a41so11954895yho.9
	for <yocto@yoctoproject.org>; Sun, 15 Feb 2015 06:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=qnldDcGBfcFWSFCGuaVntkimOlKt4lXK5TBCIAybPlE=;
	b=BGWzNlcobIuCGU/od9EbUlu153zsgCi5FNwoHk5dXCj5j6dHgOoWtRiYCj2ON0iCKN
	PAWWvG1+ZlOsYRaargyvurzDdihqNTmerV7mw+XJn4imZtbHtFEtO47nDsl99FoHKmys
	75NcAh45rtdd56BGjJgCJTCN8CJWh4PrGz8Ig0FBCHI8B8d1G/jBHZFKjccdOk26/PWl
	aNFICBYbbGG++yvLx1HcXs7YNCvLO9H4GwDhCmzHDlceO3NOhn3226mfUhg3ACWmRpjl
	tmO+7ORVsW6hqZXqShVR7nLxpA6gyMPLSLso+RwlZlxsf2C6jduJkPTDXDFzZIHoBw6Q
	4YTA==
X-Received: by 10.236.227.166 with SMTP id d36mr8239733yhq.185.1424008883473; 
	Sun, 15 Feb 2015 06:01:23 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.170.120.4 with HTTP; Sun, 15 Feb 2015 06:01:03 -0800 (PST)
In-Reply-To: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
References: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Sun, 15 Feb 2015 07:01:03 -0700
X-Google-Sender-Auth: XsHwDqpEGxM8hzPGeIkOwz05oyc
Message-ID: <CABcZANnOS=DoQspvKv1P5YVPv4Z_woTqJP4H9QENbb5Q+Z+2hA@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] heartbeat: fix license issue
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
X-List-Received-Date: Sun, 15 Feb 2015 14:01:30 -0000
Content-Type: multipart/alternative; boundary=001a11c2ccc8a81295050f20e7f5

--001a11c2ccc8a81295050f20e7f5
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 13, 2015 at 10:00 PM, Armin Kuster <akuster808@gmail.com> wrote:

> -LICENSE = "GPLv2 LGPLv2+"
> +LICENSE = "GPLv2 | LGPLv2+"
>

Are you sure this is correct? Afaict this is wrong, as there are parts of
the source tree under the GPL, and parts under LGPL, which means it's an
AND relationship -- both apply, not an OR relationship, where you can
choose which to use.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c2ccc8a81295050f20e7f5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Feb 13, 2015 at 10:00 PM, Armin Kuster <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:akuster808@gmail.com" target=3D"_blank">akuster808@gmail.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2m4" clas=
s=3D"a3s" style=3D"overflow:hidden">-LICENSE =3D &quot;GPLv2 LGPLv2+&quot;<=
br>
+LICENSE =3D &quot;GPLv2 | LGPLv2+&quot;</div></blockquote></div><br>Are yo=
u sure this is correct? Afaict this is wrong, as there are parts of the sou=
rce tree under the GPL, and parts under LGPL, which means it&#39;s an AND r=
elationship -- both apply, not an OR relationship, where you can choose whi=
ch to use.<br>-- <br><div class=3D"gmail_signature">Christopher Larson<br>c=
larson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br=
>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a11c2ccc8a81295050f20e7f5--
