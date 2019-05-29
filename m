Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3982DE00D33; Wed, 29 May 2019 00:39:15 -0700 (PDT)
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
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0503AE0049C
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 00:39:13 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id v22so803849wml.1
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 00:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qI1QlA3qZPJhxY1ht+gTMvRhzhU36fIvL90k08zooGY=;
	b=k/wffRQLQuQvibZry6L2H2wvbBQaAXpH5gY3wwIgmDbA95F44c7ga8hPaN+BZBQH8R
	/T3HS7tfHWJqLC9nXfgGJspkIerYfYPhaROrLVImkm9LA0MzN4DtNPE4Jc3f3eqrRMsr
	8SS5Zgh/+3VSc7CLRki10cknAY5Kgm9d+GQrz3G5G6q1xua6f0S7FXvTtCP+igF2Y5Rm
	jVqfVPe2VH72bgDnAFw5AxraeopAgxNgWPRxqAwi4R5FnZC6gkV8r3D+cBgWZNwdriiZ
	aqKZmPdIrxD2Q7UAAxOgaokjIQmT9X5GST8W1+vxyBJStkSEsaWEUfDuYtuRkHRTCUQi
	fc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qI1QlA3qZPJhxY1ht+gTMvRhzhU36fIvL90k08zooGY=;
	b=TSR9OwEeQui19Fsy2NhCWq6h8Wc9lXwltM85bKQT1KYoWJAoWRfEVb9Q5C23vnm02J
	kL3grvSDkeUHB5rPNsAW0XtNaDFd/HZNENJleHeXijvgWl/cj/c8zMCTLLkoyGcWp/wo
	No1dTrUCsh2zyuGA6NOqvUNZHv1JmePBAEC81tcB0txXE3EOxx9oBzC8QoxJxtozwEoa
	+vHQ7L/iHkjOMj7IEwj5MwHAJtEKi4zOtDdvBGWYrDjoCtLbSu0iTyRbJkm+ALQ83LOP
	j7Jb9RwcbVqZW83B2zALOd/TLy2FpEP/mXl6uChSFK0UEjQswq+Ol4kQOWP0W7B+qIs9
	OYFg==
X-Gm-Message-State: APjAAAUOC2sN+TulSAYv8+kZYpRgdYTPZI2iifn3x6nkIqEqGc7VH8oi
	HUNU0MpH3Iw25tGWLOZRu1H9dGZ0lbhpdYvRxkU=
X-Google-Smtp-Source: APXvYqw2eAWmEH5lAqovpg/PaG/5AjStcIw5PDP4y04/o4LMPmbi0S498QJ41Vs7kNnhdPrdN7OxTnG5vf1ZdiBBg/g=
X-Received: by 2002:a05:600c:1:: with SMTP id g1mr6077857wmc.43.1559115552978; 
	Wed, 29 May 2019 00:39:12 -0700 (PDT)
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
In-Reply-To: <CACKFPN2Zh9K4fymx+a-Ougw-H=CHKw=KxgimBpe40nOAgCESZg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 29 May 2019 09:39:01 +0200
Message-ID: <CAAfyv35B773mjZtK4E7jDCLHrjkRW-JdhEqTPM1pUGbfNz7PcA@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
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
X-List-Received-Date: Wed, 29 May 2019 07:39:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dimitris,

On Wed, May 29, 2019 at 9:03 AM Dimitris Tassopoulos <dimtass@gmail.com> wr=
ote:
>
> Hi Marek,
>
> that's correct. I have a branch though which I've started to experiment a=
nd add support for Mali. I didn't finished because I've tried to do this by=
 myself from the scratch and soon I've hit a wall. Nevertheless, I've done =
the same for the rk3399 for nanopi-neo4 and during this process I've learne=
d a lot on how to do it with some help from other people from the open sour=
ce scene. The graphics stack was too complicated for me in the beginning.
You can maybe look to meta-sunxi there is sunxi-mali driver +
libraries which will add support for that. When I've set that package
to PREFERRED_PROVIDER_virtual/gles2 I get issues with compilation
gtk3+ and others. I've spend 2 hours looking and trying yesterday but
without any success. Also pls look at this communication:
https://github.com/linux-sunxi/meta-sunxi/issues/144 (looks like we
can use opensource drivers + libs later). Thanks.
>
> Therefore now that I feel much more confident with it I'm going to re-try=
 and finish with my branch. Armbian does have support, so I'll try to stick=
 to the Armbian backend for maintenance reasons.
>
> I hope that this will be rather easy, because the dri driver should alrea=
dy be there, so the only thing I believe is needed is the blobs and to crea=
te symlinks for the various so libs to that blob.
>
> Anyway, I'll try to do that also. In the meantime I will also wait a bit =
to see if that merge between those two layers is possible and doable, which=
 will help to short the time and effort to do that.
>
> Regards,
> Dimitris

BR,

marek
>
> Belisko Marek <marek.belisko@gmail.com> schrieb am Mi., 29. Mai 2019, 08:=
37:
>>
>> Hi Dimitris,
>>
>> On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos <dimtass@gmail.com>=
 wrote:
>> >
>> > Hi Enrico,
>> >
>> > I'm totally positive to any possibility for such integration. Personal=
ly, that was the first thing I've tried to do before I start this layer, bu=
t I've failed as it got really complex and the overhead was too much after =
some point (at least for me). If you have look it's actually a mix of meta-=
sunxi and armbian, but I had to remove or change many stuff to fit the armb=
ian in the layer.
>> >
>> > If you have time to have a look to my layer and you think that such ki=
nd of integration is possible and can be done in a more easy way, then from=
 my side I'm all in.
>> > I believe that re-using the armbian patches is easier as it makes main=
tenance much easier, there are more supported SBCs and also there is much m=
ore testing involved in armbian and frequent updates fix those bugs.
>> I did check your layer and it seems that you're not using sunxi-mali
>> for opengl HW acceleration only mesa so SW rendering? Thanks.
>> >
>> > Please consider it and I can help as much as I can and my time allows =
for that integration.
>> >
>> > Regards,
>> > Dimitris
>> >
>> >
>> Marek
>> >
>> > On Tue, May 28, 2019 at 12:56 PM Enrico <ebutera@users.sourceforge.net=
> wrote:
>> >>
>> >> On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <dimtass@gmail.=
com> wrote:
>> >> >
>> >> > >
>> >> > > I was thinking about this also, too. The only reason is that in m=
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
>> >> > >
>> >> > > Therefore, it was easier for me to do it the way I've done it. An=
d after all, although it doesn't seem right, at the same time this is the b=
eauty of the open source. I think the layers are just incompatible in the w=
ay that they are do things. Also it's not bad to have alternatives.
>> >> > >
>> >> > > Sunxi is a great community and I believe many of the armbian patc=
hes are coming from there. Others not. Of course, having them all together =
would be nice. But I don't think that it's possible because of the differen=
t approach.
>> >>
>> >> It would be great to integrate all those different layers in
>> >> meta-sunxi,the main problem is that usually they come with their own
>> >> bootloader/kernel/etc.... so you have to *maintain* all these
>> >> different configurations.
>> >> Infact in the past i refused to do such things because i didn't have
>> >> the time to maintain all those different versions, it was just easier
>> >> to support what was already in mainline uboot/kernel.
>> >>
>> >> But of course if someone wants to do it then it's welcome, the worst
>> >> thing that can happen is that once an arch gets unmaintained it will
>> >> be removed.
>> >>
>> >> One thing that can be done anyway is to have those external layers
>> >> linked in the readme, so at least people will know they exist.
>> >>
>> >> Enrico

