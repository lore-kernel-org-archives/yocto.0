Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 518A6E008D3; Fri, 27 Jan 2017 05:39:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.180 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f180.google.com (mail-ot0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C53BFE0082E
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 05:39:22 -0800 (PST)
Received: by mail-ot0-f180.google.com with SMTP id 32so38869779oth.3
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 05:39:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GwpNiRY/m+/V8tFI5y2/d/yE/JIYFtv/qifHMtqYV1A=;
	b=B18FB084hnv2BGfjHSoCgcd/17hcluPWs7UXb95kLvmO5YmZBNleVjyUpwkkTUmFE4
	+tJVnBc70Mz5q+opNtntXvZhQKAfPQzJ7XutPsroOVqrhbj5fpBw+3+VBNfv/MZYqlr/
	GCiMQLsksfgu1zcuFc3Z35MNmb+4VJzzluuh02JvmiQiZaiVRjTwvlHs6TPTrEzDKpt3
	T/vA+GAYcsVhvJ/PiPqMuVQA8d8MihU9h+wQePeeXjzzhzg6mmIA4YpizGtqCUmPpEXb
	9D0lJv2nDrDHOw1RjOqe5o+fLexcKUxWEziO1zN9xKQSjXhOn81gm4kwPw3EecnGXmHA
	WzkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GwpNiRY/m+/V8tFI5y2/d/yE/JIYFtv/qifHMtqYV1A=;
	b=Y2mpHYn2BmNvR0QnCMeADSvHm9Zi3RiXitQuG9m/IHgBf/uUPzWNqBatOkNuG/8zzP
	+4cPxruPn1bxgY9550F0Gqd0SLXVHaA49NHMO+GbH1N2pFXWe2amQm+46A5cMxtWv+q5
	kttUkpqtOuVJPv1Q8PcnhPLI961w8FGOF8Prf46jNPyArWYX3rN91d1PVX92cSOCgH3+
	UghECGg3rN9+Pc0omyarqIU9Wid2q2n0KncXSHzfzAf4pNYaych0waMe28aMmHiM/Rtr
	z4ujEjwjEq7YAagGwQ78FkooJG/mJT7n/vfWc99Ap1gM2YpJSE23WWM2jhiv94H9C+Nu
	Ntgw==
X-Gm-Message-State: AIkVDXKn3XVWb2MS3uzto8QHZYsuA8eYipf1kXRwg1XKpQxo6HUH1fszkkJ2hQRWGjJwCRuVD0xwB+JWbuu0pA==
X-Received: by 10.157.43.22 with SMTP id o22mr4310827otb.33.1485524361708;
	Fri, 27 Jan 2017 05:39:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Fri, 27 Jan 2017 05:39:21 -0800 (PST)
In-Reply-To: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 27 Jan 2017 14:39:21 +0100
Message-ID: <CAMjhiJg__hdSHbKNE8BO68d7WBz-QhtKNKtUGxw6wd68aF_uFQ@mail.gmail.com>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Where to find help for yocto application and and system development
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
X-List-Received-Date: Fri, 27 Jan 2017 13:39:25 -0000
Content-Type: multipart/alternative; boundary=001a1141d730e29e49054713979c

--001a1141d730e29e49054713979c
Content-Type: text/plain; charset=UTF-8

Hi Jakob,

welcome on-board.

The Yocto community expects you to re-use the available documentation and
online resources (or even offline resources like books) on Yocto or
OpenEmbedded. Then if things remains unclear you can ask questions here on
the mailing list and on IRC channels yocto.

Your question (and probably a lot of subsequent things you learn on the
way) can be answered by the documentation and existing resources.

I would recommend to read the documentation, then find an existing recipe
that uses "autotools" and another that DEPENDS on openssl.

There are a lot of resources online:

http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

https://www.yoctoproject.org/tools-resources/community/irc

Regards,

Leon.

On Fri, Jan 27, 2017 at 12:43 PM, Jakob Hasse <
jakob.hasse@smart-home-technology.ch> wrote:

> Hello,
>
> I'm beginning with Yocto.
> I would like to know where to find general help (like a forum, or mailing
> lists) for my Yocto-related technical problems.
> Right now I have problems just integrating a library into my build. Later
> I will also do system development.
>
> If this helps, a further description of my most urgent problem:
>
> I want to integrate the tr-50 library, available on github:
>
> https://github.com/inhedron/libtr50
>
> It is managed via autotools.
> I built a new project subdirectory in my custom layer for the lib.
> I built a basic recipe (with some tool) which, in principle should somehow
> recognize the autotools and build the project then. I changed the SCR_URI
> to the local .tar.gz file. But when I build, it comes down to this:
> make: *** No rule to make target 'install'.  Stop.
> I don't know if and which parameters I should change in the recipe.
> Another problem is that the lib needs openssl-dev. I can't find how to
> include openssl-dev into the Yocto build.
>
> Looking forward for your answers, best regards,
> Jakob
>
> --
> Jakob Hasse
> Software Developement
>
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
>
> Smart Home Technology GmbH
> www.smart-home-technology.ch
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1141d730e29e49054713979c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jakob,<br><br></div><div>welcome on-board.<br></di=
v><div><br></div><div>The Yocto community expects you to re-use the availab=
le documentation and online resources (or even offline resources like books=
) on Yocto or OpenEmbedded. Then if things remains unclear you can ask ques=
tions here on the mailing list and on IRC channels yocto.<br><br></div><div=
>Your question (and probably a lot of subsequent things you learn on the wa=
y) can be answered by the documentation and existing resources.<br></div><d=
iv><br></div><div>I would recommend to read the documentation, then find an=
 existing recipe that uses &quot;autotools&quot; and another that DEPENDS o=
n openssl.<br></div><div><br></div><div>There are a lot of resources online=
:<br></div><div><br><a href=3D"http://www.yoctoproject.org/docs/1.6.1/dev-m=
anual/dev-manual.html#new-recipe-writing-a-new-recipe">http://www.yoctoproj=
ect.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-reci=
pe</a><br><br><a href=3D"https://www.yoctoproject.org/tools-resources/commu=
nity/irc">https://www.yoctoproject.org/tools-resources/community/irc</a> <b=
r><div></div><br></div><div>Regards,<br><br></div><div>Leon.<br></div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Jan 27, =
2017 at 12:43 PM, Jakob Hasse <span dir=3D"ltr">&lt;<a href=3D"mailto:jakob=
.hasse@smart-home-technology.ch" target=3D"_blank">jakob.hasse@smart-home-t=
echnology.ch</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,=
<br>
<br>
I&#39;m beginning with Yocto.<br>
I would like to know where to find general help (like a forum, or mailing l=
ists) for my Yocto-related technical problems.<br>
Right now I have problems just integrating a library into my build. Later I=
 will also do system development.<br>
<br>
If this helps, a further description of my most urgent problem:<br>
<br>
I want to integrate the tr-50 library, available on github:<br>
<br>
<a href=3D"https://github.com/inhedron/libtr50" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/inhedron/li<wbr>btr50</a><br>
<br>
It is managed via autotools.<br>
I built a new project subdirectory in my custom layer for the lib.<br>
I built a basic recipe (with some tool) which, in principle should somehow =
recognize the autotools and build the project then. I changed the SCR_URI t=
o the local .tar.gz file. But when I build, it comes down to this:<br>
make: *** No rule to make target &#39;install&#39;.=C2=A0 Stop.<br>
I don&#39;t know if and which parameters I should change in the recipe.<br>
Another problem is that the lib needs openssl-dev. I can&#39;t find how to =
include openssl-dev into the Yocto build.<br>
<br>
Looking forward for your answers, best regards,<br>
Jakob<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
Jakob Hasse<br>
Software Developement<br>
<br>
E: <a href=3D"mailto:jakob.hasse@smart-home-technology.ch" target=3D"_blank=
">jakob.hasse@smart-home-technol<wbr>ogy.ch</a><br>
T: <a href=3D"tel:%2B41%2044%20552%2002%2066" value=3D"+41445520266" target=
=3D"_blank">+41 44 552 02 66</a><br>
<br>
Smart Home Technology GmbH<br>
<a href=3D"http://www.smart-home-technology.ch" rel=3D"noreferrer" target=
=3D"_blank">www.smart-home-technology.ch</a><br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a1141d730e29e49054713979c--
