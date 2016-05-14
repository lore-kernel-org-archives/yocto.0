Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C476E0088C; Sat, 14 May 2016 15:08:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B97E00849
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:08:13 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id n63so78253192qkf.0
	for <yocto@yoctoproject.org>; Sat, 14 May 2016 15:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=K5C2Gtp55goemFh5dmX1q5ZH9FEBc6SdWR5phV0vS0g=;
	b=Esyhk9+Vll+spVpCuKXoMhiZnHq5TNfJ+y1QfcxoGc7g4us9aJMYPp40V8oJq0B1ak
	a/dWgIjocEKRqkWiJstLv9jPI0QcUFd0IG2S/Lez5DfudJA9o6ATlUNJmB52UzHYysep
	Nc6et+B/7vCmoti6Uv/QY5B9dsLJJ4K0rfvljaTgluAtKnflGmOlIgkGAW13qnClGooF
	X3L422Q3d/kGH3QoCgJGcP/3HLXLotG7ZRevLC/GmeCqVcO1lPbTZaG3edX9QlKdJYs1
	0uR5f1S2A2uRD48F1QeSELqhsNiDQBG2jaJgaqEpP8CecXIqm22GDnhr9dh8/XXmBPZq
	+niQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=K5C2Gtp55goemFh5dmX1q5ZH9FEBc6SdWR5phV0vS0g=;
	b=esxuwR+F/tAj6k1B2x/toBo9e7VqZIfBLZKsH7nlFUs0x95ffyu+GJMsMFA3AetkQR
	U+PKYSp92yOZm7g5VfT+LeMHkUMdLP9GETpHSUL+1kMoQxj2oKu2MxdqQK0cG2x93MBs
	rL7yXbYtwkCarjIFORBuNVl1k5sAyrSlV0CSHfn2srfn6TMEToTC14UnyCFNUq57nAnw
	JRY7AuP/QBKTpoRxp8NPsgspz+WLzxzoYXVzDghyOfz8p2PWp81cThIO/Vxm9AaAKrrV
	aqeuL4RgG+BckH1pcNe1jcRPzyqzx2vOSLUgDV8+xrv1QcCzeAbygb7vw20+faMuapDz
	0oFA==
X-Gm-Message-State: AOPr4FXzXFYeiiDKM86OrmL3p2ccHt+eI+MNv9n+qFBRtPu5JK6V6bmkxBptiUkgVCFPfXj0+1PGLQnsVeT+oA==
MIME-Version: 1.0
X-Received: by 10.55.155.20 with SMTP id d20mr12002710qke.26.1463263692888;
	Sat, 14 May 2016 15:08:12 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Sat, 14 May 2016 15:08:12 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Sat, 14 May 2016 15:08:12 -0700 (PDT)
In-Reply-To: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
Date: Sat, 14 May 2016 15:08:12 -0700
Message-ID: <CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Paul Knopf <pknopf@medxchange.com>
Cc: yocto@yoctoproject.org
Subject: Re: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Sat, 14 May 2016 22:08:16 -0000
Content-Type: multipart/alternative; boundary=94eb2c077140a0be8a0532d4a03f

--94eb2c077140a0be8a0532d4a03f
Content-Type: text/plain; charset=UTF-8

Look at kraj/meta-jetson-tk1 on github
On May 14, 2016 2:17 PM, "Paul Knopf" <pknopf@medxchange.com> wrote:

> What configs do I need to include in my machine.conf to support this
> processor?
>
> http://www.nvidia.com/object/jetson-tx1-dev-kit.html
>
> "require conf/machine/include/arm/arch-*.inc" ?
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c077140a0be8a0532d4a03f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Look at kraj/meta-jetson-tk1 on github</p>
<div class=3D"gmail_quote">On May 14, 2016 2:17 PM, &quot;Paul Knopf&quot; =
&lt;<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a>&gt; =
wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr"><div>What configs do I need to include in my machine.conf to support th=
is processor?</div><div><br></div><div><a href=3D"http://www.nvidia.com/obj=
ect/jetson-tx1-dev-kit.html" target=3D"_blank">http://www.nvidia.com/object=
/jetson-tx1-dev-kit.html</a><br></div><div><br></div><div>&quot;require con=
f/machine/include/arm/arch-*.inc&quot; ?<br></div><div><br></div><div><div>=
<div dir=3D"ltr"><div>Thanks,</div><div>Paul Knopf</div><div>Software Engin=
eer</div><div>Med X Change, Inc</div><div><a href=3D"mailto:pknopf@medxchan=
ge.com" target=3D"_blank">pknopf@medxchange.com</a></div></div></div></div>
</div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--94eb2c077140a0be8a0532d4a03f--
