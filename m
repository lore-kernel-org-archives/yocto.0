Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F804E00D44; Wed, 29 May 2019 01:03:42 -0700 (PDT)
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
	*      [209.85.210.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC45E008E3
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 01:03:41 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id l25so1109360otp.8
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 01:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6PZPZ1qN//p0Or7a/vCWyfB2eFDQVZuMeGaCgSK26Eg=;
	b=Qdyq68Rr/4iIHgnuCf84tR/tAGznGKPyUhygQGdufPUGb0or1FHnUxnMyT4S7cjJls
	EyrNojskYiPGTCmTRqWgACu3Yr+ays9hafFHVwBdNUAq6pF0fnO7B5phQv2wr25AwKeL
	q2yzPix6/5uiezT5pOAHrpbN+ryQWJQ9hYSMLmKR1RWwm8wXfj7irb/z82TrBFTfPEjS
	U5iN+BRtaf4ZTQN86sx2ef3XDEX8bzMZZVoAP1vmdLQ0GnDpyurMuHghdQWKz7Xscb+z
	4n16WaPfosZCZWqVsMw2ugqYFzfOsHS7u7LBONkfQKk1twsVGxyd7d34Qjh3Pr9wlp6L
	AYPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6PZPZ1qN//p0Or7a/vCWyfB2eFDQVZuMeGaCgSK26Eg=;
	b=pXFSNNskPq8JPzR54mMfcFer9OC3A2/lDo1+uedzRAN4oWwSZP7F4myCD5rkDsHypo
	nwvJ0MJ6YfgUqr0S55bnO2c5dJswnFdzOAcl38qjyf8r6uwoVz78b2hb5Ok7fgGGB4Go
	dMkBL7VwcZnEd/GdTBc+ZvAFMmvtupiJ/AUsGIEunQz45+A14M6M+GIGCdldyE2SnEHw
	ktZUJH3+vp+msdFX4mVw5aGqlyjL8mYCi4xuKizBKmxc0c2zAFO/f6XerM8dcrD6t/Vt
	t6BSfTS8Do+1/NpEGtwIpskt481cq2KTM30URiTHXpDbSkNP1amle+Zpy1/01O2ouN1L
	LB+Q==
X-Gm-Message-State: APjAAAW9strxxiVL3bxZ2FIosgNzFLLzaEZeMSr2aHhLWCzHA7kOyql0
	tFGe3IjUiR4Qbq6rUCQMjtcg4Yyh2SiF90gMpQ8=
X-Google-Smtp-Source: APXvYqxRB9ysGe8UNJQKjTlmUAWonwUkPfB5DFFTxgMipnCkSUeABOhz0zaZDfPxlvxTgMgu4L9FsjgPqBFAu+Ho6fA=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr42807717otp.91.1559117020317; 
	Wed, 29 May 2019 01:03:40 -0700 (PDT)
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
	<CACKFPN2Zh9K4fymx+a-Ougw-H=CHKw=KxgimBpe40nOAgCESZg@mail.gmail.com>
	<CAAfyv35B773mjZtK4E7jDCLHrjkRW-JdhEqTPM1pUGbfNz7PcA@mail.gmail.com>
In-Reply-To: <CAAfyv35B773mjZtK4E7jDCLHrjkRW-JdhEqTPM1pUGbfNz7PcA@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 29 May 2019 10:03:29 +0200
Message-ID: <CACKFPN3dx0NMRrS35eYhDKqd7e7yMWDAOKKu_Ei9LJ3euqiVFQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 May 2019 08:03:42 -0000
Content-Type: multipart/alternative; boundary="00000000000028caae058a0238b0"

--00000000000028caae058a0238b0
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

I see (and now remember) that there is a recipe for libgles for Mali400 and
A10/20.
Are you interested for this architecture or newer (like H2, H3, H5) ?

I can only make a wild guess that maybe because the driver is a bit old,
then if you
try to build new recipes then there might be some issues.

This also is the difference between the layers that I've mentioned before.
The meta-sunxi
is clean and raw layer. Meaning that you get more flexibility to add/remove
things and
also have a more generic layer. On the other hand, the other layer is not
really configurable
and flexible in the same depth but it takes the full armbian distro and
wraps it. So, if the
distro works, then the layer should work only with those components (of
course you can
do modifications). That's the difference in the approach I meant in the
previous mail.

I don't have any A10/20 hardware to test, but I could spin a build and look
at the errors you get.
If you send my your local conf file and your environment setup and build
command I ca
trigger a build and see if there's anything I can help with.

Regards,
Dimitris

On Wed, May 29, 2019 at 9:39 AM Belisko Marek <marek.belisko@gmail.com>
wrote:

> Hi Dimitris,
>
> On Wed, May 29, 2019 at 9:03 AM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >
> > Hi Marek,
> >
> > that's correct. I have a branch though which I've started to experiment
> and add support for Mali. I didn't finished because I've tried to do this
> by myself from the scratch and soon I've hit a wall. Nevertheless, I've
> done the same for the rk3399 for nanopi-neo4 and during this process I've
> learned a lot on how to do it with some help from other people from the
> open source scene. The graphics stack was too complicated for me in the
> beginning.
> You can maybe look to meta-sunxi there is sunxi-mali driver +
> libraries which will add support for that. When I've set that package
> to PREFERRED_PROVIDER_virtual/gles2 I get issues with compilation
> gtk3+ and others. I've spend 2 hours looking and trying yesterday but
> without any success. Also pls look at this communication:
> https://github.com/linux-sunxi/meta-sunxi/issues/144 (looks like we
> can use opensource drivers + libs later). Thanks.
> >
> > Therefore now that I feel much more confident with it I'm going to
> re-try and finish with my branch. Armbian does have support, so I'll try to
> stick to the Armbian backend for maintenance reasons.
> >
> > I hope that this will be rather easy, because the dri driver should
> already be there, so the only thing I believe is needed is the blobs and to
> create symlinks for the various so libs to that blob.
> >
> > Anyway, I'll try to do that also. In the meantime I will also wait a bit
> to see if that merge between those two layers is possible and doable, which
> will help to short the time and effort to do that.
> >
> > Regards,
> > Dimitris
>
> BR,
>
> marek
> >
> > Belisko Marek <marek.belisko@gmail.com> schrieb am Mi., 29. Mai 2019,
> 08:37:
> >>
> >> Hi Dimitris,
> >>
> >> On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >> >
> >> > Hi Enrico,
> >> >
> >> > I'm totally positive to any possibility for such integration.
> Personally, that was the first thing I've tried to do before I start this
> layer, but I've failed as it got really complex and the overhead was too
> much after some point (at least for me). If you have look it's actually a
> mix of meta-sunxi and armbian, but I had to remove or change many stuff to
> fit the armbian in the layer.
> >> >
> >> > If you have time to have a look to my layer and you think that such
> kind of integration is possible and can be done in a more easy way, then
> from my side I'm all in.
> >> > I believe that re-using the armbian patches is easier as it makes
> maintenance much easier, there are more supported SBCs and also there is
> much more testing involved in armbian and frequent updates fix those bugs.
> >> I did check your layer and it seems that you're not using sunxi-mali
> >> for opengl HW acceleration only mesa so SW rendering? Thanks.
> >> >
> >> > Please consider it and I can help as much as I can and my time allows
> for that integration.
> >> >
> >> > Regards,
> >> > Dimitris
> >> >
> >> >
> >> Marek
> >> >
> >> > On Tue, May 28, 2019 at 12:56 PM Enrico <
> ebutera@users.sourceforge.net> wrote:
> >> >>
> >> >> On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <
> dimtass@gmail.com> wrote:
> >> >> >
> >> >> > >
> >> >> > > I was thinking about this also, too. The only reason is that in
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
> >> >> > >
> >> >> > > Therefore, it was easier for me to do it the way I've done it.
> And after all, although it doesn't seem right, at the same time this is the
> beauty of the open source. I think the layers are just incompatible in the
> way that they are do things. Also it's not bad to have alternatives.
> >> >> > >
> >> >> > > Sunxi is a great community and I believe many of the armbian
> patches are coming from there. Others not. Of course, having them all
> together would be nice. But I don't think that it's possible because of the
> different approach.
> >> >>
> >> >> It would be great to integrate all those different layers in
> >> >> meta-sunxi,the main problem is that usually they come with their own
> >> >> bootloader/kernel/etc.... so you have to *maintain* all these
> >> >> different configurations.
> >> >> Infact in the past i refused to do such things because i didn't have
> >> >> the time to maintain all those different versions, it was just easier
> >> >> to support what was already in mainline uboot/kernel.
> >> >>
> >> >> But of course if someone wants to do it then it's welcome, the worst
> >> >> thing that can happen is that once an arch gets unmaintained it will
> >> >> be removed.
> >> >>
> >> >> One thing that can be done anyway is to have those external layers
> >> >> linked in the readme, so at least people will know they exist.
> >> >>
> >> >> Enrico
>

