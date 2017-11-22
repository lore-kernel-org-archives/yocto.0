Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 881FCE00C0F; Wed, 22 Nov 2017 05:52:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BB9E00A9C
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 05:52:00 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id d10so7271328lfj.7
	for <yocto@yoctoproject.org>; Wed, 22 Nov 2017 05:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hCwntfkDVzYRMkHAbYRIbjuHIOx+eWMuHgllAZOcnu8=;
	b=qUO0fES1PNjTaSndsopNTYE5M3jg8/GMlOrpVKvRkKbbToFDPM6dQKFN8xTK5HVjhJ
	FKoFdErssPQuV7FhrF1c0Dr0rHgqSLIds544vOS1SY32LFnyhrY2F015KgY1HxRyAmUu
	I2Ouy9bHxLTQn0YM/XRdZ9eN4RwzHIYGyKg3w5PWxCTzwI7fpIsdEzauvCPiUKAc2S7+
	6NAJQh5i23XD2JWj1eS20aiD1bVWkfwjW2ZjgeBpvr520c1W5oGJMrkC+BTZo7yBk1jj
	gywfiSWbE692gxLAzcbYQcgUJZQOSlygEeJ6QZ11JFYL9Hp3uvsVSxLiY/Gy00lqw1Qv
	1o6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hCwntfkDVzYRMkHAbYRIbjuHIOx+eWMuHgllAZOcnu8=;
	b=PrxAhRTpYvSqPWhz1IHwxmS0qmUD+h1zwir7ZWq817G4GpJWKsgFJEhlZ5i7h5U4si
	UjFtdBAskwu2bikoOWN6t5uETLwqORm5hNWKY2UQvVcwlV+mzsPB5YsVl2775xmnfiRB
	/2uRu4gx339T9de0lcecu+JEYG15yIgxBVzCMyRmOXuEcOthdAPzrW1l/3100RflWMLX
	P8f9cW4efSwpZcrgdhC6WfSyp92Zqc+hOzZtqnV1Qte2QSCC5nU4hLYycYCWo7O4ANdm
	pCfumgkBMNiJ/DJeXY1M48amYrK9y6JVcR3iF6SCIU5iTsnsHiKIZd/BKWxnKNvnaE2/
	bpBQ==
X-Gm-Message-State: AJaThX7DOXfXoU2SGYVOTHEnYwjb5MFXqsxMCTE6rkADWhBkQpCsSwNH
	e4R9f8rpIwx+TogRaXQMe6DYSy44p4PTQhmbC5A=
X-Google-Smtp-Source: AGs4zMYlii2rsC6JPLM8k4hEoBDGeBuBrQRBFB6QXlb7O2WI89rH8ykDPK0z6lIPjygBR5xjRH+rMAYlIVGUi0/uuWs=
X-Received: by 10.46.83.29 with SMTP id h29mr7873757ljb.144.1511358719794;
	Wed, 22 Nov 2017 05:51:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.76 with HTTP; Wed, 22 Nov 2017 05:51:59 -0800 (PST)
In-Reply-To: <4a1624fa-f533-6f25-bcb7-88d035657d4f@prevas.dk>
References: <CAKmWj-13qwhLX54szaK5gvxdHfJOKS7Xa98UxiSibLJkxSDRnw@mail.gmail.com>
	<4a1624fa-f533-6f25-bcb7-88d035657d4f@prevas.dk>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Wed, 22 Nov 2017 08:51:59 -0500
Message-ID: <CAKmWj-3WZc=K4KRwW3qO3zXUYK7qibkMdWwbE=baNiKhN9nKjg@mail.gmail.com>
To: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <mnhu@prevas.dk>
Cc: yocto@yoctoproject.org
Subject: Re: When are file checksums gathered from files, for tasks? During recipe parsing?
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
X-List-Received-Date: Wed, 22 Nov 2017 13:52:02 -0000
Content-Type: multipart/alternative; boundary="94eb2c1ce7fa9f2189055e929f44"

--94eb2c1ce7fa9f2189055e929f44
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This recipe is not an image recipe. It is a recipe that packages up our
image for deployment/updates in the field. Your method assumes I am editing
the image recipe.

