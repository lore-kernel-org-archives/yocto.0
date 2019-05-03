Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72A71E00A0C; Fri,  3 May 2019 12:47:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3272FE009A0
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 12:47:55 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id f37so7285684edb.13
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 12:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=RtLOwUhq/EWcfIjBkphVLb6t6hl7OTtW2ke75jx8jBk=;
	b=axioxWOSrbdzIV7x90kwQl85tGBahaV/My2NUNW7iCJvAhn929QpnD+zezjUZQOB9z
	7Ua7BjrvOtdySsDMkNVj3F7t8bvbMc7XivLFg66uSFjIFwuGaMbFZnydNO0q3r37nBE+
	4Pj5OXcG55Kedu7t+O8Gv3oR754RyCT6HXNNTJ+OYtnhLOJJfjCw5rncQvAcusPb7xWg
	j3WFfOYdd3R7sZU0sENxdIjM+4Q45D0VYnvVxsCzkv5PfaCcSrD52ntPWfQ4efghyDXv
	dknd3z4PhNS3WkeL8spILeQ6SZM3OxHYuW38BVY7q+/qcCLg9l73hDoyFnF3qIfd+lWT
	VT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=RtLOwUhq/EWcfIjBkphVLb6t6hl7OTtW2ke75jx8jBk=;
	b=e1zdDnIPNRr3rkhvPzSZjBKNxcYWNBjbWmZIUi6ZYlaKpkiunBtN/mNX3WyQjq4Edp
	aZs/7I286txyLgDzFk3PAMXbYyIGg32v8XmC4RSXM8ybwPmPY3qnOcfMoNa7+sOkcYcm
	4FdguHh/8c5YExkeG83EWE7YzYY4XmbcfnFan9j47eV+BwA3rgUolgLTdcWBYFtxwtNb
	Z5ue1HFSIwHIyJ5SwMQdBMaAye5s8GjmjjviIYf8IzCT4suqUbioCaNZ56g3FclNCiJo
	duxjt3FANBkavMCvgb4+3GmbGYZyvHytjBqiZdScW/DtUzijln3Igou/SQEyhioQSqUs
	rAgQ==
X-Gm-Message-State: APjAAAVus8tdNkNTaqlQEdO5oI7YlkUMZqVPf9da1Rv+JktQxcsiEBJ3
	/sMj0Jf9ggeNKuLfZ5SeOaFj7m8jiRZBbLuRSOQ=
X-Google-Smtp-Source: APXvYqwRyIYi5eAlVvzgZ6ch8toFiGPXR2UDE4JLsWSDZY+98FvuFksNAnUgkSdhtDKCU9ZZC+35FpfhZM8Dsm6sZPQ=
X-Received: by 2002:a50:87ee:: with SMTP id 43mr10813035edz.238.1556912874217; 
	Fri, 03 May 2019 12:47:54 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1905020850390.9757@localhost.localdomain>
	<CAJTo0LZ4UZ=wJog44=-m-wpCOo0+NTA3-NEh6oWgtbO0nN02pg@mail.gmail.com>
In-Reply-To: <CAJTo0LZ4UZ=wJog44=-m-wpCOo0+NTA3-NEh6oWgtbO0nN02pg@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 3 May 2019 12:47:42 -0700
Message-ID: <CAFNP8Os1CAxRx9cQTs33pHb7yMqoAOs-p2NK2L0r_-q7h6+1Ug@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "meta-intel" layer bad example of a "container layer"
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
X-List-Received-Date: Fri, 03 May 2019 19:47:56 -0000
Content-Type: multipart/alternative; boundary="000000000000d0652a05880106fe"

--000000000000d0652a05880106fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Robert,

I have updated the BSP Guide and removed all but a single instance of
"container layer".  You can see what I have left at the bottom of this
section -
https://yoctoproject.org/docs/2.8/bsp-guide/bsp-guide.html#bsp-layers.
Also, the YP Reference Manual "Terms" section has been updated with similar
text -
https://yoctoproject.org/docs/2.8/ref-manual/ref-manual.html#ref-terms.

Thanks,
Scott

On Thu, May 2, 2019 at 5:59 AM Burton, Ross <ross.burton@intel.com> wrote:

> Right, meta-intel isn't a container layer.  It just has two MACHINES.
>
> Ross
>
> On Thu, 2 May 2019 at 13:54, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> >
> >
> >   catching up with all the YP stuff i've missed over the last while
> > and, in the BSP guide in the layers section:
> >
> >
> https://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html#bsp-lay=
ers
> >
> > one reads:
> >
> > "Some layers function as a layer to hold other BSP layers. These
> > layers are knows as "container layers". An example of this type of
> > layer is the meta-intel layer. This layer contains BSP layers for the
> > Intel-core2-32 Intel=C2=AE Common Core (Intel-core2-32) and the
> > Intel-corei7-64 Intel=C2=AE Common Core (Intel-corei7-64). the meta-int=
el
> > layer also contains the common/ directory, which contains common
> > content across those layers. "
> >
> >   pretty sure meta-intel has been a regular BSP layer for a while now,
> > so another example should be used. off the top of my head, i'd suggest
> > meta-xilinx:
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/
> >
> > unless anyone has strong objections, i can send in a patch.
> >
> > rday
> >
> > --
> >
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > Robert P. J. Day                                 Ottawa, Ontario, CANAD=
A
> >                          http://crashcourse.ca
> >
> > Twitter:                                       http://twitter.com/rpjda=
y
> > LinkedIn:                               http://ca.linkedin.com/in/rpjda=
y
> >
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D--
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

--000000000000d0652a05880106fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Robert, <br></div><=
div><br></div><div>I have updated the BSP Guide and removed all but a singl=
e instance of &quot;container layer&quot;.=C2=A0 You can see what I have le=
ft at the bottom of this section - <a href=3D"https://yoctoproject.org/docs=
/2.8/bsp-guide/bsp-guide.html#bsp-layers">https://yoctoproject.org/docs/2.8=
/bsp-guide/bsp-guide.html#bsp-layers</a>.=C2=A0 Also, the YP Reference Manu=
al &quot;Terms&quot; section has been updated with similar text - <a href=
=3D"https://yoctoproject.org/docs/2.8/ref-manual/ref-manual.html#ref-terms"=
>https://yoctoproject.org/docs/2.8/ref-manual/ref-manual.html#ref-terms</a>=
.</div><div><br></div><div>Thanks,</div><div>Scott<br></div></div></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, May 2, 2019 at 5:59 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@=
intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Right, meta-intel isn&#39;t a container la=
yer.=C2=A0 It just has two MACHINES.<br>
<br>
Ross<br>
<br>
On Thu, 2 May 2019 at 13:54, Robert P. J. Day &lt;<a href=3D"mailto:rpjday@=
crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0catching up with all the YP stuff i&#39;ve missed over the=
 last while<br>
&gt; and, in the BSP guide in the layers section:<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guid=
e.html#bsp-layers" rel=3D"noreferrer" target=3D"_blank">https://www.yoctopr=
oject.org/docs/latest/bsp-guide/bsp-guide.html#bsp-layers</a><br>
&gt;<br>
&gt; one reads:<br>
&gt;<br>
&gt; &quot;Some layers function as a layer to hold other BSP layers. These<=
br>
&gt; layers are knows as &quot;container layers&quot;. An example of this t=
ype of<br>
&gt; layer is the meta-intel layer. This layer contains BSP layers for the<=
br>
&gt; Intel-core2-32 Intel=C2=AE Common Core (Intel-core2-32) and the<br>
&gt; Intel-corei7-64 Intel=C2=AE Common Core (Intel-corei7-64). the meta-in=
tel<br>
&gt; layer also contains the common/ directory, which contains common<br>
&gt; content across those layers. &quot;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0pretty sure meta-intel has been a regular BSP layer for a =
while now,<br>
&gt; so another example should be used. off the top of my head, i&#39;d sug=
gest<br>
&gt; meta-xilinx:<br>
&gt;<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/" rel=
=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi=
/meta-xilinx/</a><br>
&gt;<br>
&gt; unless anyone has strong objections, i can send in a patch.<br>
&gt;<br>
&gt; rday<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>
&gt; Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, O=
ntario, CANADA<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" t=
arget=3D"_blank">http://crashcourse.ca</a><br>
&gt;<br>
&gt; Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0<a href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blan=
k">http://twitter.com/rpjday</a><br>
&gt; LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.li=
nkedin.com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linked=
in.com/in/rpjday</a><br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D--<=
br>
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

--000000000000d0652a05880106fe--
