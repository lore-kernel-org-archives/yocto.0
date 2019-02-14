Return-Path: <chuckwolber@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48083E00C71; Thu, 14 Feb 2019 12:35:27 -0800 (PST)
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
	*      [209.85.217.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
	[209.85.217.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66F61E00B43
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 12:35:18 -0800 (PST)
Received: by mail-vs1-f53.google.com with SMTP id u13so3518390vsk.0
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 12:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3NpCqruGQcKBinyiqyyrDtYaZPtWGQlKltz2Vmf7G9Y=;
	b=Gb/fEskwUtUYL3vjgOmYQNs88Ou+IfDDtieq57vvqYPmolpaXymjVI9o5YlN+v8XXJ
	uQUnxgXIYFIpm1WGfoaN5+K7tUJtT8po63RMm5jWRvt9isZ46lk+X7F9GjFPfthceodC
	KvrpARzTOAQGSrR2yc63pLM8xLaAqMC81J9wJIUuFK9hZ2ZMVhEIRkVFqf+VUyOAGozm
	wV2KU/sQCyA2aS0o3KdI5a8OLS4SN5QzH6e/fF0wKw23m3hXshBopJZwO4maG2OU3i9U
	H33qfTLwkN8EA05jvyeDSNGx09keTOKAx9fvfk9FNzPAuU25NDKy2fWs8s4lrQ0vDoZp
	5RRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3NpCqruGQcKBinyiqyyrDtYaZPtWGQlKltz2Vmf7G9Y=;
	b=rRUJVTxCoJkcBL4yuqnb0G/xLDNBDg1VZHlbloH49gyD60kiDRGL9r+iutV5fRq95o
	eYCe/SKWKpkhDEqXedcWO5y5toz/Wjtobbri2NtnBY8tA5Lundo4NC9Ork2Rxp68QO3V
	ly4HdCnKSTYgyH2xWo3oeLXpl1LmnOceuoBeXTMbvF5E64o8Bl1RF07juxr/1RUoYWuf
	HP0MpZxRM85LWgsYidsVvtie0LXuobPWxIPz3N9FnmcHK8fgGKCJ9H3SB65R1Msq5ez2
	9wPF716pvr6i52v2GjG8ahIbZS5fBVDrIjUOJ13iJLhXgzg4d9NM3DRwZ0a2I9FYyuaM
	O1sg==
X-Gm-Message-State: AHQUAua0tff4D3/tW3x3qvGNeQOVVnEcn6ThNRktfXTthuoWrciX81Vm
	xoZfLgkfGEYVqCBmrpBZwzw+aJ3RI44qDGX9R4w=
X-Google-Smtp-Source: AHgI3IZXww1IN/oNxVEvcwLGWUTXQ2ztZWcEZz47zNqnlYxNucsgBR6iVu/MrAYY/HqIW+5oqDnIVJM+qu4QCgRRmsk=
X-Received: by 2002:a67:f4d3:: with SMTP id s19mr3106306vsn.134.1550176517533; 
	Thu, 14 Feb 2019 12:35:17 -0800 (PST)
MIME-Version: 1.0
References: <CAA3Hs=ffrGTgWXBkzi0FQejoaFaWp+LSqgr=Q8_ZMnJLpi-LHw@mail.gmail.com>
In-Reply-To: <CAA3Hs=ffrGTgWXBkzi0FQejoaFaWp+LSqgr=Q8_ZMnJLpi-LHw@mail.gmail.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 14 Feb 2019 12:35:06 -0800
Message-ID: <CAB=6tBQ_dM=wv9ML_capz3qSp7Zn-1s71A3DtCQbM6PmEoUCMA@mail.gmail.com>
To: Leonardo Jose Duarte MendesJunior <leodmendesjr@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: icecast
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
X-List-Received-Date: Thu, 14 Feb 2019 20:35:27 -0000
Content-Type: multipart/alternative; boundary="000000000000aab8290581e098b2"

--000000000000aab8290581e098b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You have to refactor xslt-config out of the autotools macros and use
pkg-config instead.

This recipe is an example:

meta/recipes-devtools/swig/swig/0001-configure-use-pkg-config
-for-pcre-detection.patch

..Ch:W..

On Thu, Feb 14, 2019 at 05:57 Leonardo Jose Duarte MendesJunior <
leodmendesjr@gmail.com> wrote:

> I'm trying to compile the package icecast. The package icecast is old. Th=
e
> package depends on xslt.
> When I compile this package, I had the issue with xslt.
> How to use pkgconfig if the own source code use him ?
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

--000000000000aab8290581e098b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">You have to refactor xslt-config out of the autotool=
s macros and use pkg-config instead.</div></div><div dir=3D"auto"><br></div=
><div dir=3D"auto">This recipe is an example:</div><div dir=3D"auto"><br></=
div><div dir=3D"auto"><span style=3D"color:rgb(49,49,49);word-spacing:1px;b=
ackground-color:rgb(255,255,255)">meta/recipes-devtools/swig/</span><span s=
tyle=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,2=
55)">swig/0001-configure-use-</span><span class=3D"m_100338410287903658gmai=
l-m_5372398913267843520gmail-il" style=3D"font-size:1rem;color:rgb(49,49,49=
);word-spacing:1px"><span class=3D"term-highlighted" style=3D"background-co=
lor:rgba(251,246,167,0.498039)">pkg</span></span><span style=3D"color:rgb(4=
9,49,49);word-spacing:1px;background-color:rgb(255,255,255)">-</span><span =
class=3D"term-highlighted" style=3D"background-color:rgba(251,246,167,0.498=
039);color:rgb(49,49,49);word-spacing:1px">config</span><span style=3D"colo=
r:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,255)">-for-pc=
re-detection.</span><span style=3D"color:rgb(49,49,49);word-spacing:1px;bac=
kground-color:rgb(255,255,255)">patch</span><br></div><div dir=3D"auto"><sp=
an style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,2=
55,255)"><br></span></div><div dir=3D"auto"><span style=3D"color:rgb(49,49,=
49);word-spacing:1px;background-color:rgb(255,255,255)">..Ch:W..</span></di=
v><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Thu, Feb 14, 2019 at 05:57 Leonardo Jose Duarte MendesJunior &lt;<a hre=
f=3D"mailto:leodmendesjr@gmail.com">leodmendesjr@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"m_457=
5968845671489079gmail-gE m_4575968845671489079gmail-iv m_457596884567148907=
9gmail-gt" style=3D"padding:20px 0px 0px;font-size:12.8px;font-family:Robot=
o,RobotoDraft,Helvetica,Arial,sans-serif"><table cellpadding=3D"0" class=3D=
"m_4575968845671489079gmail-cf m_4575968845671489079gmail-gJ" style=3D"bord=
er-collapse:collapse;margin-top:0px;width:auto;font-size:0.875rem;letter-sp=
acing:0.2px;display:block"><tbody style=3D"display:block"></tbody></table><=
/div><div id=3D"m_4575968845671489079gmail-:4q" style=3D"font-family:Roboto=
,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium"><div class=3D"m_4=
575968845671489079gmail-qQVYZb"></div><div class=3D"m_4575968845671489079gm=
ail-utdU2e"></div><div class=3D"m_4575968845671489079gmail-btm"></div></div=
><div class=3D"m_4575968845671489079gmail-" style=3D"font-family:Roboto,Rob=
otoDraft,Helvetica,Arial,sans-serif;font-size:medium"><div class=3D"m_45759=
68845671489079gmail-aHl"></div><div id=3D"m_4575968845671489079gmail-:5c"><=
/div><div id=3D"m_4575968845671489079gmail-:4d" class=3D"m_4575968845671489=
079gmail-ii m_4575968845671489079gmail-gt" style=3D"font-size:12.8px;direct=
ion:ltr;margin:8px 0px 0px;padding:0px"><div id=3D"m_4575968845671489079gma=
il-:4e" class=3D"m_4575968845671489079gmail-a3s m_4575968845671489079gmail-=
aXjCH" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;font-stretch:normal;font-size:small;line-height:1.5;font-fa=
mily:Arial,Helvetica,sans-serif"><div dir=3D"ltr">I&#39;m trying to compile=
 the package icecast. The package icecast is old. The package depends on xs=
lt.<div>When I compile this package, I had the issue with xslt.</div><div>H=
ow to use pkgconfig if the own source code use him ?</div></div></div></div=
></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E2=80=9CI would challe=
nge anyone here to think of a question upon which we once had a scientific=
=C2=A0answer, however inadequate, but for which now the best answer is a re=
ligious one.&quot;=C2=A0 -Sam Harris</div></div>

--000000000000aab8290581e098b2--
