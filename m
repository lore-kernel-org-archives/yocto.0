Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B76DE009DB; Thu, 15 Mar 2018 10:31:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F1DEE00708
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 10:31:38 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id t6so12079942wmt.5
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 10:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F8KFBgmV2JbVXMSBdivcrLzDK9QsixoqW6QAwCkvARI=;
	b=Efr4ppZ8PvkaqAmsDTlA3Oh8nkGG/HDHx61CxP9ZLbp06l/bUH70Y5rfDL0S9KZVte
	uL7AZlx0R/cFABFOjEBFghKsCZMSB9tEMGPydETTrBHWztS+8EDsU8v9xejbNWj0zxId
	/ywRdp8sjbVSVP0oFs0X8IKBQkuuIluNlefde9WKet6qxYkFzg0fi6p6T3hBaufWWQGH
	cehE9u28iH3ribKNAIwsWeut6r24/2RBWsGlJe+NmonsM+jpxdzUkgbJ2PnZ/78Uoiph
	Q98BY5pjl9dtm5Egx3WVCUxv72lYvoREfOVHh7omd/m/1dT2NOBUbQfHq6XJtMmJt1tb
	ptHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F8KFBgmV2JbVXMSBdivcrLzDK9QsixoqW6QAwCkvARI=;
	b=JkdG8B/6+dVWlEnXdnZShc+VnXcjDOl1axY6zXvauExkxiD0Sr/QTpim2ndPD51+ui
	FDzwuTCgpTp0Fq/RSWJm+uvca5iZIBpBqI342+SK4RGlsLpoz5JjZ5CURdKKGa9SqqhO
	dcOrhYsRbSipBjK7S1nUQpMr/UKUas7g7Z1kHxCB5XJWgRriTGaPsrpbnacUBT1NUhao
	0/UqMMCNSY2lg/TvjSGDUpP1P6Ux7XpYk5DZSkJ67Eo0i9U6rxh6muMoM/0cO32Vv9KH
	9tL02uO2z9SGu1dLMmZ4Y9vZ8HXRhaB9ug4VqqorK4eorue9rPjdmncOoqQveF+Jl36s
	vvow==
X-Gm-Message-State: AElRT7H/ihvJUSWAA4/I9mcgdrUB67JZYDQ8rG1QigywJ3QFqC2NoSHZ
	JV/W+KuWW5COcymQVSdrU0OfV+Qqyx7AVpLpoPA=
X-Google-Smtp-Source: AG47ELusPeYkB03QI0Fo75kIaay5OHmw3YBiU1Uv6vxQhR2NHXISNFBOkCqiw8MxPPi2YdGwqggQk0gYoo2C48h2sLc=
X-Received: by 10.28.22.208 with SMTP id 199mr5782757wmw.79.1521135097454;
	Thu, 15 Mar 2018 10:31:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.30.136 with HTTP; Thu, 15 Mar 2018 10:31:36 -0700 (PDT)
In-Reply-To: <CAOT_U5bWa90d5Ly_JRrGC_Smz=z0xvO6R_XGXJp_eDkEbL7pTw@mail.gmail.com>
References: <CAOT_U5bWa90d5Ly_JRrGC_Smz=z0xvO6R_XGXJp_eDkEbL7pTw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 15 Mar 2018 18:31:36 +0100
Message-ID: <CA+chaQeS1Za4_n2zpbis98xzN2fXHvBqDOqzKXBqqa97s5=w8Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 15 Mar 2018 17:31:39 -0000
Content-Type: multipart/alternative; boundary="001a1145af1423a6ea056776dd05"

--001a1145af1423a6ea056776dd05
Content-Type: text/plain; charset="UTF-8"

It's applied in PACKAGECONFIG_CONFARGS variable and various bbclasses (and
also various recipes) use this variable where needed, see git grep:

meta/classes/base.bbclass:        appendVar('PACKAGECONFIG_CONFARGS',
extraconf)

meta/classes/autotools.bbclass:EXTRA_OECONF_append = "
${PACKAGECONFIG_CONFARGS}"
meta/classes/cmake.bbclass:EXTRA_OECMAKE_append = "
${PACKAGECONFIG_CONFARGS}"
meta/classes/meson.bbclass:EXTRA_OEMESON += "${PACKAGECONFIG_CONFARGS}"
meta/classes/waf.bbclass:EXTRA_OECONF_append = " ${PACKAGECONFIG_CONFARGS}"

meta/recipes-graphics/glew/glew_2.1.0.bb:EXTRA_OEMAKE =
"${PACKAGECONFIG_CONFARGS} \

It used to be included in EXTRA_OECONF by default, before:
http://git.openembedded.org/openembedded-core/commit/?id=c98fb5f5129e71829ffab4449b3d28082bc95ab4

On Thu, Mar 15, 2018 at 6:22 PM, Alan Martinovic <alan.martinovic@senic.com>
wrote:

