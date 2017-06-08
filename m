Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD1D2E00BEF; Thu,  8 Jun 2017 05:27:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48E37E00BD2
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 05:27:32 -0700 (PDT)
Received: by mail-qt0-f172.google.com with SMTP id u12so38986622qth.0
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 05:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2TLjnN3LcyidWgT2jXVAvoyHgK0ESlgXzTYBA/DgVc0=;
	b=u8boFNFCLsGEccttB4EgMUhEhCKO2WTcLysCxKR+VwmS+IUvGLKAGPbvoE/i+uX/dd
	HpZV8HF/Kn4SsbjZrs5MzTo9zLSspQp3eucPWAI+MXhdsadQFj5xhjdh1hJpAMAlhlo7
	83nUJtM083LkWKXivfSxfYK75guVpUAKnEE5yIiC1/sOqssxnEoeQzHs+GQugjivvMnF
	oV+yjgIe6atTKmS6WWUMF+qfKPxTTC5J7o9BNOSs3Ktn2qwuGWEV252qtEuU9Y2fukdh
	KS6HKRaaZpXd/bItGubnl6k7kUbJVea7ntTqbjUCTiUgDDLqZ4VWwv3C4uU+hYLGuhb+
	N7pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2TLjnN3LcyidWgT2jXVAvoyHgK0ESlgXzTYBA/DgVc0=;
	b=GYqu3bW3S6X0WBb6LdIwMMOFbx/yojUYzA8goXAlNw6OFkqaplfGL9NQRwjI3FFzBP
	EBsl2gH/Po6mgzwtdhYj02IhL5Y43YgYY2rNDUfIi1nQQCAOlB24eFXKEKm4BgsUkjIa
	y54xWpYHskknI2+i8V+Yw3SRwUb+aTeqFPCAY3gj7p/Juad2KpE2bH8D5yJ7DDovVuFC
	M95SMQe5ABnSbeiWJown4vQ+5wZE75kbCXdEfrzNopqdYJuWE/am+gjcWOU9Lf24wBNY
	vDCxBcwObu+z83ABOloA0M2oaOjekntWE25+cBYmfONmNKkh9Jgb68qWyoJFEjupLhO8
	Pykw==
X-Gm-Message-State: AODbwcD/qvssTHbgVI3cTmookVOM19sRqk+Se4AU0mk3XxWi9ByzNPc+
	0Th5zdsp/WgGoGtwO2ddGsLB6W4ncNGx
X-Received: by 10.200.45.231 with SMTP id q36mr15173706qta.177.1496924852179; 
	Thu, 08 Jun 2017 05:27:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Thu, 8 Jun 2017 05:27:11 -0700 (PDT)
In-Reply-To: <CAHiDW_FLrA=m0fL_erHO2+QdGf4ZEQfh=uwhFHqEeh9XtkUpAQ@mail.gmail.com>
References: <27cfc5c8-8741-a147-5c76-60d85e53cd9d@mlbassoc.com>
	<CAHiDW_FLrA=m0fL_erHO2+QdGf4ZEQfh=uwhFHqEeh9XtkUpAQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Jun 2017 13:27:11 +0100
Message-ID: <CAJTo0LZJqKTkwgV6RqjXBe84vUquLJAck1-d3P3Vu2eS_5c7Gg@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Changing terminal font in sato
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
X-List-Received-Date: Thu, 08 Jun 2017 12:27:34 -0000
Content-Type: multipart/alternative; boundary="001a1143caba11e89d055171faec"

--001a1143caba11e89d055171faec
Content-Type: text/plain; charset="UTF-8"

On 8 June 2017 at 13:05, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> matchbox-terminal is a _very_ thin app based on VteTerminal widget:
> Modifying Vte font is a single API call but that is not exposed in the app
> (as it has no configuration at all). In the short term your options are to
> use another more serious terminal or send patches for mb-terminal...
>

There's another alternative: I believe Vte defaults to "Mono", which is an
alias.  Configure fontconfig to pick a different font for the alias.

Ross

--001a1143caba11e89d055171faec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 June 2017 at 13:05, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">mat=
chbox-terminal is a _very_ thin app based on VteTerminal widget: Modifying =
Vte font is a single API call but that is not exposed in the app (as it has=
 no configuration at all). In the short term your options are to use anothe=
r more serious terminal or send patches for mb-terminal...<span class=3D"HO=
EnZb"><font color=3D"#888888"><br></font></span></div></blockquote></div><b=
r>There&#39;s another alternative: I believe Vte defaults to &quot;Mono&quo=
t;, which is an alias.=C2=A0 Configure fontconfig to pick a different font =
for the alias.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--001a1143caba11e89d055171faec--
