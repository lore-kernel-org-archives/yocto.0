Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFFD6E00B66; Wed, 13 Jan 2016 10:12:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B44D0E00B46
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 10:12:48 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id g73so232132873ioe.3
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 10:12:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tanmic-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=KIvRvytYWz6uVfBh+fMarfYTlCMdrBfu1vSXWR08p34=;
	b=c8JnE4GVOsowskDFPMwtZHXFgMrRRP4SXDj+aI36tNAT2vs2qol/dfuUlOdqKK/BEs
	pX5SkE+WktXRuSlKoNNO+zURN+PpCqV9JD0mw4pXLZylJa9OU8p2KehzMsyPyGMAgVOH
	dwM7701fRN+qPbmK44WclN3bYG4xivkHU1Mi8IO5DGPEx9aQK7nkKFRfN667PMob4XTl
	Z2VghXPg00dqlt2NXF9ozQ0zYi2wq2TNFRnT7f/bEOmykxSOYZBffONsiMMebHTqC5nt
	vRYGMyYKQ3mjffklvpVjFzpBCnizdRVlgHlj1aLWzbgMgXEL7TDAb0rGtHd8nXmZiCxK
	A6sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=KIvRvytYWz6uVfBh+fMarfYTlCMdrBfu1vSXWR08p34=;
	b=UElxp75Awe9LsFztej6iBKjjLrXu266VNlLSfG2qVv9YnftPOuAtJaXV2iifZvpxnf
	KG1Dj2i8GwMutczJlovu4t0JMMO0rAeXw+2DMAh8roDExWH+IWJnwCj3iEhoJSgKHOo4
	zvFM6UqGNqbfpsw/mmNQjdJZK+EcVlu5/WsVUlKDdB+Ov8e/92E2s1BPYLGmk2TL1MOy
	FUjOMHbEfPc7nJBAyft7KZjMNiLBmFCHfYfrQiBDkn3/euMrJ7qJWM0LaSc5elAIcwip
	WOyhH8skHzBSGa6er0YdurvBbm2eNMJJmn+sOcr4yI1eelLKuee6TUOJGUo6ut6cbUSs
	WSjw==
X-Gm-Message-State: ALoCoQm0EwA2NzfZpPhdV1xdniGz4aR51dVj2LkcfxTdlUFxwfL4NV7QZnWEfR0iwjFeCYGjYXWaDMP+Odi7TQB01ZsNtEvy1g==
MIME-Version: 1.0
X-Received: by 10.107.128.201 with SMTP id k70mr237630ioi.3.1452708767931;
	Wed, 13 Jan 2016 10:12:47 -0800 (PST)
Sender: sarayu@tanmic.co.in
Received: by 10.107.184.196 with HTTP; Wed, 13 Jan 2016 10:12:47 -0800 (PST)
In-Reply-To: <CAMKF1sqQ7innV2TOCj+8WgerELwaQSHjh+6+Np92B8U+haNhww@mail.gmail.com>
References: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
	<CAMKF1srH4wXuEohCrj3_hxK6=uO-UX0ETjtpnGsMdrc0fUrREg@mail.gmail.com>
	<CAF5S8SOXpLnALCyr-k53HDgfRSnVWtPXKy32sfK9p66Vx+uJeQ@mail.gmail.com>
	<CAF5S8SOX78=nAGHhQzxnNFoPP8GgMdrEQDvUrnQH97+CPzkqrw@mail.gmail.com>
	<1F18FD34-E817-49BD-8AF0-3F8656BB33D5@gmail.com>
	<CAF5S8SM_EQm1nHx9s6qou2sksihhQ9yJCEaaSnRa42PYu_V3CQ@mail.gmail.com>
	<CAMKF1sqQ7innV2TOCj+8WgerELwaQSHjh+6+Np92B8U+haNhww@mail.gmail.com>
Date: Wed, 13 Jan 2016 23:42:47 +0530
X-Google-Sender-Auth: YwlSpv2_8yHzkmyi2CX4ay1632I
Message-ID: <CAF5S8SMgxRZKRqXCv1dnGg9wzB33tKjdx+z6buXxsU4FX_idNw@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build jffs2 rootfs image in freescale community build
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
X-List-Received-Date: Wed, 13 Jan 2016 18:12:50 -0000
Content-Type: multipart/alternative; boundary=001a113f9a8c13420e05293b1e7f

--001a113f9a8c13420e05293b1e7f
Content-Type: text/plain; charset=UTF-8

Great . That helped . Thanks for a quick reply.

Can you point me to any documentation that would help answer these kind of
questions for me ?

Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Wed, Jan 13, 2016 at 11:22 PM, Khem Raj <raj.khem@gmail.com> wrote:

