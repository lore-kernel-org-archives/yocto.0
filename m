Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 769EDE00BB7; Fri, 14 Jul 2017 11:49:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5FA4E0090A
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 11:49:49 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id m84so29790504ita.0
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 11:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bT7MM1IBJLtHhF0001W1vAXHMuLPUO58+LPStJEBoao=;
	b=EHVlCj10k7e58iofiCLJ9BYEagzHYHcHZYRQyyrE68LOdaw+a4+Gq7qbMcWdBzsA9w
	Zi1L9DZC3djaZZoJ1AAf4wD950qg1PSbG+tinKCAS98IJP7ApV31g+zONxGwMfvfO67j
	JeiaJXK5Ti6D2wre3juBeb6P+GdSpXVYxCHDcNtl+Sr882RDSais1toYYLhP4g6/ds7f
	0Tily7CKgg5FIp7PK0qfubuLzF1/5QTIddPnvwEP/a9BzD5jrWA1s5ZFcEwX7xUNRkN3
	Tt+MnorpQ0RSBHQFbd6glPqU5YMxXM/Ok8mWHp36s6mA2GbTbDZSIbKNVbBcDWSIIvHW
	VqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bT7MM1IBJLtHhF0001W1vAXHMuLPUO58+LPStJEBoao=;
	b=efekux/utWDmUAULV/9Y+61A1FKULpo+WhYYzGAUwcF22gpnJf2X0ppcJ5HZk5jx6p
	IxXNFZ7BROEZ+DB0gCZdT+RV6HAeiGm5yD2Xj6hHS37WXjiIfJeIoAL/jvnOPofOC4kC
	xE+WdJ75j94v0skwsWFqaCjO/3Pby+6Q/qTeaAwudew9F6jTNNLjNM0HwPsWh9/mvvFV
	xG4rrNWBhDIvi32XTRXvo7cKnKydA169+PRyCzw4DxKWe7/XzF0hwrMDR4vJPHSTL9NY
	49S2vc9+SNQaw0+DWR9dpmcYQk3SdSLmlEBkICsXBqRMgfUGqrt4sAEBWcBB9QYs69qX
	ZGww==
X-Gm-Message-State: AIVw110Jcz0ne1tHmTLPCmB9rbGu8CDO93d/isV45IsEnNyyrYnhFnCy
	QlrAZzmEvKYHwU0or7FJwYyJ/IDgiO7M
X-Received: by 10.36.25.8 with SMTP id b8mr4871033itb.29.1500058189082; Fri,
	14 Jul 2017 11:49:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.161 with HTTP; Fri, 14 Jul 2017 11:49:28 -0700 (PDT)
In-Reply-To: <a241bdb0-6ea7-8f0e-8411-02e9dbb1662c@gmail.com>
References: <a241bdb0-6ea7-8f0e-8411-02e9dbb1662c@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Jul 2017 19:49:28 +0100
Message-ID: <CAJTo0LZR0=_+WaUqQPx-UA75jOcjMa1OhaB13ztJE+oW4_4xBg@mail.gmail.com>
To: Jimi Damon <jdamon@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do you build 2 versions of the same recipe and a specific version from bitbake cmd line
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
X-List-Received-Date: Fri, 14 Jul 2017 18:49:50 -0000
Content-Type: multipart/alternative; boundary="001a1144a5e880f84905544b83d9"

--001a1144a5e880f84905544b83d9
Content-Type: text/plain; charset="UTF-8"

On 14 July 2017 at 18:17, Jimi Damon <jdamon@gmail.com> wrote:

> Do to a fun "feature" of zeromq, the newest libraries are not backward
> compatible and hence I need to install a zeromq-4.1.5 and zeromq-3.2.2
> libraries onto my target to assist with one application using the old
> version and a newer application using the newer one.
>
>
> How can I do this from the local.conf file AND how can I specify a single
> recipe version to build on the command line ?
>
>
You need two recipes *with different names*, and they must not conflict in
any way with each other.

Ross

--001a1144a5e880f84905544b83d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 July 2017 at 18:17, Jimi Damon <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:jdamon@gmail.com" target=3D"_blank">jdamon@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><p><font face=3D"Monaco">Do to a fun &q=
uot;feature&quot; of zeromq, the newest
        libraries are not backward compatible and hence I need to
        install a zeromq-4.1.5 and zeromq-3.2.2 libraries onto my target
        to assist with one application using the old version and a newer
        application using the newer one. <br>
      </font></p>
    <p><font face=3D"Monaco"><br>
      </font></p>
    <p><font face=3D"Monaco">How can I do this from the local.conf file
        AND how can I specify a single recipe version to build on the
        command line ? <br>
      </font></p>
    <p></p></blockquote></div><br>You need two recipes *with different name=
s*, and they must not conflict in any way with each other.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1144a5e880f84905544b83d9--
