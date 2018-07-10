Return-Path: <michael.allwright@ulb.ac.be>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20CC0E00E5E; Mon,  9 Jul 2018 22:54:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [164.15.128.114 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxin.ulb.ac.be (mxin.ulb.ac.be [164.15.128.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A135E00A04
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 22:54:01 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ETBgC6SERb/zVSfUpcHAEBAQQBAQoBA?=
	=?us-ascii?q?YNJgWEog3qBHZMcggqINoduhwgBCoRsAoJGITcVAQIBAQIBAQICAmkohTgBAQE?=
	=?us-ascii?q?BAgEjVgULCwsNKgICIQESAQUBHAYThQgDDQidYTyLCYIchxENKxlqgTqIeYFXP?=
	=?us-ascii?q?4NzLoJWhSaCVQKZJCsHAoFwiiqDC4gHhVaLB4Z6DyGBNiOBUk0ggQQGgjKCJBe?=
	=?us-ascii?q?OGT0wjnYBAQ?=
X-IPAS-Result: =?us-ascii?q?A2ETBgC6SERb/zVSfUpcHAEBAQQBAQoBAYNJgWEog3qBHZM?=
	=?us-ascii?q?cggqINoduhwgBCoRsAoJGITcVAQIBAQIBAQICAmkohTgBAQEBAgEjVgULCwsNK?=
	=?us-ascii?q?gICIQESAQUBHAYThQgDDQidYTyLCYIchxENKxlqgTqIeYFXP4NzLoJWhSaCVQK?=
	=?us-ascii?q?ZJCsHAoFwiiqDC4gHhVaLB4Z6DyGBNiOBUk0ggQQGgjKCJBeOGT0wjnYBAQ?=
Received: from mail-wm0-f53.google.com ([74.125.82.53])
	by smtp.ulb.ac.be with ESMTP/TLS/AES128-GCM-SHA256;
	10 Jul 2018 07:53:59 +0200
Received: by mail-wm0-f53.google.com with SMTP id w16-v6so23164171wmc.2
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 22:53:59 -0700 (PDT)
X-Gm-Message-State: APt69E3HOUNAdNfFZDUfXyrboO95QIUQEhb7CI4tL2AATzD2rK/CpKtg
	FXaim0S4cGr2qoCCkip6PAT5QZiLC4gBrbBp2I8=
X-Google-Smtp-Source: AAOMgpdLTPhRhi6dBGWOTSZwXo43YYbEAnrSpSJ3jUU+/H0ko8lOFaLzbdqMU+crbmuAp8n1wsTVzXQuE9NwQg4EBn8=
X-Received: by 2002:a1c:894f:: with SMTP id
	l76-v6mr13464196wmd.103.1531202039582; 
	Mon, 09 Jul 2018 22:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
	<CAJ86T=Wea6yCsqxn+ZfMQ=tXC2d8FWxGv9b7TFZ1E57FLBhyjA@mail.gmail.com>
	<CALcgO_5bC0R6+KbkvGzUWasA89iV4eWb71xyV_qj9qzFeytz-g@mail.gmail.com>
	<CAJ86T=U7SaXgaoPc4sYJf3FeVvAY2rqHEkZ=9Z92nzn3vH2KDQ@mail.gmail.com>
In-Reply-To: <CAJ86T=U7SaXgaoPc4sYJf3FeVvAY2rqHEkZ=9Z92nzn3vH2KDQ@mail.gmail.com>
From: Michael Allwright <michael.allwright@ulb.ac.be>
Date: Tue, 10 Jul 2018 07:53:48 +0200
X-Gmail-Original-Message-ID: <CALcgO_7c3OdgMiDQuHwDDr-YTrqibkZ0J6UEBYy++vKjGtq6HQ@mail.gmail.com>
Message-ID: <CALcgO_7c3OdgMiDQuHwDDr-YTrqibkZ0J6UEBYy++vKjGtq6HQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Including a header from an external kernel module
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
X-List-Received-Date: Tue, 10 Jul 2018 05:54:03 -0000
Content-Type: multipart/alternative; boundary="000000000000a616f705709ec173"

--000000000000a616f705709ec173
Content-Type: text/plain; charset="UTF-8"

On Tue., 10 Jul. 2018, 00:15 Andre McCurdy, <armccurdy@gmail.com> wrote:

> On Mon, Jul 9, 2018 at 3:07 PM, Michael Allwright
> <michael.allwright@ulb.ac.be> wrote:
> > Yes, it ended up in the development package in the do_install_append
> > attempt
>
> How did you confirm that (ie that the header ended up in the
> module-a-dev package) ?


In the build directory, I can see that the header file is in the
module-a-dev directory under split packages.


> > , but I couldn't #include it in the second module (file didn't exist
> > in the include search paths).
>
> Did you add:
>
>   DEPENDS = "module-a"
>
> to the module-b recipe?
>

Yes, I did this.

> I would point out though, that I am interested in what is the correct way
> to
> > do this, and not just in finding some workaround / hack so that it
> works...
>
> That's good to hear.
>

So am I on the right track or should I be doing this differently?


> > On Mon., 9 Jul. 2018, 19:47 Andre McCurdy, <armccurdy@gmail.com> wrote:
> >>
> >> On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright
> >> <michael.allwright@ulb.ac.be> wrote:
> >> > Hello,
> >> >
> >> > I think it would be useful to extend the hello-mod recipe in
> >> > meta-skeleton
> >> > to demonstrate some slightly more complicated scenarios. For example,
> I
> >> > am
> >> > trying to find out how to have two external kernel modules A and B,
> >> > where
> >> > module B #includes a header file provided by module A.
> >> >
> >> > I have made module B depend on module A, however, I believe I am still
> >> > missing one or two steps in my recipe for module A such that the
> header
> >> > file
> >> > is copied into the shared kernel staging directory where module B can
> >> > find
> >> > it.
> >> >
> >> > So far I have tried the following:
> >> >
> >> > FILES_${PN}-dev += "/usr/include/linux/mfd/module-a.h"
> >> >
> >> > FILES_kernel-headers += "${includedir}/linux/mfd/module-a.h"
> >> >
> >> > do_install_append () {
> >> >    install -d ${D}${includedir}/linux/mfd
> >> >    install -m 644 ${S}/module-a ${D}${includedir}/linux/mfd/module-a.h
> >> > }
> >>
> >> And what happened after you tried the above? Did the header not end up
> >> in the -dev package for module A? Did the module A recipe not create a
> >> -dev package? Something else?
> >>
> >> > In module B, I want to be able to:
> >> >
> >> > #include <linux/mfd/module-a.h>
> >> >
>

--000000000000a616f705709ec173
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Tue., 10 Jul. 2018, 00:15 Andre McCurdy, &lt;<a href=3D"mailto:armccurdy=
@gmail.com">armccurdy@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Mon, Jul 9, 2018 at 3:07 PM, Michael Allwright<br>
&lt;<a href=3D"mailto:michael.allwright@ulb.ac.be" target=3D"_blank" rel=3D=
"noreferrer">michael.allwright@ulb.ac.be</a>&gt; wrote:<br>
&gt; Yes, it ended up in the development package in the do_install_append<b=
r>
&gt; attempt<br>
<br>
How did you confirm that (ie that the header ended up in the<br>
module-a-dev package) ?</blockquote></div></div><div dir=3D"auto"><br></div=
><div dir=3D"auto">In the build directory, I can see that the header file i=
s in the module-a-dev directory under split packages.</div><div dir=3D"auto=
"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><br>
&gt; , but I couldn&#39;t #include it in the second module (file didn&#39;t=
 exist<br>
&gt; in the include search paths).<br>
<br>
Did you add:<br>
<br>
=C2=A0 DEPENDS =3D &quot;module-a&quot;<br>
<br>
to the module-b recipe?<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Yes, I did this.</div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
&gt; I would point out though, that I am interested in what is the correct =
way to<br>
&gt; do this, and not just in finding some workaround / hack so that it wor=
ks...<br>
<br>
That&#39;s good to hear.<br></blockquote></div></div><div dir=3D"auto"><br>=
</div><div dir=3D"auto">So am I on the right track or should I be doing thi=
s differently?</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
&gt; On Mon., 9 Jul. 2018, 19:47 Andre McCurdy, &lt;<a href=3D"mailto:armcc=
urdy@gmail.com" target=3D"_blank" rel=3D"noreferrer">armccurdy@gmail.com</a=
>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Jul 9, 2018 at 8:27 AM, Michael Allwright<br>
&gt;&gt; &lt;<a href=3D"mailto:michael.allwright@ulb.ac.be" target=3D"_blan=
k" rel=3D"noreferrer">michael.allwright@ulb.ac.be</a>&gt; wrote:<br>
&gt;&gt; &gt; Hello,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I think it would be useful to extend the hello-mod recipe in<=
br>
&gt;&gt; &gt; meta-skeleton<br>
&gt;&gt; &gt; to demonstrate some slightly more complicated scenarios. For =
example, I<br>
&gt;&gt; &gt; am<br>
&gt;&gt; &gt; trying to find out how to have two external kernel modules A =
and B,<br>
&gt;&gt; &gt; where<br>
&gt;&gt; &gt; module B #includes a header file provided by module A.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have made module B depend on module A, however, I believe I=
 am still<br>
&gt;&gt; &gt; missing one or two steps in my recipe for module A such that =
the header<br>
&gt;&gt; &gt; file<br>
&gt;&gt; &gt; is copied into the shared kernel staging directory where modu=
le B can<br>
&gt;&gt; &gt; find<br>
&gt;&gt; &gt; it.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; So far I have tried the following:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; FILES_${PN}-dev +=3D &quot;/usr/include/linux/mfd/module-a.h&=
quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; FILES_kernel-headers +=3D &quot;${includedir}/linux/mfd/modul=
e-a.h&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; do_install_append () {<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 install -d ${D}${includedir}/linux/mfd<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 install -m 644 ${S}/module-a ${D}${includedir}/l=
inux/mfd/module-a.h<br>
&gt;&gt; &gt; }<br>
&gt;&gt;<br>
&gt;&gt; And what happened after you tried the above? Did the header not en=
d up<br>
&gt;&gt; in the -dev package for module A? Did the module A recipe not crea=
te a<br>
&gt;&gt; -dev package? Something else?<br>
&gt;&gt;<br>
&gt;&gt; &gt; In module B, I want to be able to:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; #include &lt;linux/mfd/module-a.h&gt;<br>
&gt;&gt; &gt;<br>
</blockquote></div></div></div>

--000000000000a616f705709ec173--