> you need to run -c deploy task for that
>
> On Wed, Jan 13, 2016 at 9:48 AM, Sarayu Krishna Sivanandam
> <sarayu@zaikenn.com> wrote:
> > hi ,
> >
> > I do see the the linux-dtb.inc included in the linux-ls1 recipe but when
> i
> > build the code using
> >
> > bitbake -c compile -f linux-ls1 it doesnot re-generate the dtb file in
> the
> > deploy/images/ls1021atwr folder .
> >
> > Also when i try to rebuild the images like core-image-minimal or
> core-image
> > base it does not rebuild any of the images .
> >
> > How can i force it to rebuild the dtb image ?
> >
> > Thanks and Regards,
> > Sarayu K S
> > Tech Lead
> > Zaikenn Technologies
> >
> > On Wed, Jan 13, 2016 at 11:11 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >>
> >> On Jan 13, 2016, at 4:03 AM, Sarayu Krishna Sivanandam
> >> <sarayu@zaikenn.com> wrote:
> >>
> >> hi ,
> >>
> >> On similar lines i want to rebuild my linux dtb file as i have made some
> >> changes in my dts file . How can i force it to regenerate the same ?
> >>
> >> For example , I use the command bitbake -c compile -f linux-ls1 to
> >> regenerate the uImage .
> >>
> >> Is there is similar command for the linux-dtb generation ?
> >>
> >>
> >> if your kernel recipe is including linux-dtb.inc then it should
> >> automatically append device tree related activities into standard tasks.
> >>
> >>
> >> Thanks in advance for your help.
> >>
> >> Thanks and Regards,
> >> Sarayu K S
> >> Tech Lead
> >> Zaikenn Technologies
> >>
> >> On Tue, Jan 12, 2016 at 3:17 PM, Sarayu Krishna Sivanandam
> >> <sarayu@zaikenn.com> wrote:
> >>>
> >>> That worked . Thanks !!
> >>>
> >>> Thanks and Regards,
> >>> Sarayu K S
> >>> Tech Lead
> >>> Zaikenn Technologies
> >>>
> >>> On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >>>>
> >>>> On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanandam
> >>>> <sarayu@zaikenn.com> wrote:
> >>>> > Hi all ,
> >>>> >
> >>>> > I was initially using the QorIQ-SDK-V1.8 SDK and was using the
> command
> >>>> > "bitbake corre-image-full " to generate the full images including
> the
> >>>> > uboot
> >>>> > , the jffs2 filesystem etc as shown below ,
> >>>> >
> >>>> > -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46
> >>>> > fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2
> >>>> >
> >>>> >
> >>>> > Hoe ever now i have moved to the fsl-community-bsp and want to
> >>>> > generate the
> >>>> > full images . I am uisng the command "bitbake
> core-image-full-cmdline"
> >>>> > as
> >>>> > the "core-image-full " command was not available . But it still did
> >>>> > not
> >>>> > generate the individual filesystem types . It generated a filesystem
> >>>> > file
> >>>> > like the below .
> >>>> >
> >>>> > -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12
> >>>> > core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz
> >>>> >
> >>>> >
> >>>> >  Can you please let me know how to generate the jffs2 image in my
> >>>> > community
> >>>> > bsp ? Please let me know what i am missing here .
> >>>>
> >>>> Add IMAGE_FSTYPES += "jffs2" in your local.conf
> >>>>
> >>>> >
> >>>> >
> >>>> > Thanks in advance for your help.
> >>>> >
> >>>> > Thanks and Regards,
> >>>> > Sarayu K S
> >>>> > Tech Lead
> >>>> > Zaikenn Technologies
> >>>> >
> >>>> > --
> >>>> > _______________________________________________
> >>>> > yocto mailing list
> >>>> > yocto@yoctoproject.org
> >>>> > https://lists.yoctoproject.org/listinfo/yocto
> >>>> >
> >>>
> >>>
> >>
> >>
> >
>

--001a113f9a8c13420e05293b1e7f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Great . That helped . Thanks for a quick reply.</div><div=
 class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans=
-serif">Can you point me to any documentation that would help answer these =
kind of questions for me ?</div></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks and Regards,</font=
><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=C2=A0</font></div=
><div><font face=3D"comic sans ms, sans-serif">Tech Lead=C2=A0</font></div>=
<div><font face=3D"comic sans ms, sans-serif">Zaikenn Technologies</font></=
div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jan 13, 2016 at 11:22 PM, Khem Raj <=
span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank=
">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">you need to run -c deploy task for that<br>
<br>
On Wed, Jan 13, 2016 at 9:48 AM, Sarayu Krishna Sivanandam<br>
<div class=3D"HOEnZb"><div class=3D"h5">&lt;<a href=3D"mailto:sarayu@zaiken=
n.com">sarayu@zaikenn.com</a>&gt; wrote:<br>
&gt; hi ,<br>
&gt;<br>
&gt; I do see the the linux-dtb.inc included in the linux-ls1 recipe but wh=
en i<br>
&gt; build the code using<br>
&gt;<br>
&gt; bitbake -c compile -f linux-ls1 it doesnot re-generate the dtb file in=
 the<br>
