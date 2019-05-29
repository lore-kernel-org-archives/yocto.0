Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA025E00D43; Tue, 28 May 2019 23:37:12 -0700 (PDT)
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
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 693B6E00942
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 23:37:11 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id v19so3622877wmh.0
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 23:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=n28M5Bwu7PvPCIcpB64CePD4KPhJsMSzLlvUIxvfr+A=;
	b=PzBMyLSP0ZCm0PGd8heeFsQjbzeBqMMrNagxBKM+uj8Ndb7qG8AI4PjaRI2MTb3YyE
	YWeoO9AyGGAxkgFOWj7OewZUvp9UjFawXAWdlKWhH/5Kb+YVwKhq/NtVVulsAb+4WzOS
	O49Q6aDMyO4b6zWB+l3tIx3bjL+z2jWBKtplFLfPUmmKLm2nurdlg3yKluWYGK4MFP43
	IUfYKB4voECSg1YMCh4LLsd47nFQlTdonwfHjoPRM3sfRVT22H90DaCv2BVnlh/rXPDz
	tftrhGLCiHTxh6Ed6MQonVWreL6LsphOVspUVaiJiCzhgL02B9oCHvNe4aqaLEZDiPr/
	xCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=n28M5Bwu7PvPCIcpB64CePD4KPhJsMSzLlvUIxvfr+A=;
	b=tC+gDMZS5Y4NyMDTclS2/ti31TJeMPrwkuVsexli0rGdXR39HfoBL1uytkbNPeuSiM
	b/bYB4nCLn4J4y/GtiRj7jTAAbl6fRzO4zyT2G/fDzGgr4QstlpZ8UxePmp7MOJiALM7
	9oqUBEwpOs38XR5mAEGiEHV6Zn5LibI1YIZenG6Ul63yEom5g9oavm277XhUV0+Ajwmj
	Stag60UlVBIdhwBCjyNsF5AiJa837CCBgO3YeU+b54OQ5N81j/qWZBLHM6wC7kmwH6W7
	qRkPD6jHSEogLGtLK+Fo2NMPWaPImti+93bVf00H7wu8ddf/y3Z8HHbkv89omGMHZXpq
	nlRg==
X-Gm-Message-State: APjAAAVB+vpGkNqJgGvuic9FxcbSJm5Y/SiuJEGJ28B7lP9cxiEONiyF
	H5EqR/NSuIScwnkTYiAb3G4SmKN/+9UOD8FsmkE=
X-Google-Smtp-Source: APXvYqyQf3KVqYkD7Lu660wIiksi8wvxVkdCS78BwW41UCYj8YfD1WcGpUQSIISk421mAsq44PBzLnfRzwEUQgqOez4=
X-Received: by 2002:a1c:7a0d:: with SMTP id v13mr5617896wmc.44.1559111830219; 
	Tue, 28 May 2019 23:37:10 -0700 (PDT)
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
In-Reply-To: <CACKFPN3XaUoY532vj1oxTd2Nd3QNsT1Lx6TVQTQEWY2ELXNRRw@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 29 May 2019 08:36:58 +0200
Message-ID: <CAAfyv35FO2+wBpWTB2muyXGUBG3pgCvcVXon1d0BNuzJ7g9uKA@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 May 2019 06:37:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dimitris,

On Tue, May 28, 2019 at 1:07 PM Dimitris Tassopoulos <dimtass@gmail.com> wr=
ote:
>
> Hi Enrico,
>
> I'm totally positive to any possibility for such integration. Personally,=
 that was the first thing I've tried to do before I start this layer, but I=
've failed as it got really complex and the overhead was too much after som=
e point (at least for me). If you have look it's actually a mix of meta-sun=
xi and armbian, but I had to remove or change many stuff to fit the armbian=
 in the layer.
>
> If you have time to have a look to my layer and you think that such kind =
of integration is possible and can be done in a more easy way, then from my=
 side I'm all in.
> I believe that re-using the armbian patches is easier as it makes mainten=
ance much easier, there are more supported SBCs and also there is much more=
 testing involved in armbian and frequent updates fix those bugs.
I did check your layer and it seems that you're not using sunxi-mali
for opengl HW acceleration only mesa so SW rendering? Thanks.
>
> Please consider it and I can help as much as I can and my time allows for=
 that integration.
>
> Regards,
> Dimitris
>
>
Marek
>
> On Tue, May 28, 2019 at 12:56 PM Enrico <ebutera@users.sourceforge.net> w=
rote:
>>
>> On Tue, May 28, 2019 at 12:06 PM Dimitris Tassopoulos <dimtass@gmail.com=
> wrote:
>> >
>> > >
>> > > I was thinking about this also, too. The only reason is that in meta=
-sunxi they do a great job and they keep their layer clean, which is great =
I think. The other layers are just based on the armbian distro, which is a =
lot different, but for me it was much easier to integrate their patches, pa=
tching scripts and bootloader scripts to a Yocto layer. That way the only t=
hing I do is that from time to time I just integrate their new patches and =
that's it. There's no development in the layer is just re-use of the armbia=
n work and a wrapper around it. Therefore, it's hard, even no doable to put=
 those different architectures together. But definitely that decision also =
bothered me a lot before I create the layer and I also don't like time to b=
e spend on the same thing from different people. Nevertheless, from my poin=
t of view I couldn't find a way to put those things together. I've tried bu=
t I couldn't do it.
>> > >
>> > > Therefore, it was easier for me to do it the way I've done it. And a=
fter all, although it doesn't seem right, at the same time this is the beau=
ty of the open source. I think the layers are just incompatible in the way =
that they are do things. Also it's not bad to have alternatives.
>> > >
>> > > Sunxi is a great community and I believe many of the armbian patches=
 are coming from there. Others not. Of course, having them all together wou=
ld be nice. But I don't think that it's possible because of the different a=
pproach.
>>
>> It would be great to integrate all those different layers in
>> meta-sunxi,the main problem is that usually they come with their own
>> bootloader/kernel/etc.... so you have to *maintain* all these
>> different configurations.
>> Infact in the past i refused to do such things because i didn't have
>> the time to maintain all those different versions, it was just easier
>> to support what was already in mainline uboot/kernel.
>>
>> But of course if someone wants to do it then it's welcome, the worst
>> thing that can happen is that once an arch gets unmaintained it will
>> be removed.
>>
>> One thing that can be done anyway is to have those external layers
>> linked in the readme, so at least people will know they exist.
>>
>> Enrico

