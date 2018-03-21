Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBB92E00903; Wed, 21 Mar 2018 07:27:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8970DE005A9
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 07:27:34 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id d13-v6so7141982itf.0
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 07:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L6e1cErhySpWg2MVffcsBJWpi9IPEMBzBoXKW2Y95us=;
	b=mP0bOGu686rcvhzL0J6qjLQwQ/AEwtsfa/v0llnA70pSP1S+7th4u4/wkKBwvKo807
	5gKhJBUhFb8sFglezCHPgNz/AKShCg6tBFGjMn14OhaRRlBxwkx120ZE5juEFzYAPQRb
	Smlk3e16y/IQ2mHPj9DTB6jbiYY2aISLReXmpK5qFd/P00EaNXrNYVDrVwRNtq5PMIqw
	pwOqEVMQxMEXvSWoduNRm9Q5LoO2FlPc5oTpQ4EBuZDLsBD6B5O69Oum4LNhQ8HMicou
	NG86lwt+oTd/tRAExB8TvAtIrl01bNiD3Yh36XpWO3DniloV1ymPwJIGjbEWqAtPetjH
	Eo3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L6e1cErhySpWg2MVffcsBJWpi9IPEMBzBoXKW2Y95us=;
	b=IAcyVb3vvJyl4u4LPJnWvdyAorCHdn+YvA5nSK5TgrPE5Hb76V/A5U+hbW7OhziPcl
	FwGCGjM99NiLMUWCpbOrWYG1IV6kyIgH8EdfsJ7Tm5RB0gfENzkj3KWxtbrZRjWAteJ0
	Jzv47oAxRzmjNHzxWfB2t5A9cdRjSS4ahzQcaJ9WlqWWDNQf3RqSj/kBbfF8YQ/pSwTt
	4uKEOyy6K8yssd+2vO1hvr4MSr/u4qqWxHYjZU5wCf3JDzTQveBoypHjX1tob0WRjOX8
	yWKyt1bPmB40LNaCRPgBIl+p4VyQnvu3I7VVTZynIb7jWcZsBoxGf5F7/yz0uAigSGKn
	RNUw==
X-Gm-Message-State: AElRT7FBB0+FM5xoo8buaSlHT4ObsZ8A6yCLtTjdsjU5sPekdRN5BjHt
	J7z2PTx9HVXr8NqC4BPfrlIfhXlCUAphgw2dG4PtBQ==
X-Google-Smtp-Source: AIpwx49+WLJ0RDQfNdIG/rvvuoB7WuGJD+4LVk2eC6F6bziSP4nUrF2NhyTJggADjeoGBZ8H9/Sh+lUaZHTwG1lPdJ8=
X-Received: by 2002:a24:4c0e:: with SMTP id
	a14-v6mr4349078itb.34.1521642453639; 
	Wed, 21 Mar 2018 07:27:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Wed, 21 Mar 2018 07:27:12 -0700 (PDT)
In-Reply-To: <CAOT_U5a42QeAz_ySbPPt5ESdny+MamCPCvb_psJSTVazDKVHrA@mail.gmail.com>
References: <CAOT_U5bWa90d5Ly_JRrGC_Smz=z0xvO6R_XGXJp_eDkEbL7pTw@mail.gmail.com>
	<CA+chaQeS1Za4_n2zpbis98xzN2fXHvBqDOqzKXBqqa97s5=w8Q@mail.gmail.com>
	<CAOT_U5a42QeAz_ySbPPt5ESdny+MamCPCvb_psJSTVazDKVHrA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Mar 2018 14:27:12 +0000
Message-ID: <CAJTo0LZwrp+CyM3YS=YsDKLhJ-9Qr3qScN3kz=_axYmrHyJB_Q@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Does PACKAGECONFIG only apply to autotools recipes
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
X-List-Received-Date: Wed, 21 Mar 2018 14:27:35 -0000
Content-Type: multipart/alternative; boundary="000000000000ecd74d0567ecfdf0"

--000000000000ecd74d0567ecfdf0
Content-Type: text/plain; charset="UTF-8"

On 21 March 2018 at 13:34, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Thanks. :)
> I guess it's safe to say that it has a confined usage to recipes that
> require
> configuration before the compilation process.
>
> Like a source written in c using autotools as the build system for which
> you
> pass configure flags and would potentially need to pass library paths...
> As opposed to a python recipe that doesn't need to be build.
>

Just to be that person who says "well, actually"...

The piglit recipe uses PACKAGECONFIG and that is pure Python.  You can
still have a configure phase with Python code.

Any recipe is welcome to use the PACKAGECONFIG variable, it just has to
respect PACKAGECONFIG_CONFARGS which apart from a few recipes with entirely
home-grown build systems is done in the classes.

Ross

--000000000000ecd74d0567ecfdf0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 21 March 2018 at 13:34, Alan Martinovic <span dir=3D"lt=
r">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank">alan.=
martinovic@senic.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Th=
anks. :)<div>I guess it&#39;s safe to say that it has a confined usage to r=
ecipes that require=C2=A0</div><div>configuration before the compilation pr=
ocess.</div><div><br></div><div>Like a source written in c using autotools =
as the build system for which you=C2=A0</div><div>pass configure flags and =
would potentially need to pass library paths...</div><div>As opposed to a p=
ython recipe that doesn&#39;t need to be build.</div></div></blockquote><di=
v><br></div><div>Just to be that person who says &quot;well, actually&quot;=
...</div><div><br></div><div>The piglit recipe uses PACKAGECONFIG and that =
is pure Python.=C2=A0 You can still have a configure phase with Python code=
.</div><div><br></div><div>Any recipe is welcome to use the PACKAGECONFIG v=
ariable, it just has to respect PACKAGECONFIG_CONFARGS which apart from a f=
ew recipes with entirely home-grown build systems is done in the classes.</=
div><div><br></div><div>Ross</div></div></div></div>

--000000000000ecd74d0567ecfdf0--