&gt; deploy/images/ls1021atwr folder .<br>
&gt;<br>
&gt; Also when i try to rebuild the images like core-image-minimal or core-=
image<br>
&gt; base it does not rebuild any of the images .<br>
&gt;<br>
&gt; How can i force it to rebuild the dtb image ?<br>
&gt;<br>
&gt; Thanks and Regards,<br>
&gt; Sarayu K S<br>
&gt; Tech Lead<br>
&gt; Zaikenn Technologies<br>
&gt;<br>
&gt; On Wed, Jan 13, 2016 at 11:11 PM, Khem Raj &lt;<a href=3D"mailto:raj.k=
hem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Jan 13, 2016, at 4:03 AM, Sarayu Krishna Sivanandam<br>
&gt;&gt; &lt;<a href=3D"mailto:sarayu@zaikenn.com">sarayu@zaikenn.com</a>&g=
t; wrote:<br>
&gt;&gt;<br>
&gt;&gt; hi ,<br>
&gt;&gt;<br>
&gt;&gt; On similar lines i want to rebuild my linux dtb file as i have mad=
e some<br>
&gt;&gt; changes in my dts file . How can i force it to regenerate the same=
 ?<br>
&gt;&gt;<br>
&gt;&gt; For example , I use the command bitbake -c compile -f linux-ls1 to=
<br>
&gt;&gt; regenerate the uImage .<br>
&gt;&gt;<br>
&gt;&gt; Is there is similar command for the linux-dtb generation ?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; if your kernel recipe is including linux-dtb.inc then it should<br=
>
&gt;&gt; automatically append device tree related activities into standard =
tasks.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Thanks in advance for your help.<br>
&gt;&gt;<br>
&gt;&gt; Thanks and Regards,<br>
&gt;&gt; Sarayu K S<br>
&gt;&gt; Tech Lead<br>
&gt;&gt; Zaikenn Technologies<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jan 12, 2016 at 3:17 PM, Sarayu Krishna Sivanandam<br>
&gt;&gt; &lt;<a href=3D"mailto:sarayu@zaikenn.com">sarayu@zaikenn.com</a>&g=
t; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; That worked . Thanks !!<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thanks and Regards,<br>
&gt;&gt;&gt; Sarayu K S<br>
&gt;&gt;&gt; Tech Lead<br>
&gt;&gt;&gt; Zaikenn Technologies<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj &lt;<a href=3D"mailt=
o:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivananda=
m<br>
&gt;&gt;&gt;&gt; &lt;<a href=3D"mailto:sarayu@zaikenn.com">sarayu@zaikenn.c=
om</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; &gt; Hi all ,<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; I was initially using the QorIQ-SDK-V1.8 SDK and was =
using the command<br>
&gt;&gt;&gt;&gt; &gt; &quot;bitbake corre-image-full &quot; to generate the=
 full images including the<br>
&gt;&gt;&gt;&gt; &gt; uboot<br>
&gt;&gt;&gt;&gt; &gt; , the jffs2 filesystem etc as shown below ,<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46<br>
&gt;&gt;&gt;&gt; &gt; fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2=
<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Hoe ever now i have moved to the fsl-community-bsp an=
d want to<br>
&gt;&gt;&gt;&gt; &gt; generate the<br>
&gt;&gt;&gt;&gt; &gt; full images . I am uisng the command &quot;bitbake co=
re-image-full-cmdline&quot;<br>
&gt;&gt;&gt;&gt; &gt; as<br>
&gt;&gt;&gt;&gt; &gt; the &quot;core-image-full &quot; command was not avai=
lable . But it still did<br>
&gt;&gt;&gt;&gt; &gt; not<br>
&gt;&gt;&gt;&gt; &gt; generate the individual filesystem types . It generat=
ed a filesystem<br>
&gt;&gt;&gt;&gt; &gt; file<br>
&gt;&gt;&gt;&gt; &gt; like the below .<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12<br>
&gt;&gt;&gt;&gt; &gt; core-image-full-cmdline-ls1021atwr-20160112065953.roo=
tfs.tar.gz<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;=C2=A0 Can you please let me know how to generate the =
jffs2 image in my<br>
&gt;&gt;&gt;&gt; &gt; community<br>
&gt;&gt;&gt;&gt; &gt; bsp ? Please let me know what i am missing here .<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Add IMAGE_FSTYPES +=3D &quot;jffs2&quot; in your local.con=
f<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Thanks in advance for your help.<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Thanks and Regards,<br>
&gt;&gt;&gt;&gt; &gt; Sarayu K S<br>
&gt;&gt;&gt;&gt; &gt; Tech Lead<br>
&gt;&gt;&gt;&gt; &gt; Zaikenn Technologies<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a><br>
&gt;&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yo=
cto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/li=
stinfo/yocto</a><br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a113f9a8c13420e05293b1e7f--
