Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web09.4663.1580369115299866795
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 23:25:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIcUF0QP;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: gabbla.malist@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id y6so2199130lji.0
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 23:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c87I4n+rRFTqTLfDByCfdX8Ckv5uqUDhDi0J8XG6bjc=;
        b=kIcUF0QPXCAeafLDdMa/0wXh3VboSsrsp/fn13SZ6clkMRJ/xincqM5vlHrTa5tGOF
         px4UFg8qT4T4sMzX2aWwNxluxgFLOf7VeHenjXJKqyRIOKO1NIgGWJUBi2tp4q8sTPZq
         276Z/c5r5oyrgpwbhiycM0OdUnqbyyr4zITnm1y3SKLKrrHtsNI5KYojua9pK9kC2SDN
         w20kucu+SBjhyHMp4hQLDY5g13qq4cTUL8WAGFwzqAXEWpeg6regMp9++/v/qrAbARyA
         pkQgjd1r2t2PfFXYcKCrlckEyWE3n7JeefLqTu5WzWv3L7ZMzeK6amW5uyhVvRmo7dRj
         nX6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c87I4n+rRFTqTLfDByCfdX8Ckv5uqUDhDi0J8XG6bjc=;
        b=rBsO7/+/WiS7Ns06y1G3nmwaVfM3UG5EqZmYVMdQ9++C7kdotEPLROzPqRkzNiCIo6
         m3AaUDPnkX9YlWMcbGOY28qALVrROUOkf0I8QBiLoxgZANuXeFUVYKOGXGhOSNwYO70/
         dQuv7eeva9AccVu1TxOZieVAXCSIHcTgloG6MQ/LJZVThZey3D8EMd3s5aytIvjxab7i
         kgUBirkFhjzvqHsw7sZXG82/qkYYeN4tK78NQD5oIam8PzRnaoNyX68azqYw6t2GId/1
         S+99/E0SUgbZjYpQoa428IcLzOzU5wJ3duzKOu/kc34F0qXbvtMASMgMOSDzwD/RZ3b1
         jZew==
X-Gm-Message-State: APjAAAVc4sQqRzV1PoLzbR5bHQejAbymTuCOnGlZy9ONQAFiYt6pTu2T
	qyWtruQCE43gq8II0fyrUjFr7M5tQyQxAb2BVZU=
X-Google-Smtp-Source: APXvYqyTJNNpGgRTyn5U0ILLq0GVcGEz4SscyeLJYtC3B0t0fx5wnCDyf5ivDd1BvzRIgIXNlttLv8+pdsLsungSIKI=
X-Received: by 2002:a2e:9dc3:: with SMTP id x3mr1941843ljj.257.1580369113246;
 Wed, 29 Jan 2020 23:25:13 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
 <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com> <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
 <CAAx3WaDx71Cp+1_hyascYEzQsj3cNAjCuZQhbeHi-=ZbtYKYUw@mail.gmail.com> <CAK4PFCXt0PkyML1WqkOsgctCR1pYCYfSO53J1HAVadMumeBzyA@mail.gmail.com>
In-Reply-To: <CAK4PFCXt0PkyML1WqkOsgctCR1pYCYfSO53J1HAVadMumeBzyA@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Thu, 30 Jan 2020 08:25:01 +0100
Message-ID: <CAAx3WaAPbwYhQrHHYP55+etmsL4-wCiDsT1pYSqzCSDDcBSJ0A@mail.gmail.com>
Subject: Re: [yocto] permanently supercede kernel config with one of my own creation
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009bfedc059d565b13"

