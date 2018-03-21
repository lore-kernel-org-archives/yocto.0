Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4F59E00C50; Wed, 21 Mar 2018 06:34:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9900E00547
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 06:34:40 -0700 (PDT)
Received: by mail-lf0-f46.google.com with SMTP id e5-v6so7884743lfb.7
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 06:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=trbNTD+V3bXeYb6sxEKHT4cBv+ATSy0HntY+fkViyTk=;
	b=tdiykL0MzylmVwegtp1AYwPCYMgc8VmJdqERGZ7ewb/WLlW/hM+vKdYBVJdDn+K/Fq
	VAbrAzE3M20z80aBDJmNNokWS0VpLctvcadcJsiqNDRbVXyPRGDpbEo91dW/kE4hzdUK
	Uy2P1mDKdxiUmUOE81ivShDA6R8gF3HumBFi8dGGkjFsXDeZyR+xBL01hLSOs+h7kkpD
	nbbWwcmh7kP8tHgv3d3wJ6PYizXwZI0si1m2B72ElbYHnmm3mcvPZKCqG6v6Cz+44Sdk
	0cCw5rAN6Kl9LEr8nIiGEl5bmhMzED5q5P446nI4nu1Oc9xdyDAFyUxYhwzKKt5Yriy9
	/0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=trbNTD+V3bXeYb6sxEKHT4cBv+ATSy0HntY+fkViyTk=;
	b=U4gjZbu8pOFKJ6RLx/go3G/LJMwCZBw24HdHdcuk4HDYolRkNJd5d5eRod3JXjukdC
	8xJZ+6nNkN0EYwiCBorzrkog+CBGAlZJz8z+B4/aeYAl+QiACFo69f3MIeXZxkNYKJnM
	dGlGnuDHt0okxy1WuHYldVAZqInr9jWpdSZkgVVH/lQXO+LiBna9UTPOOQkXBmLsWKZK
	0E8USq+smm8HQdgXSEoZv7n7FMz5Cj3/AZtVBoh6SbOiOiXQxnf6x8G8cbFw2+vVx7xe
	bOyd5SPz82s/Rw6Tq8+UIWZv3Cfe44FI8hkdLGStpBrgyAZdSM+QtmJISb9CuJuJQlux
	grKQ==
X-Gm-Message-State: AElRT7Gaa/ygFWocPjZQcgsM+oVZD8Kb4Kl4KDtnyNED8OO2d9koUbkL
	EDQTMEKunxSS7rGnm5ATBC/JaB30EonVekQ76iePOA==
X-Google-Smtp-Source: AG47ELsaxjuX8v3KBpU46NJvd/M0dCBn4EmjPJLJsQaE80iV528ND4IN2AUT9YWIV5G75eggOEdJfJ+VeXfFv0D2cmo=
X-Received: by 2002:a19:1586:: with SMTP id 6-v6mr14693854lfv.17.1521639279987;
	Wed, 21 Mar 2018 06:34:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:1f0f:0:0:0:0:0 with HTTP; Wed, 21 Mar 2018 06:34:39
	-0700 (PDT)
In-Reply-To: <CA+chaQeS1Za4_n2zpbis98xzN2fXHvBqDOqzKXBqqa97s5=w8Q@mail.gmail.com>
References: <CAOT_U5bWa90d5Ly_JRrGC_Smz=z0xvO6R_XGXJp_eDkEbL7pTw@mail.gmail.com>
	<CA+chaQeS1Za4_n2zpbis98xzN2fXHvBqDOqzKXBqqa97s5=w8Q@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Wed, 21 Mar 2018 14:34:39 +0100
Message-ID: <CAOT_U5a42QeAz_ySbPPt5ESdny+MamCPCvb_psJSTVazDKVHrA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
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
X-List-Received-Date: Wed, 21 Mar 2018 13:34:43 -0000
Content-Type: multipart/alternative; boundary="000000000000c2aa950567ec409d"

--000000000000c2aa950567ec409d
Content-Type: text/plain; charset="UTF-8"

