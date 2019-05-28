Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65B36E00D35; Tue, 28 May 2019 02:01:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B19FEE00798
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:01:23 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id 66so17070970otq.0
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 02:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VPCgSkZdapBnjBaUZwfXhUKnY/WYf+xF1ySnZuEjSP0=;
	b=lNR+LEgWw3Pn/b2nYjlJV0AFKHxYqV5NjtSG0wH7jFEpVVfJd4pGyM7uXwGQTYX6qm
	Gn0tgrSRlwn9IQOK0xmd95JBbt6EU/i0VgsiCsqn8JyAGYkuYCKMJvwpiheaMZ3pbpF/
	oaVKUUIQ8VId73O9sWpfVdWqUrL2xrIFCfAfvxRU3Y644jVmLDqcV7x8PexoXIlE9Ed5
	Ea2u1cBdj1io5+dc73CgQyGyyz/49OnCEWqtG4ttWHj7WfUi5x5w5+rij62WKKypHu6W
	W4BHjw3u+8aRythO/U3gM5gw/rnC3wKxNaK6SQ8u9M14j13uXaFZOFkLL0xXu9UtbHL/
	wvYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VPCgSkZdapBnjBaUZwfXhUKnY/WYf+xF1ySnZuEjSP0=;
	b=LMtEv2JaREuRi+Ka9snZU0MLHX9uX4+dk7U68Tz+alsiyrQPGPxhsEBGpwXtnzeNZE
	msf1g93xOASsDZnNpt14H750KCJyTmTNttzE4MghVK+sIahoSDf4cbue66U43AMDD+dc
	64lCL7EH0ZQ+GNbbOoI3m+Miq3lstrWo7eA3neVNB1kWJ78UoA/dX+xG1UeM50EqcEEI
	Q58ITLKAOoNjvIcV/fXWkwrc/UFG6okC3BRkUYKFttbw+k8Wm0fifTRTxWm+b0kjvef5
	bph1oWAsCeZKuCg+m2OaM/PZZzYOikuzBVFqW6E9dweRlv1Tl1LgyveFe6z8+VKU8OKD
	hkFg==
X-Gm-Message-State: APjAAAU0ATQEWUE/0qYBN0q4wqN7c+DlfHnBa+cxzaQbVQb7Ju9W2US8
	trqd7+dsGNcvIYlfYSElyYzpSZiV4rRtn4ZQc7g=
X-Google-Smtp-Source: APXvYqwRT77Q72PpnmH1fGi+a9dtBldVgccnpCsDIZnq7Wo1uRkm03+THgrfW6oq2awb3XemZFU8CVn7ig7+VbrxPl4=
X-Received: by 2002:a9d:6189:: with SMTP id g9mr17547234otk.241.1559034083022; 
	Tue, 28 May 2019 02:01:23 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
In-Reply-To: <CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Tue, 28 May 2019 11:01:11 +0200
Message-ID: <CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Sergey Lapin <slapin@ossfans.org>,
	Enrico <ebutera@users.sourceforge.net>,
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
X-List-Received-Date: Tue, 28 May 2019 09:01:24 -0000
Content-Type: multipart/alternative; boundary="000000000000b61e1a0589eee8a0"

--000000000000b61e1a0589eee8a0
Content-Type: text/plain; charset="UTF-8"

Hi Belisko,

you can also have a look in to this layer:
http://layers.openembedded.org/layerindex/branch/master/layer/meta-allwinner-hx/
It's for allwinner H2,H3 and H5 boards that already have support on Armbian.
Pretty much is just a Yocto layer with all the patches and BSP support from
Armbian.
It supports 4.14 and 4.19 mainline kernels only and also the PREEMPT-RT
patches.
Warrior support was added recently, too.

A similar one is also this:
http://layers.openembedded.org/layerindex/branch/master/layer/meta-nanopi-neo4/

Dimitris

On Mon, May 27, 2019 at 7:33 PM Belisko Marek <marek.belisko@gmail.com>
wrote:

