Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FD0CE00D68; Wed,  2 Mar 2016 06:44:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4F89E00D5F
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 06:44:49 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id l83so89075991lfd.3
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 06:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-transfer-encoding;
	bh=jQAHGGy5yUgU6BN4xEihYJ4XkL8L2bRISADHfB2JIKw=;
	b=U/q7nMDggC6DBImmJo1fofaKfn4cS1JocPBdtJq8TVSy13L8nWGdBQNYU7NOmFfIS3
	VoVhXH221Xq5KSSkedfWOlRMmkvQvlNBN0s+3SR/qzsdywLOHG3NGbAMrsISx6KNMH7X
	cp7N3IigWVUyYXugFgQQNc5l7m4XeXtABgaf5YDgs8z5bQawb+VFJjBiqMXGvxRl6N+d
	tRWNeJAEp1I0k5dmD7bVFYSxgo30fz9Zq9JCD3uXZy1J3EzgcRneMDWT3r9nrxEXW0IE
	kpkH7V5waoceS91vF1jyzGNg5Tx8Nq/N4LcauXGNSmZ6SAzm0Ux1+2mfCAKY+Mea0Vnb
	8tEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-transfer-encoding;
	bh=jQAHGGy5yUgU6BN4xEihYJ4XkL8L2bRISADHfB2JIKw=;
	b=Oe8U82SQeQqJZvxcx0H8HXENW19Eu8dSQ+/OaGN1grj8HgDKMg61dOJrApTFFumUVO
	dIm2XJfLjsZuhLVb52crTueLFI47MjeZ1dcrTawt8Gf8vN5X8T2kAQmeLcBEP3IfRPqT
	khoMlnNaPrFqRSEAsuoCSUhhf8q+z+528H70IfNQjXmiAy3Ry0jRuHU1oX1oZAH2GT9j
	6HedexRkzcwcTj4u/8ck4fIGRjbwc0itENW9raZ9cKO1Xle+BTn0RwgiQcoviuHSKwM6
	wa3TsIMtQXldu0tULGeMqCMsAXy/rEYZTjYHq9HEGJYok+VuLiiPhembpO/GJlqQk8xl
	LE7w==
X-Gm-Message-State: AD7BkJIKliDPFBl8wpt7y3y0tTKAgxkqiCEUB1DGryrNp9n9l5lJPgtww550uMAOCwuTlsYEWQwDXZMGGpdI4g==
MIME-Version: 1.0
X-Received: by 10.25.81.148 with SMTP id f142mr8665716lfb.95.1456929887655;
	Wed, 02 Mar 2016 06:44:47 -0800 (PST)
Received: by 10.25.205.10 with HTTP; Wed, 2 Mar 2016 06:44:47 -0800 (PST)
In-Reply-To: <dde450eb834b412b9c16b001dc38e4ca@SI-MBX1022.de.bosch.com>
References: <dde450eb834b412b9c16b001dc38e4ca@SI-MBX1022.de.bosch.com>
Date: Wed, 2 Mar 2016 15:44:47 +0100
Message-ID: <CAALGJZaCQXnvNOaDD+uxn+-jHG4rPUjiiRciX2gmQRh_dqQ18A@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about access local stash/bitbucket server via yocto
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
X-List-Received-Date: Wed, 02 Mar 2016 14:44:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rikard,

> My first post so here we go=E2=80=A6.
Welcome to the OpenEmbedded world.
>
> 1) I am new to yocto and so is the company I work for=E2=80=A6.
> 2) My companys firewall/intranet blocks git protocol so only http works=
=E2=80=A6
welcome to my world

> Anyhow, in the company there is a local stash/bitbucket sever which run o=
n
> XXXX port number where I have some repositories and I am able to clone th=
em
> with:
>
> git clone http://<USER>@<server>:<PORT>/XXX/~YYY/ZZZ.git =3D=3D> This wor=
ks fine
> from command line, note the =E2=80=9C~=E2=80=9D
>
>
>
> However, now I want to do the clone from a yocto/bitbake file I created a=
s
> follows:
>
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3DXXXXXXXXXXXXXXXXXXXXXXXXX"
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}-${PV}:"
>
> SRCREV =3D "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
>
> SRC_URI =3D "http:/<USER>@<server>:<PORT>/XXX/~YYY/ZZZ.git"
>
> However this fails with Username/Password Authentication Failed which I f=
ind
> strange since I have no problem with git clone =E2=80=A6..
> Now I have two questions:
>
> 1)     Is it possible to add my USER and PASSWORD in the bitbake/yocto (*=
.bb
> file) file to work around the Username/Password Authentication Failed
> problem.
>
> 2)     I also have a question if there are any limitation in the path I u=
se,
> for example:
>
> a.     Is it OK to have <PORT> number as part of path, I haven=E2=80=99t =
seen that
> in any other files related to yocto/bitbake? And if not how do I specify =
the
> PORT number?
>
> b.    Or maybe the =E2=80=9C~=E2=80=9D will cause problem , I haven=E2=80=
=99t seen this in any path
> names related to yocto/bitbake?
You have multiple options here:

- Switch to SSH for stash access
- Add a yocto user to stash and add those credentials to a the yocto
build users .netrc (http://www.mavetju.org/unix/netrc.php)
- Check poky/bitbake/lib/bb/fetch2/git.py what options are possible
for the git fetcher

You can wrap your stash URL in a Variable and set it in a global
location for example your conf/local.conf

MYFANCY_URI ??=3D "git://git.xxxx.com/scm/proj"
MYFANCY_URI_PROTOCOL ??=3D "https"


> Any advice I appreciated.
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
Regards,
Christian

