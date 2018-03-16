Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58A17E00CD7; Fri, 16 Mar 2018 09:51:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 989CAE00CA1
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:51:27 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id h23so13368259iob.11
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+bmaZga9Z6/apzNNFvozskiLJ40EFVpCBGWd9qd/qZE=;
	b=dvOlhZQINTNsi0fR8FiLtO9cZSQwDKIM5qnuwRJ6pyRwQsNjpIAHyJ20W1l8R3iho+
	IydK1s+Jw7o6S4IbXPIIE9lsL/pJ124g/12drZUyegsfJ/XgMvwys0VljER3rHYzy2Km
	+WeP5yBKoS59KbMid0VtDSS/NlKySV/V5wDbJjYidXqXiX85LAYiJph3VeIblIimI2+I
	CHWSR+SIe3bRk8p7SIMW5OCrVIQ9SSOQ32qF16UO466ytGtJhNr7ZqHoSpKFka05di2x
	IydIOmnbiTW4u/DGS1Wp9AXfdLhOIVUB1Q5x+cr3ZYZr0XyfBQlynzcd4QeAM7mlIwRq
	K3dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+bmaZga9Z6/apzNNFvozskiLJ40EFVpCBGWd9qd/qZE=;
	b=QHx2e3WWSiHHyXfgt7nXDYRXlypm8+4d2Gd/IICWAlzVbb1DOGNRDJEaVF6V9cOy35
	rRcJwzQi6IAD+xdLQhlHjDYtZvE4pann7spXmxsvpTmO4HMRGZt+mPhS9xvhneMnzwD8
	evDtz3ASO0h5qeXddKqT8DmM1VZzaD8nGuZ1IfzbW+WmPAlz2X91cIp2wNMcihKOE2mm
	0xBMuy65Mi8A6J0Xcp6uJYtS5RqoC5BKl/M7gsjcElYZB/kewiCPHvgvV5yEl3vwkHwj
	Ksd2QvcM36dR3wQ848hyfjZiwnSXGPZv2GCGJSVjLUUmnsK1+njzy9Imhftam6F/VvOg
	IR9A==
X-Gm-Message-State: AElRT7GQNNVmoLwwY75HqtIYmFzWIy3gpGwqGbE4wkVSLFUesVSgVPbF
	7YDmi1zI45PZkEPq0DzuXCY6yUdIZC1T7wbTkTHCxA==
X-Google-Smtp-Source: AG47ELuSHeHV9Hmmb7MfSX/vB36uebO4zaIG5XE4xrm3JJmnagV/xzeGDU3AXIFNbJVEomHLTuPdGNxmROcGBnZw19I=
X-Received: by 10.107.164.3 with SMTP id n3mr2614556ioe.88.1521219086803; Fri,
	16 Mar 2018 09:51:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
	<CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
	<alpine.LFD.2.21.1803161247560.5800@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.1803161247560.5800@localhost.localdomain>
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 16 Mar 2018 16:51:16 +0000
Message-ID: <CAFzUWGn2aNXjOkMqmEYg06EGojJ1sLtB67SVSQCtVudx3wyQnw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Can SRC_URI look in the same place for two different machines?
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
X-List-Received-Date: Fri, 16 Mar 2018 16:51:39 -0000
Content-Type: multipart/alternative; boundary="001a1141de6a4b67c405678a6b2d"

--001a1141de6a4b67c405678a6b2d
Content-Type: text/plain; charset="UTF-8"

Right, so the problem for me is that there seems to be two ways to do this:

MACHINEOVERRIDES .= ":machine3" (for 3a, 3b)

or

FILESEXTRAPATHS_append_machine3a = "${THISDIR}/files/machine3/"
FILESEXTRAPATHS_append_machine3b = "${THISDIR}/files/machine3/"

But it's not clear to me which is better.... or fits with the philosophy of
yocto/bitbake.

Giordon