> Hi Enrico,
>
> On Mon, May 27, 2019 at 5:44 PM Enrico <ebutera@users.sourceforge.net>
> wrote:
> >
> > Hi,
> >
> > i try to keep it maintained, but now i just have a lime2 for testing
> > on real hardware, and i don't have the resources to do test builds for
> > all the supported boards.
> > Your help would be welcome, i can't check right now if i have the
> > rights to add you as co-maintainer, anyway i will add you.
> Thanks I have few sunxi based boards so can do tests also on my setup.
> Pls ping me when you will add me. Thanks.
> >
> > Thanks for the help!
> >
> > Enrico
>
> Marek
> >
> > On Mon, May 27, 2019 at 4:50 PM Belisko Marek <marek.belisko@gmail.com>
> wrote:
> > >
> > > Hello,
> > >
> > > I'm just curious if meta-sunxi is still maintained? I was contributed
> > > to layer back while and when look now thud branch is un-compilable
> > > (dri2proto not replaced) and warrior branch not created yet. There is
> > > 14 issues + 6 pending pull requests. Added maintainers also in CC. I
> > > think it would be good to have sunxi properly maintained as boards
> > > with sunxi processors are popular. I can give a hand as co-maintainer
> > > if necessary. Thanks a lot.
> > >
> > > BR,
> > >
> > > marek
> > >
> > > --
> > > as simple and primitive as possible
> > > -------------------------------------------------
> > > Marek Belisko - OPEN-NANDRA
> > > Freelance Developer
> > >
> > > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > > Tel: +421 915 052 184
> > > skype: marekwhite
> > > twitter: #opennandra
> > > web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b61e1a0589eee8a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Belisko,<div><br></div><div>you can also have a look in=
 to this layer:=C2=A0<a href=3D"http://layers.openembedded.org/layerindex/b=
ranch/master/layer/meta-allwinner-hx/">http://layers.openembedded.org/layer=
index/branch/master/layer/meta-allwinner-hx/</a></div><div>It&#39;s for all=
winner H2,H3 and H5 boards that already have support on Armbian.</div><div>=
Pretty much is just a Yocto layer with all the patches and BSP support from=
 Armbian.</div><div>It supports 4.14 and 4.19 mainline kernels only and als=
o the PREEMPT-RT patches.</div><div>Warrior support was added recently, too=
.</div><div><br></div><div>A similar one is also this:=C2=A0<a href=3D"http=
://layers.openembedded.org/layerindex/branch/master/layer/meta-nanopi-neo4/=
">http://layers.openembedded.org/layerindex/branch/master/layer/meta-nanopi=
-neo4/</a></div><div><br></div><div>Dimitris</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 27, 2019 at 7=
:33 PM Belisko Marek &lt;<a href=3D"mailto:marek.belisko@gmail.com">marek.b=
elisko@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi Enrico,<br>
<br>
On Mon, May 27, 2019 at 5:44 PM Enrico &lt;<a href=3D"mailto:ebutera@users.=
sourceforge.net" target=3D"_blank">ebutera@users.sourceforge.net</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; i try to keep it maintained, but now i just have a lime2 for testing<b=
r>
&gt; on real hardware, and i don&#39;t have the resources to do test builds=
 for<br>
&gt; all the supported boards.<br>
&gt; Your help would be welcome, i can&#39;t check right now if i have the<=
br>
&gt; rights to add you as co-maintainer, anyway i will add you.<br>
Thanks I have few sunxi based boards so can do tests also on my setup.<br>
Pls ping me when you will add me. Thanks.<br>
&gt;<br>
&gt; Thanks for the help!<br>
&gt;<br>
&gt; Enrico<br>
<br>
Marek<br>
&gt;<br>
&gt; On Mon, May 27, 2019 at 4:50 PM Belisko Marek &lt;<a href=3D"mailto:ma=
rek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt; wr=
ote:<br>
&gt; &gt;<br>
&gt; &gt; Hello,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m just curious if meta-sunxi is still maintained? I was con=
tributed<br>
&gt; &gt; to layer back while and when look now thud branch is un-compilabl=
e<br>
&gt; &gt; (dri2proto not replaced) and warrior branch not created yet. Ther=
e is<br>
&gt; &gt; 14 issues + 6 pending pull requests. Added maintainers also in CC=
. I<br>
&gt; &gt; think it would be good to have sunxi properly maintained as board=
s<br>
&gt; &gt; with sunxi processors are popular. I can give a hand as co-mainta=
iner<br>
&gt; &gt; if necessary. Thanks a lot.<br>
&gt; &gt;<br>
&gt; &gt; BR,<br>
&gt; &gt;<br>
&gt; &gt; marek<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; as simple and primitive as possible<br>
&gt; &gt; -------------------------------------------------<br>
&gt; &gt; Marek Belisko - OPEN-NANDRA<br>
&gt; &gt; Freelance Developer<br>
&gt; &gt;<br>
&gt; &gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt; &gt; Tel: +421 915 052 184<br>
&gt; &gt; skype: marekwhite<br>
&gt; &gt; twitter: #opennandra<br>
&gt; &gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=
=3D"_blank">http://open-nandra.com</a><br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000b61e1a0589eee8a0--
