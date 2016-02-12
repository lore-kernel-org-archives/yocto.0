Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B2ACE00C89; Fri, 12 Feb 2016 09:19:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37795E00C06
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 09:19:04 -0800 (PST)
Received: by mail-ig0-f179.google.com with SMTP id y8so14822460igp.1
	for <yocto@yoctoproject.org>; Fri, 12 Feb 2016 09:19:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dqBin7BntEXVTrVFdchwU9m/CXcsxdMtks/hP1htl8Q=;
	b=AuYz2LTiAr7FCNFqfSUd7YldkKw4qqAjthPzOKZSK8dTHKnzQ0ab5l4z8NN7A8qllS
	eWqs+fI9l9S+kYuaIKcAwu2XVADAigpHZUztIVmTQoIcWF0rqhT/UTwPJDCR1Nsk3wak
	w2+O59p5dVv9oFX03z7XZIWcAu2cMoXxSm36btjcj3sK1O2LPLauqBuZLXID0tU/GWfZ
	qst27SmR3QbwdZItB7UyO4wJmYqt6f6x6OCS49R7VZWZfwvgVmWnwV7i1zsCp9MlHDu/
	L6bqxHCUeD85JE4AjrDOsMaRjVdsi9a8I9izk8ymZDCeTx6Ug6HgSzciuwwA9b3wKLZg
	A33g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=dqBin7BntEXVTrVFdchwU9m/CXcsxdMtks/hP1htl8Q=;
	b=cw3K5K5gXL833J0q7Kr3KZ3Z/G1T3xY/Wn5y1NXnYRoIfYPc/yDk1NP92H/hamVTmh
	QuscjDvHg78m7Wa9moVICtCpS1M61xvsPwDA5vnwpT2jDw3T8xS9W9VGEpyOEj8sBEmH
	dDvhN/XkBYPuTNJDc+xRt8YCjKVSi+53xQ8u5Ii0R0A8zR4aMiKnHkiNDIUF8QJg8u/3
	WJouqiAC36yrHDPAFK/PN4zdPyecRgh3LlV8NnuET8/KHed/T6dhuYJCK4INUoG3i6Rl
	1VCQhOI/EvdRuLVonA2oJU1zjGOBxepO5TiEsiTjwJF+MhrjOs4qKnzk1+PAfHc367iL
	vgQw==
X-Gm-Message-State: AG10YOTYv2M6vUMY/9Wa9MDi8CeF6SY/fUDHDTtWbT41/tvL+JfPrK4twSZD3O1Cc7DxZccagh8xNU5Ne2dNDkEW
X-Received: by 10.50.43.133 with SMTP id w5mr5097712igl.52.1455297543629; Fri,
	12 Feb 2016 09:19:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 12 Feb 2016 09:18:44 -0800 (PST)
In-Reply-To: <1455297167401.67853@seescan.com>
References: <CAJTo0LaMycXVjZLoPMU7Te2HDpp7+YUu8GGuNznhk8D8Yje27A@mail.gmail.com>
	<3534892.4K3lPByQ7B@nickl>
	<CAJTo0LY6r8od5c3rysNWFg=-3c0jWx4STaaPQD-pcEmUmqh2Dw@mail.gmail.com>
	<14702697.fdvhjAhpCO@nickl> <1455297167401.67853@seescan.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Feb 2016 17:18:44 +0000
Message-ID: <CAJTo0LaTr5_yZ7Rn2hULHiaA9eL4EdA_EjLkaivRjgCspPrGdQ@mail.gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: Nick Leverton <nick@leverton.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropping Debian 7 as supported?
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
X-List-Received-Date: Fri, 12 Feb 2016 17:19:05 -0000
Content-Type: multipart/alternative; boundary=089e01175f2b21d028052b95dd2f

--089e01175f2b21d028052b95dd2f
Content-Type: text/plain; charset=UTF-8

On 12 February 2016 at 17:14, Fred Ollinger <Fred.Ollinger@seescan.com>
wrote:

> So far, I have zero problems, and it would be nice to not see a scary
> message telling me to change distros if my distro actually works great.
>

You must have missed the bit where I said that Debian 8 was being
supported, I just wanted to drop Debian 7.

Ross

--089e01175f2b21d028052b95dd2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 February 2016 at 17:14, Fred Ollinger <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Fred.Ollinger@seescan.com" target=3D"_blank">Fred.Ollinger@seesc=
an.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":=
mo" class=3D"a3s" style=3D"overflow:hidden">So far, I have zero problems, a=
nd it would be nice to not see a scary message telling me to change distros=
 if my distro actually works great.<br></div></blockquote></div><br>You mus=
t have missed the bit where I said that Debian 8 was being supported, I jus=
t wanted to drop Debian 7.</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--089e01175f2b21d028052b95dd2f--
