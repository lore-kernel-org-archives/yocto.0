Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 859DAE00DFC; Wed, 13 Nov 2019 08:53:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0EC3E00D86
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 08:53:54 -0800 (PST)
Received: by mail-pg1-f173.google.com with SMTP id l24so1711423pgh.10
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 08:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:user-agent:mime-version;
	bh=v+EnhWkiF8Em1gVGSiByUJWNfGv2OiMyRyiY9mVKvgk=;
	b=IauLl/wl54PoAteEahlrIgrnTCcpaVswbucos6D3Thz69nNdzDiLevF6HmMvYcjALP
	aURoFUiq71d93Kb3gIVAx+T4VwcjUgoeu6mZxC/ij6MOj8uY5qD7VhlmGV8W7tKTI1Ff
	ax1XtgJAI9mafVQzngSvAgdz0Bd/zBwHnKAfaSsxTRl8R9gF8dJEdR9mDcrJfKV4x56B
	QoIImA3/aBy1r5DU1ZAPJ5wEhDYMEkjy0QGOrzKzsvGRLAtUFuXJxhChrTfiF/8FUJYv
	lw14aYRhuNqy1qcnNrqusfS7gAoqKlC1b81KDd7IpmBDWGtB2pKWTibIs4RJmiZNJ7fS
	pk7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:user-agent:mime-version;
	bh=v+EnhWkiF8Em1gVGSiByUJWNfGv2OiMyRyiY9mVKvgk=;
	b=nE4sOndDZvSg3QgnM+ZIuckPhGSRe3gKWDlp+++TE3wvTL/+4ZHQ71xTjDfWlwOivZ
	ar+SZ2OHcqU4DqDtHWPb1tWRFH1VgAaf++82TKnl9nJrGXby6OCSyM36B85ZxFDNRsMy
	Pm/bbZ9tfsc+iB3kwqd1zna3arvkJo1wIl8q6an26fGzU3DVkfbkQTVgFYInnJ8mXafu
	w1fqayHAvGaR9f8Q/Gg1aTaucG7yFKQ115AikCrHUtdHMVHJhN66vctOO2N5OZzANNm6
	j2AyKvOMUYzKYdVYLgjWEE64rik1B8QBCWx/ZWGqN5ixky1UsDpqS6wQGkGv441nhw+z
	bGfw==
X-Gm-Message-State: APjAAAUE9+qep0Nz8pLxwbDO3uqJYPnpKT6BpCc2uddnQJ/s7aDSouau
	oA/nNlpxxYs3OzWAtFF7sUA=
X-Google-Smtp-Source: APXvYqwYo8PYzUATxyB1qWF9olwnOg/KpJfpuqJJLdg10Nyt+/XcvHAfQKotOkVTE30cJ9kuCo3y0A==
X-Received: by 2002:a62:e306:: with SMTP id g6mr5698211pfh.32.1573664033894;
	Wed, 13 Nov 2019 08:53:53 -0800 (PST)
Received: from apollo ([2601:646:8500:1c20::30e8])
	by smtp.gmail.com with ESMTPSA id m65sm8201592pje.3.2019.11.13.08.53.53
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Nov 2019 08:53:53 -0800 (PST)
Message-ID: <7077004d7c363f729d9fd23ed6b2095592406d6c.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Vladimir Molokov <vladimir.molokov@gmail.com>, yocto@yoctoproject.org
Date: Wed, 13 Nov 2019 08:53:48 -0800
In-Reply-To: <CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
References: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
	<CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
Subject: Re: puzzle: simple recipe gets image dependencies
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
X-List-Received-Date: Wed, 13 Nov 2019 16:53:55 -0000
Content-Type: multipart/alternative; boundary="=-H5y71eZvITIVCWh3Inkh"

--=-H5y71eZvITIVCWh3Inkh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-11-13 at 12:33 +0100, Vladimir Molokov wrote:
> Hi all,
> 
> 
> 
> Here is a strange dependency puzzle:
> 
> simple recipe which doesn't inherit image class
> 
> gets EXTRA-IMAGEDENDS, kernel, initramfs and so on.
> 
> 
> 
> It's reproducible on latest poky,
> 
> I've made a minimal example, all lines are important,
> 
> if you remove something, like systemd or attr
> 
> it drops all the dependencies
> 
> though I didn't find anything wrong in systemd nor in attr recipes.
> 
> 
> 
> Steps to reproduce:
> 
> 
> 
> 1. mkdir puzzle && cd puzzle
> 
> 1. git clone git://git.yoctoproject.org/poky
> 
> 2. source poky/oe-init-build-env
> 
> 3. bitbake-layers create-layer meta-puzzle
> 
> 4. bitbake-layers add-layer meta-puzzle
> 
> 5. cp meta-puzzle/recipes-example/example/example_0.1.bb \
> 
>    meta-puzzle/recipes-example/example/bad-example_0.1.bb
> 
> 
> 
> 6. mkdir -p meta-puzzle/conf/distro
> 
> 
> 
> 7. printf "require conf/distro/poky.conf\n\n\
> 
> DISTRO = \"extra-img-dep-test\" \n\
> 
> DISTRO_NAME = \"Extra image dependency test\"\n\
> 
> DISTRO_VERSION = \"0.1\"\n\n\
> 
> DISTRO_FEATURES_append = \"systemd\"\n"\
> 
> > meta-puzzle/conf/distro/extra-img-dep-test.conf
> 
> 
> 
> 7. printf "MACHINE ?= \"qemux86\"\n\
> 
> DISTRO ?= \"extra-img-dep-test\"\n\n\
> 
> EXTRA_IMAGEDEPENDS += \"bad-example\"\n\n\
> 
> INITRAMFS_IMAGE = \"core-image-minimal\"\n"\
> 
> > conf/local.conf
> 
> 
> 
> 8. echo 'DEPENDS = "attr"' >> \
> 
>    meta-puzzle/recipes-example/example/example_0.1.bb
> 
> 
> 
> 9. bitbake -g example && grep bad-example task-depends.dot