On Fri, Mar 16, 2018 at 11:48 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Fri, 16 Mar 2018, Burton, Ross wrote:
>
> > On 15 March 2018 at 14:07, Giordon Stark <kratsg@gmail.com> wrote:
> >       So for my device trees, I'm finding some files are duplicated. In
> particular some of my
> >       dtsi files are going to be the same amongst a few boards we're
> using, so I would like
> >       to have each machine name distinct so that
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> >
> > files/${MACHINE}/${MACHINE}.dts
> >
> > is picked up, while still having
> >
> > files/common/*.dtsi picked up as well. As an example of my SRC_URI
> appends:
> >
> > SRC_URI_append_gfex-prototype1b = " \
> >     file://skeleton.dtsi  \
> >     file://pl.dtsi        \
> >     file://zynq-7000.dtsi \
> >     file://system.dts     \
> > "
> >
> > SRC_URI_append_gfex-prototype2  = " \
> >     file://skeleton.dtsi   \
> >     file://pl.dtsi         \
> >     file://zynq-7000.dtsi  \
> >     file://system.dts      \
> > "
> >
> > I suspect I do something with OVERRIDES in the
> > conf/machine/${MACHINE}.conf file but not sure...
> >
> >
> > Can't you just put common files in files/file.dtsi and then the
> > machine-specific ones in files/[machine]/?
>
>   isn't this precisely what MACHINEOVERRIDES is for?
>
> rday

-- 
Giordon Stark

--001a1141de6a4b67c405678a6b2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Right, so the problem for me is that there seems to be two=
 ways to do this:<div><br></div><div>MACHINEOVERRIDES .=3D &quot;:machine3&=
quot; (for 3a, 3b)</div><div><br></div><div>or</div><div><br></div><div>FIL=
ESEXTRAPATHS_append_machine3a =3D &quot;${THISDIR}/files/machine3/&quot;</d=
iv><div>FILESEXTRAPATHS_append_machine3b =3D &quot;${THISDIR}/files/machine=
3/&quot;<br></div><div><br></div><div>But it&#39;s not clear to me which is=
 better.... or fits with the philosophy of yocto/bitbake.</div><div><br></d=
iv><div>Giordon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Fri, Mar 16, 2018 at 11:48 AM Robert P. J. Day &lt;<a href=3D"mailto:rpj=
day@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">On Fri, 16 Mar 2018, Burton, Ross wrote:<br>
<br>
&gt; On 15 March 2018 at 14:07, Giordon Stark &lt;<a href=3D"mailto:kratsg@=
gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0So for my device trees, I&#39;m finding some=
 files are duplicated. In particular some of my<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dtsi files are going to be the same amongst =
a few boards we&#39;re using, so I would like<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0to have each machine name distinct so that=
=C2=A0<br>
&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
&gt;<br>
&gt; files/${MACHINE}/${MACHINE}.dts<br>
&gt;<br>
&gt; is picked up, while still having<br>
&gt;<br>
&gt; files/common/*.dtsi picked up as well. As an example of my SRC_URI app=
ends:<br>
&gt;<br>
&gt; SRC_URI_append_gfex-prototype1b =3D &quot; \<br>
&gt; =C2=A0 =C2=A0 file://skeleton.dtsi=C2=A0 \<br>
&gt; =C2=A0 =C2=A0 file://pl.dtsi=C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
&gt; =C2=A0 =C2=A0 file://zynq-7000.dtsi \<br>
&gt; =C2=A0 =C2=A0 file://system.dts=C2=A0 =C2=A0 =C2=A0\<br>
&gt; &quot;<br>
&gt;<br>
&gt; SRC_URI_append_gfex-prototype2=C2=A0 =3D &quot; \<br>
&gt; =C2=A0 =C2=A0 file://skeleton.dtsi=C2=A0 =C2=A0\<br>
&gt; =C2=A0 =C2=A0 file://pl.dtsi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
&gt; =C2=A0 =C2=A0 file://zynq-7000.dtsi=C2=A0 \<br>
&gt; =C2=A0 =C2=A0 file://system.dts=C2=A0 =C2=A0 =C2=A0 \<br>
&gt; &quot;<br>
&gt;<br>
&gt; I suspect I do something with OVERRIDES in the<br>
&gt; conf/machine/${MACHINE}.conf file but not sure...<br>
&gt;<br>
&gt;<br>
&gt; Can&#39;t you just put common files in files/file.dtsi and then the<br=
>
&gt; machine-specific ones in files/[machine]/?<br>
<br>
=C2=A0 isn&#39;t this precisely what MACHINEOVERRIDES is for?<br>
<br>
rday</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--001a1141de6a4b67c405678a6b2d--
