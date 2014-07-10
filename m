Return-Path: <allenkll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7A3CE0059F; Thu, 10 Jul 2014 07:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6FF5E00571
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:29:14 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id b13so8912564wgh.23
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 07:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=AaHbnyS0ssZWt1YoZ4H/VUIeEVjQOWlBCYsiJ2we+v4=;
	b=TgI2hnhK0cCRV9QMeY8RcDajdM4SQkDnXinmK2cYxrFn71L5HnkfqSgO49nzmrUeos
	oLcxdgA1VA78KEb6VFO1aRpzNXUGtZZ+MP72LKEu8br8p/NUNGkYJfJt8hPLlBW3o+7Z
	MGjyauD0CCENYbcQvMX4YsS8J334+yDpvfqLY5lr7d5HYGO8QkM0nxlCGPXnK3v5YWxk
	I/6DQDjhJOn+QeY8MBS8zibFJA49CMFpiz9T9frf1WYDnTSxpeJRktxzV5qpyuC6mDjn
	gRqRWUzVgnYO14GwtJ0kQbIHppOILeIbYXt2CReZEuxTvnCdkBC+o+KjVBmmepjH1gyq
	p4Sw==
MIME-Version: 1.0
X-Received: by 10.180.86.7 with SMTP id l7mr19428993wiz.55.1405002553872; Thu,
	10 Jul 2014 07:29:13 -0700 (PDT)
Sender: allenkll@gmail.com
Received: by 10.216.186.134 with HTTP; Thu, 10 Jul 2014 07:29:13 -0700 (PDT)
In-Reply-To: <CAP71WjzVbmYO9ULE-aVq8mQooLUH9BSPVzsZy-bm79eCKKD=rA@mail.gmail.com>
References: <CAO-21LPnS-BJyZw-SEiSveK5sP=sZaDnMRd9PHVVe5WG6NQG_A@mail.gmail.com>
	<CAP71Wjw6FZ94P3c8jT+sqgqwKvvjF6ko6PGM9AP3Mo4NTpxQRg@mail.gmail.com>
	<CAO-21LM7hApyatcYRqxgw9qAcG1zreQWnYjtUYabJfOfRfMM3A@mail.gmail.com>
	<CAP71WjyovtW_yj4ckYXbAFKEc6FtiKwG1uOa9fKbvcmrtuGAeQ@mail.gmail.com>
	<CAO-21LM=ucVNUPAwDgXA5FkB0dsi=ASQrgTSAaq+fFRhhkWaRA@mail.gmail.com>
	<CAP71WjzVbmYO9ULE-aVq8mQooLUH9BSPVzsZy-bm79eCKKD=rA@mail.gmail.com>
Date: Thu, 10 Jul 2014 09:29:13 -0500
X-Google-Sender-Auth: wpE7u9VlZqiTxhImrKPirRvu12c
Message-ID: <CAO-21LOkNesDVg10PuaforBXqCTy9QgY8+LXDKWvFbk7S+bSFg@mail.gmail.com>
From: "Allen Kennedy Jr." <allen@kennedystuff.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Environment Variables being unset by bitbake?
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
X-List-Received-Date: Thu, 10 Jul 2014 14:29:16 -0000
Content-Type: multipart/alternative; boundary=f46d04428e02224ba704fdd7a6c1

--f46d04428e02224ba704fdd7a6c1
Content-Type: text/plain; charset=UTF-8

Thanks again.

Perhaps I'll write a shell script that calls bitbake after properly setting
up the environment.


On Thu, Jul 10, 2014 at 9:23 AM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> +list. please let's discuss on the list.
>
> On Thu, Jul 10, 2014 at 4:01 PM, Allen Kennedy Jr.
> <allen@kennedystuff.com> wrote:
> > That did it.  thanks.
> >
> > Is there is no way to add this to the layer?  Must I distrubute my layer
> > with instructions to set BB_ENV_EXTRAWHITE variable before running
> bitbake?
> > I would think there would be someway to make it easy for the user?
>
> well, i don't think so. at this point, i think you need to think about
> why you need that in the first place... i have not done any JAVA + OE
> stuff, so i cannot really comment on that... but explicitly
> contaminating your build environment with host 'stuff' sounds wrong to
> me.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d04428e02224ba704fdd7a6c1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks again.<br><br></div>Perhaps I&#39;ll write a s=
hell script that calls bitbake after properly setting up the environment.<b=
r></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Th=
u, Jul 10, 2014 at 9:23 AM, Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=
=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">nicolas.dechesne@=
linaro.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">+list. please let&#39;s discuss on the list.=
<br>
<div class=3D""><br>
On Thu, Jul 10, 2014 at 4:01 PM, Allen Kennedy Jr.<br>
&lt;<a href=3D"mailto:allen@kennedystuff.com">allen@kennedystuff.com</a>&gt=
; wrote:<br>
&gt; That did it. =C2=A0thanks.<br>
&gt;<br>
&gt; Is there is no way to add this to the layer? =C2=A0Must I distrubute m=
y layer<br>
&gt; with instructions to set BB_ENV_EXTRAWHITE variable before running bit=
bake?<br>
&gt; I would think there would be someway to make it easy for the user?<br>
<br>
</div>well, i don&#39;t think so. at this point, i think you need to think =
about<br>
why you need that in the first place... i have not done any JAVA + OE<br>
stuff, so i cannot really comment on that... but explicitly<br>
contaminating your build environment with host &#39;stuff&#39; sounds wrong=
 to<br>
me.<br>
<div class=3D"HOEnZb"><div class=3D"h5">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--f46d04428e02224ba704fdd7a6c1--
