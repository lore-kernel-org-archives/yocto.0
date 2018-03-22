Return-Path: <huafu8386@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26B52E009D7; Wed, 21 Mar 2018 21:47:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (huafu8386[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11D6CE007A7
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 21:47:09 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id e98-v6so9451789itd.4
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 21:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Tu0DV7KRyKmKTiPRnn8hcVmx0Xt3QMybeQX2PHLgRjc=;
	b=oFtFNn5E/SkEVKc7+ylq5LHllXukWPTwJpUDsdiE3xU2ic101Q3SKtH3jikdJrfM8O
	DOw/hgxmtvLkyTWv3+tsCKF6HDO4qarBHfpoWf6H1y8hQNEhyQKKJPCzkH77tSrm4TNJ
	rXDEReu/0/+TUR27gUUHv7JIjXF/f9rSh85qV9wEXmmFOkuKpn3YFth4KM+7ilPdIQc6
	a2BzE+wzZU8FvfH5fYNRQA1273pg+9WhgVfJIQ6c/J6TE9XpE4NoXKJC6+Kb9eXVkYPe
	5g70Zob9ZRBVx6sw+Rpm+7KisR8xbEDhqfauql2keS6Jj6a0LE3HhclMZZhapkASWWD6
	OG4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Tu0DV7KRyKmKTiPRnn8hcVmx0Xt3QMybeQX2PHLgRjc=;
	b=LpzDJ7hTXqpro8hxqRZcQZsNKz+yu0I0rukq2N7+mCvHe8KdwqDtcFmOJ6TAj7ENrU
	oQIpEcqqYPWCi5cagZQV6Xy8a5yHW+kHUSR/Y01nLSd6qpXfhDbCrnKNqqmpNNHnn9D7
	fi1dGo/MdFgIi6X2jTgu2rJDs1MuxP/Iutxh4KL25LGqYEVV6x3cpz8vwvPNZAHLjm9A
	29r8OVO3UW/g/z7jVrbOFUEjS3w5aZe13SLDq/CqUVjEDtHVRCULyFYZ1rskHV5OPuNg
	Ic869IBzeDEkX9HdeCGaqJEOr+aWx5ODuK3l8VqVsJLolvtIgQX3nTqQrOxmTxdSs6gd
	jyaQ==
X-Gm-Message-State: AElRT7EfDeYwkYJr5zX3dk1kHlqG+Wln+s+ZJRnFZntO8Ns9gxqJqaSV
	5Vww4Qit6oLpvpr040gbzBzeIJTQxV/KQIcHvPXrgg==
X-Google-Smtp-Source: AG47ELsYNztEDZA9pIsk9u9MxgPk1r2oerTPSoEFy4Np58hIcRhG6U0bhg6up4xtjbRG39n+LZ7sV0Ig0Kpiziz6IwA=
X-Received: by 2002:a24:e085:: with SMTP id
	c127-v6mr6898766ith.25.1521694028991; 
	Wed, 21 Mar 2018 21:47:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.124.196 with HTTP; Wed, 21 Mar 2018 21:47:08 -0700 (PDT)
From: HuaFu 8386 <huafu8386@gmail.com>
Date: Wed, 21 Mar 2018 21:47:08 -0700
Message-ID: <CAAXOrvb_PiV0T00=okLNpcUgEdNfQ1Qs6NnA_kDC+yqJHV8pkw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to build two different kernel
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
X-List-Received-Date: Thu, 22 Mar 2018 04:47:11 -0000
Content-Type: multipart/alternative; boundary="0000000000000e112e0567f900c7"

--0000000000000e112e0567f900c7
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to build two different images with two different kernel configs, one
for debug version and one for production version, like
bitbake debug_image
bitbake product_image

Any idea how can I do that?

Thanks,
Danny

--0000000000000e112e0567f900c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I want to build two different image=
s with two different kernel configs, one for debug version and one for prod=
uction version, like</div><div>bitbake debug_image</div><div>

<div style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration-style=
:initial;text-decoration-color:initial">bitbake product_image</div><div sty=
le=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration-style:initial=
;text-decoration-color:initial"><br></div><div style=3D"color:rgb(34,34,34)=
;font-family:arial,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;text-decoration-style:initial;text-decoration-color:in=
itial">Any idea how can I do that?</div><div style=3D"color:rgb(34,34,34);f=
ont-family:arial,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;text-decoration-style:initial;text-decoration-color:init=
ial"><br></div><div style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;text-d=
ecoration-style:initial;text-decoration-color:initial">Thanks,</div><div st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration-style:initia=
l;text-decoration-color:initial">Danny</div><br class=3D"gmail-Apple-interc=
hange-newline">

<br></div></div>

--0000000000000e112e0567f900c7--