> Hi,
> is it true that that PACKAGECONFIG is only used
>  for recipes that inherit autoconf?
>
> Was trying to understand what they do in a recipe:
>     https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/
> recipes-connectivity/bluez5/bluez5.inc
> and didn't really get what this was about until found
> the autoconf reference mentioned in a book.
>
> So "features" as referenced in the mega manual:
>     https://www.yoctoproject.org/docs/2.4/mega-manual/mega-
> manual.html#var-PACKAGECONFIG
> are the flags that will end up being passed to ./configure?
>
> However later in the recipe it's used to populate other variables
>
>     NOINST_TOOLS = " \
>         ${@bb.utils.contains('PACKAGECONFIG', 'readline',
> '${NOINST_TOOLS_READLINE}', '', d)} \
>         ${@bb.utils.contains('PACKAGECONFIG', 'testing',
> '${NOINST_TOOLS_TESTING}', '', d)} \
>         ${@bb.utils.contains('PACKAGECONFIG', 'tools',
> '${NOINST_TOOLS_BT}', '', d)} \
>     "
>
> Is the original assumption true (that it's an autoconf only thing)?
> Is there a way to test that by grepping the code (didn't found
> autoconf references when greping for PACKAGECONFIG in
> bitbake -e bluez5)?
>
> Be Well :)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1145af1423a6ea056776dd05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s applied in PACKAGECONFIG_CONFARGS variable and va=
rious bbclasses (and also various recipes) use this variable where needed, =
see git grep:<div><br></div><div><div style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial">meta/classes/base.bbclass:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 appendVar(&#39;PACKAGECONFIG_CONFARGS&#39;, extraconf)</div><br =
class=3D"gmail-Apple-interchange-newline">meta/classes/autotools.bbclass:EX=
TRA_OECONF_append =3D &quot; ${PACKAGECONFIG_CONFARGS}&quot;<br></div><div>=
<div>meta/classes/cmake.bbclass:EXTRA_OECMAKE_append =3D &quot; ${PACKAGECO=
NFIG_CONFARGS}&quot;<br></div><div>meta/classes/meson.bbclass:EXTRA_OEMESON=
 +=3D &quot;${PACKAGECONFIG_CONFARGS}&quot;</div><div>meta/classes/waf.bbcl=
ass:EXTRA_OECONF_append =3D &quot; ${PACKAGECONFIG_CONFARGS}&quot;</div></d=
iv><div><br></div><div><div>meta/recipes-graphics/glew/glew_2.1.0.bb:EXTRA_=
OEMAKE =3D &quot;${PACKAGECONFIG_CONFARGS} \</div></div><div><br></div><div=
>It used to be included in EXTRA_OECONF by default, before:</div><div><a hr=
ef=3D"http://git.openembedded.org/openembedded-core/commit/?id=3Dc98fb5f512=
9e71829ffab4449b3d28082bc95ab4">http://git.openembedded.org/openembedded-co=
re/commit/?id=3Dc98fb5f5129e71829ffab4449b3d28082bc95ab4</a><br></div></div=
><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Mar 15, =
2018 at 6:22 PM, Alan Martinovic <span dir=3D"ltr">&lt;<a href=3D"mailto:al=
an.martinovic@senic.com" target=3D"_blank">alan.martinovic@senic.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
is it true that that PACKAGECONFIG is only used<br>
=C2=A0for recipes that inherit autoconf?<br>
<br>
Was trying to understand what they do in a recipe:<br>
=C2=A0 =C2=A0 <a href=3D"https://git.yoctoproject.org/cgit.cgi/poky/plain/m=
eta/recipes-connectivity/bluez5/bluez5.inc" rel=3D"noreferrer" target=3D"_b=
lank">https://git.yoctoproject.org/<wbr>cgit.cgi/poky/plain/meta/<wbr>recip=
es-connectivity/bluez5/<wbr>bluez5.inc</a><br>
and didn&#39;t really get what this was about until found<br>
the autoconf reference mentioned in a book.<br>
<br>
So &quot;features&quot; as referenced in the mega manual:<br>
=C2=A0 =C2=A0 <a href=3D"https://www.yoctoproject.org/docs/2.4/mega-manual/=
mega-manual.html#var-PACKAGECONFIG" rel=3D"noreferrer" target=3D"_blank">ht=
tps://www.yoctoproject.org/<wbr>docs/2.4/mega-manual/mega-<wbr>manual.html#=
var-PACKAGECONFIG</a><br>
are the flags that will end up being passed to ./configure?<br>
<br>
However later in the recipe it&#39;s used to populate other variables<br>
<br>
=C2=A0 =C2=A0 NOINST_TOOLS =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&#39;<wbr>PACKAGECONFIG&#3=
9;, &#39;readline&#39;,<br>
&#39;${NOINST_TOOLS_READLINE}&#39;, &#39;&#39;, d)} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&#39;<wbr>PACKAGECONFIG&#3=
9;, &#39;testing&#39;,<br>
&#39;${NOINST_TOOLS_TESTING}&#39;, &#39;&#39;, d)} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&#39;<wbr>PACKAGECONFIG&#3=
9;, &#39;tools&#39;,<br>
&#39;${NOINST_TOOLS_BT}&#39;, &#39;&#39;, d)} \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
Is the original assumption true (that it&#39;s an autoconf only thing)?<br>
Is there a way to test that by grepping the code (didn&#39;t found<br>
autoconf references when greping for PACKAGECONFIG in<br>
bitbake -e bluez5)?<br>
<br>
Be Well :)<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a1145af1423a6ea056776dd05--