can you share this dot file ?
> 
> 10. see dependencies on 'bad-example'..
> 
> 
> 
> Will be very grateful if anybody point out
> 
> what is wrong with this setup.
> 
> 
> 
> I've talked with people struggling with similar problem
> 
> and nobody was able to solve it so far
> 
> and I myself stumbled in it in a couple of projects.
> 
> 
> 
> BR,
> 
> Vladimir.
> 
> 

--=-H5y71eZvITIVCWh3Inkh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr"><head></head><body style=3D"text-align:left; direction:lt=
r;"><div>On Wed, 2019-11-13 at 12:33 +0100, Vladimir Molokov wrote:</div><b=
lockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf=
 solid;padding-left:1ex"><div dir=3D"auto"><div class=3D"gmail_quote" dir=
=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">Hi all,<br></div>
<br>
Here is a strange dependency puzzle:<br>
simple recipe which doesn't inherit image class<br>
gets EXTRA-IMAGEDENDS, kernel, initramfs and so on.<br>
<br>
It's reproducible on latest poky,<br>
I've made a minimal example, all lines are important,<br>
if you remove something, like systemd or attr<br>
it drops all the dependencies<br>
though I didn't find anything wrong in systemd nor in attr recipes.<br>
<br>
Steps to reproduce:<br>
<br>
1. mkdir puzzle &amp;&amp; cd puzzle<br>
1. git clone git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">git.yoctoproject.org/poky</a><br>
2. source poky/oe-init-build-env<br>
3. bitbake-layers create-layer meta-puzzle<br>
4. bitbake-layers add-layer meta-puzzle<br>
5. cp meta-puzzle/recipes-example/example/<a href=3D"http://example_0.1.bb"=
 rel=3D"noreferrer noreferrer" target=3D"_blank">example_0.1.bb</a> \<br>
&nbsp; &nbsp;meta-puzzle/recipes-example/example/<a href=3D"http://bad-exam=
ple_0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">bad-example_0.1=
.bb</a><br>
<br>
6. mkdir -p meta-puzzle/conf/distro<br>
<br>
7. printf "require conf/distro/poky.conf\n\n\<br>
DISTRO =3D \"extra-img-dep-test\" \n\<br>
DISTRO_NAME =3D \"Extra image dependency test\"\n\<br>
DISTRO_VERSION =3D \"0.1\"\n\n\<br>
DISTRO_FEATURES_append =3D \"systemd\"\n"\<br>
&gt; meta-puzzle/conf/distro/extra-img-dep-test.conf<br>
<br>
7. printf "MACHINE ?=3D \"qemux86\"\n\<br>
DISTRO ?=3D \"extra-img-dep-test\"\n\n\<br>
EXTRA_IMAGEDEPENDS +=3D \"bad-example\"\n\n\<br>
INITRAMFS_IMAGE =3D \"core-image-minimal\"\n"\<br>
&gt; conf/local.conf<br>
<br>
8. echo 'DEPENDS =3D "attr"' &gt;&gt; \<br>
&nbsp; &nbsp;meta-puzzle/recipes-example/example/<a href=3D"http://example_=
0.1.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">example_0.1.bb</a><=
br>
<br>
9. bitbake -g example &amp;&amp; grep bad-example task-depends.dot<br></div=
></div></blockquote><div><br></div><div>can you share this dot file ?</div>=
<div><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border=
-left:2px #729fcf solid;padding-left:1ex"><div dir=3D"auto"><div class=3D"g=
mail_quote" dir=3D"auto">
<br>
10. see dependencies on 'bad-example'..<br>
<br>
Will be very grateful if anybody point out<br>
what is wrong with this setup.<br>
<br>
I've talked with people struggling with similar problem<br>
and nobody was able to solve it so far<br>
and I myself stumbled in it in a couple of projects.<br>
<br>
BR,<br>
Vladimir.<br>
</div></div>
</blockquote></body></html>

--=-H5y71eZvITIVCWh3Inkh--
