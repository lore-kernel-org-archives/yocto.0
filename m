Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21AF4E00EB0; Mon, 11 Jul 2016 16:45:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64E3FE00EA8
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 16:45:15 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id q62so3863869qkf.2
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 16:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Z6jlzHV/BGZ1135PnAgSbW5aM9vGKRHuyssAEWZawAo=;
	b=i6RU+YA3ciNuDA7YaCzPScraaX+oMk15vII+vdhwXT5Sv3hvFq+giNms0/N/w1XyPS
	6TRbTVs2xsqq1TtNT5GLAq3a/TcGy9/+zkyG9+hsdDO1t7e0hDJbd6EPnN5j8ZyNziJH
	Bzgj+msjm824Uu+hNK+5ESK/IA0y2nlPE0ArkYpp9QvLc00xBrYE+DLbT4FcOU4EjbGr
	vedJEvb0LrVBVP+QNmmOFwxWVdIHk/dk8K8nAygkT4g6zV5vQWVXsuSp0fYZzLTy8FM9
	nq2uHrljKhD/7v/YmYKr3ySXa41/Yah/3P05WmuS+BvlxUp7wblcgozNGqmrm/+pHMDW
	Y4Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Z6jlzHV/BGZ1135PnAgSbW5aM9vGKRHuyssAEWZawAo=;
	b=CaNMICvYA3n9q6woEagGYoDuCYaOhVszPTpEW/57kiEqpXSSjHr0tLGnizhnHaajJ9
	LZs1QvbNlt92t8WYh+ftrXKRZHKr4OwxbttLGVOvkFG6b7E0DjsVQudvcJRXuEjraADw
	XCi2ZaFEroLRU1I6LbmzYkGEzUs2LwPK3eDpM4Ys+9XU83Qo4t73AZyE2IdN2OHl5o98
	2nNZ5aLWRQ52Xp6RklqJf5TEQceMu0Vy2H0W7DzaybM9H+y4/D8APzBVa/6UWFS7pNkY
	kUfeppamqclmqe1fGQQh1dUKT1ebY3VQXWvmWy8VBtfnC0YiMEpw0FzEQkV1ucuLlY2y
	uDbA==
X-Gm-Message-State: ALyK8tLmpkoeZ36Oq1qo8NR67Phb0Z2OkT2KhSVGTUnQpCP9iPeZPPOrom9l8n6E384W86SI/F9XLtY3IwCJ5Q==
X-Received: by 10.55.74.138 with SMTP id x132mr29247604qka.26.1468280715022;
	Mon, 11 Jul 2016 16:45:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Mon, 11 Jul 2016 16:44:45 -0700 (PDT)
In-Reply-To: <CANwerB0-kwTu93ybFFpMwdSZ1KOVGOTO2=PgoKuoqwgv_MOtAQ@mail.gmail.com>
References: <20160623213431.5513-1-raj.khem@gmail.com>
	<20160623213431.5513-4-raj.khem@gmail.com>
	<CANwerB0-kwTu93ybFFpMwdSZ1KOVGOTO2=PgoKuoqwgv_MOtAQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 11 Jul 2016 16:44:45 -0700
Message-ID: <CAMKF1soN1UOi_zu=NqrO5B7RYx_3EsoGCh4R7QreAwLJMDidQA@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/4] sdcard_image-rpi.bbclass: Exclude DATETIME from task stamp
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
X-List-Received-Date: Mon, 11 Jul 2016 23:45:19 -0000
Content-Type: multipart/alternative; boundary=001a114a82f8731674053764beeb

