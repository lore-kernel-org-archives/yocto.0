Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AFF7E00D45; Wed, 29 May 2019 04:23:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D150CE00B8F
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 04:23:26 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id x4so1486874wrt.6
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 04:23:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=W9GMc1Mz4BEdLyAQSgdSWeXOi75DGaYmUWr0VjDhxT0=;
	b=LHTDMdBz99sxquybm4jPBmkOY3gk59igGswMhpmpazP5w77uzi8CdQuAeBx5y5q2Ap
	56IjgR+lYWwFfJUZobfzkYW6owWnklO4fbc3By3WwOI8WwX+S3+0OpNknZwXMOSPBt1X
	x1QzuQeE3l0ve8dw/+9lcYIVfqNd13A6bQDIWTTEe0INRSOdb0jE4CU9++Zrz5TdO2ID
	kVmHSAFftexM6rhlxogGF152HFL/+PIEtjKcOFnfW9lGCww2VYC/2iwe+FnYmpYSxkUn
	gTi5STsNpjZ9e6C8DKZaTmbBztaoqZ1eaxhewyXez/hWB5g4ZaZAZyEnTTnwkr9FCNh8
	c+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=W9GMc1Mz4BEdLyAQSgdSWeXOi75DGaYmUWr0VjDhxT0=;
	b=gJfkhTlQtIk+OUyCFVuHMOWi5ksAAsJxFTjl+SDXtTRA5venNELQxX/jj7PG5sBXWz
	K2qbYMnUBxr1AUpHD6L8R0wfKFuM+g9f96eAqY4bNvh6cy8hA3DuB7DdJbnv6UMsCemJ
	wrIS3Rw3sYXsY0rmAWY+nXzoe479+Trn9e56q6ncagYVaI69BNcbX70reXdDKyBad7SF
	Vw/5KOu6ktAlGq9ZAYU8FLoV51NHDYWCMmqfoADx1IN+C8ycfsYi2hsGuokTJdhGM12w
	Yz0g9qfrskG6CzTddfP+9+w6Zm+Q+XXgN5Yj1pmad6utvIxg+Y7rtwJm5Eh9vKDNXpws
	ySwQ==
X-Gm-Message-State: APjAAAVhUuF9fQ9z4AWu6zAk4re6dqs9nqSxUASBZ4RkKvXKZQBdxiIP
	8orcdJIRbh4xLhzDVud0D8AKIqHgOKyWGWxp6sBGmkja
X-Google-Smtp-Source: APXvYqzY7iRWIWwVDrt2Poc6YL+fcgMFoeYGE4s94iQmDmhi8TbAp5bS6x7rwbEXOFmbJI0DZmSqQem8AZLAyghXENo=
X-Received: by 2002:adf:e309:: with SMTP id b9mr79765721wrj.135.1559129005867; 
	Wed, 29 May 2019 04:23:25 -0700 (PDT)
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
	<fe48d7dc-8421-3230-9043-f433cc4a8e02@3mdeb.com>
In-Reply-To: <fe48d7dc-8421-3230-9043-f433cc4a8e02@3mdeb.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 29 May 2019 13:23:14 +0200
Message-ID: <CAAfyv36E6f_gVMOLqti1Az4hm06XnvHe0EvhxM3juyuYkt5JJw@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 29 May 2019 11:23:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maciej,

On Wed, May 29, 2019 at 1:08 PM Maciej Pijanowski
<maciej.pijanowski@3mdeb.com> wrote:
>
>
> On 29.05.2019 09:39, Belisko Marek wrote:
> > Hi Dimitris,
> >
> > On Wed, May 29, 2019 at 9:03 AM Dimitris Tassopoulos <dimtass@gmail.com=
> wrote:
> >> Hi Marek,
> >>
> >> that's correct. I have a branch though which I've started to experimen=
t and add support for Mali. I didn't finished because I've tried to do this=
 by myself from the scratch and soon I've hit a wall. Nevertheless, I've do=
