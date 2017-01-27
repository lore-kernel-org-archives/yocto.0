Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88B92E003DB; Fri, 27 Jan 2017 10:17:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57427E0030B
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 10:16:56 -0800 (PST)
Received: by mail-io0-f177.google.com with SMTP id j18so66709491ioe.2
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 10:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F6uzTngkFK1PtBorrv11rp/cDG24oc9n+YhZUKQ+a6M=;
	b=Qi9goT/8T7V2VBbY0TIW61xctZTubkjYB7+0G79/zX08JzBGVrh+1YvhzWSli4UUyL
	83VCHMJ/BGXtmM2VSKPdrxim3LeYpf5G9p/w7j4trJBc1QYHrS1kYid0TaEoAxZVLJNc
	3M3S2e9D9XaBYOw4tOWW9Vk+sy3M4nWviZouZxy9ddImBRxFur5TX+Pnkas044cjTY3u
	+HmrnBspYfdycVLko9kfVFrXEKtpiwuT629S+0JzutVcZonbcP74EqJxTjv8C/PKMlxV
	ZcA6TBowxpNFlcGie5VnoStzNLYJQTRtEfbhabdXZ68i6mzito3wbEhC7iXfA1Tnb6/b
	1yKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F6uzTngkFK1PtBorrv11rp/cDG24oc9n+YhZUKQ+a6M=;
	b=FamuD1t49Epl4jichHZcWtLExD8iT7D3Mc8L0BdtLrj0m5ZyRQqkb4j1+C+vPGarAA
	PRphnhPlyab2p9ErZ/Hh3uhS6CYYcGbqLDUOXsrb68+oLLu2C5Dv8dNQEQDvnn1prB9u
	Hx48Bqhn+A0l4s/NL4P8Gy8t5WkCVv2RPt+lccy2S8j2HDocpUu8PsT3p6tKQanSY0ij
	r2ULJudABS3RZ94aumqr68xVcrFv8tJJxUL2ayKuLnR9onFeROOa6lDg8DnA4tc1nayH
	fPvcwzYOo5SbrQjkq314hKguohH4yubbQQbihVyddVOOANdYfMF3U8ru0VrHqMSOsGcD
	2UqQ==
X-Gm-Message-State: AIkVDXKTZH9kzDEYuoidSksusxwS9LYio/EhqFohypUXcT2FPjBXtvwcwX2kcLLuDAPCCnFRybHIFrBHA5jhVK7q
X-Received: by 10.107.180.8 with SMTP id d8mr8565590iof.101.1485541015905;
	Fri, 27 Jan 2017 10:16:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.133.226 with HTTP; Fri, 27 Jan 2017 10:16:55 -0800 (PST)
In-Reply-To: <4f301547-ca13-69dd-438b-47987c3dd9fe@smart-home-technology.ch>
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
	<CAMjhiJg__hdSHbKNE8BO68d7WBz-QhtKNKtUGxw6wd68aF_uFQ@mail.gmail.com>
	<4f301547-ca13-69dd-438b-47987c3dd9fe@smart-home-technology.ch>
From: Rick Altherr <raltherr@google.com>
Date: Fri, 27 Jan 2017 10:16:55 -0800
Message-ID: <CAPLgG=msOLC7HGUaz3qZSqi_mBn7f9cqng=ZcBZs6B9a6griNQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 27 Jan 2017 18:17:00 -0000
Content-Type: multipart/alternative; boundary=94eb2c05a6568ddcad05471778b7

--94eb2c05a6568ddcad05471778b7
Content-Type: text/plain; charset=UTF-8

I hear you asking a lot of reasonable questions that probably seem trivial
to most of us who have been using Yocto for a while.  We tend to forget
what it was like the first time.

I can't tell what reading and research you've done so far.  Have you read
both the BitBake User Manual
<http://www.yoctoproject.org/docs/2.2/bitbake-user-manual/bitbake-user-manual.html>
 and Yocto Project Reference Manual
<http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html>.  Those
explain many vital details such as: what many of the variables, like
SRC_URI, are used for, the syntax rules for recipes, directory structure of
the metadata, and more.  It's a lot to read and some sections are confusing
but it's a huge resource that will answer many questions.