--001a114a82f8731674053764beeb
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Jul 11, 2016 4:00 PM, "Jonathan Liu" <net147@gmail.com> wrote:
>
> Hi Khem,
>
> On 24 June 2016 at 07:34, Khem Raj <raj.khem@gmail.com> wrote:
> > This helps in fixing occasional error seen quite often
> >
> > ERROR: wpe-image-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch
7ea6b505bb7a2cc5ca03552bcf3333fa verses 3be7cdad8c4532430d96368c5ca523d4
for /a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wp
> > e-image.bb.do_image_rpi_sdimg
> > ERROR: Taskhash mismatch 7ea6b505bb7a2cc5ca03552bcf3333fa verses
3be7cdad8c4532430d96368c5ca523d4 for
/a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wpe-imag=
e.bb.do_image_rpi_sdimg
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  classes/sdcard_image-rpi.bbclass | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/classes/sdcard_image-rpi.bbclass
b/classes/sdcard_image-rpi.bbclass
> > index 4dfd7a3..e566669 100644
> > --- a/classes/sdcard_image-rpi.bbclass
> > +++ b/classes/sdcard_image-rpi.bbclass
> > @@ -73,6 +73,7 @@ FATPAYLOAD ?=3D ""
> >
> >  IMAGEDATESTAMP =3D "${@time.strftime('%Y.%m.%d',time.gmtime())}"
> >  IMAGE_CMD_rpi-sdimg[vardepsexclude] =3D "IMAGEDATESTAMP"
> > +IMAGE_CMD_rpi-sdimg[vardepsexclude] =3D "DATETIME"
>
> Did you mean to append DATETIME to vardepsexclude or override
IMAGEDATESTAMP?
>

=E2=80=8BYes and a followup was sent to correct this

https://lists.yoctoproject.org/pipermail/yocto/2016-July/031035.html=E2=80=
=8B


> >
> >  IMAGE_CMD_rpi-sdimg () {
> >
> > --
> > 2.9.0
> >
>
> Regards,
> Jonathan

--001a114a82f8731674053764beeb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p dir=3D"ltr"><br></p>
<p dir=3D"ltr">On Jul 11, 2016 4:00 PM, &quot;Jonathan Liu&quot; &lt;<a hre=
f=3D"mailto:net147@gmail.com" target=3D"_blank">net147@gmail.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; Hi Khem,<br>
&gt;<br>
&gt; On 24 June 2016 at 07:34, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmai=
l.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; &gt; This helps in fixing occasional error seen quite often<br>
&gt; &gt;<br>
&gt; &gt; ERROR: wpe-image-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 7ea=
6b505bb7a2cc5ca03552bcf3333fa verses 3be7cdad8c4532430d96368c5ca523d4 for /=
a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wp<br>
&gt; &gt; e-image.bb.do_image_rpi_sdimg<br>
&gt; &gt; ERROR: Taskhash mismatch 7ea6b505bb7a2cc5ca03552bcf3333fa verses =
3be7cdad8c4532430d96368c5ca523d4 for /a/builder/home/kraj/work/oe/meta-metr=
ological/recipes-core/images/wpe-image.bb.do_image_rpi_sdimg<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com"=
 target=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 classes/sdcard_image-rpi.bbclass | 1 +<br>
&gt; &gt;=C2=A0 1 file changed, 1 insertion(+)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_im=
age-rpi.bbclass<br>
&gt; &gt; index 4dfd7a3..e566669 100644<br>
&gt; &gt; --- a/classes/sdcard_image-rpi.bbclass<br>
&gt; &gt; +++ b/classes/sdcard_image-rpi.bbclass<br>
&gt; &gt; @@ -73,6 +73,7 @@ FATPAYLOAD ?=3D &quot;&quot;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 IMAGEDATESTAMP =3D &quot;${@time.strftime(&#39;%Y.%m.%d&#39=
;,time.gmtime())}&quot;<br>
&gt; &gt;=C2=A0 IMAGE_CMD_rpi-sdimg[vardepsexclude] =3D &quot;IMAGEDATESTAM=
P&quot;<br>
&gt; &gt; +IMAGE_CMD_rpi-sdimg[vardepsexclude] =3D &quot;DATETIME&quot;<br>
&gt;<br>
&gt; Did you mean to append DATETIME to vardepsexclude or override IMAGEDAT=
ESTAMP?<br>
&gt;</p><p dir=3D"ltr"></p><div class=3D"gmail_default" style=3D"font-famil=
y:monospace,monospace;display:inline">=E2=80=8BYes and a followup was sent =
to correct this</div><p></p><p dir=3D"ltr"></p><div class=3D"gmail_default"=
 style=3D"font-family:monospace,monospace;display:inline"><a href=3D"https:=
//lists.yoctoproject.org/pipermail/yocto/2016-July/031035.html">https://lis=
ts.yoctoproject.org/pipermail/yocto/2016-July/031035.html</a>=E2=80=8B</div=
><br><p></p><p dir=3D"ltr"><br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 IMAGE_CMD_rpi-sdimg () {<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; 2.9.0<br>
&gt; &gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Jonathan<br></p>
</div>

--001a114a82f8731674053764beeb--
