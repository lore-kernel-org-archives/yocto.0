Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4D16E0054C; Tue,  8 Jul 2014 07:13:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
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
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74299E003D2
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 07:13:03 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id r10so709505igi.3
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 07:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NSKBf12JHOg7a8Zgb8anSBXMQxC9Gv7rVgpGQbLKip8=;
	b=oJxCPmN/LXfC/SfJH6npnVE/XATuo0eTxJPgUNjL4SDM9OOkHDI2cuPsrY9Vh93G6m
	l7RFHRpwPevKlMcRzKZWznz0RHxE4jgPV4fjo9Zud59rUM4vKh+mMSK5a2A0+VAJJMen
	eGOw7pypYkmx6WJ8c4G0cA/1Dl66zL0gK5h5ZgiCPE/0TD2AUPh798P39kIRn8hambux
	4gzDMikrhE65dsH2t5Tmv/Il54oZY36v1sgZhZIGZtpOpaKvaP5Rf2iHjLDAUtmup4/Q
	TiGtQ9rYHXEIMan8ptSmVma0BjMeUTW8GyRet0MjviGDYQK8+N2X/JSBZ9YXYpQsxGKe
	Zrmw==
MIME-Version: 1.0
X-Received: by 10.43.79.71 with SMTP id zp7mr39161214icb.38.1404828783137;
	Tue, 08 Jul 2014 07:13:03 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 8 Jul 2014 07:13:03 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Tue, 8 Jul 2014 07:13:03 -0700 (PDT)
In-Reply-To: <CAGNsrLAbo8arFWHoCi0faPobYL=upmoTHQsNHihrzQgSiY9tjw@mail.gmail.com>
References: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
	<20140707195511.GA50424@sestofb10.enea.se>
	<CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
	<CAGNsrLAbo8arFWHoCi0faPobYL=upmoTHQsNHihrzQgSiY9tjw@mail.gmail.com>
Date: Tue, 8 Jul 2014 19:43:03 +0530
Message-ID: <CAH21_vEj7GAfx2XECrhg_fu-2rtEveYdThK1Ub6p5c7qCxJB_g@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: Fathi Boudra <fathi.boudra@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Aarch64 support
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
X-List-Received-Date: Tue, 08 Jul 2014 14:13:06 -0000
Content-Type: multipart/alternative; boundary=001a11c3b58696d82804fdaf3030

--001a11c3b58696d82804fdaf3030
Content-Type: text/plain; charset=UTF-8

Hi Fathi and Maxin,

Thanks as you are helping me in sorting out my issue for Aarch64 support in
meta-toolchain while building bitbake for yocto.
And "not working" means if we go into the machine/layer/recipes link and
under the meta-aarch64 layer the git repository link which is mention is
not working.
Please let me know with your valuable suggestion.

Thanks and regards,
Atul
On 8 Jul 2014 18:14, "Fathi Boudra" <fathi.boudra@linaro.org> wrote:

> On 8 July 2014 13:27, atulkumar singh <atul.singh008@gmail.com> wrote:
> > Hi Maxin,
> >
> > Thanks for your suggestion for the same.
> > But that git repository for meta-aarch64 is not working.
>
> What do you mean by "not working". We produce daily builds and they're
> tested.
>
> > Thanks and regards
> > Atul
> >
> > On 8 Jul 2014 01:25, "Maxin B. John" <maxin.john@enea.com> wrote:
> >>
> >> Hi Atul,
> >>
> >> On Tue, Jul 08, 2014 at 12:41:22AM +0530, atulkumar singh wrote:
> >> > Hi All,
> >> >
> >> > Is there support for Aarch64(64 bit ARMv8) available right now?
> >> Yes. Aarch64 support is available in meta-linaro/meta-aarch64
> >> URL: http://git.linaro.org/?p=openembedded/meta-linaro.git
> >>
> >> > If so then what i need to mention as a MACHINE in local.conf.
> >> You can choose between:
> >> 1. genericarmv8b - generic armv8 big endian machine
> >> 2. genericarmv8 - generic armv8 machine
> >>
> >> > Please let me know with your valuable suggestion if any.
> >> Please use http://layers.openembedded.org/
> >> to search Machine/Layers/Recipes supported by OpenEmbedded.
> >>
> >> > Thanks and regards,
> >> > Atul
> >>
> >> Best Regards,
> >> Maxin
> >>
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
> Cheers,
> --
> Fathi Boudra
> Linaro.org | Open source software for ARM SoCs
>