Thanks. :)
I guess it's safe to say that it has a confined usage to recipes that
require
configuration before the compilation process.

Like a source written in c using autotools as the build system for which
you
pass configure flags and would potentially need to pass library paths...
As opposed to a python recipe that doesn't need to be build.



On Thu, Mar 15, 2018 at 6:31 PM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> It's applied in PACKAGECONFIG_CONFARGS variable and various bbclasses (and
> also various recipes) use this variable where needed, see git grep:
>
> meta/classes/base.bbclass:        appendVar('PACKAGECONFIG_CONFARGS',
> extraconf)
>
> meta/classes/autotools.bbclass:EXTRA_OECONF_append = "
> ${PACKAGECONFIG_CONFARGS}"
> meta/classes/cmake.bbclass:EXTRA_OECMAKE_append = "
> ${PACKAGECONFIG_CONFARGS}"
> meta/classes/meson.bbclass:EXTRA_OEMESON += "${PACKAGECONFIG_CONFARGS}"
> meta/classes/waf.bbclass:EXTRA_OECONF_append = "
> ${PACKAGECONFIG_CONFARGS}"
>
> meta/recipes-graphics/glew/glew_2.1.0.bb:EXTRA_OEMAKE =
> "${PACKAGECONFIG_CONFARGS} \
>
> It used to be included in EXTRA_OECONF by default, before:
> http://git.openembedded.org/openembedded-core/commit/?id=
> c98fb5f5129e71829ffab4449b3d28082bc95ab4
>
> On Thu, Mar 15, 2018 at 6:22 PM, Alan Martinovic <
> alan.martinovic@senic.com> wrote:
>
>> Hi,
>> is it true that that PACKAGECONFIG is only used
>>  for recipes that inherit autoconf?
>>
>> Was trying to understand what they do in a recipe:
>>     https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipe
>> s-connectivity/bluez5/bluez5.inc
>> and didn't really get what this was about until found
>> the autoconf reference mentioned in a book.
>>
>> So "features" as referenced in the mega manual:
>>     https://www.yoctoproject.org/docs/2.4/mega-manual/mega-manua
>> l.html#var-PACKAGECONFIG
>> are the flags that will end up being passed to ./configure?
>>
>> However later in the recipe it's used to populate other variables
>>
>>     NOINST_TOOLS = " \
>>         ${@bb.utils.contains('PACKAGECONFIG', 'readline',
>> '${NOINST_TOOLS_READLINE}', '', d)} \
>>         ${@bb.utils.contains('PACKAGECONFIG', 'testing',
>> '${NOINST_TOOLS_TESTING}', '', d)} \
>>         ${@bb.utils.contains('PACKAGECONFIG', 'tools',
>> '${NOINST_TOOLS_BT}', '', d)} \
>>     "
>>
>> Is the original assumption true (that it's an autoconf only thing)?
>> Is there a way to test that by grepping the code (didn't found
>> autoconf references when greping for PACKAGECONFIG in
>> bitbake -e bluez5)?
>>
>> Be Well :)
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--000000000000c2aa950567ec409d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks. :)<div>I guess it&#39;s safe to say that it has a =
confined usage to recipes that require=C2=A0</div><div>configuration before=
 the compilation process.</div><div><br></div><div>Like a source written in=
 c using autotools as the build system for which you=C2=A0</div><div>pass c=
