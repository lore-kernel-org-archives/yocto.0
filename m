Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8C18E00D33; Wed, 29 May 2019 00:03:42 -0700 (PDT)
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
	*      [209.85.167.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6291CE008E3
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 00:03:41 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id u64so1200862oib.1
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 00:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sn9JUWTnEQJHeiTrqjsptTEpoPVPdIQ/Ebdm02+KITg=;
	b=TNr0KBlDzJl0/b0xEebU4MIhIaratt4LbjhwbBQRmDrA7AL6ra6B2Jm7g+rOp8dEEs
	3ePw/G8pBXyjicXSgviyKXqNMbGhjnWq4w9raTR3ei4gW6+89ovyEvioFY5RccMNPbSa
	KBIVheYPQMQe1Y1jil+EY1t0QizwBazPblqotIfBsoU6grop+TelgHGE3bTO2LSNcqZa
	YphM09lebec53K6tFNFUa+YSkvopoB8trsKTBhkkCcdprVDwIghPCnNyQvL+Dp7Ad7kI
	GSVgHEvFD7XdZdGnM8EonvdIk2KXysVXiOndmZ/RuRuwWVUZvZVVlie4M8LR8OqLUK0m
	QV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sn9JUWTnEQJHeiTrqjsptTEpoPVPdIQ/Ebdm02+KITg=;
	b=EvX+1QWtUsVyJ++OmH+WlOyHtGV13wbucDI8IbQGJydgfH7aqg79cjqV2CI2z04vfh
	o/J3tthoL6xD+kpKAFGpAa3uRqeZq3xYUbuEcDJOXPj393LvGJ4GKTPelZnqD5KVreB4
	q/uWHS0gVMHggjULXhwAy4W0Qxc1jczTiGnBDE6Y6BPHmUjkC6ote1DytpiOqPQlsh/S
	Ka9lkICXt1Uz5vnP9ChM7cM2yTgHJGjDcmsuqgsaavQcm91ihjWhnGjpnlY/ALyigQf9
	cHd2+SqbxnhKrdUZ93SX23SAPbaQMW14XUBfLehVwVw/KD8RN4Y8GHXiRa0FmWKmeiOZ
	Ar8g==
X-Gm-Message-State: APjAAAXOPrCBJ1zZWpf6+rcPtaWogIIT87g1nfqve6rXZku/ZMM8U+GV
	9m0+kbfbtmeDterhqH7NA/eyNmA0uvLgAIZ4m44KxYXg
X-Google-Smtp-Source: APXvYqxH58FZckMJh60ylU9XIxzG0t6+64tyHkcv7L0Toom3AhMnbb9CtLkdnuvViPpq3qtLhwR0qz2CI2F5fSxWQMs=
X-Received: by 2002:aca:330b:: with SMTP id z11mr5054961oiz.148.1559113420606; 
	Wed, 29 May 2019 00:03:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
	<CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
	<CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
	<CACKFPN1q13OJfCcRCP6aLxGOC+cM+2zjwoTLNbkAn5dAS+J_DA@mail.gmail.com>
	<CAAfyv36hNk8CXYEfYASZJ-tOPEUwZ23i1zyDdLbVWk6r9ONkDA@mail.gmail.com>
	<CA+2YH7vhko+jG6UTKHJrXGnv7AsCJP=GT4=trUUgkQ8cNQ5-0Q@mail.gmail.com>
	<CACKFPN3XaUoY532vj1oxTd2Nd3QNsT1Lx6TVQTQEWY2ELXNRRw@mail.gmail.com>
	<CAAfyv35FO2+wBpWTB2muyXGUBG3pgCvcVXon1d0BNuzJ7g9uKA@mail.gmail.com>
In-Reply-To: <CAAfyv35FO2+wBpWTB2muyXGUBG3pgCvcVXon1d0BNuzJ7g9uKA@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 29 May 2019 09:03:27 +0200
Message-ID: <CACKFPN2Zh9K4fymx+a-Ougw-H=CHKw=KxgimBpe40nOAgCESZg@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 May 2019 07:03:43 -0000
Content-Type: multipart/alternative; boundary="00000000000099931a058a016161"

--00000000000099931a058a016161
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

that's correct. I have a branch though which I've started to experiment and
add support for Mali. I didn't finished because I've tried to do this by
myself from the scratch and soon I've hit a wall. Nevertheless, I've done
the same for the rk3399 for nanopi-neo4 and during this process I've
learned a lot on how to do it with some help from other people from the
open source scene. The graphics stack was too complicated for me in the
beginning.

Therefore now that I feel much more confident with it I'm going to re-try
and finish with my branch. Armbian does have support, so I'll try to stick
to the Armbian backend for maintenance reasons.

I hope that this will be rather easy, because the dri driver should already
be there, so the only thing I believe is needed is the blobs and to create
symlinks for the various so libs to that blob.

Anyway, I'll try to do that also. In the meantime I will also wait a bit to
see if that merge between those two layers is possible and doable, which
will help to short the time and effort to do that.

Regards,
Dimitris

Belisko Marek <marek.belisko@gmail.com> schrieb am Mi., 29. Mai 2019, 08:37:

> Hi Dimitris,
>
> On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >
> > Hi Enrico,
> >
> > I'm totally positive to any possibility for such integration.
> Personally, that was the first thing I've tried to do before I start this
> layer, but I've failed as it got really complex and the overhead was too
> much after some point (at least for me). If you have look it's actually a
> mix of meta-sunxi and armbian, but I had to remove or change many stuff to
> fit the armbian in the layer.
> >
> > If you have time to have a look to my layer and you think that such kind
> of integration is possible and can be done in a more easy way, then from my
> side I'm all in.
> > I believe that re-using the armbian patches is easier as it makes
> maintenance much easier, there are more supported SBCs and also there is
> much more testing involved in armbian and frequent updates fix those bugs.
> I did check your layer and it seems that you're not using sunxi-mali
> for opengl HW acceleration only mesa so SW rendering? Thanks.
> >
> > Please consider it and I can help as much as I can and my time allows
> for that integration.
> >
> > Regards,
> > Dimitris
> >
> >
> Marek
> >
> > On Tue, May 28, 2019 at 12:56 PM Enrico <ebutera@users.sourceforge.net>
> wrote:
> >>
> >> On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <
> dimtass@gmail.com> wrote:
> >> >
> >> > >
> >> > > I was thinking about this also, too. The only reason is that in
> meta-sunxi they do a great job and they keep their layer clean, which is
> great I think. The other layers are just based on the armbian distro, which
> is a lot different, but for me it was much easier to integrate their
> patches, patching scripts and bootloader scripts to a Yocto layer. That way
> the only thing I do is that from time to time I just integrate their new
> patches and that's it. There's no development in the layer is just re-use
> of the armbian work and a wrapper around it. Therefore, it's hard, even no
> doable to put those different architectures together. But definitely that
> decision also bothered me a lot before I create the layer and I also don't
> like time to be spend on the same thing from different people.
> Nevertheless, from my point of view I couldn't find a way to put those
> things together. I've tried but I couldn't do it.
> >> > >
> >> > > Therefore, it was easier for me to do it the way I've done it. And
> after all, although it doesn't seem right, at the same time this is the
> beauty of the open source. I think the layers are just incompatible in the
> way that they are do things. Also it's not bad to have alternatives.
> >> > >
> >> > > Sunxi is a great community and I believe many of the armbian
> patches are coming from there. Others not. Of course, having them all
> together would be nice. But I don't think that it's possible because of the
> different approach.
> >>
> >> It would be great to integrate all those different layers in
> >> meta-sunxi,the main problem is that usually they come with their own
> >> bootloader/kernel/etc.... so you have to *maintain* all these
> >> different configurations.
> >> Infact in the past i refused to do such things because i didn't have
> >> the time to maintain all those different versions, it was just easier
> >> to support what was already in mainline uboot/kernel.
> >>
> >> But of course if someone wants to do it then it's welcome, the worst
> >> thing that can happen is that once an arch gets unmaintained it will
> >> be removed.
> >>
> >> One thing that can be done anyway is to have those external layers
> >> linked in the readme, so at least people will know they exist.
> >>
> >> Enrico
>

--00000000000099931a058a016161
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Marek,<div dir=3D"auto"><br></div><div dir=3D"auto">th=
at&#39;s correct. I have a branch though which I&#39;ve started to experime=
nt and add support for Mali. I didn&#39;t finished because I&#39;ve tried t=
o do this by myself from the scratch and soon I&#39;ve hit a wall. Neverthe=
less, I&#39;ve done the same for the rk3399 for nanopi-neo4 and during this=
 process I&#39;ve learned a lot on how to do it with some help from other p=
eople from the open source scene. The graphics stack was too complicated fo=
r me in the beginning.</div><div dir=3D"auto"><br></div><div dir=3D"auto">T=
herefore now that I feel much more confident with it I&#39;m going to re-tr=
y and finish with my branch. Armbian does have support, so I&#39;ll try to =
stick to the Armbian backend for maintenance reasons.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">I hope that this will be rather easy, because=
 the dri driver should already be there, so the only thing I believe is nee=
ded is the blobs and to create symlinks for the various so libs to that blo=
b.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Anyway, I&#39;ll try =
to do that also. In the meantime I will also wait a bit to see if that merg=
e between those two layers is possible and doable, which will help to short=
 the time and effort to do that.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Regards,</div><div dir=3D"auto">Dimitris</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Belisko Marek &lt;<=
a href=3D"mailto:marek.belisko@gmail.com">marek.belisko@gmail.com</a>&gt; s=
chrieb am Mi., 29. Mai 2019, 08:37:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>Hi Dimitris,<br>
<br>
On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos &lt;<a href=3D"mailto:=
dimtass@gmail.com" target=3D"_blank" rel=3D"noreferrer">dimtass@gmail.com</=
a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Enrico,<br>
&gt;<br>
&gt; I&#39;m totally positive to any possibility for such integration. Pers=
onally, that was the first thing I&#39;ve tried to do before I start this l=
ayer, but I&#39;ve failed as it got really complex and the overhead was too=
 much after some point (at least for me). If you have look it&#39;s actuall=
y a mix of meta-sunxi and armbian, but I had to remove or change many stuff=
 to fit the armbian in the layer.<br>
&gt;<br>
&gt; If you have time to have a look to my layer and you think that such ki=
nd of integration is possible and can be done in a more easy way, then from=
 my side I&#39;m all in.<br>
&gt; I believe that re-using the armbian patches is easier as it makes main=
tenance much easier, there are more supported SBCs and also there is much m=
ore testing involved in armbian and frequent updates fix those bugs.<br>
I did check your layer and it seems that you&#39;re not using sunxi-mali<br=
>
for opengl HW acceleration only mesa so SW rendering? Thanks.<br>
&gt;<br>
&gt; Please consider it and I can help as much as I can and my time allows =
for that integration.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Dimitris<br>
&gt;<br>
&gt;<br>
Marek<br>
&gt;<br>
&gt; On Tue, May 28, 2019 at 12:56 PM Enrico &lt;<a href=3D"mailto:ebutera@=
users.sourceforge.net" target=3D"_blank" rel=3D"noreferrer">ebutera@users.s=
ourceforge.net</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos &lt;<a href=
=3D"mailto:dimtass@gmail.com" target=3D"_blank" rel=3D"noreferrer">dimtass@=
gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; I was thinking about this also, too. The only reason is =
that in meta-sunxi they do a great job and they keep their layer clean, whi=
ch is great I think. The other layers are just based on the armbian distro,=
 which is a lot different, but for me it was much easier to integrate their=
 patches, patching scripts and bootloader scripts to a Yocto layer. That wa=
y the only thing I do is that from time to time I just integrate their new =
patches and that&#39;s it. There&#39;s no development in the layer is just =
re-use of the armbian work and a wrapper around it. Therefore, it&#39;s har=
d, even no doable to put those different architectures together. But defini=
tely that decision also bothered me a lot before I create the layer and I a=
lso don&#39;t like time to be spend on the same thing from different people=
. Nevertheless, from my point of view I couldn&#39;t find a way to put thos=
e things together. I&#39;ve tried but I couldn&#39;t do it.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Therefore, it was easier for me to do it the way I&#39;v=
e done it. And after all, although it doesn&#39;t seem right, at the same t=
ime this is the beauty of the open source. I think the layers are just inco=
mpatible in the way that they are do things. Also it&#39;s not bad to have =
alternatives.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; Sunxi is a great community and I believe many of the arm=
bian patches are coming from there. Others not. Of course, having them all =
together would be nice. But I don&#39;t think that it&#39;s possible becaus=
e of the different approach.<br>
&gt;&gt;<br>
&gt;&gt; It would be great to integrate all those different layers in<br>
&gt;&gt; meta-sunxi,the main problem is that usually they come with their o=
wn<br>
&gt;&gt; bootloader/kernel/etc.... so you have to *maintain* all these<br>
&gt;&gt; different configurations.<br>
&gt;&gt; Infact in the past i refused to do such things because i didn&#39;=
t have<br>
&gt;&gt; the time to maintain all those different versions, it was just eas=
ier<br>
&gt;&gt; to support what was already in mainline uboot/kernel.<br>
&gt;&gt;<br>
&gt;&gt; But of course if someone wants to do it then it&#39;s welcome, the=
 worst<br>
&gt;&gt; thing that can happen is that once an arch gets unmaintained it wi=
ll<br>
&gt;&gt; be removed.<br>
&gt;&gt;<br>
&gt;&gt; One thing that can be done anyway is to have those external layers=
<br>
&gt;&gt; linked in the readme, so at least people will know they exist.<br>
&gt;&gt;<br>
&gt;&gt; Enrico<br>
</blockquote></div>

--00000000000099931a058a016161--
