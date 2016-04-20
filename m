Return-Path: <motic.mail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FA36E00CE6; Wed, 20 Apr 2016 12:08:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (motic.mail[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99EFFE0071E
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 12:08:41 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id os9so14723867lbb.2
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 12:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=010kwhh8IBssmE6JXe0fhTGcYL7gtwd1Zl13L/y5DZA=;
	b=o0U0IZn17lI9mqLIfDoFZ7n89UkL9TXsClbel++5xza4Q/zKb5p2FyYAxlBJIBZ/ti
	060nD2GgANYi583ze8gEAd/VnO02PSVzYWt9Vj34Jusgn8C9rUxZw6u4LsZ9n4SJq5ry
	LLwPXvgkzfA79LSqcxXgvQM8U9rEEcyaUxnVqoZfIsqZdx1boJdnvJOvAdlsXYLo5BwK
	XHDd0vQNxLs4Y2IR8iqQ9XqPPFPJVWKZauktzMWUEV8UYBWAl0t8y5naUZqkDm3eA0yp
	2zBMwu5iFGy+WJZXhLsbvEqjXwtmT5tXUSZhWhwjuwGV2gPso845uxXxWT/0TS0pOTjO
	4gWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=010kwhh8IBssmE6JXe0fhTGcYL7gtwd1Zl13L/y5DZA=;
	b=O/IoRcXTkrA2QekGCtcFBf2OR1IvvtNKJk4/+VoBASgK0KoO4uWP91peop5RoUYHde
	7Foht145ivesNpyQjyp8Go+msiOtiERdHpp2A82bFvrN6ZrCO+9uZZGiC5pTKnz4bomI
	M0lhuMSuLLint8NUT7yincH73wljRIpx6uvJefkOJHy5+iJOgMobA1T/ArrPv1HZVOlA
	AEKMf+VQ9qViqaXkD/kz3+ficEnIivgHBecrqUyEoBB5kn5KCNzamESHoVSNbMz827r6
	gkW63NeLSblJ/gq7ktpG+2ou7kVYD2KyHc3c8Vf/1oMh38o/fVOXLyS9VnFmGYzQAjMu
	g0pg==
X-Gm-Message-State: AOPr4FUK8YXn9silbjz0vO5JbCbQYCgB72EUaouRUxueVODylU46VBkfOkSfM6j7B5s3qJiGY7LG+LY5Um7vHw==
MIME-Version: 1.0
X-Received: by 10.112.54.132 with SMTP id j4mr4343804lbp.3.1461179319763; Wed,
	20 Apr 2016 12:08:39 -0700 (PDT)
Received: by 10.25.160.17 with HTTP; Wed, 20 Apr 2016 12:08:39 -0700 (PDT)
In-Reply-To: <1461173123581.97537@seescan.com>
References: <CAHvG4AC_F76W0GH=fYuv8YMa66hPDqNGv_g4fo_qwBra5muxgg@mail.gmail.com>
	<1461173123581.97537@seescan.com>
Date: Wed, 20 Apr 2016 22:08:39 +0300
Message-ID: <CAHvG4ADLMkqJ+6p=12u2WJxfkD025gi=jN5msa17LqT5ZfO2tQ@mail.gmail.com>
From: Moti Cohen <motic.mail@gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: MySQL recipe for yocto
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
X-List-Received-Date: Wed, 20 Apr 2016 19:08:47 -0000
Content-Type: multipart/alternative; boundary=001a11c3a9c84ecd240530ef52e0

--001a11c3a9c84ecd240530ef52e0
Content-Type: text/plain; charset=UTF-8

Thanks Fred,

I actually tried it and replaced the PV to a newer one, i used 5.6.29
instead of 5.1.40 which is the latest "real" MySQL supported by
openembedded. I also added the relevant SHA numbers etc.

The problem is that the recipe includes quite a few patches that are now
showing many errors when applied during the build. I guess that these
patches are related to the original 5.1.40 version and I'm not sure they
should be applied to the newer one. Unfortunetly, as I'm not an expert, it
seems like it will be a difficult task for me to clean these errors.

I realy hope there's a simpler way go about it :)



On Wed, Apr 20, 2016 at 8:25 PM, Fred Ollinger <Fred.Ollinger@seescan.com>
wrote:

> I'd start with the mysql recipe and update the source reference and try to
> build it.
>
>
> If this fails, you might need to change some other things.
>
>
> Here's a howto on writing a recipe:
>
>
>
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe
>
>
>
> ________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
> behalf of Moti Cohen <motic.mail@gmail.com>
> Sent: Wednesday, April 20, 2016 10:18 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] MySQL recipe for yocto
>
> Hi all,
> this is my 1'st post to this list so I hope I'm doing it right :)
>
> I need to add MySQL for my yocto build.
> Looking online for a recipe - i found that there is one for MySQL under:
> /meta-openembedded/meta-oe/recipes-support/mysql/..
> The thing is that instead of MySQL, the recipe reffers to MariaDB which is
> a kind of a drop-in replacemnet and since I need to have the "real" MySQL
> in my build - I cannot use it.
> looking into history log of mysql in the meta-openembedded git, it can be
> seen the the switch between MySQL and MariaDB was made at 2013 and from
> then onwards it's MariaDB.
>
>
> http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/recipes-support/mysql?id=72e23c12296fbc77193898c38426add58d0c2d71
>
> Now to the question, do you know how can I add the "real" MySQL to my
> build ?
> looking before 2013 at the meta-openembedded git i can find a recipe for
> MySQL which seems to support a "real" MySQL however, it's very old version
> (5.1) and I'm not sure how and if I can update it to one of the latest
> (e.g. MySQL 5.6).
>
> Will appriciate any feedback on this.
> Thanks in advance,
> Motico
>

