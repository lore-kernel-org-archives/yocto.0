Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA430E00E05; Tue, 12 Nov 2019 16:28:42 -0800 (PST)
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
	*      [209.85.208.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
	[209.85.208.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80BA2E0078F
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 16:28:39 -0800 (PST)
Received: by mail-ed1-f53.google.com with SMTP id b5so295025eds.12
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 16:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=XJik3l9ey6q1QG5G5ARB2yWIgZhXqZkGVvJ3nadAZ3Y=;
	b=lFFJGA4QmH7VF7loqROT4OVt5mFwUpF1qO6TcdNt9LhcTpXVHg2n6MoIlHrME7Fr+O
	r1P8z6cPw45llF2Ek1VdyqA43OcXAPneiTEqFomI97HqlOPNYg1yoO+Xey+ifo/EDNcK
	TT3y8gEb1xFctYhrfBrC/+oLZgszpbrkAHjGekZZbMyi1RSZbZdcLCtgyKYP/mPMRlGA
	uVV/1thbwitd04PeaZyIXboweOtUfQ6v+NKCJ0JqcXCqE61kMNmO3biVHMlC2AiGSP/4
	arvYdejV5Q2Zc76iS87/XDgIqTDnBp7EzF6GdHekMSJc48NhhDOiXIcr8+wupVXoC+Gw
	VdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=XJik3l9ey6q1QG5G5ARB2yWIgZhXqZkGVvJ3nadAZ3Y=;
	b=gPPTcFldln0iv9qYYSr10wpW1dTPb+ItFIAILUg9uyc0WrZ+3KjjKytyQ63+UabH7e
	rgVhSVp3usK89MEBovkv3oWSxQ7ds6DKYejnD8qO2LEYh4xiCodFvF7sL0rtPG0kKgIW
	ok/6Zw4eZ0qZfhsVM/u9aR0a9hWfiyBChpWpyy/sMCluhltz/Kef6hpUVbKuCxf7fiIS
	cQUIxH7JX1NR+KaXb/seggI4N7fI35zyXhanAQxHCO0kCEGJx2y4G+V42DZukmSYot6c
	+YSiGs1ZFlnGVX41drCSnxdkCeYkoDImOc/pNGAYup8lWKX5ZCWAufEW06ScAlrxp7oa
	MRyQ==
X-Gm-Message-State: APjAAAXe39HOJM0gVuwl2OeYVicuakksNU6ntf9tSU9XXZ16LMHB9g3a
	rRzwzDgUtHdnl+c4btousdrXv2JnYM/GUYvg3mGHYRTb
X-Google-Smtp-Source: APXvYqzCES2V4hVfZ0fd1JJ1mfmRiKmVKk+/Y+qN7IV3Xec0Mr5Lj0Ct/g714/VvRyCEfltt/cFNRtSOgVO835finIM=
X-Received: by 2002:a17:906:a457:: with SMTP id
	cb23mr86754ejb.191.1573604918084; 
	Tue, 12 Nov 2019 16:28:38 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
	<CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
	<CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
	<CAEEV9O2=TTT0EYa9tRQV5o68GL7eR6EF8i6gCZe69pZzHGPN4w@mail.gmail.com>
In-Reply-To: <CAEEV9O2=TTT0EYa9tRQV5o68GL7eR6EF8i6gCZe69pZzHGPN4w@mail.gmail.com>
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Tue, 12 Nov 2019 18:28:27 -0600
Message-ID: <CAEEV9O0jF==rmOmaOrOqtURghUyFZPnoSFgs7daeAhfKU2ohGg@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Nov 2019 00:28:43 -0000
Content-Type: multipart/alternative; boundary="00000000000028ca0c05972f7205"

--00000000000028ca0c05972f7205
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Khem,

I found a recipe that you made a few years ago where you addressed this
problem:

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extende=
d/boinc/boinc-client_7.12.bb

You solved it by exporting PKG_CONFIG

export PKG_CONFIG =3D "${STAGING_BINDIR_NATIVE}/pkg-config"

This seems like it may be the incorrect way to do it and there needs to be
an update in the configure.ac file instead?

On Tue, Nov 12, 2019 at 4:44 PM Mark Hawthorne <markhawthorne172@gmail.com>
wrote:

> No, it did not help
>
> It appears from the config.log file that the PKG_CONFIG variable never
> gets set. I'm sorting through the bbclass files to figure out why this is
> not getting set...
>
> PKG_CONFIG=3D''
>
> PKG_CONFIG_LIBDIR=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-=
arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sy=
sroot/usr/lib/pkgconfig'
>
> PKG_CONFIG_PATH=3D'/home/mark/Documents/tisdk/build/arago-tmp-external-ar=
m-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sysr=
oot/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/arago-tmp-external-a=
rm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r0/recipe-sys=
root/usr/share/pkgconfig'
>
> On Tue, Nov 12, 2019 at 4:22 PM Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne
>> <markhawthorne172@gmail.com> wrote:
>> >
>> > Thank you. I have fixed this issue but the original pkg-config error
>> still persists.
>> >
>>
>> do a clean build after above change
>>
>> bitbake -ccleanall <your-recipe>
>> bitbake <your-recipe>
>>
>> does that help ?
>>
>> > On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de> wrote:
>> >>
>> >> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
>> >> >...
>> >> > DEPENDS_${PN} =3D "libpng freetype glm libegl libgles2 libspatialit=
e"
>> >> >...
>> >>
>> >> DEPENDS, not DEPENDS_${PN}
>> >>
>> >> cu
>> >> Adrian
>> >>
>> >> --
>> >>
>> >>        "Is there not promise of rain?" Ling Tan asked suddenly out
>> >>         of the darkness. There had been need of rain for many days.
>> >>        "Only a promise," Lao Er said.
>> >>                                        Pearl S. Buck - Dragon Seed
>> >>
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>>
>

--00000000000028ca0c05972f7205
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Khem,<div><br></div><div>I found a recipe=C2=A0that you ma=
de a few years ago where you addressed this problem:</div><div><br></div><d=
iv><a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/r=
ecipes-extended/boinc/boinc-client_7.12.bb">http://cgit.openembedded.org/me=
ta-openembedded/tree/meta-oe/recipes-extended/boinc/boinc-client_7.12.bb</a=
><br></div><div><br></div><div>You solved it by exporting PKG_CONFIG</div><=
div><br></div><div>export PKG_CONFIG =3D &quot;${STAGING_BINDIR_NATIVE}/pkg=
-config&quot;<br></div><div><br></div><div>This seems like it may be the in=
correct way to do it and there needs to be an update in the <a href=3D"http=
://configure.ac">configure.ac</a> file instead?</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 12, 2019=
 at 4:44 PM Mark Hawthorne &lt;<a href=3D"mailto:markhawthorne172@gmail.com=
">markhawthorne172@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">No, it did not help<div><br></=
div><div>It appears from the config.log file that the PKG_CONFIG variable n=
ever gets set. I&#39;m sorting through the bbclass files to figure out why =
this is not getting=C2=A0set...</div><div><br></div><div>PKG_CONFIG=3D&#39;=
&#39;<br>PKG_CONFIG_LIBDIR=3D&#39;/home/mark/Documents/tisdk/build/arago-tm=
p-external-arm-toolchain/work/armv7at2hf-neon-linux-gnueabi/myprogram/1.0-r=
0/recipe-sysroot/usr/lib/pkgconfig&#39;<br>PKG_CONFIG_PATH=3D&#39;/home/mar=
k/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/armv7at2hf-ne=
on-linux-gnueabi/myprogram/1.0-r0/recipe-sysroot/usr/lib/pkgconfig:/home/ma=
rk/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/armv7at2hf-n=
eon-linux-gnueabi/myprogram/1.0-r0/recipe-sysroot/usr/share/pkgconfig&#39;<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Nov 12, 2019 at 4:22 PM Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Nov 12, 2019 a=
t 2:00 PM Mark Hawthorne<br>
&lt;<a href=3D"mailto:markhawthorne172@gmail.com" target=3D"_blank">markhaw=
thorne172@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Thank you. I have fixed this issue but the original pkg-config error s=
till persists.<br>
&gt;<br>
<br>
do a clean build after above change<br>
<br>
bitbake -ccleanall &lt;your-recipe&gt;<br>
bitbake &lt;your-recipe&gt;<br>
<br>
does that help ?<br>
<br>
&gt; On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk &lt;<a href=3D"mailto:bunk=
@stusta.de" target=3D"_blank">bunk@stusta.de</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:<br=
>
&gt;&gt; &gt;...<br>
&gt;&gt; &gt; DEPENDS_${PN} =3D &quot;libpng freetype glm libegl libgles2 l=
ibspatialite&quot;<br>
&gt;&gt; &gt;...<br>
&gt;&gt;<br>
&gt;&gt; DEPENDS, not DEPENDS_${PN}<br>
&gt;&gt;<br>
&gt;&gt; cu<br>
&gt;&gt; Adrian<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Is there not promise of rain?&quo=
t; Ling Tan asked suddenly out<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0of the darkness. There had been n=
eed of rain for many days.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Only a promise,&quot; Lao Er said=
.<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 P=
earl S. Buck - Dragon Seed<br>
&gt;&gt;<br>
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

--00000000000028ca0c05972f7205--
