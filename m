Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BD2AE00E0A; Tue, 12 Nov 2019 18:24:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markhawthorne172[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFC39E004F6
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 18:24:30 -0800 (PST)
Received: by mail-ed1-f46.google.com with SMTP id s10so502417edi.5
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 18:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ymO8Cq04iDFm0e8haIrDL1smNxbMZQ/yzbLm5/P45OY=;
	b=BQjj3WyhP9553jRfDTrPgzyjFA14GwFb9tj2SZyLtVQ49i/DOrE2jCZeb83R/JWdNr
	78S/flKai/kELKe1+x7LHKvXupJIG32pztTjTqx2f6XYvMhF6FuNS3xDG1EfYlEC6qRt
	zV0GHqNYcm6OQaUUpJAova3rxHOIqcJxbtd7ywioy4MGytd40Hr9ND2Xu/XWBRIKTE4K
	bCwS7iVOtydEvo3ojESvYnNrsNlluK9IAQ7fZheU9SbJSx/rs7buK8YdXMzAwwxsamwJ
	eXD+Qc9vCYmAed7DzFlkq0zHq6Z0y1Hcp+3jrSRhsS8auu8+JXxJOGtdApCwtsMZnN2B
	f5AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ymO8Cq04iDFm0e8haIrDL1smNxbMZQ/yzbLm5/P45OY=;
	b=XTdCpHB6do7t720NoG/fp1SbTMdQN6E5lF1BxzMRNH8/016DMIu4ASScasvAK/tQ8j
	U+heN1VG14uBJee9OuUIT6K0IYfR53dfk4bZujl+yJ5SUCRg0Qws5wLL0y3yenSyF+lx
	28J9QpEN/eDNKomNqfoWYI3DrAmjtEsZD2nA6T7fWUpsPmJ56F4JMCk8DY+IugB5h52M
	IQHR/hn6MfzQC3BrmaClFgozlkRmOGovlWZvVKEcXDzspvsKwZlRMOXAF2oz1WmOz8pw
	a0uYwF9s0moVrTIo14LL/B+zT3GVnLJgXJzJhp+ufMLME7IfHf2UuYFSx5a1pV6x2IV1
	+d1A==
X-Gm-Message-State: APjAAAVouClRRHfAU+2X0vkDi5AJzthHondDaP9HzIXWeYWaPeMqIq7T
	6tKq+ySuHeiqyz1z25RAcpKvK52zNlJXRxyY8/+2I8Jk
X-Google-Smtp-Source: APXvYqzVaMFEiTN9auzF4S6NvoRakcUw4GwB+6+gw2JhD52XweHe+KwecW1aPLRTax8c1IqeVv1/nkQTj4i0zURVbCY=
X-Received: by 2002:a17:906:7051:: with SMTP id
	r17mr479990ejj.155.1573611869819; 
	Tue, 12 Nov 2019 18:24:29 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
	<CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
	<CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
	<CAEEV9O2=TTT0EYa9tRQV5o68GL7eR6EF8i6gCZe69pZzHGPN4w@mail.gmail.com>
	<CAEEV9O0jF==rmOmaOrOqtURghUyFZPnoSFgs7daeAhfKU2ohGg@mail.gmail.com>
	<CAMKF1sqOqNxrC_SXnzPHY_Uxs1esvWWT97XifVpke6ni5ckh=A@mail.gmail.com>
In-Reply-To: <CAMKF1sqOqNxrC_SXnzPHY_Uxs1esvWWT97XifVpke6ni5ckh=A@mail.gmail.com>
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Tue, 12 Nov 2019 20:24:18 -0600
Message-ID: <CAEEV9O3sg8CZUs1HvkpE+LT1B-16K1-R1W284fwMBF4cj5ko-Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: pkg-config not found
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
X-List-Received-Date: Wed, 13 Nov 2019 02:24:34 -0000
Content-Type: multipart/alternative; boundary="00000000000083d986059731106f"

--00000000000083d986059731106f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I added the lines you suggested and it indicates that PKG_CONFIG is not
set. What would cause this to fail in the bitbake environment? It works for
other packages such as pixman.

On Tue, Nov 12, 2019 at 6:38 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Nov 12, 2019 at 4:29 PM Mark Hawthorne
> <markhawthorne172@gmail.com> wrote:
> >
> > Khem,
> >
> > I found a recipe that you made a few years ago where you addressed this
> problem:
> >
> >
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-exten=
ded/boinc/boinc-client_7.12.bb
> >
> > You solved it by exporting PKG_CONFIG
> >
> > export PKG_CONFIG =3D "${STAGING_BINDIR_NATIVE}/pkg-config"
> >
> > This seems like it may be the incorrect way to do it and there needs to
> be an update in the configure.ac file instead?
>
> in configure.ac you can add something like this
>
> PKG_PROG_PKG_CONFIG
> if test -z "$PKG_CONFIG"; then
>   AC_MSG_WARN([Cannot find pkg-config, make sure it is installed in your
> PATH])
> fi
>
> >
> > On Tue, Nov 12, 2019 at 4:44 PM Mark Hawthorne <
> markhawthorne172@gmail.com> wrote:
> >>
> >> No, it did not help
> >>
> >> It appears from the config.log file that the PKG_CONFIG variable never
> gets set. I'm sorting through the bbclass files to figure out why this is
> not getting set...
> >>
> >> PKG_CONFIG=3D''
> >>
> PKG_CONFIG_LIBDIR=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-=
arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sy=
sroot/usr/lib/pkgconfig'
> >>
> PKG_CONFIG_PATH=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-ar=
m-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sysr=
oot/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/arago-tmp-external-a=
rm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sys=
root/usr/share/pkgconfig'
> >>
> >> On Tue, Nov 12, 2019 at 4:22 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne
> >>> <markhawthorne172@gmail.com> wrote:
> >>> >
> >>> > Thank you. I have fixed this issue but the original pkg-config erro=
r
> still persists.
> >>> >
> >>>
> >>> do a clean build after above change
> >>>
> >>> bitbake -ccleanall <your-recipe>
> >>> bitbake <your-recipe>
> >>>
> >>> does that help ?
> >>>
> >>> > On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de> wrote:
> >>> >>
> >>> >> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
> >>> >> >...
> >>> >> > DEPENDS_${PN} =3D "libpng freetype glm libegl libgles2
> libspatialite"
> >>> >> >...
> >>> >>
> >>> >> DEPENDS, not DEPENDS_${PN}
> >>> >>
> >>> >> cu
> >>> >> Adrian
> >>> >>
> >>> >> --
> >>> >>
> >>> >>        "Is there not promise of rain?" Ling Tan asked suddenly out
> >>> >>         of the darkness. There had been need of rain for many days=
.
> >>> >>        "Only a promise," Lao Er said.
> >>> >>                                        Pearl S. Buck - Dragon Seed
> >>> >>
> >>> > --
> >>> > _______________________________________________
> >>> > yocto mailing list
> >>> > yocto@yoctoproject.org
> >>> > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000083d986059731106f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I added the lines you suggested and it indicates that=C2=
=A0PKG_CONFIG is not set. What would cause this to fail in the bitbake envi=
ronment? It works for other packages such as pixman.</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 12, 2019 at=
 6:38 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On Tue, Nov 12, 2019 at 4:29 PM Mark Hawthorne<br>
&lt;<a href=3D"mailto:markhawthorne172@gmail.com" target=3D"_blank">markhaw=
thorne172@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Khem,<br>
&gt;<br>
&gt; I found a recipe that you made a few years ago where you addressed thi=
s problem:<br>
&gt;<br>
&gt; <a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-oe=
/recipes-extended/boinc/boinc-client_7.12.bb" rel=3D"noreferrer" target=3D"=
_blank">http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes=
-extended/boinc/boinc-client_7.12.bb</a><br>
&gt;<br>
&gt; You solved it by exporting PKG_CONFIG<br>
&gt;<br>
&gt; export PKG_CONFIG =3D &quot;${STAGING_BINDIR_NATIVE}/pkg-config&quot;<=
br>
&gt;<br>
&gt; This seems like it may be the incorrect way to do it and there needs t=
o be an update in the <a href=3D"http://configure.ac" rel=3D"noreferrer" ta=
rget=3D"_blank">configure.ac</a> file instead?<br>
<br>
in <a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank">con=
figure.ac</a> you can add something like this<br>
<br>
PKG_PROG_PKG_CONFIG<br>
if test -z &quot;$PKG_CONFIG&quot;; then<br>
=C2=A0 AC_MSG_WARN([Cannot find pkg-config, make sure it is installed in yo=
ur PATH])<br>
fi<br>
<br>
&gt;<br>
&gt; On Tue, Nov 12, 2019 at 4:44 PM Mark Hawthorne &lt;<a href=3D"mailto:m=
arkhawthorne172@gmail.com" target=3D"_blank">markhawthorne172@gmail.com</a>=
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; No, it did not help<br>
&gt;&gt;<br>
&gt;&gt; It appears from the config.log file that the PKG_CONFIG variable n=
ever gets set. I&#39;m sorting through the bbclass files to figure out why =
this is not getting set...<br>
&gt;&gt;<br>
&gt;&gt; PKG_CONFIG=3D&#39;&#39;<br>
&gt;&gt; PKG_CONFIG_LIBDIR=3D&#39;/home/mark/Documents/tisdk/build/arago-tm=
p-external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r=
0/recipe-sysroot/usr/lib/pkgconfig&#39;<br>
&gt;&gt; PKG_CONFIG_PATH=3D&#39;/home/mark/Documents/tisdk/build/arago-tmp-=
external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/=
recipe-sysroot/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/arago-tmp=
-external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0=
/recipe-sysroot/usr/share/pkgconfig&#39;<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Nov 12, 2019 at 4:22 PM Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:markhawthorne172@gmail.com" target=3D"_b=
lank">markhawthorne172@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Thank you. I have fixed this issue but the original pkg-c=
onfig error still persists.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; do a clean build after above change<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; bitbake -ccleanall &lt;your-recipe&gt;<br>
&gt;&gt;&gt; bitbake &lt;your-recipe&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; does that help ?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt; On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk &lt;<a href=
=3D"mailto:bunk@stusta.de" target=3D"_blank">bunk@stusta.de</a>&gt; wrote:<=
br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawtho=
rne wrote:<br>
&gt;&gt;&gt; &gt;&gt; &gt;...<br>
&gt;&gt;&gt; &gt;&gt; &gt; DEPENDS_${PN} =3D &quot;libpng freetype glm libe=
gl libgles2 libspatialite&quot;<br>
&gt;&gt;&gt; &gt;&gt; &gt;...<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; DEPENDS, not DEPENDS_${PN}<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; cu<br>
&gt;&gt;&gt; &gt;&gt; Adrian<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt; --<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Is there not promise=
 of rain?&quot; Ling Tan asked suddenly out<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0of the darkness. The=
re had been need of rain for many days.<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Only a promise,&quot=
; Lao Er said.<br>
&gt;&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Pearl S. Buck - Dragon Seed<br>
&gt;&gt;&gt; &gt;&gt;<br>
&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--00000000000083d986059731106f--
