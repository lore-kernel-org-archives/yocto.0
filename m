Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50D89E00D35; Tue, 28 May 2019 03:06:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16FD4E008E3
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 03:06:02 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id g18so17162695otj.11
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 03:06:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uSKTmFYxGVJJV1BnEvpw+ayhLyGGSS1cALshzUIAeCg=;
	b=uBkaKu3pUqcd/gK63kbsG8sZMQHco+zxVI6bu2sGjVlt3fclHA2mkoNgsZ5QXw9joG
	b/dkwc4kuTP0lvr4+q8ilw9n/UUGnwNlS9VeIwC6h1YXoFOkUR1tv8nygkNASl2Td4Dj
	GIlCQTVZUMAZ6B0bwuWnYrmMNerbi2F/Pw0IXqdhFsSLxFZyq6FGTebR5CIcJcGyrf5B
	csUxlpWddXB1Yva2KyO9JB8peyv5WXlC+RU7Vu19EfP8FBzMc4OxllOmJksc0WXuduAY
	GZ8o0G1ujJLzIMX/XW+7k5faRzeRyhchGdIiVnuUg9gy1QDIRx4YOap6w478UjlCl0u9
	n9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uSKTmFYxGVJJV1BnEvpw+ayhLyGGSS1cALshzUIAeCg=;
	b=cwCL/J93jn/aB2i/AfWTGAvImbuOEwdHDNDxtZ9IfFIlg2DzGMqlfW3hXR190L4O9j
	5fDoeN677b/2VYrUB0FTN5eJidMPEnoXyV/E3I818tLg/ROdmj3RYcdcZRJz6vAhZ9Eq
	TDFEuayw5XIiFDBh29sW/Efh5OcW8h9GxZBIPlg+HwwHPJVPKhFo4pF26YmdIvGrMkpl
	5WEwmwl1kigSMMuIMc0GhcwG1M4iNi6NOhVVINyDFKgsyVD2pCOMhO42imzl6CxcCIfi
	ATCrhTBFYjiiVE7FR7w+Rm+FcsSJzFhcv4zUQ3hDq0WQ/jnHPvdz07n8ty8/oWbB0iZU
	zd6w==
X-Gm-Message-State: APjAAAWJwcRVgbvrWA9o8ZlUd1IKePhAuKx9qnEnra9v/sHv3hfQEwpP
	Espdmur7bruqX3Kx/TuqmXL2JDTh5Hp7r0KpLrfrAKH6
X-Google-Smtp-Source: APXvYqx2GhaohXVuf/43LilQBBYLW7534QpOOTeNqmynvp4iF1UDE/RoO3O9EamPXk7eUoIo8xsP7pG87A42JgvN1AM=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr38975341otp.91.1559037962176; 
	Tue, 28 May 2019 03:06:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
	<CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
	<CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
In-Reply-To: <CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Tue, 28 May 2019 12:05:45 +0200
Message-ID: <CACKFPN1q13OJfCcRCP6aLxGOC+cM+2zjwoTLNbkAn5dAS+J_DA@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Sergey Lapin <slapin@ossfans.org>, Enrico <ebutera@users.sourceforge.net>,
	Nicolas Aguirre <aguirre.nicolas@gmail.com>,
	OpenEmbedded Development mailing list
	<openembedded-devel@lists.openembedded.org>
Subject: Re: meta-sunxi maintained?
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
X-List-Received-Date: Tue, 28 May 2019 10:06:04 -0000
Content-Type: multipart/alternative; boundary="000000000000ed4d760589efcf0e"

--000000000000ed4d760589efcf0e
Content-Type: text/plain; charset="UTF-8"

Hi Belisko,

I was thinking about this also, too. The only reason is that in meta-sunxi
they do a great job and they keep their layer clean, which is great I
think. The other layers are just based on the armbian distro, which is a
lot different, but for me it was much easier to integrate their patches,
patching scripts and bootloader scripts to a Yocto layer. That way the only
thing I do is that from time to time I just integrate their new patches and
that's it. There's no development in the layer is just re-use of the
armbian work and a wrapper around it. Therefore, it's hard, even no doable
to put those different architectures together. But definitely that decision
also bothered me a lot before I create the layer and I also don't like time
to be spend on the same thing from different people. Nevertheless, from my
point of view I couldn't find a way to put those things together. I've
tried but I couldn't do it.

Therefore, it was easier for me to do it the way I've done it. And after
all, although it doesn't seem right, at the same time this is the beauty of
the open source. I think the layers are just incompatible in the way that
they are do things. Also it's not bad to have alternatives.

Sunxi is a great community and I believe many of the armbian patches are
coming from there. Others not. Of course, having them all together would be
nice. But I don't think that it's possible because of the different
approach.

