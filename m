Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70B6BE006CD; Tue,  4 Apr 2017 14:07:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FFC2E0052B
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 14:07:22 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id i34so150378235qtc.0
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 14:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8a2B3KwvZBycE9URIPVokzfvHl2tcd8BDL7un44gHy8=;
	b=rujfqONBFz/s9zyiZsNPBy607PXLkBv9nt3X27aiaOVobqEZ02c/GleExVAvnU7ln3
	6A1P5+dy8dw6Ki+WBSDl1GN91qre18YqfBYtQLAH1vvf390vnFjYlez2xOa950PtmzA8
	CGkNngxEMCmj6IBECgA1cmEk8w6PGQ/WPfK+8RcFqZMYwb/7Zertt3UO+SFAwS1Cnok+
	b1QDokbNKMv5KvIS4esUm62kncZKXiVRucmVCMUwLHHDbmNBJjG5cwvgWIAyj6XhjVI6
	ular7UDjeaNBCatzxwto1h0cnT9UwhNvzEy7bpfWxmMhNs/jcjxrL6NAwx8Tys2UvWqI
	RN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8a2B3KwvZBycE9URIPVokzfvHl2tcd8BDL7un44gHy8=;
	b=j29U9Jr/F02BIuvJdq2npq6WHjSt6H5pPXhE6tyKQMNa0cN854hkHhZpB9fLEj8q+z
	JT4d/DlIWIEyhSn5ZwzFV7FyijoLGNEgNzRKxkT3zG0I396RWsIUQuxssEYyLhGpAV/s
	HWPu42OrFHr+t7kXCEVHEFQ0Rb1/eXJ+HpDUG+eO7ZJ8OMAYK07/1x4NSacLk+3Fjp42
	N1ccXmQsAvjvUT8xU0epleu7/8DKvdKH/KoEENXyKOYJvnm9taR4RlBCWBFg2lIg0mWB
	dpfFA4lnIralR5IUzN6NSyIbs9PZSkeWUXgPFIooV1ZaMMJmEpoc8NsDE8PViN2ff8tX
	mdxg==
X-Gm-Message-State: AFeK/H3rol0vSvAMipfIH+a30zCFpOG422aYFcSCNgAnmyYuR1B3WSV3tGlej4m3TANLqo1te1D3m9JYYHPRWOwe
X-Received: by 10.237.42.164 with SMTP id t33mr27604306qtd.105.1491340041949; 
	Tue, 04 Apr 2017 14:07:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Tue, 4 Apr 2017 14:07:01 -0700 (PDT)
In-Reply-To: <CAJgxT39zyBNb5VBaOQN6tZt73YiSAJ5qbimj+yaPV9za52qpBw@mail.gmail.com>
References: <CAJgxT39zyBNb5VBaOQN6tZt73YiSAJ5qbimj+yaPV9za52qpBw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 4 Apr 2017 22:07:01 +0100
Message-ID: <CAJTo0LaJMwHwzdRw=tYsNnNQJMQ3Yvt_qUgHDoQa=5SnYkBCMQ@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enforcing version constraints on dependencies at build-time
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
X-List-Received-Date: Tue, 04 Apr 2017 21:07:26 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe22711fa0054c5da904

--94eb2c0cfe22711fa0054c5da904
Content-Type: text/plain; charset=UTF-8

On 4 April 2017 at 21:26, Matt Hoosier <matt.hoosier@gmail.com> wrote:

> Is there any way to escape that isolation and express version boundaries?
>

You're right, the recipe isolation means you can't do this from inside a
recipe's contet.

I'd like to see bitbake actually verify that the version constraints are
satisfied, and fail if they are not.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=8745 is a bug talking
about this.  Patches welcome...

Ross

--94eb2c0cfe22711fa0054c5da904
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 April 2017 at 21:26, Matt Hoosier <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color=
:rgb(204,204,204);padding-left:1ex"><div>Is there any way to escape that is=
olation and express version boundaries?</div><span class=3D"gmail-HOEnZb"><=
font color=3D"#888888"><div></div></font></span></blockquote></div><div cla=
ss=3D"gmail_extra"><br></div>You&#39;re right, the recipe isolation means y=
ou can&#39;t do this from inside a recipe&#39;s contet.</div><div class=3D"=
gmail_extra"><br>I&#39;d like to see bitbake actually verify that the versi=
on constraints are satisfied, and fail if they are not.</div><div class=3D"=
gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"https://bugzil=
la.yoctoproject.org/show_bug.cgi?id=3D8745">https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D8745</a> is a bug talking about this.=C2=A0 Patches we=
lcome...<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">Ross</div></div>

--94eb2c0cfe22711fa0054c5da904--
