Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 100A3E0086B; Fri, 17 Aug 2018 15:01:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A96E00828
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 15:01:18 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id w126-v6so16496615oie.7
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 15:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9/dV1LbdcKVLIsb9Xq8NkzFd9VwKGxzLwuylmIb0ai4=;
	b=HMpw1PgsPYTjE9t1qiEzuXfifHjG63P4bMr9jCwwfKvmR8dYNps6AuIFUa+ZYM3bhE
	WAz0+3wpMoee/hwhUmtkdR4PNQ5BB4uM2G5o47u06g8Q2QYY5shRoGF23q2VmfkvbU9B
	LlP/IUr/nUej8jfnZAqLBeX+vuSvs0t4riO/fHPCQj1oy4e+DUhMzTkz1484NUAyMvey
	NW/WKhoE+C6cz1LxJvdgCGz8o8O02Tgh4w9xqm0jPGQ+kEqb4T2rFQGFyuppA4aKWZ6/
	gdcSENkdxYNpDjtBJRAF7bV5Y8gXf7oN7KyK2fUM/I8fSxgtNjD2n+d6Z/XUcEW5eZaF
	MFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9/dV1LbdcKVLIsb9Xq8NkzFd9VwKGxzLwuylmIb0ai4=;
	b=rLEYfdmLvlSasDPFmhwYbfVEgNs5catqH08mmifESd96eSVCJzCBo7P2/dFAdc61UK
	8Gq4wSEGJNYO5DqvY2q0WyOBUkVp2P4nVV8LFUjgULIkhVJRu9jkkXqqyRGHgFgsNiQP
	C1I14Z5NzYz6P5QWTPXuR/pLkSE9MrFx/xzX1Z16tCZ45aEFLDyFhI5IR11GFoS8+vEz
	bFEB0tYMXhOSkcjaIfv3HUR+Iygbeux8T5Yi5H7H+AjhGiFkeUGflg3iTfybT25htFx9
	x3UNa/vcuFRFyvQ6sERamk5KKATY1yp89q+vUaiOVqdV5G5hoZsOJUge+Ioof0dLKWOi
	c7pw==
X-Gm-Message-State: AOUpUlHgWw7/fNvNtmQesryY7CIKbQVE46GHAEE3QLgvzp2nhLIREeKc
	q5bIHjImWjDn15S5se5aeNF8H0rdTaF/cGomHqU=
X-Google-Smtp-Source: AA+uWPw6I/aN4qL92VqkD90VNrZxKN8YXysrNL1/3eOa3sBjyhooAPVNyc6Yno4v6PD/iiWBKVSAeKhzghPzuaF3ROI=
X-Received: by 2002:aca:6cc6:: with SMTP id
	h189-v6mr4080285oic.140.1534543277602; 
	Fri, 17 Aug 2018 15:01:17 -0700 (PDT)
MIME-Version: 1.0
References: <CACfi_Z2Zvwiq-iB7ckmmT0LgthOPRxCMC6OCSW3ywbZ2=oSY4A@mail.gmail.com>
In-Reply-To: <CACfi_Z2Zvwiq-iB7ckmmT0LgthOPRxCMC6OCSW3ywbZ2=oSY4A@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Fri, 17 Aug 2018 15:01:06 -0700
Message-ID: <CABcZANkABH+b1z+c-Ey9PrB7Sbj9NSM4KbA1cNsn0f-WAtLdXA@mail.gmail.com>
To: davis.roman84@gmail.com
Cc: yocto <yocto@yoctoproject.org>, bitbake-devel@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [bitbake-devel] how to store a modification of a bbclass in the poky layer in my own layer.
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
X-List-Received-Date: Fri, 17 Aug 2018 22:01:19 -0000
Content-Type: multipart/alternative; boundary="000000000000f43c220573a8b2da"

--000000000000f43c220573a8b2da
Content-Type: text/plain; charset="UTF-8"

Your layer has to be before poky/meta in BBLAYERS, as that determines
BBPATH, which is how bbclasses and config files are found (much like PATH).

On Fri, Aug 17, 2018 at 12:11 PM Davis Roman <davis.roman84@gmail.com>
wrote:

