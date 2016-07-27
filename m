Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37FEEE00EE2; Wed, 27 Jul 2016 14:53:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E9C8E00EDE
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 14:53:31 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id s189so19096524vkh.1
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2016 14:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=9jYLMPf6LvjEXgfFjGfEe4iZKlz0zi4YucltuuokrKE=;
	b=pO8iNTQkRXxLHBeoeuWTcnHnTh/0+JA8xciOdD3krkQfryw94J327bNsE6PxrCleG7
	uBqW8BWnGi2We3DRCvsY0flyWDKpBK/WJeMmL78drIvUsHIbij+vJ6O8436K367c49XV
	4dZmywS3Z3E3DvtayVB7vQR+cO0wHZXjOe3te+nJLph7DNHMgByy3PjUY4Iyd1INWPDr
	q/xdD9UNbvxA6HYaYcWQrZVKFEEL6SoAP406KXnSAj1vX/lu0J3Ze98uAOhagNHSEXbT
	JnEMAUMWXLZQlhIKM6itgB7Sv+BuSb/5DSSN4OLImfmx6VyDxkEXuLzESytkq5rPeFEg
	EYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=9jYLMPf6LvjEXgfFjGfEe4iZKlz0zi4YucltuuokrKE=;
	b=RjQmI8zQWQPWzNdRU934upOHiFz8gSVKsyCypNtzQRM6EgfjwhyFTWEJHZeV/n4BGK
	zXv8so+zsPucoGF2Qfd9RmRZ/FCDhl7FF/R0669zIaekhbOez7IHW20tcwR3xs7AVI3f
	t/XZqF9b8XHfl9NDZpxdeaWfvMc2y7qeFJ6aRLIOPrRKTtAJKnG+wM+hg+nB53Lwsie4
	2VU8WrxnscahuxaQEwsMqeafeo56t/TbWJ2obX3GGaA+bZoaaSLO8TW+pEcC0NNESBrv
	+x2A/r/8biiux401RUxx2DJSDN6Isf3Nz+IdH7gurU+41BID1t1f+wdPs+mKF8PzdNV/
	NJHA==
X-Gm-Message-State: AEkoousw8GlkpSFz/z+5NXyNBsBPF29Tnj0IJ1Rs3OJApT2hyhKDxlmUUusk4QSa5kW6ivgY4tkvV/KK3rWffg==
X-Received: by 10.31.33.3 with SMTP id h3mr14470995vkh.59.1469656411064; Wed,
	27 Jul 2016 14:53:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.70.7 with HTTP; Wed, 27 Jul 2016 14:53:11 -0700 (PDT)
In-Reply-To: <CAJ58UNnqwa6VDch0BDihS7uYguTMTZmnwkgUabJG-i_ff--L5w@mail.gmail.com>
References: <CAJ58UNmbwN3L=hDvW495x7J0F1Bu4kHDgdcDYtZOkAB77QEG3Q@mail.gmail.com>
	<CAJ58UNnqwa6VDch0BDihS7uYguTMTZmnwkgUabJG-i_ff--L5w@mail.gmail.com>
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Wed, 27 Jul 2016 14:53:11 -0700
Message-ID: <CAJ58UNno9BmFXRE82_8oZAVG=P+m9C4eD4M6x9J4ZBm7ZAG=Tw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Compilation error while adding perf tool to the rootfs
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
X-List-Received-Date: Wed, 27 Jul 2016 21:53:33 -0000
Content-Type: multipart/alternative; boundary=001a11c0087e52cddf0538a50c8f

--001a11c0087e52cddf0538a50c8f
Content-Type: text/plain; charset=UTF-8

Please let me know if anyone is aware of this.. I am currently blocked,
appreciate your help on this.Thanks.

On Wed, Jul 27, 2016 at 11:49 AM, Vijayakumar Badiger <
vijayakumarmb@gmail.com> wrote:

> Hello All
>
> We have a requirement here to set up the perf tool through our Yocto frame
> work.
> As Perf source comes with linux kernel under tools/perf ,so I added this
> perf tool to be installed
> as part of my rootfs image.
>
> But when I build the image I am getting error related to headerfile
> missing.
>
> *fatal error: asm/preempt.h: No such file or directory*
>
> I checked for this header file I dont have this header file in my kernel
> arch/arm64/include/asm/
> Please can you let me know how to fix this issue. Thanks.
>
> Cheers,
> Vijay
>
>
> On Tue, Jul 26, 2016 at 7:17 PM, Vijayakumar Badiger <
> vijayakumarmb@gmail.com> wrote:
>
>> Hello All,
>>
>> I am trying to integrate perf tool to my custom rootfs image, while
>> bitbaking the perf I am getting below error.
>>
>>  *fatal error: asm/preempt.h: No such file or directory*
>>
>>
>> Can you pls let me know how to fix this issue. Thanks.
>>
>> Cheers,
>> Vijay
>>
>>
>

--001a11c0087e52cddf0538a50c8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Please let me know if anyone is aware of this.. I am curre=
ntly blocked, appreciate your help on this.Thanks.</div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Wed, Jul 27, 2016 at 11:49 AM, Vi=
jayakumar Badiger <span dir=3D"ltr">&lt;<a href=3D"mailto:vijayakumarmb@gma=
il.com" target=3D"_blank">vijayakumarmb@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hello All</div><div><b=
r></div><div>We have a requirement here to set up the perf tool through our=
 Yocto frame work.</div><div>As Perf source comes with linux kernel under t=
ools/perf ,so I added this perf tool to be installed</div><div>as part of m=
y rootfs image.</div><div><br></div><div>But when I build the image I am ge=
tting error related to headerfile missing.</div><span class=3D""><div><b><b=
r></b></div><div><b>fatal error: asm/preempt.h: No such file or directory</=
b></div><div><br></div></span><div>I checked for this header file I dont ha=
ve this header file in my kernel arch/arm64/include/asm/</div><div>Please c=
an you let me know how to fix this issue. Thanks.</div><div><br></div><div>=
Cheers,</div><div>Vijay</div><div><br></div></div><div class=3D"HOEnZb"><di=
v class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Tue, Jul 26, 2016 at 7:17 PM, Vijayakumar Badiger <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank">vijayakumarmb@gm=
ail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">Hello All,<div><br></div><div>I am trying to integrate perf tool to m=
y custom rootfs image, while bitbaking the perf I am getting below error.</=
div><div><br></div><div><div>=C2=A0<b>fatal error: asm/preempt.h: No such f=
ile or directory</b></div></div><div><br></div><div><br></div><div>Can you =
pls let me know how to fix this issue. Thanks.</div><div><br></div><div>Che=
ers,</div><div>Vijay</div><div><br></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11c0087e52cddf0538a50c8f--