--00000000000028caae058a0238b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Marek,<div><br></div><div>I see (and now remember) that=
 there is a recipe for libgles for Mali400 and A10/20.</div><div>Are you in=
terested for this architecture or newer (like H2, H3, H5) ?</div><div><br><=
/div><div>I can only make a wild guess that maybe because the driver is a b=
it old, then if you</div><div>try to build new recipes then there might be =
some issues.</div><div><br></div><div>This also is the difference between t=
he layers that I&#39;ve mentioned before. The meta-sunxi</div><div>is clean=
 and raw layer. Meaning that you get more flexibility to add/remove things =
and</div><div>also have a more generic layer. On the other hand, the other =
layer is not really configurable</div><div>and flexible in the same depth b=
ut it takes the full armbian distro and wraps it. So, if the</div><div>dist=
ro works, then the layer should work only with those components (of course =
you can</div><div>do modifications). That&#39;s the difference in the appro=
ach I meant in the previous mail.</div><div><br></div><div>I don&#39;t have=
 any A10/20 hardware to test, but I could spin a build and look at the erro=
rs you get.</div><div>If you send my your local conf file and your environm=
ent setup and build command I ca</div><div>trigger a build and see if there=
&#39;s anything I can help with.</div><div><br></div><div>Regards,</div><di=
v>Dimitris</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, May 29, 2019 at 9:39 AM Belisko Marek &lt;<a href=
=3D"mailto:marek.belisko@gmail.com">marek.belisko@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Dimitris,<br>
<br>
On Wed, May 29, 2019 at 9:03 AM Dimitris Tassopoulos &lt;<a href=3D"mailto:=
dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Marek,<br>
&gt;<br>
&gt; that&#39;s correct. I have a branch though which I&#39;ve started to e=
xperiment and add support for Mali. I didn&#39;t finished because I&#39;ve =
tried to do this by myself from the scratch and soon I&#39;ve hit a wall. N=
evertheless, I&#39;ve done the same for the rk3399 for nanopi-neo4 and duri=
ng this process I&#39;ve learned a lot on how to do it with some help from =
other people from the open source scene. The graphics stack was too complic=
ated for me in the beginning.<br>
You can maybe look to meta-sunxi there is sunxi-mali driver +<br>
libraries which will add support for that. When I&#39;ve set that package<b=
r>
to PREFERRED_PROVIDER_virtual/gles2 I get issues with compilation<br>
gtk3+ and others. I&#39;ve spend 2 hours looking and trying yesterday but<b=
r>
without any success. Also pls look at this communication:<br>
<a href=3D"https://github.com/linux-sunxi/meta-sunxi/issues/144" rel=3D"nor=
eferrer" target=3D"_blank">https://github.com/linux-sunxi/meta-sunxi/issues=
/144</a> (looks like we<br>
can use opensource drivers + libs later). Thanks.<br>
&gt;<br>
&gt; Therefore now that I feel much more confident with it I&#39;m going to=
 re-try and finish with my branch. Armbian does have support, so I&#39;ll t=
