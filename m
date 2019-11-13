Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F37A5E00DE3; Wed, 13 Nov 2019 09:43:52 -0800 (PST)
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
	*      [209.85.208.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7915FE003E1
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 09:43:49 -0800 (PST)
Received: by mail-ed1-f52.google.com with SMTP id a21so2571131edj.8
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 09:43:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=1EmqAQ9Zq13hstDW9TWaeOcVIZAv+bRjpYd/2ibcpXs=;
	b=p3WbzJxQxCooffCvdKodrQ3rg1v8jKGBu7r3/5nvgjSEf0qPhhHB/3UyU9jnjRYz81
	rItTCnjur90hzIx2M9DfhDODjy+2jagT+piCfs1//oJUvxacFe9L2BkkVV/HXcaGWVu7
	LnHQBJ29ktaJjha4s+9PhfBEyvK48HGqnQcB3fzhdgY4t0hdZ8+AKcIx/v46fTTDMGBU
	ytKjSm/qWH2ztUAVB3NJ14l2WhT5XHsdO6Xa0/95XYSFT5Urgh4K6bPQiW1MAJHyRQSt
	QjMQwxhlfTa6Ssp6lfZXK11Alf/BiWgCNChqCbAbN0cDxAGGzW7lL9GCfBzIa3tn8sL9
	qOXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=1EmqAQ9Zq13hstDW9TWaeOcVIZAv+bRjpYd/2ibcpXs=;
	b=oSrt/NOdifyOdhFXV8/jrAWxGsseJ2+FCuC+5a9hc2DnIdJWgrvNA4lQ1nsSMlS/fr
	KSsXeVtiPnPdE1CpvRgmug2gnV7a2LXXYJx1k7NoXWJtnJiEEWlz9WlPeCyfVVwC1+ec
	bEJjxHCku6Ng3swVxPuBz6q0JmctDY6bHE8/m5nWV482KBP/ckLMuQuIUTDeLzfdD4gc
	qlDxvou9pHc7wgCXHm86sUmOCnvX3LctoXFz8Ee+y1QpxynBjRiROWm6aePjhIhg/w78
	t58QKUrJ5Y8tU1aaN3MqWKSheFipuLUbi200sC2rVqFqdlhNB90+NlCRc0Canr3vBn9x
	4cuw==
X-Gm-Message-State: APjAAAURf9+75WKsue/01JkfeIHiHWOLklBXunwLmxA9QkjNMT5onb8J
	YUrns7/J6wZuqNPbEKyS+veqoUDzoQM+LGJekc7STRqv
X-Google-Smtp-Source: APXvYqy72elRmLV3Ns8sTPxs4LE5LUxQbipbMdGmPD+GWIHxiZV2my2z3gSBAILiW2r7+fe92lpLWthy2T8FmFzxF94=
X-Received: by 2002:a17:906:7051:: with SMTP id
	r17mr3874640ejj.155.1573667028320; 
	Wed, 13 Nov 2019 09:43:48 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
	<CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
	<CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
	<CAEEV9O2=TTT0EYa9tRQV5o68GL7eR6EF8i6gCZe69pZzHGPN4w@mail.gmail.com>
	<CAEEV9O0jF==rmOmaOrOqtURghUyFZPnoSFgs7daeAhfKU2ohGg@mail.gmail.com>
	<CAMKF1sqOqNxrC_SXnzPHY_Uxs1esvWWT97XifVpke6ni5ckh=A@mail.gmail.com>
	<CAEEV9O3sg8CZUs1HvkpE+LT1B-16K1-R1W284fwMBF4cj5ko-Q@mail.gmail.com>
In-Reply-To: <CAEEV9O3sg8CZUs1HvkpE+LT1B-16K1-R1W284fwMBF4cj5ko-Q@mail.gmail.com>
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Wed, 13 Nov 2019 11:43:37 -0600
Message-ID: <CAEEV9O0woZBJiU9V1BAiHOUtvzVVG17N7aoky41-tEiy10oLyg@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Nov 2019 17:43:53 -0000
Content-Type: multipart/alternative; boundary="00000000000037c51605973de875"

--00000000000037c51605973de875
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I figured out the problem. The call to AX_PTHREAD() was breaking
PKG_PROG_PKG_CONFIG. I don't understand why, but it works once I remove
that line.

On Tue, Nov 12, 2019 at 8:24 PM Mark Hawthorne <markhawthorne172@gmail.com>
wrote:

> I added the lines you suggested and it indicates that PKG_CONFIG is not
> set. What would cause this to fail in the bitbake environment? It works f=
or
> other packages such as pixman.
>
> On Tue, Nov 12, 2019 at 6:38 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Tue, Nov 12, 2019 at 4:29 PM Mark Hawthorne
>> <markhawthorne172@gmail.com> wrote:
>> >
>> > Khem,
>> >
>> > I found a recipe that you made a few years ago where you addressed thi=
s
>> problem:
>> >
>> >
>> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-exte=
nded/boinc/boinc-client_7.12.bb
>> >
>> > You solved it by exporting PKG_CONFIG
>> >
>> > export PKG_CONFIG =3D "${STAGING_BINDIR_NATIVE}/pkg-config"
>> >
>> > This seems like it may be the incorrect way to do it and there needs t=
o
>> be an update in the configure.ac file instead?
>>
>> in configure.ac you can add something like this
>>
>> PKG_PROG_PKG_CONFIG
>> if test -z "$PKG_CONFIG"; then
>>   AC_MSG_WARN([Cannot find pkg-config, make sure it is installed in your
>> PATH])
>> fi
>>
>> >
>> > On Tue, Nov 12, 2019 at 4:44 PM Mark Hawthorne <
>> markhawthorne172@gmail.com> wrote:
>> >>
>> >> No, it did not help
>> >>
>> >> It appears from the config.log file that the PKG_CONFIG variable neve=
r
>> gets set. I'm sorting through the bbclass files to figure out why this i=
s
>> not getting set...
>> >>
>> >> PKG_CONFIG=3D''
>> >>
>> PKG_CONFIG_LIBDIR=3D'/home/mark/Documents/tisdk/build/arago-tmp-external=
-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-s=
ysroot/usr/lib/pkgconfig'
>> >>
>> PKG_CONFIG_PATH=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-a=
rm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sys=
root/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/arago-tmp-external-=
arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sy=
sroot/usr/share/pkgconfig'
>> >>
>> >> On Tue, Nov 12, 2019 at 4:22 PM Khem Raj <raj.khem@gmail.com> wrote:
>> >>>
>> >>> On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne
>> >>> <markhawthorne172@gmail.com> wrote:
>> >>> >
>> >>> > Thank you. I have fixed this issue but the original pkg-config
>> error still persists.
>> >>> >
>> >>>
>> >>> do a clean build after above change
>> >>>
>> >>> bitbake -ccleanall <your-recipe>
>> >>> bitbake <your-recipe>
>> >>>
>> >>> does that help ?
>> >>>
>> >>> > On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de> wrote=
:
>> >>> >>
>> >>> >> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
>> >>> >> >...
>> >>> >> > DEPENDS_${PN} =3D "libpng freetype glm libegl libgles2
>> libspatialite"
>> >>> >> >...
>> >>> >>
>> >>> >> DEPENDS, not DEPENDS_${PN}
>> >>> >>
>> >>> >> cu
>> >>> >> Adrian
>> >>> >>
>> >>> >> --
>> >>> >>
>> >>> >>        "Is there not promise of rain?" Ling Tan asked suddenly ou=
t
>> >>> >>         of the darkness. There had been need of rain for many day=
s.
>> >>> >>        "Only a promise," Lao Er said.
>> >>> >>                                        Pearl S. Buck - Dragon See=
d
>> >>> >>
>> >>> > --
>> >>> > _______________________________________________
>> >>> > yocto mailing list
>> >>> > yocto@yoctoproject.org
>> >>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>

--00000000000037c51605973de875
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I figured out the problem. The call to AX_PTHREAD() was br=
eaking PKG_PROG_PKG_CONFIG. I don&#39;t understand why, but it works once I=
 remove that line.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, Nov 12, 2019 at 8:24 PM Mark Hawthorne &lt;<a hre=
f=3D"mailto:markhawthorne172@gmail.com">markhawthorne172@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">I added the lines you suggested and it indicates that=C2=A0PKG_CON=
FIG is not set. What would cause this to fail in the bitbake environment? I=
t works for other packages such as pixman.</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 12, 2019 at 6:38 PM K=
hem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Tue, Nov 12, 2019 at 4:29 PM Mark Hawthorne<br>
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
</blockquote></div>

--00000000000037c51605973de875--
