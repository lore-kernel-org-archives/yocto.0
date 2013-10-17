Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CED4E016C1
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 03:39:32 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id gq1so1707967obb.1
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 03:39:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dOL7w/41382o5xHd8ocjjFnOrCrItI68QiO4L7+/69c=;
	b=GGddMZkkKoNL9dBJ2PExHcgK+d2R7aYreix+8IEXwHWqQ2xmSlaBP5Jp5j90UDNKKa
	u1gTDJ6Mo2kxrLQPBmFpPnb2ft/K4hv62sqYdAhbArWDoGUyTuetAUvAHZybvV4KYIY8
	HPrFDfRnhFdrqE9nxsjjxALEisba8LVciPI/glXm56ecWIJ748g3GtmP7eOJ2GL86PWq
	osF/xkgqJHk3cvkAb2y1BPs2lvXCAHmw+ydV4rtyBirGwY/AbpC5zqrxY+67KXgjwrB3
	Z/sCMj4dcGu8DsUkI2C/poHz6SfxjXDjds3vWYdcSJr5S88xxtFpj2QVeR0z+iM02crN
	BG4A==
X-Received: by 10.182.176.38 with SMTP id cf6mr12589123obc.11.1382006371397;
	Thu, 17 Oct 2013 03:39:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.120.65 with HTTP; Thu, 17 Oct 2013 03:39:10 -0700 (PDT)
In-Reply-To: <CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 17 Oct 2013 07:39:10 -0300
Message-ID: <CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 17 Oct 2013 10:39:35 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cf72d8376304e8ed6eb0

--e89a8ff1cf72d8376304e8ed6eb0
Content-Type: text/plain; charset=ISO-8859-1

2013/10/17 Bruce Ashfield <bruce.ashfield@gmail.com>

> On Wed, Oct 16, 2013 at 2:19 PM, Diego Sueiro <diego.sueiro@gmail.com>
> wrote:
> > Folks,
> >
> > Looking at log.do_unpack it shows:
> >
> > ...
> > NOTE: Unpacking
> >
> <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline-3.8/beaglebone/defconfig
> > to
> >
> <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/
> > ...
> >
> > NOTE: Unpacking
> > <...>/meta-mine/recipes-kernel/linux/linux-mainline-3.8/mine.patch to
> >
> <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/
> > NOTE: Unpacking
> >
> <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline-3.8/beaglebone/defconfig
> > to
> >
> <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-gnueabi/linux-mainline/3.8.13-r23a/
> >
> >
> > Note that it copies defconfig from meta-beagleboard and in the end,
> instead
> > copying mine, it is copying from meta-beagleboard again.
> >
> > My layer has the priority higher than meta-beagleboard.
>
> I can't get at my machines to test this myself (technically I'm still
> on vacation), but when you
> dump the bitbake environment, how many defconfig's show up in the
> SRC_URI ? It would be
> easy enough in your bbapend to simply call your defconfig something
> else (i.e. defconfig-mine)
> and override/append to kernel_do_configure() to simply copy yours over
> top of the .config,
> regardless of what the fetcher is doing with the SRC_URI.
>
> Bruce
>
>
Bruce,

Putting the following in my recipe did the trick:

do_configure_prepend() {
            cp ${WORKDIR}/defconfig-mine ${WORKDIR}/defconfig
}


Now the .config is the same as my custom defconfig.

But, this is a workaround, right?
I expected to get this working "out-of-box".
Why config fragments did not worked too?



--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--e89a8ff1cf72d8376304e8ed6eb0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br>
<br><br><div class=3D"gmail_quote">2013/10/17 Bruce Ashfield <span dir=3D"l=
tr">&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce=
.ashfield@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(=
204,204,204);border-left-style:solid;padding-left:1ex">

<div class=3D"im">On Wed, Oct 16, 2013 at 2:19 PM, Diego Sueiro &lt;<a href=
=3D"mailto:diego.sueiro@gmail.com">diego.sueiro@gmail.com</a>&gt; wrote:<br=
>
&gt; Folks,<br>
&gt;<br>
</div><div class=3D"im">&gt; Looking at log.do_unpack it shows:<br>
&gt;<br>
&gt; ...<br>
&gt; NOTE: Unpacking<br>
&gt; &lt;...&gt;/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mai=
nline-3.8/beaglebone/defconfig<br>
&gt; to<br>
&gt; &lt;...&gt;/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstro=
m-linux-gnueabi/linux-mainline/3.8.13-r23a/<br>
&gt; ...<br>
&gt;<br>
&gt; NOTE: Unpacking<br>
&gt; &lt;...&gt;/meta-mine/recipes-kernel/linux/linux-mainline-3.8/mine.pat=
ch to<br>
&gt; &lt;...&gt;/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstro=
m-linux-gnueabi/linux-mainline/3.8.13-r23a/<br>
&gt; NOTE: Unpacking<br>
&gt; &lt;...&gt;/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mai=
nline-3.8/beaglebone/defconfig<br>
&gt; to<br>
&gt; &lt;...&gt;/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstro=
m-linux-gnueabi/linux-mainline/3.8.13-r23a/<br>
&gt;<br>
&gt;<br>
&gt; Note that it copies defconfig from meta-beagleboard and in the end, in=
stead<br>
&gt; copying mine, it is copying from meta-beagleboard again.<br>
&gt;<br>
&gt; My layer has the priority higher than meta-beagleboard.<br>
<br>
</div>I can&#39;t get at my machines to test this myself (technically I&#39=
;m still<br>
on vacation), but when you<br>
dump the bitbake environment, how many defconfig&#39;s show up in the<br>
SRC_URI ? It would be<br>
easy enough in your bbapend to simply call your defconfig something<br>
else (i.e. defconfig-mine)<br>
and override/append to kernel_do_configure() to simply copy yours over<br>
top of the .config,<br>
regardless of what the fetcher is doing with the SRC_URI.<br>
<br>
Bruce<br>
<div class=3D""><div class=3D"h5"><br></div></div></blockquote><div><br></d=
iv><div>Bruce,</div><div><br></div><div style>Putting the following in my r=
ecipe did the trick:</div><div style><div><br></div></div></div></div><bloc=
kquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px">

<div class=3D"gmail_extra" style><div class=3D"gmail_quote" style><div styl=
e><div style>do_configure_prepend() {</div></div></div></div><div class=3D"=
gmail_extra" style><div class=3D"gmail_quote" style><div style><div style>=
=A0 =A0 =A0 =A0 =A0 =A0 cp ${WORKDIR}/defconfig-mine ${WORKDIR}/defconfig</=
div>

</div></div></div><div class=3D"gmail_extra" style><div class=3D"gmail_quot=
e" style><div style><div style>}</div></div></div></div></blockquote><div c=
lass=3D"gmail_extra"><div class=3D"gmail_quote"><div style><div><br></div><=
div style>

Now the .config is the same as my custom defconfig.</div><div style><br></d=
iv><div style>But, this is a workaround, right?</div><div style>I expected =
to get this working &quot;out-of-box&quot;.</div><div style>Why config frag=
ments did not worked too?</div>

<div style><br></div><div><br></div></div><div><br class=3D"">--<br>*dS<br>=
Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div></div></d=
iv>

--e89a8ff1cf72d8376304e8ed6eb0--