ry to stick to the Armbian backend for maintenance reasons.<br>
&gt;<br>
&gt; I hope that this will be rather easy, because the dri driver should al=
ready be there, so the only thing I believe is needed is the blobs and to c=
reate symlinks for the various so libs to that blob.<br>
&gt;<br>
&gt; Anyway, I&#39;ll try to do that also. In the meantime I will also wait=
 a bit to see if that merge between those two layers is possible and doable=
, which will help to short the time and effort to do that.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Dimitris<br>
<br>
BR,<br>
<br>
marek<br>
&gt;<br>
&gt; Belisko Marek &lt;<a href=3D"mailto:marek.belisko@gmail.com" target=3D=
"_blank">marek.belisko@gmail.com</a>&gt; schrieb am Mi., 29. Mai 2019, 08:3=
7:<br>
&gt;&gt;<br>
&gt;&gt; Hi Dimitris,<br>
&gt;&gt;<br>
&gt;&gt; On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos &lt;<a href=
=3D"mailto:dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; w=
rote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi Enrico,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I&#39;m totally positive to any possibility for such integrat=
ion. Personally, that was the first thing I&#39;ve tried to do before I sta=
rt this layer, but I&#39;ve failed as it got really complex and the overhea=
d was too much after some point (at least for me). If you have look it&#39;=
s actually a mix of meta-sunxi and armbian, but I had to remove or change m=
any stuff to fit the armbian in the layer.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; If you have time to have a look to my layer and you think tha=
t such kind of integration is possible and can be done in a more easy way, =
then from my side I&#39;m all in.<br>
&gt;&gt; &gt; I believe that re-using the armbian patches is easier as it m=
akes maintenance much easier, there are more supported SBCs and also there =
is much more testing involved in armbian and frequent updates fix those bug=
s.<br>
&gt;&gt; I did check your layer and it seems that you&#39;re not using sunx=
i-mali<br>
&gt;&gt; for opengl HW acceleration only mesa so SW rendering? Thanks.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Please consider it and I can help as much as I can and my tim=
e allows for that integration.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Regards,<br>
&gt;&gt; &gt; Dimitris<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; Marek<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Tue, May 28, 2019 at 12:56 PM Enrico &lt;<a href=3D"mailto=
:ebutera@users.sourceforge.net" target=3D"_blank">ebutera@users.sourceforge=
.net</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos &lt=
;<a href=3D"mailto:dimtass@gmail.com" target=3D"_blank">dimtass@gmail.com</=
a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; I was thinking about this also, too. The only r=
eason is that in meta-sunxi they do a great job and they keep their layer c=
lean, which is great I think. The other layers are just based on the armbia=
n distro, which is a lot different, but for me it was much easier to integr=
ate their patches, patching scripts and bootloader scripts to a Yocto layer=
. That way the only thing I do is that from time to time I just integrate t=
heir new patches and that&#39;s it. There&#39;s no development in the layer=
 is just re-use of the armbian work and a wrapper around it. Therefore, it&=
