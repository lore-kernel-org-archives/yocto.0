Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.4148.1580303941414151574
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 05:19:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOQIq+pA;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: gabbla.malist@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id o11so18413541ljc.6
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 05:19:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1kWJJeeVA0fHsUERaYAdqCRE1Q89yJTdC8ntnGXR3mI=;
        b=ZOQIq+pAen7QffL3XnOzcEp4qM7UqxHn96k6JlsPm97oxcJ+5ORTR3QHbM3BXuJEFa
         kZPrsl1ZYX6rD8ODBpKKdVFDBfHcCYGcCAEZSzkNEMoPg1VVInmFC/JcgrrTSEKGBJit
         KHtr/WdqwowHlO/2/Tza5XVIKr2VirqqLIZzny8kcTFc2A7c3MFvFOV9cAJ9gw7ennQE
         6oHqDdN/xjIv8R2l3t2ZyjCr/E/3yz4uXxiTXHJS9loQJ1Vg/BNjXZDuAWe7X8judARF
         dd+1op/teptQgqsYcSOXCl7HFADRPhCuCVhzKCGPVjB0Mq4n3wMJ22vLTpPz+esq91H9
         e0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1kWJJeeVA0fHsUERaYAdqCRE1Q89yJTdC8ntnGXR3mI=;
        b=N9SiEqiaYDBkufbo+m71e7yrJRRWS7CzhV2/7JRyVihBUU88klw48CD4Xc8IukQjW7
         hhHD6mIhdaOCYqk+v03ROT0D8EaUblAPeTmU5ymwdnBaQoTSg0BHwGeH2YQqu/WrUY0f
         rQ3Zw7exhQoNC6vzpvVlNH/JPi/1wty7xZPJPCDFudybzJMtm4YR66VEa++0TpbT4zLj
         Yb91OaOsxv7e7xrjTSaTOrQ/rLYv4/cFjREthQNiffoJBAsMWVvu44W1Sf1Fcjdow2qP
         CptiminRTxng5nMcAN71gdSD3Z7xaOsnk9fPZ0e/JlHc7DXWFESLpf/Iy61t6xKZLYwr
         QeXg==
X-Gm-Message-State: APjAAAU34UXE0t0pOq7Zs0V218DeMNHG8tsDhAyv71ev9Cd3YEIXw73W
	wz8MW8u7NLiz6GxuWISlw8THTw9yPPGshuxVfwdQM2NP
X-Google-Smtp-Source: APXvYqy0iXEMu69ctClBXQEQTF4XnW5S78MX48KbWtEuNqv2WkjCWhYi96/185z8hlYYrZgnKL7Ldd/3z5UdTMt9Dws=
X-Received: by 2002:a2e:80d9:: with SMTP id r25mr17468046ljg.8.1580303939706;
 Wed, 29 Jan 2020 05:18:59 -0800 (PST)
MIME-Version: 1.0
References: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
 <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com> <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
In-Reply-To: <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Wed, 29 Jan 2020 14:18:48 +0100
Message-ID: <CAAx3WaDx71Cp+1_hyascYEzQsj3cNAjCuZQhbeHi-=ZbtYKYUw@mail.gmail.com>
Subject: Re: [yocto] permanently supercede kernel config with one of my own creation
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f6a2c9059d472e58"

--000000000000f6a2c9059d472e58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Kent,

On Wed, Jan 29, 2020 at 1:53 PM Kent Dorfman <kent.dorfman766@gmail.com>
wrote:

> I'd prefer to not go that route.    It's a modified "vendor supplied"
> kernel from an internal tarball source, and for IA/QA reasons we're
> NOT going to refer to any external GIT repos.
>
> There must be a recipe for your "vendor supplied" kernel, why not
extending it with an append,
so you will be able to ship your own defconfig?
Assuming your vendor kernel recipe is called linux-ti-staging_4.19.bb, in
your layer add the file
recipes-kernel/linux/linux-ti-staging_4.19.bbappend and then

>>>>>>>
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files"
SRC_URI +=3D " file://defconfig"
<<<<<<<

and put your defconfig in recipes-kernel/linux/files

