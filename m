Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12727E00ADD; Wed,  6 Nov 2019 10:40:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 198A7E00875
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 10:40:11 -0800 (PST)
Received: by mail-qk1-f179.google.com with SMTP id z23so174572qkj.10
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 10:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OvdZ2RPTfpzfxXryrB7po0v99foYGI1HXeswKd+DO2M=;
	b=hMTkAmUfaZjJ1OgfxwvcreqTZLP0xYL+k9Bnb+YHXCS8A05+vEu4pUsrwA5L4xJiyb
	U+t0mFfu8UjpVQv10fnRh8FbpobY6CuZTrUSCfYGiFfVCZlkDX8dKuUEs77k5NvsobL+
	kQHwgUfac087reftOu99piGPBy9HYukaZGiyGPIW2tlchNMSPzs8aXi42LTZMJ0Yy3mv
	RCj4CedGrEKbJs5k4i7oBI5M7H0gq4SNbcFYLTl2NjU1YZRsjIeD/vozzdWFOUKS95PU
	DdSjyBkEmqi0fuRXYfjiS71msIPX2GGjHdHy8JlIJuzSpcWpwFyq6z3rQLgrmEHHSRfU
	EiRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OvdZ2RPTfpzfxXryrB7po0v99foYGI1HXeswKd+DO2M=;
	b=mVaRdSZe114XF/QZJYGZNU5NdgXh5LkP1d6nPmPzCL8r4wMsBHp+zg1QziJx1xBMhA
	5Sc/qiiVvZeeFvT3qr2n6gGqoVaa4IPTMN4iwX3XmNmrb/CaVfIs6+wPFOovXNN6Ggwy
	yqLQuN0As9OVx56cdWxfayo9SVQ8jo2IfMMUovilKO/zg5peiARx1UQapWgj8dDwgApD
	N6Kr9mT98AA40dbVjFHaZr7tNIIYK7DIPfUE8vhzILzBnRz6y1nTqo92bbyI65Pr33GX
	45Ye4GErKRP6JI99/Id3d5hNCtD/URSR20PFgOhw4Cq60ppmwJfft8KGceiWh+k2LVxE
	YBKw==
X-Gm-Message-State: APjAAAWSo4K/WCgB4/bLrqGEgJiTjJgb9gtfmBu9odh866u8p+zgbP/n
	ks3w9jq/3/TFXtYpiXX2/c/8P75D6lDbIFLYggA=
X-Google-Smtp-Source: APXvYqztmo39/BM1JbnfsPBDVRB/lGtUp+ND36DdEzkpt2HQ78WyKW4cXsTxe20pysnraUqgLMKofKHwJKBGTQdSrKE=
X-Received: by 2002:a37:4017:: with SMTP id n23mr3387835qka.53.1573065611038; 
	Wed, 06 Nov 2019 10:40:11 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN0f4eSrq8zjcOU1gdvv9QfMNCx=d2AXHdheCJq1se8SOg@mail.gmail.com>
	<CADkTA4MWsXbFPbu2FKN5noOGijuepkde7R6nQtbOUJve6DQR8w@mail.gmail.com>
In-Reply-To: <CADkTA4MWsXbFPbu2FKN5noOGijuepkde7R6nQtbOUJve6DQR8w@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Wed, 6 Nov 2019 19:39:59 +0100
Message-ID: <CACKFPN12283c=hvC8dkf-Rx4ZLbhpUgKU03EwRRA+khHEBJg3g@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Mailman-Approved-At: Tue, 12 Nov 2019 05:18:47 -0800
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Kernel modules packaged but not installed
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
X-List-Received-Date: Wed, 06 Nov 2019 18:40:15 -0000
Content-Type: multipart/alternative; boundary="000000000000f454aa0596b1e05b"

--000000000000f454aa0596b1e05b
Content-Type: text/plain; charset="UTF-8"

Hi Bruce,

I've also tried adding the `kernel-modules` in the IMAGE_INSTALL,
but that doesn't help either, because as I've mentioned this package
is empty.

The individual module packages are indeed populated and adding each
one individually in the IMAGE_INSTALL makes them install in the final
image.

So the problem is that the `kernel-modules` doesn't add all the module
packages in one package and it's empty. Therefore, when it's installed
it installs nothing.

Regards,
Dimitris

Bruce Ashfield <bruce.ashfield@gmail.com> schrieb am Mi., 6. Nov. 2019,
17:20:

> On Wed, Nov 6, 2019 at 11:06 AM Dimitris Tassopoulos <dimtass@gmail.com>
> wrote:
> >
> > Hi all. I have a weird issue with the kernel modules not being installed
> in the image and also not packaged.
> > I see the packages for individual "kernel-module-*.ipk" modules but the
> "kernel-modules_*.ipk" is always
> > empty.
> >
> > I'm also able to see the "modules-${MACHINE}.tgz" in DEPLOYDIR which has
> all the modules in there, just fine.
> >
> > In my image file I've also set this:
> > MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"
>
> Have you tried something stronger than the RRECOMMENDS ? i.e. either
> adding one of the modules, or the kernel-modules meta package to
> IMAGE_INSTALL ?
>
> Bruce
>
> >
> > This is the kernel recipe:
> >
> https://gitlab.com/dimtass/meta-allwinner-hx/blob/master/recipes-kernel/linux/linux-stable_4.19.bb
> >
> > And this is the conf folder
> > https://gitlab.com/dimtass/meta-allwinner-hx/tree/master/conf
> >
> > For some reason I can't figure out why modules are not ending up in the
> image.
> >
> > If I do it manually in a do_install_append like this:
> > do_install_append() {
> >     # Install kernel-modules
> > install -d ${D}${nonarch_base_libdir}
> >     oe_runmake INSTALL_MOD_PATH=${D} modules_install
> > }
> >
> > then it works, but I guess that shouldn't be the right way.
> >
> > Any suggestions or ideas?
> >
> > Thanks!
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

--000000000000f454aa0596b1e05b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi Bruce,</div><div dir=3D"auto"><br></d=
iv><div>I&#39;ve also tried adding the `kernel-modules` in the IMAGE_INSTAL=
L,</div><div>but that doesn&#39;t help either, because as I&#39;ve mentione=
d this package</div><div>is empty.</div><div><br></div><div>The individual =
module packages are indeed populated and adding each</div><div>one individu=
ally in the IMAGE_INSTALL makes them install in the final</div><div>image.<=
/div><div><br></div><div>So the problem is that the `kernel-modules` doesn&=
#39;t add all the module</div><div>packages in one package and it&#39;s emp=
ty. Therefore, when it&#39;s installed</div><div>it installs nothing.</div>=
<div><br></div><div>Regards,</div><div>Dimitris</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Bruce Ashfield &lt;<=
a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield=
@gmail.com</a>&gt; schrieb am Mi., 6. Nov. 2019, 17:20:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On Wed, Nov 6, 2019 at 11:06 AM Dim=
itris Tassopoulos &lt;<a href=3D"mailto:dimtass@gmail.com" rel=3D"noreferre=
r" target=3D"_blank">dimtass@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all. I have a weird issue with the kernel modules not being install=
ed in the image and also not packaged.<br>
&gt; I see the packages for individual &quot;kernel-module-*.ipk&quot; modu=
les but the &quot;kernel-modules_*.ipk&quot; is always<br>
&gt; empty.<br>
&gt;<br>
&gt; I&#39;m also able to see the &quot;modules-${MACHINE}.tgz&quot; in DEP=
LOYDIR which has all the modules in there, just fine.<br>
&gt;<br>
&gt; In my image file I&#39;ve also set this:<br>
&gt; MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS +=3D &quot;kernel-modules&quot;<br=
>
<br>
Have you tried something stronger than the RRECOMMENDS ? i.e. either<br>
adding one of the modules, or the kernel-modules meta package to<br>
IMAGE_INSTALL ?<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; This is the kernel recipe:<br>
&gt; <a href=3D"https://gitlab.com/dimtass/meta-allwinner-hx/blob/master/re=
cipes-kernel/linux/linux-stable_4.19.bb" rel=3D"noreferrer noreferrer" targ=
et=3D"_blank">https://gitlab.com/dimtass/meta-allwinner-hx/blob/master/reci=
pes-kernel/linux/linux-stable_4.19.bb</a><br>
&gt;<br>
&gt; And this is the conf folder<br>
&gt; <a href=3D"https://gitlab.com/dimtass/meta-allwinner-hx/tree/master/co=
nf" rel=3D"noreferrer noreferrer" target=3D"_blank">https://gitlab.com/dimt=
ass/meta-allwinner-hx/tree/master/conf</a><br>
&gt;<br>
&gt; For some reason I can&#39;t figure out why modules are not ending up i=
n the image.<br>
&gt;<br>
&gt; If I do it manually in a do_install_append like this:<br>
&gt; do_install_append() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0# Install kernel-modules<br>
&gt; install -d ${D}${nonarch_base_libdir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0oe_runmake INSTALL_MOD_PATH=3D${D} modules_install<=
br>
&gt; }<br>
&gt;<br>
&gt; then it works, but I guess that shouldn&#39;t be the right way.<br>
&gt;<br>
&gt; Any suggestions or ideas?<br>
&gt;<br>
&gt; Thanks!<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer" target=3D=
"_blank">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div>

--000000000000f454aa0596b1e05b--