I hope this explains your question and even more that explains that was not
a decision to divide things or create more hassle for the same chips.

Regards,
Dimitris

Belisko Marek <marek.belisko@gmail.com> schrieb am Di., 28. Mai 2019, 11:49:

> Hi Dimitris,
>
> On Tue, May 28, 2019 at 11:01 AM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >
> > Hi Belisko,
> >
> > you can also have a look in to this layer:
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/
> > It's for allwinner H2,H3 and H5 boards that already have support on
> Armbian.
> > Pretty much is just a Yocto layer with all the patches and BSP support
> from Armbian.
> > It supports 4.14 and 4.19 mainline kernels only and also the PREEMPT-RT
> patches.
> > Warrior support was added recently, too.
> OK thanks. I think I'll stick with meta-sunxi ;). What about join
> forces and maintains one layer properly instead having it separated?
> >
> > A similar one is also this:
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-nanopi-neo4/
> >
> > Dimitris
> >
> > On Mon, May 27, 2019 at 7:33 PM Belisko Marek <marek.belisko@gmail.com>
> wrote:
> >>
> >> Hi Enrico,
> >>
> >> On Mon, May 27, 2019 at 5:44 PM Enrico <ebutera@users.sourceforge.net>
> wrote:
> >> >
> >> > Hi,
> >> >
> >> > i try to keep it maintained, but now i just have a lime2 for testing
> >> > on real hardware, and i don't have the resources to do test builds for
> >> > all the supported boards.
> >> > Your help would be welcome, i can't check right now if i have the
> >> > rights to add you as co-maintainer, anyway i will add you.
> >> Thanks I have few sunxi based boards so can do tests also on my setup.
> >> Pls ping me when you will add me. Thanks.
> >> >
> >> > Thanks for the help!
> >> >
> >> > Enrico
> >>
> >> Marek
> >> >
> >> > On Mon, May 27, 2019 at 4:50 PM Belisko Marek <
> marek.belisko@gmail.com> wrote:
> >> > >
> >> > > Hello,
> >> > >
> >> > > I'm just curious if meta-sunxi is still maintained? I was
> contributed
> >> > > to layer back while and when look now thud branch is un-compilable
> >> > > (dri2proto not replaced) and warrior branch not created yet. There
> is
> >> > > 14 issues + 6 pending pull requests. Added maintainers also in CC. I
> >> > > think it would be good to have sunxi properly maintained as boards
> >> > > with sunxi processors are popular. I can give a hand as
> co-maintainer
> >> > > if necessary. Thanks a lot.
> >> > >
> >> > > BR,
> >> > >
> >> > > marek
> >> > >
> >> > > --
> >> > > as simple and primitive as possible
> >> > > -------------------------------------------------
> >> > > Marek Belisko - OPEN-NANDRA
> >> > > Freelance Developer
> >> > >
> >> > > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >> > > Tel: +421 915 052 184
> >> > > skype: marekwhite
> >> > > twitter: #opennandra
> >> > > web: http://open-nandra.com
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> marek
>

--000000000000ed4d760589efcf0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Belisko,<div dir=3D"auto"><br></div><div dir=3D"auto">=
I was thinking about this also, too. The only reason is that in meta-sunxi =
they do a great job and they keep their layer clean, which is great I think=
. The other layers are just based on the armbian distro, which is a lot dif=
ferent, but for me it was much easier to integrate their patches, patching =
scripts and bootloader scripts to a Yocto layer. That way the only thing I =
do is that from time to time I just integrate their new patches and that&#3=
9;s it. There&#39;s no development in the layer is just re-use of the armbi=
an work and a wrapper around it. Therefore, it&#39;s hard, even no doable t=
o put those different architectures together. But definitely that decision =
also bothered me a lot before I create the layer and I also don&#39;t like =
time to be spend on the same thing from different people. Nevertheless, fro=
m my point of view I couldn&#39;t find a way to put those things together. =
I&#39;ve tried but I couldn&#39;t do it.</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Therefore, it was easier for me to do it the way I&#39;ve =
done it. And after all, although it doesn&#39;t seem right, at the same tim=
e this is the beauty of the open source. I think the layers are just incomp=
atible in the way that they are do things. Also it&#39;s not bad to have al=
ternatives.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Sunxi is a g=
reat community and I believe many of the armbian patches are coming from th=
ere. Others not. Of course, having them all together would be nice. But I d=
on&#39;t think that it&#39;s possible because of the different approach.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">I hope this explains your =
question and even more that explains that was not a decision to divide thin=
gs or create more hassle for the same chips.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Regards,</div><div dir=3D"auto">Dimitris</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Belisko =
Marek &lt;<a href=3D"mailto:marek.belisko@gmail.com">marek.belisko@gmail.co=
m</a>&gt; schrieb am Di., 28. Mai 2019, 11:49:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi Dimitris,<br>
<br>
On Tue, May 28, 2019 at 11:01 AM Dimitris Tassopoulos &lt;<a href=3D"mailto=
:dimtass@gmail.com" target=3D"_blank" rel=3D"noreferrer">dimtass@gmail.com<=
/a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Belisko,<br>
&gt;<br>
&gt; you can also have a look in to this layer: <a href=3D"http://layers.op=
enembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/" rel=3D"no=
referrer noreferrer" target=3D"_blank">http://layers.openembedded.org/layer=
index/branch/master/layer/meta-allwinner-hx/</a><br>
&gt; It&#39;s for allwinner H2,H3 and H5 boards that already have support o=
n Armbian.<br>
&gt; Pretty much is just a Yocto layer with all the patches and BSP support=
 from Armbian.<br>