Can someone tell me how to just replace the config in an existing
> recipe and make it permanent without creating/replacing the whole
> package?
>
> I'ts a single file that has to be inserted/used at the correct point
> in the build.  I'd say it's not rocket science but that's exactly what
> it is for. LOL
>
> On 1/28/20, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
> > Hi Kent,
> >
> > Create your own kernel recipe and provide a defconfig for it:
> >
> > SRC_URI +=3D "file://defconfig"
> >
> > For example to build a bleeding kernel directly from Linus' repo:
> >
> >>>>>>
> > DESCRIPTION =3D "Linux Kernel from kernel.org Git Repository"
> > SECTION =3D "kernel"
> >
> > LICENSE =3D "GPLv2"
> >
> > require recipes-kernel/linux/linux-yocto.inc
> >
> > LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1b=
e7cd7"
> >
> > LINUX_VERSION ?=3D "5.5"
> >
> > LINUX_VERSION_EXTENSION ?=3D "-mykernel"
> >
> > PV =3D "${LINUX_VERSION}+git${SRCPV}"
> >
> > SRC_URI =3D
> > =E2=80=9Cgit://
> git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=3Dgi=
t;nocheckout=3D1
> "
> >
> > SRC_URI +=3D "file://defconfig"
> >
> > SRCREV =3D "d5226fa6dbae0569ee43ecfc08bdcd6770fc4755"
> >
> > COMPATIBLE_MACHINE =3D "qemux86|qemux86-64"
> > <<<<<
> >
> > :rjs
> >
> > On 1/28/20 7:15 PM, Kent Dorfman wrote:
> >> I have a yocto generated sdk that includes a customized kernel.  I do
> >> NOT want to play with incremental config files.  What I want is to
> >> insert a .config file of my own choosing (generated outside of yocto)
> >> into the kernel build, have it use only my .config, and then have tha=
t
> >> .config remain as the persistent authoritative config as part of the
> >> yocto layer.
> >>
> >> I have tried a variety of different approaches:
> >> * using devtool, then loading my .config into the expanded source, bu=
t
> >> "devtool finish" throws out my changes!
> >>
> >> * doing "bitbake menuconfig", can build a kernel using my config, but
> >> it doesn't stay persistent in yocto
> >>
> >> * doing elaborate sort/merges on the yocto .config and my prefered
> >> one...undefined behaviour
> >>
> >> and the build always seems to revert to either the original yocto
> >> config, or a kludge of my options with a bunch of defaults I did not
> >> specify.
> >>
> >> How can I take my existing .config and force yocto to use it, and it
> >> only, forevermore?
> >>
> >>
> >
> > --
> > -----
> > Rudolf J Streif
> > CEO/CTO ibeeto
> > +1.855.442.3386 x700
> >
> >
>

BR,
Gabriele

>=20
>

--000000000000f6a2c9059d472e58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Kent,<br></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 29, 2020 at 1:53 PM Kent Dorf=
man &lt;<a href=3D"mailto:kent.dorfman766@gmail.com">kent.dorfman766@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">I&#39;d prefer to not go that route.=C2=A0 =C2=A0 It&#39;s a modified &q=
uot;vendor supplied&quot;<br>
kernel from an internal tarball source, and for IA/QA reasons we&#39;re<br=
>
NOT going to refer to any external GIT repos.<br>
<br></blockquote><div>There must be a recipe for your &quot;vendor supplie=
d&quot; kernel, why not extending it with an append, <br></div><div>so you =
will be able to ship your own defconfig?</div><div>Assuming your vendor ker=
nel recipe is called <a href=3D"http://linux-ti-staging_4.19.bb">linux-ti-s=
taging_4.19.bb</a>, in your layer add the file</div><div>recipes-kernel/lin=
ux/linux-ti-staging_4.19.bbappend and then</div><div><br></div><div>&gt;&gt=
;&gt;&gt;&gt;&gt;&gt;</div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDI=
R}/files&quot;</div><div>SRC_URI +=3D &quot;=C2=A0file://defconfig&quot;</d=
iv><div>&lt;&lt;&lt;&lt;&lt;&lt;&lt;</div><div><br></div><div>and put your =
defconfig in recipes-kernel/linux/files</div><div><br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
Can someone tell me how to just replace the config in an existing<br>
recipe and make it permanent without creating/replacing the whole<br>
package?<br>
<br>
I&#39;ts a single file that has to be inserted/used at the correct point<b=
r>
in the build.=C2=A0 I&#39;d say it&#39;s not rocket science but that&#39;s=
 exactly what<br>