--0000000000009bfedc059d565b13
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 29, 2020 at 5:52 PM Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> OK guys.  I was able to make it work with a higher priority layer and
> a bbappend file.
>
> The difference with my config file is that mine actually defines all
> the CONFIG_ options but many of them are =3Dn to override selections
> made elsewhere.  I just hope that the kernel config is smart enough in
> all cases to recognise that
> CONFIG_OPTION=3Dn
> is the same thins as
> # CONFIG_OPTION is not set
>
> I reran the build and verified that only the options I want are in my
> staged kernel
>
> Next, I need to figure out how to make sure the built modules end up
> in the rootfs, which is currently an fnsroot filesystem.
>
> Add this line to your machine config:
>>>>>>>>>
# Install the module in /lib/modules/${uname -r}/
MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules"
<<<<<<<<<

Gabriele

>
> On 1/29/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> > Hi Kent,
> >
> > On Wed, Jan 29, 2020 at 1:53 PM Kent Dorfman <kent.dorfman766@gmail.co=
m>
> > wrote:
> >
> >> I'd prefer to not go that route.    It's a modified "vendor supplied"
> >> kernel from an internal tarball source, and for IA/QA reasons we're
> >> NOT going to refer to any external GIT repos.
> >>
> >> There must be a recipe for your "vendor supplied" kernel, why not
> > extending it with an append,
> > so you will be able to ship your own defconfig?
> > Assuming your vendor kernel recipe is called linux-ti-staging_4.19.bb,
> in
> > your layer add the file
> > recipes-kernel/linux/linux-ti-staging_4.19.bbappend and then
> >
> >>>>>>>>
> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files"
> > SRC_URI +=3D " file://defconfig"
> > <<<<<<<
> >
> > and put your defconfig in recipes-kernel/linux/files
> >
> > Can someone tell me how to just replace the config in an existing
> >> recipe and make it permanent without creating/replacing the whole
> >> package?
> >>
> >> I'ts a single file that has to be inserted/used at the correct point
> >> in the build.  I'd say it's not rocket science but that's exactly wha=
t
> >> it is for. LOL
> >>
> >> On 1/28/20, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
> >> > Hi Kent,
> >> >
> >> > Create your own kernel recipe and provide a defconfig for it:
> >> >
> >> > SRC_URI +=3D "file://defconfig"
> >> >
> >> > For example to build a bleeding kernel directly from Linus' repo:
> >> >
> >> >>>>>>
> >> > DESCRIPTION =3D "Linux Kernel from kernel.org Git Repository"
> >> > SECTION =3D "kernel"
> >> >
> >> > LICENSE =3D "GPLv2"
> >> >
> >> > require recipes-kernel/linux/linux-yocto.inc
> >> >
> >> > LIC_FILES_CHKSUM =3D
> >> > "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7"
> >> >
> >> > LINUX_VERSION ?=3D "5.5"
> >> >
> >> > LINUX_VERSION_EXTENSION ?=3D "-mykernel"
> >> >
> >> > PV =3D "${LINUX_VERSION}+git${SRCPV}"
> >> >
> >> > SRC_URI =3D
> >> > =E2=80=9Cgit://
> >>
> git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=3Dgi=
t;nocheckout=3D1
> >> "
> >> >
> >> > SRC_URI +=3D "file://defconfig"
> >> >
> >> > SRCREV =3D "d5226fa6dbae0569ee43ecfc08bdcd6770fc4755"
> >> >
> >> > COMPATIBLE_MACHINE =3D "qemux86|qemux86-64"
> >> > <<<<<
> >> >
> >> > :rjs
> >> >
> >> > On 1/28/20 7:15 PM, Kent Dorfman wrote:
> >> >> I have a yocto generated sdk that includes a customized kernel.  I=
 do
