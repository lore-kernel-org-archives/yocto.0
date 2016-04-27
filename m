Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F3B9E00D8D; Wed, 27 Apr 2016 04:10:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E036BE00D84
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 04:10:02 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id d62so42797011iof.2
	for <yocto@yoctoproject.org>; Wed, 27 Apr 2016 04:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wxZGh+Z7SaLqgWkcgsUcvKygbD0762DKZznFpnQy4ps=;
	b=ojJd7NcSaY5xxebSYOxBz+Y7TSZQjM4XIJlWWQlkI5MUmT77ICovJ/3itwAQK1UaO+
	uCOP8G17dl9v1lf6SJp5+prcHx6Ems2bjRT3uJYs+f76t7ascGCMEJ32j3NpTkLJZWw6
	smHxGl/R5gK0swDp+omzbX3wSQG1Jpj5kT7tpXOucIE8ez9tKr5Huqljz/sqSh1yTWyI
	54u6inW5v5eS7ZWBJl7M3vciULe+u2VDo5dHhbBQylWPL1n7GzD7pQ86ThODsrHLEMaX
	suwNsAnOxrKVyJo0Ywng3D0U5x7oC87Zwjs6f3AJQJfDR+IxXvXBO9t4FymOk6K8spH/
	2C3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wxZGh+Z7SaLqgWkcgsUcvKygbD0762DKZznFpnQy4ps=;
	b=G9s4rOWUd2gfko4CBxHZcKLCwWqZyi831QwgIDGpxSIRwtwY3LdtuTIHrOK307uD+u
	SKFeb3BPIj/naRtLPGddPy6/tUX2CHD4ulSmqyDyQpAH+XQb0kTj5LRUPOnoh6Wz8422
	ktr9lPwoGmBbC5aqr55MxhximEGFbOM1V+uKLx2QSgLO4X62hnL3iCxB9f9ccNJ2j2gH
	2M9iPWBvHlp9BMJMDCBE8LTgtHuvzH+Z2DXRME5yoEQqZ3V1Gz2/PoxgKl30odzmVOaZ
	a60SapHIJXJ8aXG1f295ZiLJNqgUxO/6HmI8bNq5rxlRXg+ZHBxDbPgBOz8+RjCiOZib
	AYgQ==
X-Gm-Message-State: AOPr4FVTUOwUU3X8lbRov9PJKi9I8rMTiVjxSSEj1jmYTD3FVEK/9KI4dZtnCSOWbGNhYQlPzb5rEMUA5+T1012n
X-Received: by 10.107.135.211 with SMTP id r80mr10147286ioi.133.1461755402346; 
	Wed, 27 Apr 2016 04:10:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 04:09:42 -0700 (PDT)
In-Reply-To: <DUB130-W353EF079A973F4C0B275BFDA640@phx.gbl>
References: <DUB130-W103C61E8567B18DDA564BADA630@phx.gbl>
	<DUB130-W61B8E41D400E4ACF8EF600DA640@phx.gbl>
	<CAJTo0LZGEfN68QJog53DSjsyQ7p-1FBa6MJot6nZCwt=C8ZG3w@mail.gmail.com>
	<DUB130-W353EF079A973F4C0B275BFDA640@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 12:09:42 +0100
Message-ID: <CAJTo0LZpFf5Mqhoi-tP-ZY8B93QXURrxe=_JDHOfKMQPWAhF3w@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Errors with new recipe for pjproject (autotools/pkgconfig)
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
X-List-Received-Date: Wed, 27 Apr 2016 11:10:07 -0000
Content-Type: multipart/alternative; boundary=001a113ed20a8176f10531757321

--001a113ed20a8176f10531757321
Content-Type: text/plain; charset=UTF-8

On 27 April 2016 at 10:07, Chris Trobridge <christrobridge@hotmail.com>
wrote:

> pjproject hasn't been touched for 6 years and has some custom steps I
> don't understand (
> https://github.com/openembedded/openembedded/tree/master/recipes/pjproject
> ).
>
> asterisk (
> https://github.com/openembedded/openembedded/tree/master/recipes/asterisk)
> is simarly out of date on openembedded, although there is also asterisk in
> meta-telephony (
> https://github.com/sysmocom/meta-telephony/tree/master/recipes-asterisk/asterisk)
> that is referenced.
>

I'm about to go and have lunch but I'll quickly say that the OE tree you're
linking to is unmaintained and has been for many years.  The asterisk in
meta-telephony is the one you should be looking at and ideally contributing
too.

Ross

--001a113ed20a8176f10531757321
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 April 2016 at 10:07, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D=
"mailto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hotmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>pjprojec=
t hasn&#39;t been touched for 6 years and has some custom steps I don&#39;t=
 understand (<a href=3D"https://github.com/openembedded/openembedded/tree/m=
aster/recipes/pjproject" style=3D"font-size:12pt" target=3D"_blank">https:/=
/github.com/openembedded/openembedded/tree/master/recipes/pjproject</a>).</=
div><div><br></div><div>asterisk (<a href=3D"https://github.com/openembedde=
d/openembedded/tree/master/recipes/asterisk" style=3D"font-size:12pt" targe=
t=3D"_blank">https://github.com/openembedded/openembedded/tree/master/recip=
es/asterisk</a>) is simarly out of date on openembedded, although there is =
also asterisk in meta-telephony (<a href=3D"https://github.com/sysmocom/met=
a-telephony/tree/master/recipes-asterisk/asterisk" style=3D"font-size:12pt"=
 target=3D"_blank">https://github.com/sysmocom/meta-telephony/tree/master/r=
ecipes-asterisk/asterisk</a>) that is referenced.</div></blockquote></div><=
br>I&#39;m about to go and have lunch but I&#39;ll quickly say that the OE =
tree you&#39;re linking to is unmaintained and has been for many years.=C2=
=A0 The asterisk in meta-telephony is the one you should be looking at and =
ideally contributing too.</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div>

--001a113ed20a8176f10531757321--