> Hello!
>
>
> I've made a modification in poky/meta/classes/libc-package.bbclass (
> shown below)
>
> However I don't want this change to be stored here long term and
> instead feel that it should live in my project specific layer,
> meta-hon-grip.
>
> After checking with bitbake-layers, I saw that my layer has a higher
> priority than the poky layer so my layer should be checked first ( or
> so I thought)
>
> I copied the modified version of libc-packages.bbclass into
> meta-hon-grip/classes and I restored the version in the poky layer to
> its original state.
>
> After making this change, I found that the modified version in my
> layer is not being used and instead the version in the poky layer is
> the one in play.
>
> I'm trying to figure out what else to try.
>
> Any suggestions would be greatly appreciated!
>
> Thank you,
>
> Davis
>
> diff --git a/meta/classes/libc-package.bbclass
> b/meta/classes/libc-package.bbclass
> index 467d567..72d447a 100644
> --- a/meta/classes/libc-package.bbclass
> +++ b/meta/classes/libc-package.bbclass
> @@ -287,7 +287,7 @@ python package_do_split_gconvs () {
>                  bb.error("locale_arch_options not found for
> target_arch=" + target_arch)
>                  raise bb.build.FuncFailed("unknown arch:" +
> target_arch + " for locale_arch_options")
>
> -            localedef_opts += " --force --old-style --no-archive
> --prefix=%s \
> +            localedef_opts += " --force --no-archive --prefix=%s \
>                  --inputfile=%s/%s/i18n/locales/%s --charmap=%s %s/%s" \
>                  % (treedir, treedir, datadir, locale, encoding,
> outputpath, name)
>
> @@ -295,7 +295,7 @@ python package_do_split_gconvs () {
>                  (path, i18npath, gconvpath, localedef_opts)
>          else: # earlier slower qemu way
>              qemu = qemu_target_binary(d)
> -            localedef_opts = "--force --old-style --no-archive
> --prefix=%s \
> +            localedef_opts = "--force --no-archive --prefix=%s \
>                  --inputfile=%s/i18n/locales/%s --charmap=%s %s" \
>                  % (treedir, datadir, locale, encoding, name)
> --
> _______________________________________________
> bitbake-devel mailing list
> bitbake-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/bitbake-devel
>


-- 
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--000000000000f43c220573a8b2da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Your layer has to be before poky/meta in BBLAYERS, as that=
 determines BBPATH, which is how bbclasses and config files are found (much=
 like PATH).<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fr=
i, Aug 17, 2018 at 12:11 PM Davis Roman &lt;<a href=3D"mailto:davis.roman84=
@gmail.com">davis.roman84@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Hello!<br>
<br>
<br>
I&#39;ve made a modification in poky/meta/classes/libc-package.bbclass (<br=
>
shown below)<br>
<br>
However I don&#39;t want this change to be stored here long term and<br>
instead feel that it should live in my project specific layer,<br>
meta-hon-grip.<br>
<br>
After checking with bitbake-layers, I saw that my layer has a higher<br>
priority than the poky layer so my layer should be checked first ( or<br>
so I thought)<br>
<br>
I copied the modified version of libc-packages.bbclass into<br>
meta-hon-grip/classes and I restored the version in the poky layer to<br>
its original state.<br>
<br>
After making this change, I found that the modified version in my<br>
layer is not being used and instead the version in the poky layer is<br>
the one in play.<br>
<br>
I&#39;m trying to figure out what else to try.<br>
<br>
Any suggestions would be greatly appreciated!<br>
<br>
Thank you,<br>
<br>
Davis<br>
<br>
diff --git a/meta/classes/libc-package.bbclass<br>
b/meta/classes/libc-package.bbclass<br>
index 467d567..72d447a 100644<br>
--- a/meta/classes/libc-package.bbclass<br>
+++ b/meta/classes/libc-package.bbclass<br>
@@ -287,7 +287,7 @@ python package_do_split_gconvs () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.error(&quo=
t;locale_arch_options not found for<br>
target_arch=3D&quot; + target_arch)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise bb.buil=
d.FuncFailed(&quot;unknown arch:&quot; +<br>
target_arch + &quot; for locale_arch_options&quot;)<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 localedef_opts +=3D &quot; --for=
ce --old-style --no-archive --prefix=3D%s \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 localedef_opts +=3D &quot; --for=
ce --no-archive --prefix=3D%s \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--inputfile=
=3D%s/%s/i18n/locales/%s --charmap=3D%s %s/%s&quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0% (treedir, t=
reedir, datadir, locale, encoding,<br>
outputpath, name)<br>
<br>
@@ -295,7 +295,7 @@ python package_do_split_gconvs () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(path, i18npa=
th, gconvpath, localedef_opts)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else: # earlier slower qemu way<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0qemu =3D qemu_target_binary=
(d)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 localedef_opts =3D &quot;--force=
 --old-style --no-archive --prefix=3D%s \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 localedef_opts =3D &quot;--force=
 --no-archive --prefix=3D%s \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--inputfile=
=3D%s/i18n/locales/%s --charmap=3D%s %s&quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0% (treedir, d=
atadir, locale, encoding, name)<br>
-- <br>
_______________________________________________<br>
bitbake-devel mailing list<br>
<a href=3D"mailto:bitbake-devel@lists.openembedded.org" target=3D"_blank">b=
itbake-devel@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/bitbake-devel" re=
l=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailman/li=
stinfo/bitbake-devel</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><d=
iv dir=3D"ltr">Christopher Larson<br>kergoth at gmail dot com<br>Founder - =
BitBake, OpenEmbedded, OpenZaurus<br>Senior Software Engineer, Mentor Graph=
ics</div></div></div></div>

--000000000000f43c220573a8b2da--
