Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D37DE00D79; Thu, 14 Dec 2017 04:09:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-yb0-f176.google.com (mail-yb0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD6C7E00D6D
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 04:09:04 -0800 (PST)
Received: by mail-yb0-f176.google.com with SMTP id h28so3254017ybj.5
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 04:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CFcqRXB5j2OOk1la3xBWyBwK3cj+tawZkJpPEO3OMgc=;
	b=F4ZhWxtIX4NCBm9aqGkvjPQjNW2y8mJ0AvejQWH5Io/i60cvkEBHz8dCv5FRMcfzaz
	mEpylHBNy0qURzN8fS90dq3D5GIj1zQMjDxIraFi/vnRzWEcpkc6P6NyyXwE2s0v1xo7
	/G1k5CZ6NOAstuH+lWo9VcWpRHau8oMzK6lstOQhPN3YDBEqbjcKE7tvJW0i9ApFXysP
	xZVkqalh2itDD3efCKwh10v+Q+vlUUaJToqVrxoXrWfNu7ZWHfT+deDJJGdlZHhlkbtk
	Oy9lVr9dSZjdWE1LoRH46pY0ENQ2jtxTqLx3PbDGLmL4NEjkjXSnXUZ3LkTPEg2U+Cii
	xj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CFcqRXB5j2OOk1la3xBWyBwK3cj+tawZkJpPEO3OMgc=;
	b=mf+SWa6o18tOBDsnPkTyJIdqykJO0xmnq992xU6YkEaedrqOeez9vOQKcHkFzmwZre
	xEoT+W2kRN1KYd4g5OK8iRMlLQBzPlMT20NSKqFevez3zeAHcPS+lde341dFTT06rcvv
	CHbAa/J6qb5X4FpnYyER6IiUHSYVX2WpD0iMATPHzAiDm1HSFslISG9r7hN+pKBYyPoh
	P5Q7mDz4ZDA5PdiM+I1N9hwgtErwQ3to6emfyXtPlNZafI6NRNIE3ZY5VagK43iJ3mwI
	iKXi4heHesvY7dt7b31Q4gWncwhM6yp+h0XHjVVa2L0RnP9YDGzx/+UqrT5B4EihnqPD
	ygIg==
X-Gm-Message-State: AKGB3mLZj9/jG6Hat5gEZWci6tK05IcXSQhmi7avP1+MVe3/ATuVa6Sy
	iHYkACYJgJ7zoRUbGxlvF8SkZsuzTAucjNexAM8=
X-Google-Smtp-Source: ACJfBoufS9On0mBv6CYFnB5a/b5XNGqYq//OslQJu5r7Y78jKnpqso3119hdJpQCnrinP+TjS6kmHFjL73Vwh9XX44E=
X-Received: by 10.37.124.193 with SMTP id x184mr4009799ybc.219.1513253343696; 
	Thu, 14 Dec 2017 04:09:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.97.6 with HTTP; Thu, 14 Dec 2017 04:09:02 -0800 (PST)
In-Reply-To: <CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 14 Dec 2017 13:09:02 +0100
Message-ID: <CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 14 Dec 2017 12:09:05 -0000
Content-Type: multipart/alternative; boundary="001a114bc45e019bd005604bc061"

--001a114bc45e019bd005604bc061
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2017 at 11:40 AM, Mirza Krak <mirza.krak@gmail.com> wrote:

> 2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller <schnitzeltony@gmail.com>:
> > On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran <sherifomran2000@gmail.co=
m
> >
> > wrote:
> >>
> >> hey guys,
> >>
> >> any body tried the real time kernel? I get an error, it is snot in the
> >> compatibility list.
> >> can we skip it?
> >>
> >> thanks
> >>
> >> --
> >
> > Good news: I use RT kernel only together with VC4 graphics and have lot=
s
> of
> > fun on PI2/3.
> > Bad news: As far as I know it is not in meta-raspberrypi but in my fork
> [1].
> > There were attempts to land the RT-patches in meta-raspberrypi but that
> was
> > denied for huge patch size :(
>
> If the patch size was the only problem one can pull it by doing the
> following in the recipe:
>
> SRC_URI +=3D " \
>     https://cdn.kernel.org/pub/linux/kernel/projects/rt/4.9/
> patch-4.9.65-rt56.patch.gz;name=3Drt-patch
> \
> "
>
> SRC_URI[rt-patch.md5sum] =3D "9caa7b541d8c84c2d5c5f58985982e95"
> SRC_URI[rt-patch.sha256sum] =3D
> "47dfb518c78d8cbaafd4ab9130eb26fe0170be9189b580ab26209ef679309539"
>
> Note that above sums are "random" and not the for the actually file
> but are there for reference.
>
> That way you do not need to keep a copy of it in meta-raspberrypi.
>
> --
>
Hi Mirza,

Problem is that patches need alignments sometimes either caused by
Raspberry-Pi-specific adjustments or versions not matching exactly - RT
kernel patch updates are less frequent than kernel updates. Anyway: git is
very good at maintaining huge text content and this should not be a problem
these days. Another discussion about RT kernel was to have an extra kernel
for it and I never understood why. To me that seems nothing but an extra
maintenance burden.

However - just wrote to Paul: I plan to be at FOSDEM and we can discuss
there how to get back to one layer only (not mine!) making everybody happy
:)

Andreas

--001a114bc45e019bd005604bc061
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Dec 14, 2017 at 11:40 AM, Mirza Krak <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:mirza.krak@gmail.com" target=3D"_blank">mirza.krak@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span cl=
ass=3D"gmail-">2017-12-14 9:41 GMT+01:00 Andreas M=C3=BCller &lt;<a href=3D=
"mailto:schnitzeltony@gmail.com">schnitzeltony@gmail.com</a>&gt;:<br>
&gt; On Thu, Dec 14, 2017 at 2:58 AM, Sherif Omran &lt;<a href=3D"mailto:sh=
erifomran2000@gmail.com">sherifomran2000@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; hey guys,<br>
&gt;&gt;<br>
&gt;&gt; any body tried the real time kernel? I get an error, it is snot in=
 the<br>
&gt;&gt; compatibility list.<br>
&gt;&gt; can we skip it?<br>
&gt;&gt;<br>
&gt;&gt; thanks<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;<br>
&gt; Good news: I use RT kernel only together with VC4 graphics and have lo=
ts of<br>
&gt; fun on PI2/3.<br>
&gt; Bad news: As far as I know it is not in meta-raspberrypi but in my for=
k [1].<br>
&gt; There were attempts to land the RT-patches in meta-raspberrypi but tha=
t was<br>
&gt; denied for huge patch size :(<br>
<br>
</span>If the patch size was the only problem one can pull it by doing the<=
br>
following in the recipe:<br>
<br>
SRC_URI +=3D &quot; \<br>
=C2=A0 =C2=A0 <a href=3D"https://cdn.kernel.org/pub/linux/kernel/projects/r=
t/4.9/patch-4.9.65-rt56.patch.gz;name=3Drt-patch" rel=3D"noreferrer" target=
=3D"_blank">https://cdn.kernel.org/pub/<wbr>linux/kernel/projects/rt/4.9/<w=
br>patch-4.9.65-rt56.patch.gz;<wbr>name=3Drt-patch</a><br>
\<br>
&quot;<br>
<br>
SRC_URI[rt-patch.md5sum] =3D &quot;<wbr>9caa7b541d8c84c2d5c5f58985982e<wbr>=
95&quot;<br>
SRC_URI[rt-patch.sha256sum] =3D<br>
&quot;<wbr>47dfb518c78d8cbaafd4ab9130eb26<wbr>fe0170be9189b580ab26209ef6793=
0<wbr>9539&quot;<br>
<br>
Note that above sums are &quot;random&quot; and not the for the actually fi=
le<br>
but are there for reference.<br>
<br>
That way you do not need to keep a copy of it in meta-raspberrypi.<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br>
--</font></span><br></blockquote><div>Hi Mirza,<br></div><div>=C2=A0</div><=
/div>Problem is that patches need alignments sometimes either caused by Ras=
pberry-Pi-specific adjustments or versions not matching exactly - RT kernel=
 patch updates are less frequent than kernel updates. Anyway: git is very g=
ood at maintaining huge text content and this should not be a problem these=
 days. Another discussion about RT kernel was to have an extra kernel for i=
t and I never understood why. To me that seems nothing but an extra mainten=
ance burden.<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">However - just wrote to Paul: I plan to be at FOSDEM and we can =
discuss there how to get back to one layer only (not mine!) making everybod=
y happy :)<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Andreas<br></div></div>

--001a114bc45e019bd005604bc061--
