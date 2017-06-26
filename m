Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 392FFE00BBF; Mon, 26 Jun 2017 05:36:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.68 listed in dnsbl.sorbs.net]
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0778FE00B93
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 05:36:48 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id y134so3217itc.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 05:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HdCJBNKAv4wrHIZzlDr/dIiMrgfDxQ6fwkSjGjl0VPg=;
	b=nVh/JrwxsYjcvcf4R+tqCth1+J8y4HCqOlpyhOxTgpmf9DrR3P7s7+ABdqXK4AQIsA
	RYySg1SpjVGYPRCPw4V+NDKatFklXZQDyHW2gZuQtL6YjYKTZ3UqTnS+t5gJ/CSgbHTO
	orMrELWPsG8298+klxI6Zu7MY7SGr2ao7ZCq6VCWi8zbfduHfkx5U/FbNQmedvGLJiiU
	ikbPgSAJrESkES0R/7DK7x05s53QJnQ5nmT151J1Rx5NbWaPteQxGvqd0YnM+wJTEU+V
	XAZoBAdpNAzgZH2vp3gl3CumEgwVD/UG/5NEjSgadJJmB4+RsvL0D0pbX5FUuukbJDOo
	eVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HdCJBNKAv4wrHIZzlDr/dIiMrgfDxQ6fwkSjGjl0VPg=;
	b=YzCg93jrkvz4skr146BHMK1xgW664QbWzqcuTWpbUIN8En7A63KJl9jE5eDEeBOGkK
	xxfuhLrlUN1gZg8F8S3va8dzk9qRJCNPGxrEWg2zuYTcnXu7lgEDIqz1NVkxAzIZ6B7o
	yl0m1qn5LekWswdZLjdeIQIC0sCKvXKjb+d2pUdlp6ah0VUuCM9Iy7QVSuqYoholZ+Cb
	7zWmWFxLFiTwUDLWQOne6XOluIJTcYWpX3vv9uJuYE+75lWYo8+sxZtwLXMXlZsz6dBY
	NTR6es+gKXIEyTXUUT8TcReHCfqpfOwCQ2G1M7OVldQvw1DH+zfoQQoX9YbeMmJSvZDi
	r0pQ==
X-Gm-Message-State: AKS2vOxYKB5LjKdEymZoT+QEqBuF90XOoWATkmZdqp9RR1/z333aD92X
	sESGsl760PXyKI7k2b93Sw+HGrvp+bdn
X-Received: by 10.36.88.135 with SMTP id f129mr16006itb.22.1498480607886; Mon,
	26 Jun 2017 05:36:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Mon, 26 Jun 2017 05:36:07 -0700 (PDT)
X-Originating-IP: [86.141.163.120]
In-Reply-To: <CAEsOVNdERLF=BmXvVwxfnEyorz-4ViZMxJVz3o4FcvsLms8pXA@mail.gmail.com>
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
	<CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
	<20170617152051.GO10782@bill-the-cat>
	<CAMKF1sqna8Q7myyv=qaB8jUjjDycxeFT4kC2cQmQA7RJhD4BKw@mail.gmail.com>
	<CAEsOVNempB7jsvU-EpX+eDwEfnzFveWVE4TuJaTtm2rLnfN6UQ@mail.gmail.com>
	<CAK18fxGt-MwUV4vNEp_TZesDYBfsb_VrARR=PEag-4jorC6sFQ@mail.gmail.com>
	<CAEsOVNdERLF=BmXvVwxfnEyorz-4ViZMxJVz3o4FcvsLms8pXA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 26 Jun 2017 13:36:07 +0100
Message-ID: <CAK18fxFP7gfPDPUa+nb8QPTW-eQNSrYwktY02ttjXGNA87+mww@mail.gmail.com>
To: Matthew McClintock <msm-oss@mcclintock.net>
Cc: Tom Rini <trini@konsulko.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: deploy vfat partition
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
X-List-Received-Date: Mon, 26 Jun 2017 12:36:53 -0000
Content-Type: multipart/alternative; boundary="001a113bbf3c56138c0552dc3486"

--001a113bbf3c56138c0552dc3486
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 22, 2017 at 10:11 PM, Matthew McClintock <msm-oss@mcclintock.net
> wrote:

> On Wed, Jun 21, 2017 at 9:26 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > P.S.: Would really be helpful to push a PR to github too so I can merge
> it
> > easier.
>
>
> FYI: https://github.com/agherzan/meta-raspberrypi/pull/86
>
> -M
>

Looks good. Merged in master.
--
Andrei Gherzan

--001a113bbf3c56138c0552dc3486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Jun 22, 2017 at 10:11 PM, Matthew McClintock <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:msm-oss@mcclintock.net" target=3D"_blank">msm-oss@mcclintock.=
net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><span class=3D"gmail-">On Wed, Jun 21, 2017 at 9:26 AM, Andrei Gherzan =
&lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<b=
r>
</span><span class=3D"gmail-">&gt; P.S.: Would really be helpful to push a =
PR to github too so I can merge it<br>
&gt; easier.<br>
<br>
<br>
</span>FYI: <a href=3D"https://github.com/agherzan/meta-raspberrypi/pull/86=
" rel=3D"noreferrer" target=3D"_blank">https://github.com/agherzan/<wbr>met=
a-raspberrypi/pull/86</a><br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br>
-M<br>
</font></span></blockquote></div><div><br></div><div>Looks good. Merged in =
master.=C2=A0<br class=3D"gmail-Apple-interchange-newline">--</div>Andrei G=
herzan<br></div></div>

--001a113bbf3c56138c0552dc3486--