As others have mentioned, IRC and this mailing list are both excellent
places to ask questions.  I personally get asked a lot of questions that
require some research and more lengthy explanations.  I've started writing
my responses in an advice column form on my blog at
http://www.kc8apf.net/category/dear-brother-yocto/.  (Note to Yocto
experts: I'm certain to get things wrong in my explanations.  Please send
in corrections as well.  I'm happy to include them.).

Rick

On Fri, Jan 27, 2017 at 6:51 AM, Jakob Hasse <
jakob.hasse@smart-home-technology.ch> wrote:

> Hello Leon,
>
> Thank you for the answer!
>
> I read the documentation, it doesn't really give me more than general
> hints what to try (or maybe I read at the wrong place). I also read in
> "Embedded Linux Project Using Yocto Project Cookbook". I know that bitbake
> should use autotools somehow. I set up my directories exactly like the
> other projects which work without any issues. The other project, however,
> are simple executables.
>
> What is unclear to me:
> To what shall SCR_URI point? The git repo? Downloaded .tar.gz file? The
> source dir copied into the project directory besided the recipe)? I tried
> all these ways already, each bringing up a different error, basically.
>
> Do I need to change do_install() or does the makefile handles it? If I
> interpret the documentation and the book correctly, I don't need to do
> anything more in the recipe...
>
> When I want to fetch from git, it complains about the SRCREF not being
> set. So I tried to set it to the most recent commit of the repo in the
> recipe file, but it gave another error. I also tried to "append" it somehow
> to the git URI which didn't work either.
>
>
> Note that I need to include the development version of openssl, not
> openssl itself (on Ubuntu host you do something like apt install
> openssl-dev).
>
> The recipe is appended, if it helps:
>
> # Recipe created by recipetool
> # This is the basis of a recipe and may need further editing in order to
> be fully functional.
> # (Feel free to remove these comments when editing.)
> #
> # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best
> guesses - it is
> # your responsibility to verify that the values are complete and correct.
> LICENSE = "Unknown"
> LIC_FILES_CHKSUM = "file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d"
> SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"
> # No information for SRC_URI yet (only an external source tree was
> specified)
> SRC_URI = "/usr/local/dey-2.0/sources/meta-training/recipes-
> examples/tr-50/tr-50-0.1/"
> #SRC_URI = "git://https://github.com/inhedron/libtr50.git;rev=
> aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
> #SRC_URI = "file:///home/jakob/Downloads/libtr50-0.1.0.tar.gz"
> #SRCREF = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
>
> DEPENDS = "openssl "
> # NOTE: if this software is not capable of being built in a separate build
> directory
> # from the source, you should replace autotools with autotools-brokensep
> in the
> # inherit line
> inherit autotools
>
> # Specify any options you want to pass to the configure script using
> EXTRA_OECONF:
> EXTRA_OECONF = " --with-examples"
>
> #do_install(){
> #    eo_runmake install DESTDIR=${D} PREFIX=${D}
> #}
>
> Thanks in advance for any answers!
>
> All the best,
> Jakob
>
>
> On 27.01.2017 14:39, Leon Woestenberg wrote:
>
> Hi Jakob,
>
> welcome on-board.
>
> The Yocto community expects you to re-use the available documentation and
> online resources (or even offline resources like books) on Yocto or
> OpenEmbedded. Then if things remains unclear you can ask questions here on
> the mailing list and on IRC channels yocto.
>
> Your question (and probably a lot of subsequent things you learn on the
> way) can be answered by the documentation and existing resources.
>
> I would recommend to read the documentation, then find an existing recipe
> that uses "autotools" and another that DEPENDS on openssl.
>
> There are a lot of resources online:
>
> http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-
> manual.html#new-recipe-writing-a-new-recipe
>
> https://www.yoctoproject.org/tools-resources/community/irc
>
> Regards,
>
> Leon.
>
> On Fri, Jan 27, 2017 at 12:43 PM, Jakob Hasse <jakob.hasse@smart-home-
> technology.ch> wrote:
>
>> Hello,
>>
>> I'm beginning with Yocto.
>> I would like to know where to find general help (like a forum, or mailing
>> lists) for my Yocto-related technical problems.
>> Right now I have problems just integrating a library into my build. Later
>> I will also do system development.
>>
>> If this helps, a further description of my most urgent problem:
>>
>> I want to integrate the tr-50 library, available on github:
>>
>> https://github.com/inhedron/libtr50
>>
>> It is managed via autotools.
>> I built a new project subdirectory in my custom layer for the lib.
>> I built a basic recipe (with some tool) which, in principle should
>> somehow recognize the autotools and build the project then. I changed the
>> SCR_URI to the local .tar.gz file. But when I build, it comes down to this:
>> make: *** No rule to make target 'install'.  Stop.
>> I don't know if and which parameters I should change in the recipe.
>> Another problem is that the lib needs openssl-dev. I can't find how to
>> include openssl-dev into the Yocto build.
>>
>> Looking forward for your answers, best regards,
>> Jakob
>>
>> --
>> Jakob Hasse
>> Software Developement
>>
>> E: jakob.hasse@smart-home-technology.ch
>> T: +41 44 552 02 66
>>
>> Smart Home Technology GmbH
>> www.smart-home-technology.ch
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
> --
> Jakob Hasse
> Software Developement
>
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66 <+41%2044%20552%2002%2066>
>
> Smart Home Technology GmbHwww.smart-home-technology.ch
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c05a6568ddcad05471778b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I hear you asking a lot of reasonable questions that proba=
bly seem trivial to most of us who have been using Yocto for a while.=C2=A0=
 We tend to forget what it was like the first time.<div><br></div><div>I ca=