it is for. LOL<br>
<br>
On 1/28/20, Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com=
" target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt; wrote:<br>
&gt; Hi Kent,<br>
&gt;<br>
&gt; Create your own kernel recipe and provide a defconfig for it:<br>
&gt;<br>
&gt; SRC_URI +=3D &quot;file://defconfig&quot;<br>
&gt;<br>
&gt; For example to build a bleeding kernel directly from Linus&#39; repo:=
<br>
&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt; DESCRIPTION =3D &quot;Linux Kernel from <a href=3D"http://kernel.org"=
 rel=3D"noreferrer" target=3D"_blank">kernel.org</a> Git Repository&quot;<b=
r>
&gt; SECTION =3D &quot;kernel&quot;<br>
&gt;<br>
&gt; LICENSE =3D &quot;GPLv2&quot;<br>
&gt;<br>
&gt; require recipes-kernel/linux/linux-yocto.inc<br>
&gt;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd7810fab7487fb0aad327=
b76f1be7cd7&quot;<br>
&gt;<br>
&gt; LINUX_VERSION ?=3D &quot;5.5&quot;<br>
&gt;<br>
&gt; LINUX_VERSION_EXTENSION ?=3D &quot;-mykernel&quot;<br>
&gt;<br>
&gt; PV =3D &quot;${LINUX_VERSION}+git${SRCPV}&quot;<br>
&gt;<br>
&gt; SRC_URI =3D<br>
&gt; =E2=80=9Cgit://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/=
git/torvalds/linux.git;protocol=3Dgit;nocheckout=3D1" rel=3D"noreferrer" ta=
rget=3D"_blank">git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;=
protocol=3Dgit;nocheckout=3D1</a>&quot;<br>
&gt;<br>
&gt; SRC_URI +=3D &quot;file://defconfig&quot;<br>
&gt;<br>
&gt; SRCREV =3D &quot;d5226fa6dbae0569ee43ecfc08bdcd6770fc4755&quot;<br>
&gt;<br>
&gt; COMPATIBLE_MACHINE =3D &quot;qemux86|qemux86-64&quot;<br>
&gt; &lt;&lt;&lt;&lt;&lt;<br>
&gt;<br>
&gt; :rjs<br>
&gt;<br>
&gt; On 1/28/20 7:15 PM, Kent Dorfman wrote:<br>
&gt;&gt; I have a yocto generated sdk that includes a customized kernel.=
=C2=A0 I do<br>
&gt;&gt; NOT want to play with incremental config files.=C2=A0 What I want=
 is to<br>
&gt;&gt; insert a .config file of my own choosing (generated outside of yo=
cto)<br>
&gt;&gt; into the kernel build, have it use only my .config, and then have=
 that<br>
&gt;&gt; .config remain as the persistent authoritative config as part of =
the<br>
&gt;&gt; yocto layer.<br>
&gt;&gt;<br>
&gt;&gt; I have tried a variety of different approaches:<br>
&gt;&gt; * using devtool, then loading my .config into the expanded source=
, but<br>
&gt;&gt; &quot;devtool finish&quot; throws out my changes!<br>
&gt;&gt;<br>
&gt;&gt; * doing &quot;bitbake menuconfig&quot;, can build a kernel using =
my config, but<br>
&gt;&gt; it doesn&#39;t stay persistent in yocto<br>
&gt;&gt;<br>
&gt;&gt; * doing elaborate sort/merges on the yocto .config and my prefere=
d<br>
&gt;&gt; one...undefined behaviour<br>
&gt;&gt;<br>
&gt;&gt; and the build always seems to revert to either the original yocto=
<br>
&gt;&gt; config, or a kludge of my options with a bunch of defaults I did =
not<br>
&gt;&gt; specify.<br>
&gt;&gt;<br>
&gt;&gt; How can I take my existing .config and force yocto to use it, and=
 it<br>
&gt;&gt; only, forevermore?<br>
&gt;&gt;<br>
&gt;&gt; <br>
&gt;<br>
&gt; --<br>
&gt; -----<br>
&gt; Rudolf J Streif<br>
&gt; CEO/CTO ibeeto<br>
&gt; +1.855.442.3386 x700<br>
&gt;<br>
&gt;<br></blockquote><div><br></div><div>BR, <br></div><div>Gabriele<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
</blockquote></div></div>

--000000000000f6a2c9059d472e58--
