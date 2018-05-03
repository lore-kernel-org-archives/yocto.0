Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FD98E00AE6; Wed,  2 May 2018 20:42:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF79AE00A6A
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 20:42:24 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id g13-v6so21228617qth.8
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 20:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=h4NCudebkdPTu4cvR1anirMtmDs9Ole/zu96cWHmOJM=;
	b=ZGSe1ckWejeRJtJYehrhke65JxHldaqBN+7E6pDLh1RKGYV8kac1K6uP6F0ldZD3sH
	mSxO8uR+3fbS47s2RJFC51quLSdnXnKS/fB5nEOy6traETzYnD31mqqmWzqcB8kqaUbj
	Nemp3r8Bh5507ECUoh5GfKXxNgQVDxNGon6M8aXP1oF3hIjomJIuxuZe91QaWwB3N9OY
	YcI3DdlhxyuF5icNbNzpzcPnYSr9zXmwcSn/ZucBIRFTdpYMBPiPV4wQasQXLW7cPGVR
	ZH3jSQu8Wr63cgM/tBMChxr+MVhxOu+gvC1ys3hZPsq9ey2hf0OG8X8QgEz1Fe4pR50W
	7QZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=h4NCudebkdPTu4cvR1anirMtmDs9Ole/zu96cWHmOJM=;
	b=IVqrZEBjNaOst7XriKx1yDert9YJiRRGmY7o6DySqz7cP/dTatDgWirww4ZooCipTv
	7dpGwcPF4+9WlvAH/D4kQM/Oy5YUEYvJTlmXzUkGJMdduIpvu/Zs2xBtzjgN9ESKOXNb
	+4aTR32PVKk+c24cpdKKJT3pwbj4NxOQPHbbI84G1uq355SdZ/NW/6O/WkNYPSsoycYy
	Skng+7HsdYkIMBEMjDOJ6Tm/5mf7fDoIJ/etGEB8EIaeoH6ZxP0LuXOTC8kjRqlynJ9a
	1LwuF/tAf0QpjLdZzgI2F0uicm8ZbW/pPwGS25wfXvd362bVywCxUJqqThYKOZpoJSbL
	HTZQ==
X-Gm-Message-State: ALQs6tD85vDwgRdV6Amq98r+BrsRx3R97hXlXaE5omrcJ3nRqunw/FvK
	eaYjMWNz2ajIJUMmbpRyDIkLtUgBE7jHushmYdU=
X-Google-Smtp-Source: AB8JxZrHa5wqHzrIt9AI+7jH0o22eX78yxCYngwN+1VwQx8Gy4fiiN6ZXh+IveQjn+5uU+tTDO0CsgubrymbmXVfkYA=
X-Received: by 2002:ac8:1628:: with SMTP id
	p37-v6mr18101336qtj.122.1525318943743; 
	Wed, 02 May 2018 20:42:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Wed, 2 May 2018 20:42:23 -0700 (PDT)
In-Reply-To: <1525293137.1342848.1358729048.121DC72A@webmail.messagingengine.com>
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
	<MWHPR19MB1183A2A575D567D9DE74ED12C5800@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAGAf8Lw0FCJ6ebE3dLFmbnm00MOe-vMdi+rWa+sHcDYpZMcBBA@mail.gmail.com>
	<1525293137.1342848.1358729048.121DC72A@webmail.messagingengine.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 3 May 2018 05:42:23 +0200
Message-ID: <CAGAf8Lzuo8zFBEKM3jTi5mB1Xc6_+Z1BgprGw325+073Rt3grg@mail.gmail.com>
To: Paul Barker <paul@betafive.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Thu, 03 May 2018 03:42:25 -0000
Content-Type: multipart/alternative; boundary="000000000000cfa253056b44fdf1"

--000000000000cfa253056b44fdf1
Content-Type: text/plain; charset="UTF-8"

 > Advising people to "freeze" their host system and stop taking
security/bugfix updates pushed by their distro is a bad idea.

I already said here that I am ignorant in regards to Centos. I never used
this distro. Please, read again my comments.

In contrary, if I try to compile YOCTO Krogoth with my Fedora 27 host, it
will 100% fail.