onfigure flags and would potentially need to pass library paths...</div><di=
v>As opposed to a python recipe that doesn&#39;t need to be build.</div><di=
v><br></div><div><br></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Thu, Mar 15, 2018 at 6:31 PM, Martin Jansa <span dir=3D=
"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">marti=
n.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr">It&#39;s applied in PACKAGECONFIG_CONFARGS variable and var=
ious bbclasses (and also various recipes) use this variable where needed, s=
ee git grep:<div><br></div><div><div style=3D"color:rgb(34,34,34);font-fami=
ly:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;white-space:normal;word-s=
pacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial">meta/classes/base.bbclass:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 appendVar(&#39;PACKAGECONFIG_<wbr>CONFARGS&#39;, extraconf)</div=
><br class=3D"m_3643086589516180910gmail-Apple-interchange-newline">meta/cl=
asses/autotools.<wbr>bbclass:EXTRA_OECONF_append =3D &quot; ${PACKAGECONFIG=
_CONFARGS}&quot;<br></div><div><div>meta/classes/cmake.bbclass:<wbr>EXTRA_O=
ECMAKE_append =3D &quot; ${PACKAGECONFIG_CONFARGS}&quot;<br></div><div>meta=
/classes/meson.bbclass:<wbr>EXTRA_OEMESON +=3D &quot;${PACKAGECONFIG_CONFAR=
GS}&quot;</div><div>meta/classes/waf.bbclass:<wbr>EXTRA_OECONF_append =3D &=
quot; ${PACKAGECONFIG_CONFARGS}&quot;</div></div><div><br></div><div><div>m=
eta/recipes-graphics/glew/<wbr>glew_2.1.0.bb:EXTRA_OEMAKE =3D &quot;${PACKA=
GECONFIG_CONFARGS} \</div></div><div><br></div><div>It used to be included =
in EXTRA_OECONF by default, before:</div><div><a href=3D"http://git.openemb=
edded.org/openembedded-core/commit/?id=3Dc98fb5f5129e71829ffab4449b3d28082b=
c95ab4" target=3D"_blank">http://git.openembedded.org/<wbr>openembedded-cor=
e/commit/?id=3D<wbr>c98fb5f5129e71829ffab4449b3d28<wbr>082bc95ab4</a><br></=
div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><d=
iv class=3D"h5">On Thu, Mar 15, 2018 at 6:22 PM, Alan Martinovic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:alan.martinovic@senic.com" target=3D"_blank"=
>alan.martinovic@senic.com</a>&gt;</span> wrote:<br></div></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div class=3D"h5">Hi,<br>
is it true that that PACKAGECONFIG is only used<br>
=C2=A0for recipes that inherit autoconf?<br>
<br>
Was trying to understand what they do in a recipe:<br>
=C2=A0 =C2=A0 <a href=3D"https://git.yoctoproject.org/cgit.cgi/poky/plain/m=
eta/recipes-connectivity/bluez5/bluez5.inc" rel=3D"noreferrer" target=3D"_b=
lank">https://git.yoctoproject.org/c<wbr>git.cgi/poky/plain/meta/recipe<wbr=
>s-connectivity/bluez5/bluez5.<wbr>inc</a><br>
and didn&#39;t really get what this was about until found<br>
the autoconf reference mentioned in a book.<br>
<br>
So &quot;features&quot; as referenced in the mega manual:<br>
=C2=A0 =C2=A0 <a href=3D"https://www.yoctoproject.org/docs/2.4/mega-manual/=
mega-manual.html#var-PACKAGECONFIG" rel=3D"noreferrer" target=3D"_blank">ht=
tps://www.yoctoproject.org/d<wbr>ocs/2.4/mega-manual/mega-manua<wbr>l.html#=
var-PACKAGECONFIG</a><br>
are the flags that will end up being passed to ./configure?<br>
<br>
However later in the recipe it&#39;s used to populate other variables<br>
<br>
=C2=A0 =C2=A0 NOINST_TOOLS =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&#39;PACKAGEC<wbr>ONFIG&#3=
9;, &#39;readline&#39;,<br>
&#39;${NOINST_TOOLS_READLINE}&#39;, &#39;&#39;, d)} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&#39;PACKAGEC<wbr>ONFIG&#3=
9;, &#39;testing&#39;,<br>
&#39;${NOINST_TOOLS_TESTING}&#39;, &#39;&#39;, d)} \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&#39;PACKAGEC<wbr>ONFIG&#3=
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
</div></div><span class=3D"HOEnZb"><font color=3D"#888888"><span class=3D"m=
_3643086589516180910HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--000000000000c2aa950567ec409d--