n&#39;t tell what reading and research you&#39;ve done so far.=C2=A0 Have y=
ou read both the=C2=A0<a href=3D"http://www.yoctoproject.org/docs/2.2/bitba=
ke-user-manual/bitbake-user-manual.html">BitBake User Manual</a>=C2=A0and=
=C2=A0<a href=3D"http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual=
.html">Yocto Project Reference Manual</a>.=C2=A0 Those explain many vital d=
etails such as: what many of the variables, like SRC_URI, are used for, the=
 syntax rules for recipes, directory structure of the metadata, and more.=
=C2=A0 It&#39;s a lot to read and some sections are confusing but it&#39;s =
a huge resource that will answer many questions.</div><div><br></div><div>A=
s others have mentioned, IRC and this mailing list are both excellent place=
s to ask questions.=C2=A0 I personally get asked a lot of questions that re=
quire some research and more lengthy explanations.=C2=A0 I&#39;ve started w=
riting my responses in an advice column form on my blog at=C2=A0<a href=3D"=
http://www.kc8apf.net/category/dear-brother-yocto/">http://www.kc8apf.net/c=
ategory/dear-brother-yocto/</a>. =C2=A0(Note to Yocto experts: I&#39;m cert=
ain to get things wrong in my explanations.=C2=A0 Please send in correction=
s as well.=C2=A0 I&#39;m happy to include them.).</div><div><br></div><div>=
Rick</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">O=
n Fri, Jan 27, 2017 at 6:51 AM, Jakob Hasse <span dir=3D"ltr">&lt;<a href=
=3D"mailto:jakob.hasse@smart-home-technology.ch" target=3D"_blank">jakob.ha=
sse@smart-home-technology.ch</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    Hello Leon,<br>
    <br>
    Thank you for the answer!<br>
    <br>
    I read the documentation, it doesn&#39;t really give me more than
    general hints what to try (or maybe I read at the wrong place). I
    also read in=C2=A0 &quot;Embedded Linux Project Using Yocto Project Coo=
kbook&quot;.
    I know that bitbake should use autotools somehow. I set up my
    directories exactly like the other projects which work without any
    issues. The other project, however, are simple executables.<br>
    <br>
    What is unclear to me:<br>
    To what shall SCR_URI point? The git repo? Downloaded .tar.gz file?
    The source dir copied into the project directory besided the
    recipe)? I tried all these ways already, each bringing up a
    different error, basically.<br>
    <br>
    Do I need to change do_install() or does the makefile handles it? If
    I interpret the documentation and the book correctly, I don&#39;t need
    to do anything more in the recipe...<br>
    <br>
    When I want to fetch from git, it complains about the SRCREF not
    being set. So I tried to set it to the most recent commit of the
    repo in the recipe file, but it gave another error. I also tried to
    &quot;append&quot; it somehow to the git URI which didn&#39;t work eith=
