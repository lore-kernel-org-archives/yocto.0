Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16685E00DA3; Wed,  3 Jan 2018 15:46:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80BC6E00D9B
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 15:46:11 -0800 (PST)
Received: by mail-it0-f52.google.com with SMTP id f190so408735ita.5
	for <yocto@yoctoproject.org>; Wed, 03 Jan 2018 15:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=04V7YBMpNYw49pSlX18c85p2dnSZOlfQZVXWVmgz9E8=;
	b=Yq+fH7YFfUU3JO+3kRK3icEKED8j6RivWMyZxNe1FcopgDol4fQAlB77a0zG5p8X66
	CJ5vyEyJ8rggIi67pvEaOQK+LfBqpdfuLkog0DBKm1GQgBriN6wkjiSEUvnn/DTr/dWX
	65oFNxNvHlzbDBMgST42vMFD+bCx5eBTbEnqnAu0npozKnEFJE9OGQousKVYb6OUHfII
	KUbmd2U/g4acC/rSIN0bEWt2jF6nvBNn0f+I4s0y9Ri4iSpxVmNeNYYRrV36jtVqzUkE
	uBbwN26lP4g8E0JCu/2q8MKtzoknnembq/EnvPwcCHs0sPHOi9Z29JONRE5yHQ47cKbc
	mY1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=04V7YBMpNYw49pSlX18c85p2dnSZOlfQZVXWVmgz9E8=;
	b=mPSzYmj3VCnia5NXAXLNqf3Wgvdjn99UkhwXB6xn3IVHhI0bt5nvSg4E9JbqtBwMcy
	u+Rxonw5gLGI4OPFoYaMg8biDtzugIWUEVTDJs8EPLJnAR+701rP0DoCUNEujZIpmeHN
	Zjkj4MfnvTdkZXRM+tp8dJ6bNaHYx+DHnvWuqJIRkJ5hCJAi4V/gdnn/ytf13oGcrIBu
	xujkkHniDhn5HMeVYT0OKxPeJNrXQE8M79yNdlh2HJFmRP+l9KliW6ZNDLgQfy1zvric
	e1pKrIyXJQDUzu0Pr6KkVuW8/40x082oXoWIoAxi+dpWZ4pr/gxa559c/vh9dNOQCD80
	83Ng==
X-Gm-Message-State: AKGB3mJlFQcC8izKu49WlOOmF8ndJchpeggrchg+0RnXqDwEcUo2KUym
	tZApmq0SqTWak/qvBIs0istk9VBD/LDXBv+qev7heg==
X-Google-Smtp-Source: ACJfBov6HrbBOoHbUdxwGU2iiD0n8uiXcHbUA3w69VLO13SJ8+F3Gr0GPoIWJAu0HDXOIBXhKrVXCrvGMnZThO/fcuM=
X-Received: by 10.36.84.69 with SMTP id t66mr3988102ita.102.1515023171415;
	Wed, 03 Jan 2018 15:46:11 -0800 (PST)
MIME-Version: 1.0
References: <CY4PR04MB1177EB647EAD05243A54BD28B01E0@CY4PR04MB1177.namprd04.prod.outlook.com>
In-Reply-To: <CY4PR04MB1177EB647EAD05243A54BD28B01E0@CY4PR04MB1177.namprd04.prod.outlook.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 03 Jan 2018 23:45:59 +0000
Message-ID: <CAFzUWG=8XZCbd=Ooc93KCYH3waxkrrwDDqaXo9WU2MT+5ZtE=g@mail.gmail.com>
To: Matt Schepers <mschepers@telspandata.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe for custom python package not on pypi
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
X-List-Received-Date: Wed, 03 Jan 2018 23:46:13 -0000
Content-Type: multipart/alternative; boundary="001a1143f21cf5727a0561e7d18e"

--001a1143f21cf5727a0561e7d18e
Content-Type: text/plain; charset="UTF-8"

Hi,

https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/python/python-ironman_0.2.13.bb
-
this is an example recipe for python.

You simply need to change the SRC_URI to point to where your python package
is (tarball generally preferred) by something like

file://path/to/tarball.tar.gz

Giordon

On Wed, Jan 3, 2018 at 6:39 PM Matt Schepers <mschepers@telspandata.com>
wrote:

> Folks,
>
> I'm looking for a recipe that will install a custom python package to the
> python site-packages on the rootfs. The Python package uses setuptools and
> the standard setup.py and is not available on pypi because I wrote it. In
> general I am having difficulty finding a recipe for a custom package
> outside of the ones available on pypi.
>
> Can someone point me in the right direction?
>
> Thanks,
> Matt
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1143f21cf5727a0561e7d18e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div><a href=3D"https://github.com/krats=
g/meta-l1calo/blob/master/recipes-core/python/python-ironman_0.2.13.bb">htt=
ps://github.com/kratsg/meta-l1calo/blob/master/recipes-core/python/python-i=
ronman_0.2.13.bb</a>=C2=A0- this is an example recipe for python.<br></div>=
<div><br></div><div>You simply need to change the SRC_URI to point to where=
 your python package is (tarball generally preferred) by something like</di=
v><div><br></div><div>file://path/to/tarball.tar.gz</div><div><br></div><di=
v>Giordon</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Jan =
3, 2018 at 6:39 PM Matt Schepers &lt;<a href=3D"mailto:mschepers@telspandat=
a.com">mschepers@telspandata.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Folks,<br>
<br>
I&#39;m looking for a recipe that will install a custom python package to t=
he python site-packages on the rootfs. The Python package uses setuptools a=
nd the standard setup.py and is not available on pypi because I wrote it. I=
n general I am having difficulty finding a recipe for a custom package outs=
ide of the ones available on pypi.<br>
<br>
Can someone point me in the right direction?<br>
<br>
Thanks,<br>
Matt<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--001a1143f21cf5727a0561e7d18e--