&gt; It supports 4.14 and 4.19 mainline kernels only and also the PREEMPT-R=
T patches.<br>
&gt; Warrior support was added recently, too.<br>
OK thanks. I think I&#39;ll stick with meta-sunxi ;). What about join<br>
forces and maintains one layer properly instead having it separated?<br>
&gt;<br>
&gt; A similar one is also this: <a href=3D"http://layers.openembedded.org/=
layerindex/branch/master/layer/meta-nanopi-neo4/" rel=3D"noreferrer norefer=
rer" target=3D"_blank">http://layers.openembedded.org/layerindex/branch/mas=
ter/layer/meta-nanopi-neo4/</a><br>
&gt;<br>
&gt; Dimitris<br>
&gt;<br>
&gt; On Mon, May 27, 2019 at 7:33 PM Belisko Marek &lt;<a href=3D"mailto:ma=
rek.belisko@gmail.com" target=3D"_blank" rel=3D"noreferrer">marek.belisko@g=
mail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Enrico,<br>
&gt;&gt;<br>
&gt;&gt; On Mon, May 27, 2019 at 5:44 PM Enrico &lt;<a href=3D"mailto:ebute=
ra@users.sourceforge.net" target=3D"_blank" rel=3D"noreferrer">ebutera@user=
s.sourceforge.net</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; i try to keep it maintained, but now i just have a lime2 for =
testing<br>
&gt;&gt; &gt; on real hardware, and i don&#39;t have the resources to do te=
st builds for<br>
&gt;&gt; &gt; all the supported boards.<br>
&gt;&gt; &gt; Your help would be welcome, i can&#39;t check right now if i =
have the<br>
&gt;&gt; &gt; rights to add you as co-maintainer, anyway i will add you.<br=
>
&gt;&gt; Thanks I have few sunxi based boards so can do tests also on my se=
tup.<br>
&gt;&gt; Pls ping me when you will add me. Thanks.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks for the help!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Enrico<br>
&gt;&gt;<br>
&gt;&gt; Marek<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, May 27, 2019 at 4:50 PM Belisko Marek &lt;<a href=3D"=
mailto:marek.belisko@gmail.com" target=3D"_blank" rel=3D"noreferrer">marek.=
belisko@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Hello,<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; I&#39;m just curious if meta-sunxi is still maintained? =
I was contributed<br>
&gt;&gt; &gt; &gt; to layer back while and when look now thud branch is un-=
compilable<br>
&gt;&gt; &gt; &gt; (dri2proto not replaced) and warrior branch not created =
yet. There is<br>
&gt;&gt; &gt; &gt; 14 issues + 6 pending pull requests. Added maintainers a=
lso in CC. I<br>
&gt;&gt; &gt; &gt; think it would be good to have sunxi properly maintained=
 as boards<br>
&gt;&gt; &gt; &gt; with sunxi processors are popular. I can give a hand as =
co-maintainer<br>
&gt;&gt; &gt; &gt; if necessary. Thanks a lot.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; BR,<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; marek<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; --<br>
&gt;&gt; &gt; &gt; as simple and primitive as possible<br>
&gt;&gt; &gt; &gt; -------------------------------------------------<br>
&gt;&gt; &gt; &gt; Marek Belisko - OPEN-NANDRA<br>
&gt;&gt; &gt; &gt; Freelance Developer<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt;&gt; &gt; &gt; Tel: +421 915 052 184<br>
&gt;&gt; &gt; &gt; skype: marekwhite<br>
&gt;&gt; &gt; &gt; twitter: #opennandra<br>
&gt;&gt; &gt; &gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferre=
r noreferrer" target=3D"_blank">http://open-nandra.com</a><br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D=
"noreferrer">yocto@yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br>
<br>
<br>
<br>
marek<br>
</blockquote></div>

--000000000000ed4d760589efcf0e--