er.<br>
    <br>
    <br>
    Note that I need to include the development version of openssl, not
    openssl itself (on Ubuntu host you do something like apt install
    openssl-dev).<br>
    <br>
    The recipe is appended, if it helps:<br>
    <br>
    # Recipe created by recipetool<br>
    # This is the basis of a recipe and may need further editing in
    order to be fully functional.<br>
    # (Feel free to remove these comments when editing.)<br>
    #<br>
    # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are
    best guesses - it is<br>
    # your responsibility to verify that the values are complete and
    correct.<br>
    LICENSE =3D &quot;Unknown&quot;<br>
    LIC_FILES_CHKSUM =3D
    <a class=3D"m_-2190670712990016913moz-txt-link-rfc2396E">&quot;file://C=
OPYING;md5=3D<wbr>c8ee358fdf91d887aa014c8712e8c2<wbr>2d&quot;</a><br>
    SRC_URI[md5sum] =3D &quot;<wbr>da7315f9bc22ff4c24a1cef404b4f3<wbr>a8&qu=
ot;<br>
    # No information for SRC_URI yet (only an external source tree was
    specified)<br>
    SRC_URI =3D
&quot;/usr/local/dey-2.0/sources/<wbr>meta-training/recipes-<wbr>examples/t=
r-50/tr-50-0.1/&quot;<br>
    #SRC_URI =3D
&quot;git://<a class=3D"m_-2190670712990016913moz-txt-link-freetext" href=
=3D"https://github.com/inhedron/libtr50.git;rev=3Daedc45c4e9a9a9a3aa301616a=
d03f07b903d9a81" target=3D"_blank">https://github.com/<wbr>inhedron/libtr50=
.git;rev=3D<wbr>aedc45c4e9a9a9a3aa301616ad03f0<wbr>7b903d9a81</a>&quot;<br>
    #SRC_URI =3D <a class=3D"m_-2190670712990016913moz-txt-link-rfc2396E">&=
quot;file:///home/jakob/Downloads/<wbr>libtr50-0.1.0.tar.gz&quot;</a><br>
    #SRCREF =3D &quot;<wbr>aedc45c4e9a9a9a3aa301616ad03f0<wbr>7b903d9a81&qu=
ot;<br>
    <br>
    DEPENDS =3D &quot;openssl &quot;<br>
    # NOTE: if this software is not capable of being built in a separate
    build directory<br>
    # from the source, you should replace autotools with
    autotools-brokensep in the<br>
    # inherit line<br>
    inherit autotools<br>
    <br>
    # Specify any options you want to pass to the configure script using
    EXTRA_OECONF:<br>
    EXTRA_OECONF =3D &quot; --with-examples&quot;<br>
    <br>
    #do_install(){<br>
    #=C2=A0=C2=A0=C2=A0 eo_runmake install DESTDIR=3D${D} PREFIX=3D${D}<br>
    #}<br>
    <br>
    Thanks in advance for any answers!<br>
    <br>
    All the best,<br>
    Jakob<div><div class=3D"h5"><br>
    <br>
    <div class=3D"m_-2190670712990016913moz-cite-prefix">On 27.01.2017 14:3=
9, Leon Woestenberg
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Hi Jakob,<br>
          <br>
        </div>
        <div>welcome on-board.<br>
        </div>
        <div><br>
        </div>
        <div>The Yocto community expects you to re-use the available
          documentation and online resources (or even offline resources
          like books) on Yocto or OpenEmbedded. Then if things remains
          unclear you can ask questions here on the mailing list and on
          IRC channels yocto.<br>
          <br>
        </div>
        <div>Your question (and probably a lot of subsequent things you
          learn on the way) can be answered by the documentation and
          existing resources.<br>
        </div>
        <div><br>
        </div>
        <div>I would recommend to read the documentation, then find an
          existing recipe that uses &quot;autotools&quot; and another that =
DEPENDS
          on openssl.<br>
        </div>
        <div><br>
        </div>
        <div>There are a lot of resources online:<br>
        </div>
        <div><br>
          <a href=3D"http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-=