--001a11c3a9c84ecd240530ef52e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Fred,<div><br></div><div>I actually tried it and re=
placed the PV to a newer one, i used 5.6.29 instead of 5.1.40 which is the =
latest &quot;real&quot; MySQL supported by openembedded. I also added the r=
elevant SHA numbers etc.</div><div>=C2=A0=C2=A0</div><div>The problem is th=
at the recipe includes quite a few patches that are now showing many errors=
 when applied during the build. I guess that these patches are related to t=
he original 5.1.40 version and I&#39;m not sure they should be applied to t=
he newer one. Unfortunetly, as I&#39;m not an expert, it seems like it will=
 be a difficult task for me to clean these errors.</div><div><br></div><div=
>I realy hope there&#39;s a simpler way go about it :)</div><div><br></div>=
<div>=C2=A0=C2=A0</div></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Wed, Apr 20, 2016 at 8:25 PM, Fred Ollinger <span dir=3D"ltr=
">&lt;<a href=3D"mailto:Fred.Ollinger@seescan.com" target=3D"_blank">Fred.O=
llinger@seescan.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>I&#39;d start with the mysql recipe and update the source reference and tr=
y to build it.<br>
<br>
<br>
If this fails, you might need to change some other things.<br>
<br>
<br>
Here&#39;s a howto on writing a recipe:<br>
<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.=
html#new-recipe-writing-a-new-recipe" rel=3D"noreferrer" target=3D"_blank">=
https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-re=
cipe-writing-a-new-recipe</a><br>
<br>
<br>
<br>
________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto=
-bounces@yoctoproject.org</a>&gt; on behalf of Moti Cohen &lt;<a href=3D"ma=
ilto:motic.mail@gmail.com">motic.mail@gmail.com</a>&gt;<br>
Sent: Wednesday, April 20, 2016 10:18 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] MySQL recipe for yocto<br>
<br>
Hi all,<br>
this is my 1&#39;st post to this list so I hope I&#39;m doing it right :)<b=
r>
<br>
I need to add MySQL for my yocto build.<br>
Looking online for a recipe - i found that there is one for MySQL under:<br=
>
/meta-openembedded/meta-oe/recipes-support/mysql/..<br>
The thing is that instead of MySQL, the recipe reffers to MariaDB which is =
a kind of a drop-in replacemnet and since I need to have the &quot;real&quo=
t; MySQL in my build - I cannot use it.<br>
looking into history log of mysql in the meta-openembedded git, it can be s=
een the the switch between MySQL and MariaDB was made at 2013 and from then=
 onwards it&#39;s MariaDB.<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/re=
cipes-support/mysql?id=3D72e23c12296fbc77193898c38426add58d0c2d71" rel=3D"n=
oreferrer" target=3D"_blank">http://cgit.openembedded.org/meta-openembedded=
/commit/meta-oe/recipes-support/mysql?id=3D72e23c12296fbc77193898c38426add5=
8d0c2d71</a><br>
<br>
Now to the question, do you know how can I add the &quot;real&quot; MySQL t=
o my build ?<br>
looking before 2013 at the meta-openembedded git i can find a recipe for My=
SQL which seems to support a &quot;real&quot; MySQL however, it&#39;s very =
old version (5.1) and I&#39;m not sure how and if I can update it to one of=
 the latest (e.g. MySQL 5.6).<br>
<br>
Will appriciate any feedback on this.<br>
Thanks in advance,<br>
Motico<br>
</blockquote></div><br></div>

--001a11c3a9c84ecd240530ef52e0--