> >> >> NOT want to play with incremental config files.  What I want is to
> >> >> insert a .config file of my own choosing (generated outside of yoc=
to)
> >> >> into the kernel build, have it use only my .config, and then have
> that
> >> >> .config remain as the persistent authoritative config as part of t=
he
> >> >> yocto layer.
> >> >>
> >> >> I have tried a variety of different approaches:
> >> >> * using devtool, then loading my .config into the expanded source,
> but
> >> >> "devtool finish" throws out my changes!
> >> >>
> >> >> * doing "bitbake menuconfig", can build a kernel using my config, =
but
> >> >> it doesn't stay persistent in yocto
> >> >>
> >> >> * doing elaborate sort/merges on the yocto .config and my prefered
> >> >> one...undefined behaviour
> >> >>
> >> >> and the build always seems to revert to either the original yocto
> >> >> config, or a kludge of my options with a bunch of defaults I did n=
ot
> >> >> specify.
> >> >>
> >> >> How can I take my existing .config and force yocto to use it, and =
it
> >> >> only, forevermore?
> >> >>
> >> >>
> >> >
> >> > --
> >> > -----
> >> > Rudolf J Streif
> >> > CEO/CTO ibeeto
> >> > +1.855.442.3386 x700
> >> >
> >> >
> >>
> >
> > BR,
> > Gabriele
> >
> >>=20
> >>
> >
>

--0000000000009bfedc059d565b13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 29, 2020 at 5:52 PM Kent =
Dorfman &lt;<a href=3D"mailto:kent.dorfman766@gmail.com">kent.dorfman766@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">OK guys.=C2=A0 I was able to make it work with a higher priority lay=
er and<br>
a bbappend file.<br>
<br>
The difference with my config file is that mine actually defines all<br>
the CONFIG_ options but many of them are =3Dn to override selections<br>
made elsewhere.=C2=A0 I just hope that the kernel config is smart enough i=
n<br>
all cases to recognise that<br>
CONFIG_OPTION=3Dn<br>
is the same thins as<br>
# CONFIG_OPTION is not set<br>
<br>
I reran the build and verified that only the options I want are in my<br>
staged kernel<br>
<br>
Next, I need to figure out how to make sure the built modules end up<br>
in the rootfs, which is currently an fnsroot filesystem.<br>
<br></blockquote><div>Add this line to your machine config:</div><div>&gt;=
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br></div><div># Install the module in /lib=
/modules/${uname -r}/</div><div> MACHINE_EXTRA_RRECOMMENDS =3D &quot; kerne=
l-modules&quot;</div><div>&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;</div><div><b=
r></div><div>Gabriele<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
<br>
On 1/29/20, Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.co=
m" target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt; Hi Kent,<br>
&gt;<br>
&gt; On Wed, Jan 29, 2020 at 1:53 PM Kent Dorfman &lt;<a href=3D"mailto:ke=
nt.dorfman766@gmail.com" target=3D"_blank">kent.dorfman766@gmail.com</a>&gt=
;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt; I&#39;d prefer to not go that route.=C2=A0 =C2=A0 It&#39;s a modi=
fied &quot;vendor supplied&quot;<br>
&gt;&gt; kernel from an internal tarball source, and for IA/QA reasons we&=
#39;re<br>
&gt;&gt; NOT going to refer to any external GIT repos.<br>
&gt;&gt;<br>
&gt;&gt; There must be a recipe for your &quot;vendor supplied&quot; kerne=
l, why not<br>
&gt; extending it with an append,<br>
&gt; so you will be able to ship your own defconfig?<br>
&gt; Assuming your vendor kernel recipe is called <a href=3D"http://linux-=
ti-staging_4.19.bb" rel=3D"noreferrer" target=3D"_blank">linux-ti-staging_4=
.19.bb</a>, in<br>
&gt; your layer add the file<br>
&gt; recipes-kernel/linux/linux-ti-staging_4.19.bbappend and then<br>
&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt; FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files&quot;<br>
&gt; SRC_URI +=3D &quot; file://defconfig&quot;<br>
&gt; &lt;&lt;&lt;&lt;&lt;&lt;&lt;<br>
&gt;<br>
&gt; and put your defconfig in recipes-kernel/linux/files<br>
&gt;<br>
&gt; Can someone tell me how to just replace the config in an existing<br>
&gt;&gt; recipe and make it permanent without creating/replacing the whole=
<br>
&gt;&gt; package?<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ts a single file that has to be inserted/used at the correc=
t point<br>
&gt;&gt; in the build.=C2=A0 I&#39;d say it&#39;s not rocket science but t=
hat&#39;s exactly what<br>
&gt;&gt; it is for. LOL<br>
&gt;&gt;<br>
&gt;&gt; On 1/28/20, Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@i=
beeto.com" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Hi Kent,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Create your own kernel recipe and provide a defconfig for it=
:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; SRC_URI +=3D &quot;file://defconfig&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; For example to build a bleeding kernel directly from Linus&#=
39; repo:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt; &gt; DESCRIPTION =3D &quot;Linux Kernel from <a href=3D"http://ke=
rnel.org" rel=3D"noreferrer" target=3D"_blank">kernel.org</a> Git Repositor=
y&quot;<br>
&gt;&gt; &gt; SECTION =3D &quot;kernel&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; LICENSE =3D &quot;GPLv2&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; require recipes-kernel/linux/linux-yocto.inc<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; LIC_FILES_CHKSUM =3D<br>
&gt;&gt; &gt; &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7&=
quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; LINUX_VERSION ?=3D &quot;5.5&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; LINUX_VERSION_EXTENSION ?=3D &quot;-mykernel&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; SRC_URI =3D<br>
&gt;&gt; &gt; =E2=80=9Cgit://<br>
&gt;&gt; <a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/torvald=
s/linux.git;protocol=3Dgit;nocheckout=3D1" rel=3D"noreferrer" target=3D"_bl=
ank">git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=3D=
git;nocheckout=3D1</a><br>
&gt;&gt; &quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; SRC_URI +=3D &quot;file://defconfig&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; SRCREV =3D &quot;d5226fa6dbae0569ee43ecfc08bdcd6770fc4755&qu=
ot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; COMPATIBLE_MACHINE =3D &quot;qemux86|qemux86-64&quot;<br>
&gt;&gt; &gt; &lt;&lt;&lt;&lt;&lt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; :rjs<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On 1/28/20 7:15 PM, Kent Dorfman wrote:<br>
&gt;&gt; &gt;&gt; I have a yocto generated sdk that includes a customized =
kernel.=C2=A0 I do<br>
&gt;&gt; &gt;&gt; NOT want to play with incremental config files.=C2=A0 Wh=
at I want is to<br>
&gt;&gt; &gt;&gt; insert a .config file of my own choosing (generated outs=
ide of yocto)<br>
&gt;&gt; &gt;&gt; into the kernel build, have it use only my .config, and =
then have that<br>
&gt;&gt; &gt;&gt; .config remain as the persistent authoritative config as=
 part of the<br>