Paul, wanna bet on it?! ;-)

Thank you,
Zoran
_______

On Wed, May 2, 2018 at 10:32 PM, Paul Barker <paul@betafive.co.uk> wrote:

> On Wed, 2 May 2018, at 21:17, Zoran Stojsavljevic wrote:
> > Hello Raymond,
> >
> > YOCTO is, per say, moving target. If you have YOCTO Krogoth, you should
> > have somehow frozen host Centos 7 release around this time. As you now
> > moving to Rocko, you need to fast-forward the whole host Centos 7 (in
> other
> > words to upgrade Centos 7) to this state (maybe to latest, it'll still
> > work, I guess).
>
> Sorry, I'd say this is wrong. Centos is a pretty stable base and I
> wouldn't expect backwards incompatible changes to be made within a stable
> release series. So if a Yocto release worked on a given Centos version (say
> Centos 7) at the time of release, it should still work now.
>
> Advising people to "freeze" their host system and stop taking
> security/bugfix updates pushed by their distro is a bad idea.
>
> --
> Paul Barker
> Beta Five Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000cfa253056b44fdf1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:1=
2.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:nor=
mal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;=
text-transform:none;white-space:normal;word-spacing:0px;background-color:rg=
b(255,255,255);text-decoration-style:initial;text-decoration-color:initial;=
float:none;display:inline">&gt; Advising people to &quot;freeze&quot; their=
 host system and stop taking security/bugfix updates pushed by their distro=
 is a bad idea.</span><br><div><span style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline"><br></span></div>=
<div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-s=
ize:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline">I already said here that I am ignorant in r=
egards to Centos. I never used this distro. Please, read again my comments.=
</span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans=
-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline"><br></span></div><div><span st=
yle=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial;float:no=
ne;display:inline">In contrary, if I try to compile YOCTO Krogoth with my F=
edora 27 host, it will 100% fail.</span></div><div><span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e"><br></span></div><div><span style=3D"color:rgb(34,34,34);font-family:ari=
al,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial;float:none;display:inline">Paul, wanna bet on it?!=
 ;-)</span></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,=
sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0=
px;background-color:rgb(255,255,255);text-decoration-style:initial;text-dec=
oration-color:initial;float:none;display:inline"><br></span></div><div><spa=
n style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8p=
x;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;=
font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(25=
5,255,255);text-decoration-style:initial;text-decoration-color:initial;floa=
t:none;display:inline">Thank you,</span></div><div><span style=3D"color:rgb=
(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;whit=
e-space:normal;word-spacing:0px;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e">Zoran</span></div><div><span style=3D"color:rgb(34,34,34);font-family:ar=
ial,sans-serif;font-size:12.8px;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;white-space:normal;word-spaci=
ng:0px;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial;float:none;display:inline">_______</span></div></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, May 2=
, 2018 at 10:32 PM, Paul Barker <span dir=3D"ltr">&lt;<a href=3D"mailto:pau=
l@betafive.co.uk" target=3D"_blank">paul@betafive.co.uk</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed, 2 May 2018, a=
t 21:17, Zoran Stojsavljevic wrote:<br>
&gt; Hello Raymond,<br>
&gt; <br>
&gt; YOCTO is, per say, moving target. If you have YOCTO Krogoth, you shoul=
d<br>
&gt; have somehow frozen host Centos 7 release around this time. As you now=
<br>
&gt; moving to Rocko, you need to fast-forward the whole host Centos 7 (in =
other<br>
&gt; words to upgrade Centos 7) to this state (maybe to latest, it&#39;ll s=
till<br>
&gt; work, I guess).<br>
<br>
</span>Sorry, I&#39;d say this is wrong. Centos is a pretty stable base and=
 I wouldn&#39;t expect backwards incompatible changes to be made within a s=
table release series. So if a Yocto release worked on a given Centos versio=
n (say Centos 7) at the time of release, it should still work now.<br>
<br>
Advising people to &quot;freeze&quot; their host system and stop taking sec=
urity/bugfix updates pushed by their distro is a bad idea.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
-- <br>
Paul Barker<br>
Beta Five Ltd<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--000000000000cfa253056b44fdf1--
