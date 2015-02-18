Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25080E00825; Wed, 18 Feb 2015 09:37:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 570EAE00815
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 09:37:02 -0800 (PST)
Received: by mail-qg0-f46.google.com with SMTP id z107so2114253qgd.5
	for <yocto@yoctoproject.org>; Wed, 18 Feb 2015 09:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mH7LecojWoksa8qfc9JycxUQ2KJ/TRtT7+iQOErtbb4=;
	b=jx1KWZaWIWg27jXAeR/CGwfKUslBnvyBFeavqtrdt/Xx6KeSulsY93eG61ePEKTau2
	9VVJCXkAZHZ4UWLaZPFi+ZNIdmWetbGzVU3mu4IrEI781ngnHsgCRISiuY/G2EEajo4B
	0/NujBrmo8XWze6kWdV6et2RvY8TUCamBb2/mwHnrqlktyfblmVvyyB5xW05avJ/8gtY
	yFBa9KzXyLcIZ0WrjdbIT9+SdxsUc27PwJHcczW8aEtSV1N6ov1D/mySgHdbg97S12sq
	7NYRukooHk70KbAH+vlzqFrB7BpqqMDZd+6zchih+dueoDShPHcCod4jy/pUlx10qQd3
	t92g==
X-Received: by 10.140.194.204 with SMTP id p195mr2356307qha.21.1424281022066; 
	Wed, 18 Feb 2015 09:37:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.91.165 with HTTP; Wed, 18 Feb 2015 09:36:41 -0800 (PST)
In-Reply-To: <1749798.L7mbWZ0yKU@peggleto-mobl5.ger.corp.intel.com>
References: <CAP2S6e5oBGTDWNJ1eT9YsnWAV+xeDEBKKbCE2h3_34rmJu7ycg@mail.gmail.com>
	<2971571.L9pmXd2OeC@peggleto-mobl5.ger.corp.intel.com>
	<CAP2S6e51cy-ZB9uq9-frL6WDB8EWyYmaCxd0y5uHHUD_+H-gxw@mail.gmail.com>
	<1749798.L7mbWZ0yKU@peggleto-mobl5.ger.corp.intel.com>
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Wed, 18 Feb 2015 18:36:41 +0100
Message-ID: <CAP2S6e6OWXX5HAes-C+YF09fHGsr=NQ=qSTJWKouhRRY6yiGKw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to switch kernel version without touching PREFERED VERSION
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
X-List-Received-Date: Wed, 18 Feb 2015 17:37:05 -0000
Content-Type: multipart/alternative; boundary=001a1143245e617bcd050f60445c

--001a1143245e617bcd050f60445c
Content-Type: text/plain; charset=UTF-8

@Gary, you were right on the spelling. It always works best without
spelling mistakes (inside "meta-wolfson/conf/layer.conf")

I did indeed meant local.conf, not layer.conf in the build dir.

I wanted to use an older kernel because the wolfson audio card for the rpi
is distributed as a set of patch dedicated to the 3.10 kernel.

But then I tried the build and even with the right kernel, the patch list
threw errors.

Anyway, I found that cirrus logic just bought wolfson and created a new
audio extension for the rpi.
So I dumped the idea of the meta-wolfson layer and will start with
meta-cirrus.

This time the bbappend will have to change the github source directly as
cirrus provides the whole kernel (3.12 amongst others...).

Well thank you all very much !

Valentin






2015-02-18 17:48 GMT+01:00 Paul Eggleton <paul.eggleton@linux.intel.com>:

> On Wednesday 18 February 2015 17:33:26 Valentin Le bescond wrote:
> > I tryed editing /meta-wolfson/conf/layer.conf or /build/conf/layer.conf,
> > adding :
> > PREFERED_VERSION_linux-raspberrypi = "3.10.%"
> >
> > but neither worked (still using 3.12)
>
> I assume you tried build/conf/local.conf not build/conf/layer.conf?
>
> If so, that should have worked. You can run bitbake -e | less and look
> through
> the history to see what is overriding it if it doesn't work.
>
> > I endded up editing meta-raspberrypi's machine configuration and it works
> > fine.
> >
> > It's good, but that means I will need to apply this change to every
> > building machine I will use, or fork the meta-raspberrypi repo, witch is
> > another story.
> > I was hoping to keep everything inside my wolfson layer. too bad.
>
> FWIW, in general forcing a particular kernel version from a layer.conf like
> this isn't very good practice. People who use your layer may not expect to
> have the kernel version switched just by adding it to their bblayers.conf.
> (There may perhaps be mitigating circumstances in this case.)
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a1143245e617bcd050f60445c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>@Gary, you were right on the spel=
ling. It always works best without spelling mistakes (inside &quot;meta-wol=
fson/conf/layer.conf&quot;)<br><br></div>I did indeed meant local.conf, not=
 layer.conf in the build dir.<br><br></div>I wanted to use an older kernel =
because the wolfson audio card for the rpi is distributed as a set of patch=
 dedicated to the 3.10 kernel.<br><br></div>But then I tried the build and =
even with the right kernel, the patch list threw errors.</div><div><br></di=
v>Anyway, I found that cirrus logic just bought wolfson and created a new a=
udio extension for the rpi.<br>So I dumped the idea of the meta-wolfson lay=
er and will start with meta-cirrus.<br></div><div><br></div><div>This time =
the bbappend will have to change the github source directly as cirrus provi=
des the whole kernel (3.12 amongst others...).<br><br></div><div>Well thank=
 you all very much ! <br></div><div><br></div>Valentin<br><div><div><div><d=
iv><div><br><br><br><div><br><br></div></div></div></div></div></div></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-02-18 17:48 =
GMT+01:00 Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.egglet=
on@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;=
</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wednesday 18=
 February 2015 17:33:26 Valentin Le bescond wrote:<br>
&gt; I tryed editing /meta-wolfson/conf/layer.conf or /build/conf/layer.con=
f,<br>
&gt; adding :<br>
&gt; PREFERED_VERSION_linux-raspberrypi =3D &quot;3.10.%&quot;<br>
&gt;<br>
&gt; but neither worked (still using 3.12)<br>
<br>
</span>I assume you tried build/conf/local.conf not build/conf/layer.conf?<=
br>
<br>
If so, that should have worked. You can run bitbake -e | less and look thro=
ugh<br>
the history to see what is overriding it if it doesn&#39;t work.<br>
<span class=3D""><br>
&gt; I endded up editing meta-raspberrypi&#39;s machine configuration and i=
t works<br>
&gt; fine.<br>
&gt;<br>
&gt; It&#39;s good, but that means I will need to apply this change to ever=
y<br>
&gt; building machine I will use, or fork the meta-raspberrypi repo, witch =
is<br>
&gt; another story.<br>
&gt; I was hoping to keep everything inside my wolfson layer. too bad.<br>
<br>
</span>FWIW, in general forcing a particular kernel version from a layer.co=
nf like<br>
this isn&#39;t very good practice. People who use your layer may not expect=
 to<br>
have the kernel version switched just by adding it to their bblayers.conf.<=
br>
(There may perhaps be mitigating circumstances in this case.)<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a1143245e617bcd050f60445c--
