Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0E27E00D3A; Tue, 28 May 2019 04:07:04 -0700 (PDT)
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
	*      [209.85.167.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 126D7E00D38
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 04:07:02 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id w144so13894013oie.12
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 04:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dS/i2mMqhjLuQs7SH4wSYw28iIT41N3s9SmwDc03/M8=;
	b=n+oo8qqo6AfvLMvNQNloyLFBevswT4sYmKrQvN1xj5IxE832NF4pWLp/ro6U0E2Ltp
	dZx1QgZ8HYCFzKC6lrcfc/hdxx8Cm3/0VVZaLZAQ5zwIdRVElSqfGXtX7sG1Wp3s3Npq
	3yV/8d2DNXr6DA/KhUgD0Mb2fEPHYGm2SZ5MQdzctstvZ77DT3CKX1XTdDhSqg0Ky6zJ
	x8vemZPN6en8/BaNlHpaFOFh4ASMHFnmJdv/g93po57UjREIjPOHTKGtN08ZWqfniIcd
	nAgYBNf+2MBXlfoFgEgk3oablqdf4ZPrvFmusa3c59GGOeuh2FJL03YMhEC/lOrGcvQN
	3dQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dS/i2mMqhjLuQs7SH4wSYw28iIT41N3s9SmwDc03/M8=;
	b=KWLLSduKuNd9yBB2vGjTDbQcmdirXCgHDTMGqFg58pQ/5uTIrE6SKQVoMkcS2Wwhyk
	nNnNpLp9a5EQM+e0IJOJlAfoKKttBAu8lSdRLRwC9zrILSfilZuWfAKPrbsPuiTntLLT
	X3b1aSV2o5DQhEe1IVSpBoVucsG5APOJczfLij0l6Th543q+VWa9FBgLj/XZMg76qAXl
	1cJq454gKt978VqRBxMXgijpWmwdNqjL+AlTTgtxSFfPtS52tysIcV+Uz3INOJHV34cF
	qfdeBK+Zyj6bjfVZEVezFcH8YF6YqmBXsJEa45yKaSwwcGceukcXbZwQVGa3zC5VLhIm
	5WbA==
X-Gm-Message-State: APjAAAU3roNzCVbqlYU610fPCnkAwh6mgqseOSbHGaAM0JLY3mMZkHEr
	eMVcF5EIwi/LqgJ3hnmPVq1vGnwDrVe0KpKXjYk=
X-Google-Smtp-Source: APXvYqwmIgZhlLfJvrfNQTK32W0ht2ghhNamVPTRtpqB91W+Mv7cb0Z/56wc0zabQviYVgs3zIKv+RqtCyz5gOfN6fc=
X-Received: by 2002:aca:330b:: with SMTP id z11mr2169186oiz.148.1559041622265; 
	Tue, 28 May 2019 04:07:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34HAOaAaO1cyiQbR8P6mQPp8p3gCT2jM=UyQDGfvV-fYw@mail.gmail.com>
	<CA+2YH7ud9TX=ohQSk8XY=GzpewzFsXo6Z2eBJ=bXacyAsojV9A@mail.gmail.com>
	<CAAfyv34jJ362tu3x_8J1+FuV3zFpchkB8Ft9w-WERrxCNPxbvg@mail.gmail.com>
	<CACKFPN1bgM_DPDRRDxkjekqZ9gQwV9S+1MkHF42z6MvczD81Jg@mail.gmail.com>
	<CAAfyv36-ykHu2Gfet1CeuR8tjNgernF4m01AjnQaOzcFb-BZaw@mail.gmail.com>
	<CACKFPN1q13OJfCcRCP6aLxGOC+cM+2zjwoTLNbkAn5dAS+J_DA@mail.gmail.com>
	<CAAfyv36hNk8CXYEfYASZJ-tOPEUwZ23i1zyDdLbVWk6r9ONkDA@mail.gmail.com>
	<CA+2YH7vhko+jG6UTKHJrXGnv7AsCJP=GT4=trUUgkQ8cNQ5-0Q@mail.gmail.com>
In-Reply-To: <CA+2YH7vhko+jG6UTKHJrXGnv7AsCJP=GT4=trUUgkQ8cNQ5-0Q@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Tue, 28 May 2019 13:06:51 +0200
Message-ID: <CACKFPN3XaUoY532vj1oxTd2Nd3QNsT1Lx6TVQTQEWY2ELXNRRw@mail.gmail.com>
To: Enrico <ebutera@users.sourceforge.net>
Cc: Sergey Lapin <slapin@ossfans.org>,
	Nicolas Aguirre <aguirre.nicolas@gmail.com>,
	OpenEmbedded Development mailing list
	<openembedded-devel@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 28 May 2019 11:07:04 -0000
Content-Type: multipart/alternative; boundary="00000000000015d4250589f0aa08"

--00000000000015d4250589f0aa08
Content-Type: text/plain; charset="UTF-8"

Hi Enrico,

I'm totally positive to any possibility for such integration. Personally,
that was the first thing I've tried to do before I start this layer, but
I've failed as it got really complex and the overhead was too much after
some point (at least for me). If you have look it's actually a mix of
meta-sunxi and armbian, but I had to remove or change many stuff to fit the
armbian in the layer.

If you have time to have a look to my layer and you think that such kind of
integration is possible and can be done in a more easy way, then from my
side I'm all in.
I believe that re-using the armbian patches is easier as it makes
maintenance much easier, there are more supported SBCs and also there is
much more testing involved in armbian and frequent updates fix those bugs.

Please consider it and I can help as much as I can and my time allows for
that integration.

Regards,
Dimitris



On Tue, May 28, 2019 at 12:56 PM Enrico <ebutera@users.sourceforge.net>
wrote:

> On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >
> > >
> > > I was thinking about this also, too. The only reason is that in
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
> > >
> > > Therefore, it was easier for me to do it the way I've done it. And
> after all, although it doesn't seem right, at the same time this is the
> beauty of the open source. I think the layers are just incompatible in the
> way that they are do things. Also it's not bad to have alternatives.
> > >
> > > Sunxi is a great community and I believe many of the armbian patches
> are coming from there. Others not. Of course, having them all together
> would be nice. But I don't think that it's possible because of the
> different approach.
>
> It would be great to integrate all those different layers in
> meta-sunxi,the main problem is that usually they come with their own
> bootloader/kernel/etc.... so you have to *maintain* all these
> different configurations.
> Infact in the past i refused to do such things because i didn't have
> the time to maintain all those different versions, it was just easier
> to support what was already in mainline uboot/kernel.
>
> But of course if someone wants to do it then it's welcome, the worst
> thing that can happen is that once an arch gets unmaintained it will
> be removed.
>
> One thing that can be done anyway is to have those external layers
> linked in the readme, so at least people will know they exist.
>
> Enrico
>

--00000000000015d4250589f0aa08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Enrico,<div><br></div><div>I&#39;m totally positive to =
any possibility for such integration. Personally, that was the first thing =
I&#39;ve tried to do before I start this layer, but I&#39;ve failed as it g=
ot really complex and the overhead was too much after some point (at least =
for me). If you have look it&#39;s actually a mix of meta-sunxi and armbian=
, but I had to remove or change many stuff to fit the armbian in the layer.=
</div><div><br></div><div>If you have time to have a look to my layer and y=
ou think that such kind of integration is possible and can be done in a mor=
e easy way, then from my side I&#39;m all in.</div><div>I believe that re-u=
sing the armbian patches is easier as it makes maintenance much easier, the=
re are more supported SBCs and also there is much more testing involved in =
armbian and frequent updates fix those bugs.</div><div><br></div><div>Pleas=
e consider it and I can help as much as I can and my time allows for that i=
ntegration.</div><div><br></div><div>Regards,</div><div>Dimitris</div><div>=
<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, May 28, 2019 at 12:56 PM Enrico &lt;<a hre=
f=3D"mailto:ebutera@users.sourceforge.net">ebutera@users.sourceforge.net</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On =
Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos &lt;<a href=3D"mailto:di=
mtass@gmail.com" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; I was thinking about this also, too. The only reason is that in m=
eta-sunxi they do a great job and they keep their layer clean, which is gre=
at I think. The other layers are just based on the armbian distro, which is=
 a lot different, but for me it was much easier to integrate their patches,=
 patching scripts and bootloader scripts to a Yocto layer. That way the onl=
y thing I do is that from time to time I just integrate their new patches a=
nd that&#39;s it. There&#39;s no development in the layer is just re-use of=
 the armbian work and a wrapper around it. Therefore, it&#39;s hard, even n=
o doable to put those different architectures together. But definitely that=
 decision also bothered me a lot before I create the layer and I also don&#=
39;t like time to be spend on the same thing from different people. Neverth=
eless, from my point of view I couldn&#39;t find a way to put those things =
together. I&#39;ve tried but I couldn&#39;t do it.<br>
&gt; &gt;<br>
&gt; &gt; Therefore, it was easier for me to do it the way I&#39;ve done it=
. And after all, although it doesn&#39;t seem right, at the same time this =
is the beauty of the open source. I think the layers are just incompatible =
in the way that they are do things. Also it&#39;s not bad to have alternati=
ves.<br>
&gt; &gt;<br>
&gt; &gt; Sunxi is a great community and I believe many of the armbian patc=
hes are coming from there. Others not. Of course, having them all together =
would be nice. But I don&#39;t think that it&#39;s possible because of the =
different approach.<br>
<br>
It would be great to integrate all those different layers in<br>
meta-sunxi,the main problem is that usually they come with their own<br>
bootloader/kernel/etc.... so you have to *maintain* all these<br>
different configurations.<br>
Infact in the past i refused to do such things because i didn&#39;t have<br=
>
the time to maintain all those different versions, it was just easier<br>
to support what was already in mainline uboot/kernel.<br>
<br>
But of course if someone wants to do it then it&#39;s welcome, the worst<br=
>
thing that can happen is that once an arch gets unmaintained it will<br>
be removed.<br>
<br>
One thing that can be done anyway is to have those external layers<br>
linked in the readme, so at least people will know they exist.<br>
<br>
Enrico<br>
</blockquote></div>

--00000000000015d4250589f0aa08--