#39;s hard, even no doable to put those different architectures together. B=
ut definitely that decision also bothered me a lot before I create the laye=
r and I also don&#39;t like time to be spend on the same thing from differe=
nt people. Nevertheless, from my point of view I couldn&#39;t find a way to=
 put those things together. I&#39;ve tried but I couldn&#39;t do it.<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Therefore, it was easier for me to do it the wa=
y I&#39;ve done it. And after all, although it doesn&#39;t seem right, at t=
he same time this is the beauty of the open source. I think the layers are =
just incompatible in the way that they are do things. Also it&#39;s not bad=
 to have alternatives.<br>
&gt;&gt; &gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; &gt; Sunxi is a great community and I believe many o=
f the armbian patches are coming from there. Others not. Of course, having =
them all together would be nice. But I don&#39;t think that it&#39;s possib=
le because of the different approach.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; It would be great to integrate all those different layers=
 in<br>
&gt;&gt; &gt;&gt; meta-sunxi,the main problem is that usually they come wit=
h their own<br>
&gt;&gt; &gt;&gt; bootloader/kernel/etc.... so you have to *maintain* all t=
hese<br>
&gt;&gt; &gt;&gt; different configurations.<br>
&gt;&gt; &gt;&gt; Infact in the past i refused to do such things because i =
didn&#39;t have<br>
&gt;&gt; &gt;&gt; the time to maintain all those different versions, it was=
 just easier<br>
&gt;&gt; &gt;&gt; to support what was already in mainline uboot/kernel.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; But of course if someone wants to do it then it&#39;s wel=
come, the worst<br>
&gt;&gt; &gt;&gt; thing that can happen is that once an arch gets unmaintai=
ned it will<br>
&gt;&gt; &gt;&gt; be removed.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; One thing that can be done anyway is to have those extern=
al layers<br>
&gt;&gt; &gt;&gt; linked in the readme, so at least people will know they e=
xist.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Enrico<br>
</blockquote></div>

--00000000000028caae058a0238b0--
