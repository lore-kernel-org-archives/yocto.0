Return-Path: <nandojve@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD59FE00C31; Thu, 22 Nov 2018 14:26:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nandojve[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B76EDE00C1E
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 14:26:26 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id a3so7521455ioc.4
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2018 14:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=51rAyy3CpdCV3fMbQyomYQMKHNBzLAdC0rikyHm3Ux0=;
	b=pzzEd4lUw0xJtllGoaSoQm8exasC3RnbP6PZZPP7EftaM1uzggMAvST42vFnQxs7uN
	0BCVuHpFAuo/nIvkKXYas09nHMDE46il1qqO2t+FzgTQHeLrKdo301u9v1cnr9P45Rt5
	Mm+TqHBkWPe/B4yQ10hqALZgPozUcQ+zzoT261m5UUTDUaucYF3pqu6MYkGvV+T44VD/
	OwEybtUSwo12GbGRAmiBJYSwemcEdWDB9qCEWCOUTXweHNE6N4f/AD8NPwKXodsN61wJ
	pOO3R+QZegAFjUHwfaj9oytyDgU87kVIRdZtSU85o28IUWss0iAFARwNtghbrCYFEK9X
	B+ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=51rAyy3CpdCV3fMbQyomYQMKHNBzLAdC0rikyHm3Ux0=;
	b=GFYAdsFbYYht4p2YH+rjGo8J/lTXY94I25EWCYwlLODawkXk7tNi4VTkMXMJ1vCB75
	k9yd/y8yPqRkCo3xJi6fezyGf1rmZLvMV1py9OF6rY2K0UeCzwQLzysBoNzoq67J9+ko
	GMbmCs8DMdj7vgs4EPw694/rfQjUe0lktg/k6Ul/wiRlbbINbXYjkS12iW9Dc1g1IBfs
	9EIDoKroi0SrP7pfwrDqDbjzRE6pPpMKR1HSEyd+/1FUGqwnCteTAFQx/vpkCPcyDErl
	dNdnjnagCtTV2SbFOkfHSlqn6Ak9ds3xLr4UC1Av2KrNmFE8qXd1BgU4Tcp+/h4LZ1VV
	HN3A==
X-Gm-Message-State: AA+aEWZ0V60Wf0FmXsVqrP+y3sW9vtpM4B7VZr5J+A3t+mmhe45w0u4O
	6alD4UcKxAjFtKJjuuWJrg1X+uK19wjq/w1FI5Q=
X-Google-Smtp-Source: AFSGD/WRjHsRrEC8nczRLWLvpDnBhE/HBMcTF2tJkyZl/ZlQ6hrj0hHUnJgyN9URYjW5yUbjU/O9ZosoSVNrYCW+Qbk=
X-Received: by 2002:a6b:b717:: with SMTP id h23mr9014977iof.14.1542925586021; 
	Thu, 22 Nov 2018 14:26:26 -0800 (PST)
MIME-Version: 1.0
References: <CAKfv=rdAwxX3JSBkf_Q78h_+Wt5qgW=c01AwFNdHHX7DcJAwyg@mail.gmail.com>
	<CAMKF1spFPyfuyVjCKUTf-88Gyqymiqjm1FnjthyN6akxd0j3oQ@mail.gmail.com>
In-Reply-To: <CAMKF1spFPyfuyVjCKUTf-88Gyqymiqjm1FnjthyN6akxd0j3oQ@mail.gmail.com>
From: Gerson Fernando Budke <nandojve@gmail.com>
Date: Thu, 22 Nov 2018 20:26:14 -0200
Message-ID: <CABOv41O-cGgR-imq8+rH3XQu1RtD+nK3BWrOq24cQB6mJbYTVg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto on Atmel SAME70?
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
X-List-Received-Date: Thu, 22 Nov 2018 22:26:27 -0000
Content-Type: multipart/alternative; boundary="0000000000007845e5057b485b7e"

--0000000000007845e5057b485b7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I believe YOCTO currently don't support MMU less like SAME70 MCU.
If someone have YOCTO with MMU less I'm very interested :D

GFB

Em qui, 22 de nov de 2018 =C3=A0s 04:46, Khem Raj <raj.khem@gmail.com> escr=
eveu:

> atmel boards are supported through meta-atmel BSP layer
>
> see
>
> https://github.com/linux4sam/meta-atmel
>
> sample images
> https://github.com/linux4sam/meta-atmel/tree/sumo/recipes-atmel/images
> On Wed, Nov 21, 2018 at 8:30 PM rz charger <rzcharger@gmail.com> wrote:
> >
> > Hi everyone,
> >
> > Good day.
> >
> > Currently our team is using Yocto on CM3 Raspberry Pi. We are planning
> to port our current Yocto project into Atmel SAME70. However we are not
> sure whether it is possible or not. We have few questions hopefully someo=
ne
> has some experience with this can enlighten us.
> >
> > 1. Is it possible and recommended to implement Yocto into Atmel SAME70
> for IoT application? (Single core CPU:300MHz, RAM: 384KB, Program Memory
> Size: 2048 KB)
> > 2. Any example/past project of Yocto running on Atmel SAME70?
> >
> >  Appreciate your time.Thank you
> >
> > Regards,
> > Rz Charger
> > Malaysia
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000007845e5057b485b7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>I believe YOCTO currently don&#39;t =
support MMU less like SAME70 MCU.</div><div>If someone have YOCTO with MMU =
less I&#39;m very interested :D</div><div><br></div><div>GFB</div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr">Em qui, 22 de nov de 201=
8 =C3=A0s 04:46, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khe=
m@gmail.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">atmel=
 boards are supported through meta-atmel BSP layer<br>
<br>
see<br>
<br>
<a href=3D"https://github.com/linux4sam/meta-atmel" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/linux4sam/meta-atmel</a><br>
<br>
sample images<br>
<a href=3D"https://github.com/linux4sam/meta-atmel/tree/sumo/recipes-atmel/=
images" rel=3D"noreferrer" target=3D"_blank">https://github.com/linux4sam/m=
eta-atmel/tree/sumo/recipes-atmel/images</a><br>
On Wed, Nov 21, 2018 at 8:30 PM rz charger &lt;<a href=3D"mailto:rzcharger@=
gmail.com" target=3D"_blank">rzcharger@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi everyone,<br>
&gt;<br>
&gt; Good day.<br>
&gt;<br>
&gt; Currently our team is using Yocto on CM3 Raspberry Pi. We are planning=
 to port our current Yocto project into Atmel SAME70. However we are not su=
re whether it is possible or not. We have few questions hopefully someone h=
as some experience with this can enlighten us.<br>
&gt;<br>
&gt; 1. Is it possible and recommended to implement Yocto into Atmel SAME70=
 for IoT application? (Single core CPU:300MHz, RAM: 384KB, Program Memory S=
ize: 2048 KB)<br>
&gt; 2. Any example/past project of Yocto running on Atmel SAME70?<br>
&gt;<br>
&gt;=C2=A0 Appreciate your time.Thank you<br>
&gt;<br>
&gt; Regards,<br>
&gt; Rz Charger<br>
&gt; Malaysia<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000007845e5057b485b7e--
