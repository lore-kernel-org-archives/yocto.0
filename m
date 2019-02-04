Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8D37E00A0C; Mon,  4 Feb 2019 11:20:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (chuckwolber[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com
	[209.85.221.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E8B4E006B3
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 11:20:40 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id v70so240417vkv.7
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2019 11:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8OyXk5MAhsmpZWwSTwJ57mCQkuD6TJToai8ECTrUaJs=;
	b=RxnI6R3u8sRYuT8zqR94AvNfnIujNZ2Kayi0hH7prQL9EPLhmF2X5N47bVE0cGK8iX
	ZloMMmyEtmwC2gEApBMBCFPM/VyjHOlBgj2MiIZWLi3lpfS2zKefW2QCwbR3RxXSNnYt
	xMCyjqeOjzmHuUsN3QKB0xR4ZqCh2kCzfR6Jijtx7t39Xm/eIqJIsm1D2Cf8zPyJwpBG
	DrLnxxcixyBp9H54MAWbsA8Xyjmji3EywOEy7xSmQFMMCZmI2FoDExbXACU07dA8xXTX
	orco27aqgGU5TvUbSSDN+avUMJT5hN6dhgSFbv0/ZTCX05Gab+HxEqikPyFIc9IfUa/a
	qH2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8OyXk5MAhsmpZWwSTwJ57mCQkuD6TJToai8ECTrUaJs=;
	b=QD7ttLMTiTXZVekK0n/XfK76/UbOXTSFKBdlcfAB92GzFEnSGGtXPHIVULK1ufZuOn
	ZbZj5cYaNzr8BVaAxfWMmsONwReQWIxNaeqBUT1yiNmvYTmgyo645RtDoE/zbVB2GNdZ
	LmpZoXGT/sZgNFS7RdPq43DC52PpSyqmL8E04OklZvtIWRK3fRZFaiJvg4E4cPz7lJGW
	2bQVlrwoozjIcaA3SqiBCGcPmR+ood/x94HrFLo2/QmK9mqDldTpq1LNdU5B+/xA0xe+
	ITNiWfZNEIlBTuMy6m45w3YWtfhbsG8VvtFbUIxPG5DK7GD2CfhV7tkkBZXJ17BZFyMn
	LOEw==
X-Gm-Message-State: AHQUAubdQCHoBJpeOKQlBZwsqVzEBE1f9TYI/GCIKrZYhWhCxk8MHiHe
	5jaJWBRktRIrAKHqqd/CVHjdy2dKACj1fBCQ7I4=
X-Google-Smtp-Source: AHgI3IbT0DXTLNgVN2MoEqyAiJ6xesnsZ00pZt4TOF2D6wsHLO0t1kFMJhBGwdNft7EfwbJGOJBGABzkTEXCDGC6370=
X-Received: by 2002:a1f:5cc7:: with SMTP id q190mr377400vkb.91.1549308039421; 
	Mon, 04 Feb 2019 11:20:39 -0800 (PST)
MIME-Version: 1.0
References: <CAAOxJQRzZqYhV6m9Oj6WYTCGexfTKxD3k76XFF3=Lk-JeYrtEg@mail.gmail.com>
In-Reply-To: <CAAOxJQRzZqYhV6m9Oj6WYTCGexfTKxD3k76XFF3=Lk-JeYrtEg@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Mon, 4 Feb 2019 11:20:28 -0800
Message-ID: <CAB=6tBTXw_962pZohvoQyAibU7mb8jR+UBUHejYkMvQJ86ZwUA@mail.gmail.com>
To: Igor Miranda <igorcmiranda3110@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: XSLT-CONFIG ERROR
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
X-List-Received-Date: Mon, 04 Feb 2019 19:20:40 -0000
Content-Type: multipart/alternative; boundary="00000000000056630f058116638d"

--00000000000056630f058116638d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You have to refactor the Icecast bitbake recipe to use pkg-config instead
of xslt-config.

This patch might give you some ideas:
meta/recipes-devtools/swig/swig/0001-configure-use-pkg
-config-for-pcre-detection.patch

I patched modsecurity to fix the same issue. It mostly works, but their
build fails in certain configurations. Feel free to check my patch if you
dare, but I am not an autotools expert, and probably did something wrong.

https://github.com/SpiderLabs/ModSecurity/pull/2014/files

..Ch:W..

On Mon, Feb 4, 2019 at 10:35 AM Igor Miranda <igorcmiranda3110@gmail.com>
wrote:

> Hey guys, I'm trying to compile the Icecast, but I'm getting the
> xslt-config error, which says that I need to change to pkg-config, but I
> dont know how to do this. Should I do a patch? Or its more easy to change
> something in the Yocto to enable the use of the xslt-config? If I need to
> use a patch, can someone explain to me how do I do something or can someo=
ne
> send me a patch that works. Please!!!! I dont have more time, I need to
> give this project, working, as soon as possible. HELP ME!
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--=20
=E2=80=9CI would challenge anyone here to think of a question upon which we=
 once
had a scientific answer, however inadequate, but for which now the best
answer is a religious one."  -Sam Harris

--00000000000056630f058116638d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">You have to refactor the Icecast bitbake =
recipe to use pkg-config instead of xslt-config.=C2=A0<div><br></div><div>T=
his patch might give you some ideas: meta/recipes-devtools/swig/swig/0001-c=
onfigure-use-<span class=3D"gmail-m_5372398913267843520gmail-il">pkg</span>=
-config-for-pcre-detection.patch</div><div><br></div><div>I patched modsecu=
rity to fix the same issue. It mostly works, but their build fails in certa=
in configurations. Feel free to check my patch if you dare, but I am not an=
 autotools expert, and probably did something wrong.</div><div><br></div><d=
iv><a href=3D"https://github.com/SpiderLabs/ModSecurity/pull/2014/files">ht=
tps://github.com/SpiderLabs/ModSecurity/pull/2014/files</a><br></div><div><=
br></div><div>..Ch:W..</div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 4, 2019 at 10:35 AM Igor Mira=
nda &lt;<a href=3D"mailto:igorcmiranda3110@gmail.com" target=3D"_blank">igo=
rcmiranda3110@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hey guys, I&#39;m trying to compile=
 the Icecast, but I&#39;m getting the xslt-config error, which says that I =
need to change to pkg-config, but I dont know how to do this. Should I do a=
 patch? Or its more easy to change something in the Yocto to enable the use=
 of the xslt-config? If I need to use a patch, can someone explain to me ho=
w do I do something or can someone send me a patch that works. Please!!!! I=
 dont have more time, I need to give this project, working, as soon as poss=
ible. HELP ME!</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_5372398913267843520gmail-m_3089941411936680404gmail_signa=
ture"><div dir=3D"ltr">=E2=80=9CI would challenge anyone here to think of a=
 question upon which we once had a scientific=C2=A0answer, however inadequa=
te, but for which now the best answer is a religious one.&quot;=C2=A0 -Sam =
Harris</div></div>

--00000000000056630f058116638d--