&gt;&gt; &gt;&gt; yocto layer.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I have tried a variety of different approaches:<br>
&gt;&gt; &gt;&gt; * using devtool, then loading my .config into the expand=
ed source, but<br>
&gt;&gt; &gt;&gt; &quot;devtool finish&quot; throws out my changes!<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; * doing &quot;bitbake menuconfig&quot;, can build a kern=
el using my config, but<br>
&gt;&gt; &gt;&gt; it doesn&#39;t stay persistent in yocto<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; * doing elaborate sort/merges on the yocto .config and m=
y prefered<br>
&gt;&gt; &gt;&gt; one...undefined behaviour<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; and the build always seems to revert to either the origi=
nal yocto<br>
&gt;&gt; &gt;&gt; config, or a kludge of my options with a bunch of defaul=
ts I did not<br>
&gt;&gt; &gt;&gt; specify.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; How can I take my existing .config and force yocto to us=
e it, and it<br>
&gt;&gt; &gt;&gt; only, forevermore?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; -----<br>
&gt;&gt; &gt; Rudolf J Streif<br>
&gt;&gt; &gt; CEO/CTO ibeeto<br>
&gt;&gt; &gt; +1.855.442.3386 x700<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; BR,<br>
&gt; Gabriele<br>
&gt;<br>
&gt;&gt; <br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div></div>

--0000000000009bfedc059d565b13--