--001a11c3b58696d82804fdaf3030
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Fathi and Maxin,</p>
<p>Thanks as you are helping me in sorting out my issue for Aarch64 support=
 in meta-toolchain while building bitbake for yocto.<br>
And &quot;not working&quot; means if we go into the machine/layer/recipes l=
ink and under the meta-aarch64 layer the git repository link which is menti=
on is not working.<br>
Please let me know with your valuable suggestion.</p>
<p>Thanks and regards,<br>
Atul</p>
<div class=3D"gmail_quote">On 8 Jul 2014 18:14, &quot;Fathi Boudra&quot; &l=
t;<a href=3D"mailto:fathi.boudra@linaro.org">fathi.boudra@linaro.org</a>&gt=
; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
On 8 July 2014 13:27, atulkumar singh &lt;<a href=3D"mailto:atul.singh008@g=
mail.com">atul.singh008@gmail.com</a>&gt; wrote:<br>
&gt; Hi Maxin,<br>
&gt;<br>
&gt; Thanks for your suggestion for the same.<br>
&gt; But that git repository for meta-aarch64 is not working.<br>
<br>
What do you mean by &quot;not working&quot;. We produce daily builds and th=
ey&#39;re tested.<br>
<br>
&gt; Thanks and regards<br>
&gt; Atul<br>
&gt;<br>
&gt; On 8 Jul 2014 01:25, &quot;Maxin B. John&quot; &lt;<a href=3D"mailto:m=
axin.john@enea.com">maxin.john@enea.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi Atul,<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jul 08, 2014 at 12:41:22AM +0530, atulkumar singh wrote:<b=
r>
&gt;&gt; &gt; Hi All,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Is there support for Aarch64(64 bit ARMv8) available right no=
w?<br>
&gt;&gt; Yes. Aarch64 support is available in meta-linaro/meta-aarch64<br>
&gt;&gt; URL: <a href=3D"http://git.linaro.org/?p=3Dopenembedded/meta-linar=
o.git" target=3D"_blank">http://git.linaro.org/?p=3Dopenembedded/meta-linar=
o.git</a><br>
&gt;&gt;<br>
&gt;&gt; &gt; If so then what i need to mention as a MACHINE in local.conf.=
<br>
&gt;&gt; You can choose between:<br>
&gt;&gt; 1. genericarmv8b - generic armv8 big endian machine<br>
&gt;&gt; 2. genericarmv8 - generic armv8 machine<br>
&gt;&gt;<br>
&gt;&gt; &gt; Please let me know with your valuable suggestion if any.<br>
&gt;&gt; Please use <a href=3D"http://layers.openembedded.org/" target=3D"_=
blank">http://layers.openembedded.org/</a><br>
&gt;&gt; to search Machine/Layers/Recipes supported by OpenEmbedded.<br>
&gt;&gt;<br>
&gt;&gt; &gt; Thanks and regards,<br>
&gt;&gt; &gt; Atul<br>
&gt;&gt;<br>
&gt;&gt; Best Regards,<br>
&gt;&gt; Maxin<br>
&gt;&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
Cheers,<br>
--<br>
Fathi Boudra<br>
Linaro.org | Open source software for ARM SoCs<br>
</blockquote></div>

--001a11c3b58696d82804fdaf3030--