manual.html#new-recipe-writing-a-new-recipe" target=3D"_blank">http://www.y=
octoproject.org/<wbr>docs/1.6.1/dev-manual/dev-<wbr>manual.html#new-recipe-=
<wbr>writing-a-new-recipe</a><br>
          <br>
          <a href=3D"https://www.yoctoproject.org/tools-resources/community=
/irc" target=3D"_blank">https://www.yoctoproject.org/<wbr>tools-resources/c=
ommunity/irc</a>
          <br>
          <br>
        </div>
        <div>Regards,<br>
          <br>
        </div>
        <div>Leon.<br>
        </div>
      </div>
      <div class=3D"gmail_extra"><br>
        <div class=3D"gmail_quote">On Fri, Jan 27, 2017 at 12:43 PM, Jakob
          Hasse <span dir=3D"ltr">&lt;<a href=3D"mailto:jakob.hasse@smart-h=
ome-technology.ch" target=3D"_blank">jakob.hasse@smart-home-<wbr>technology=
.ch</a>&gt;</span>
          wrote:<br>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Hello,<br>
            <br>
            I&#39;m beginning with Yocto.<br>
            I would like to know where to find general help (like a
            forum, or mailing lists) for my Yocto-related technical
            problems.<br>
            Right now I have problems just integrating a library into my
            build. Later I will also do system development.<br>
            <br>
            If this helps, a further description of my most urgent
            problem:<br>
            <br>
            I want to integrate the tr-50 library, available on github:<br>
            <br>
            <a href=3D"https://github.com/inhedron/libtr50" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/inhedron/li<wbr>btr50</a><br>
            <br>
            It is managed via autotools.<br>
            I built a new project subdirectory in my custom layer for
            the lib.<br>
            I built a basic recipe (with some tool) which, in principle
            should somehow recognize the autotools and build the project
            then. I changed the SCR_URI to the local .tar.gz file. But
            when I build, it comes down to this:<br>
            make: *** No rule to make target &#39;install&#39;.=C2=A0 Stop.=
<br>
            I don&#39;t know if and which parameters I should change in the
            recipe.<br>
            Another problem is that the lib needs openssl-dev. I can&#39;t
            find how to include openssl-dev into the Yocto build.<br>
            <br>
            Looking forward for your answers, best regards,<br>
            Jakob<span class=3D"m_-2190670712990016913HOEnZb"><font color=
=3D"#888888"><br>
                <br>
                -- <br>
                Jakob Hasse<br>
                Software Developement<br>
                <br>
                E: <a href=3D"mailto:jakob.hasse@smart-home-technology.ch" =
target=3D"_blank">jakob.hasse@smart-home-technol<wbr>ogy.ch</a><br>
                T: <a href=3D"tel:%2B41%2044%20552%2002%2066" value=3D"+414=
45520266" target=3D"_blank">+41 44 552 02 66</a><br>
                <br>
                Smart Home Technology GmbH<br>
                <a href=3D"http://www.smart-home-technology.ch" rel=3D"nore=
ferrer" target=3D"_blank">www.smart-home-technology.ch</a><br>
                <br>
                -- <br>
                ______________________________<wbr>_________________<br>
                yocto mailing list<br>
                <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a><br>
                <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/lis=
tinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
    <pre class=3D"m_-2190670712990016913moz-signature" cols=3D"72">--=20
Jakob Hasse
Software Developement

E: <a class=3D"m_-2190670712990016913moz-txt-link-abbreviated" href=3D"mail=
to:jakob.hasse@smart-home-technology.ch" target=3D"_blank">jakob.hasse@smar=
t-home-<wbr>technology.ch</a>
T: <a href=3D"tel:+41%2044%20552%2002%2066" value=3D"+41445520266" target=
=3D"_blank">+41 44 552 02 66</a>=20

Smart Home Technology GmbH
<a class=3D"m_-2190670712990016913moz-txt-link-abbreviated" href=3D"http://=
www.smart-home-technology.ch" target=3D"_blank">www.smart-home-technology.c=
h</a></pre>
  </div></div></div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c05a6568ddcad05471778b7--