On Wed, Nov 22, 2017 at 4:01 AM, Martin Hundeb=C3=B8ll <mnhu@prevas.dk> wro=
te:

> Hi Paul,
>
> On 2017-11-22 09:10, Paul Knopf wrote:
>
>> I have a recipe that depends on a deployed output from an image.
>>
>> ----------------------------------------------------------
>> SRC_URI +=3D "file://${DEPLOY_DIR_IMAGE}/my-image-${MACHINE}.wic.update.
>> tar.gz;subdir=3Dupdate"
>> do_fetch[depends] +=3D "my-image:do_build"
>> ----------------------------------------------------------
>>
>> Will the hash for "do_fetch" be computed after "my-image:do_build" is
>> executed?
>>
>
> The "dependency" hash is based on the hash of the my-image recipe, so tha=
t
> if you change the my-image.bb, then the hash of your dependent recipe
> changes too.
>
> If not, how would you propose I do something like this?
>>
>
> Don't put deployed images in SRC_URI, and don't put task dependencies in
> do_fetch, as that messes with do_fetchall, should you ever need to run th=
at.
>
> Look at what other recipes are doing when using images from
> DEPLOY_DIR_IMAGE. A reworked example from one of our recipes:
>
>   do_image[depends] +=3D "my-image:do_image_complete"
>
>   IMAGE_PREPROCESS_COMMAND +=3D "image_prepare"
>   image_prepare() {
>     install ${DEPLOY_DIR_IMAGE}/my-image-${MACHINE}.wic.update.tar.gz
> ${IMAGE_ROOTFS}/
>   }
>
>
> I hope that helps!
>
> // Martin
>

--94eb2c1ce7fa9f2189055e929f44
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This recipe is not an image recipe. It is a recipe that pa=
ckages up our image for deployment/updates in the field. Your method assume=
s I am editing the image recipe.</div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Wed, Nov 22, 2017 at 4:01 AM, Martin Hundeb=C3=B8ll=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:mnhu@prevas.dk" target=3D"_blank">=
mnhu@prevas.dk</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi P=
aul,<span class=3D""><br>
<br>
On 2017-11-22 09:10, Paul Knopf wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I have a recipe that depends on a deployed output from an image.<br>
<br>
------------------------------<wbr>----------------------------<br>
SRC_URI +=3D &quot;file://${DEPLOY_DIR_IMAGE}/my<wbr>-image-${MACHINE}.wic.=
update.<wbr>tar.gz;subdir=3Dupdate&quot;<br>
do_fetch[depends] +=3D &quot;my-image:do_build&quot;<br>
------------------------------<wbr>----------------------------<br>
<br>
Will the hash for &quot;do_fetch&quot; be computed after &quot;my-image:do_=
build&quot; is executed?<br>
</blockquote>
<br></span>
The &quot;dependency&quot; hash is based on the hash of the my-image recipe=
, so that if you change the <a href=3D"http://my-image.bb" rel=3D"noreferre=
r" target=3D"_blank">my-image.bb</a>, then the hash of your dependent recip=
e changes too.<span class=3D""><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
If not, how would you propose I do something like this?<br>
</blockquote>
<br></span>
Don&#39;t put deployed images in SRC_URI, and don&#39;t put task dependenci=
es in do_fetch, as that messes with do_fetchall, should you ever need to ru=
n that.<br>
<br>
Look at what other recipes are doing when using images from DEPLOY_DIR_IMAG=
E. A reworked example from one of our recipes:<br>
<br>
=C2=A0 do_image[depends] +=3D &quot;my-image:do_image_complete&quot;<br>
<br>
=C2=A0 IMAGE_PREPROCESS_COMMAND +=3D &quot;image_prepare&quot;<br>
=C2=A0 image_prepare() {<br>
=C2=A0 =C2=A0 install ${DEPLOY_DIR_IMAGE}/my-image-$<wbr>{MACHINE}.wic.upda=
te.tar.gz ${IMAGE_ROOTFS}/<br>
=C2=A0 }<br>
<br>
<br>
I hope that helps!<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
// Martin<br>
</font></span></blockquote></div><br></div>

--94eb2c1ce7fa9f2189055e929f44--