ne the same for the rk3399 for nanopi-neo4 and during this process I've lea=
rned a lot on how to do it with some help from other people from the open s=
ource scene. The graphics stack was too complicated for me in the beginning=
.
> > You can maybe look to meta-sunxi there is sunxi-mali driver +
> > libraries which will add support for that. When I've set that package
> > to PREFERRED_PROVIDER_virtual/gles2 I get issues with compilation
> > gtk3+ and others. I've spend 2 hours looking and trying yesterday but
> > without any success. Also pls look at this communication:
> > https://github.com/linux-sunxi/meta-sunxi/issues/144 (looks like we
> > can use opensource drivers + libs later). Thanks.
> What are you trying to achieve? Which kernel version are you using?
> Isn't the mali recipe in meta-sunxi quite dated already? Can it work
> with mainline kernel correctly?
I'm trying to make meta-sunxi in state where if you pull it and add to
your project it will at least build ;).
I juts jumped in to help a bit so please be patient with me ;).
Current state in meta-sunxi is that sunxi-mali is set as
PREFFERED_PROVIDED for various opengl technologies.
Also I'm not sure if it can wotj but anyway can be compiled (kernel
modules + userspace stuff).
Basically if you currently run on actual master core-image-sato you'll
get those kind of errors. I think there must be some mis-configuration
or so.
>
> I would suggest to try the recent blobs as described in this post:
> https://bootlin.com/blog/mali-opengl-support-on-allwinner-platforms-with-=
mainline-linux/
Yes this would be other option to use opensource stuff from bootlin or
one from oe (when it will be available)
>
> As I've written previously, I have been using the Wayland / Qt with
> good performance on H3 using the mainline kernel. Is it something you
> are looking for?
> You can take a look at my dirty branch - maybe this will be any help:
> https://github.com/3mdeb/meta-sunxi/tree/weston-with-kms/recipes-graphics=
/mali
OK thanks I'll try to take a look.
>
> Unfortunately, I had stopped working on that and presently do not have mu=
ch
> time to clean up / get back to it. I can provide some support and / or ge=
t
> back to it if it seems valuable and there is some interest.
+1
> >> Therefore now that I feel much more confident with it I'm going to re-=
try and finish with my branch. Armbian does have support, so I'll try to st=
ick to the Armbian backend for maintenance reasons.
> >>
> >> I hope that this will be rather easy, because the dri driver should al=
ready be there, so the only thing I believe is needed is the blobs and to c=
reate symlinks for the various so libs to that blob.
> >>
> >> Anyway, I'll try to do that also. In the meantime I will also wait a b=
it to see if that merge between those two layers is possible and doable, wh=
ich will help to short the time and effort to do that.
> >>
> >> Regards,
> >> Dimitris
> > BR,
> >
> > marek
> >> Belisko Marek <marek.belisko@gmail.com> schrieb am Mi., 29. Mai 2019, =
08:37:
> >>> Hi Dimitris,
> >>>
> >>> On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos <dimtass@gmail.c=
om> wrote:
> >>>> Hi Enrico,
> >>>>
> >>>> I'm totally positive to any possibility for such integration. Person=
ally, that was the first thing I've tried to do before I start this layer, =
but I've failed as it got really complex and the overhead was too much afte=
r some point (at least for me). If you have look it's actually a mix of met=
a-sunxi and armbian, but I had to remove or change many stuff to fit the ar=
mbian in the layer.
> >>>>
> >>>> If you have time to have a look to my layer and you think that such =
kind of integration is possible and can be done in a more easy way, then fr=
om my side I'm all in.
> >>>> I believe that re-using the armbian patches is easier as it makes ma=
intenance much easier, there are more supported SBCs and also there is much=
 more testing involved in armbian and frequent updates fix those bugs.
> >>> I did check your layer and it seems that you're not using sunxi-mali
> >>> for opengl HW acceleration only mesa so SW rendering? Thanks.
> >>>> Please consider it and I can help as much as I can and my time allow=
s for that integration.
> >>>>
> >>>> Regards,
> >>>> Dimitris
> >>>>
> >>>>
> >>> Marek
> >>>> On Tue, May 28, 2019 at 12:56 PM Enrico <ebutera@users.sourceforge.n=
et> wrote:
> >>>>> On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <dimtass@gmai=
l.com> wrote:
> >>>>>>> I was thinking about this also, too. The only reason is that in m=
eta-sunxi they do a great job and they keep their layer clean, which is gre=
at I think. The other layers are just based on the armbian distro, which is=
 a lot different, but for me it was much easier to integrate their patches,=
 patching scripts and bootloader scripts to a Yocto layer. That way the onl=
y thing I do is that from time to time I just integrate their new patches a=
nd that's it. There's no development in the layer is just re-use of the arm=
bian work and a wrapper around it. Therefore, it's hard, even no doable to =
put those different architectures together. But definitely that decision al=
so bothered me a lot before I create the layer and I also don't like time t=
o be spend on the same thing from different people. Nevertheless, from my p=
oint of view I couldn't find a way to put those things together. I've tried=
 but I couldn't do it.
> >>>>>>>
> >>>>>>> Therefore, it was easier for me to do it the way I've done it. An=
d after all, although it doesn't seem right, at the same time this is the b=
eauty of the open source. I think the layers are just incompatible in the w=
ay that they are do things. Also it's not bad to have alternatives.
> >>>>>>>
> >>>>>>> Sunxi is a great community and I believe many of the armbian patc=
hes are coming from there. Others not. Of course, having them all together =
would be nice. But I don't think that it's possible because of the differen=
t approach.
> >>>>> It would be great to integrate all those different layers in
> >>>>> meta-sunxi,the main problem is that usually they come with their ow=
n
> >>>>> bootloader/kernel/etc.... so you have to *maintain* all these
> >>>>> different configurations.
> >>>>> Infact in the past i refused to do such things because i didn't hav=
e
> >>>>> the time to maintain all those different versions, it was just easi=
er
> >>>>> to support what was already in mainline uboot/kernel.
> >>>>>
> >>>>> But of course if someone wants to do it then it's welcome, the wors=
t
> >>>>> thing that can happen is that once an arch gets unmaintained it wil=
l
> >>>>> be removed.
> >>>>>
> >>>>> One thing that can be done anyway is to have those external layers
> >>>>> linked in the readme, so at least people will know they exist.
> >>>>>
> >>>>> Enrico
>
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> https://3mdeb.com | @3mdeb_com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

