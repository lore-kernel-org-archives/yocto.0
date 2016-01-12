Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAEABE00A7D; Tue, 12 Jan 2016 01:47:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85372E008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 01:47:18 -0800 (PST)
Received: by mail-ig0-f177.google.com with SMTP id z14so139453880igp.0
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 01:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tanmic-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=tLEP99XOtMXzejFzdJC/8XraQFSSnI60xSNpUkKQhJs=;
	b=nLSRHwZHOwGpm/KAfMwY2aDPa/vEYSr8Bv71ZYhPuhsSxIBZtYg7WiZH8Oh314os6N
	tjl7sYhsDGJE5aDtY2B8hjuSmuFotUEqb0KF5RO8sEXH0IS+v3FPSCvcfuQtqk6p3Xxp
	lom37Z5sW/XvFNkwafMeR41pXBr8a4l7O/HWO5jYu1tMuf6v2tmbNAy1ULjwILF8VWWE
	+JoB1oA2oZT2hus2zGlzrtKAgWqPmed3R59x6MwCDUxAtEF6K/P/fWpsDlleio0HRowI
	T5KaBXK466XZThegcUjgpCyeJzyDB15suAHwGM8qPO3MxadPT6oaGrOWnSJG78XTqJHz
	9XfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=tLEP99XOtMXzejFzdJC/8XraQFSSnI60xSNpUkKQhJs=;
	b=cmniHzTxgQufD+E/DZ31NCTcro73zTB8P/fJx9xDQBAEhlGvMuLhLCkIdhdAM6/01J
	28DDRaoeAaH2es6I7iSgEwO0NloX5bx0Ay1oWoHG6NYTP0ik1J7MNY4B9+aeZLaDXQmM
	COQ+0oxcskTctejJbwAc1MsundZF5sSd5c+Awmi/OTxp/reGLTHmrG2WqRt354v5SR+s
	nLF27OAGJAVkqqcljLb6929MH59mXb+tfpo2pamEg/EFBL18V3HqdmTLhYnxCSPO/ddf
	wlbIhmkV24VksKZd6MVZMa8Ov+6M7cVPMH7bnj6+ccT1qfVCqsWBL1g/zK6h7E7ILM31
	rmPw==
X-Gm-Message-State: ALoCoQlOIRd3HrXgRK4YVzgZ6PovXbTcK8gYFH9aI0ppUX44NHGrtXDEhEwglWm5KDRX5mRKmDW+PYGxxYGCqprkr3vbn+8/mQ==
MIME-Version: 1.0
X-Received: by 10.50.79.231 with SMTP id m7mr16984668igx.15.1452592037457;
	Tue, 12 Jan 2016 01:47:17 -0800 (PST)
Sender: sarayu@tanmic.co.in
Received: by 10.107.184.196 with HTTP; Tue, 12 Jan 2016 01:47:17 -0800 (PST)
In-Reply-To: <CAMKF1srH4wXuEohCrj3_hxK6=uO-UX0ETjtpnGsMdrc0fUrREg@mail.gmail.com>
References: <CAF5S8SOmOLVR9gU_=WgxW1fPZNxUyyEqO5j_mH5xsFnr=Ex-Cg@mail.gmail.com>
	<CAMKF1srH4wXuEohCrj3_hxK6=uO-UX0ETjtpnGsMdrc0fUrREg@mail.gmail.com>
Date: Tue, 12 Jan 2016 15:17:17 +0530
X-Google-Sender-Auth: rSi8FY2SQNlHTM42eSGGvOaEYfQ
Message-ID: <CAF5S8SOXpLnALCyr-k53HDgfRSnVWtPXKy32sfK9p66Vx+uJeQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 12 Jan 2016 09:47:23 -0000
Content-Type: multipart/alternative; boundary=089e013a06bc658d0605291ff00e

--089e013a06bc658d0605291ff00e
Content-Type: text/plain; charset=UTF-8

That worked . Thanks !!

Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanandam
> <sarayu@zaikenn.com> wrote:
> > Hi all ,
> >
> > I was initially using the QorIQ-SDK-V1.8 SDK and was using the command
> > "bitbake corre-image-full " to generate the full images including the
> uboot
> > , the jffs2 filesystem etc as shown below ,
> >
> > -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46
> > fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2
> >
> >
> > Hoe ever now i have moved to the fsl-community-bsp and want to generate
> the
> > full images . I am uisng the command "bitbake core-image-full-cmdline"
> as
> > the "core-image-full " command was not available . But it still did not
> > generate the individual filesystem types . It generated a filesystem file
> > like the below .
> >
> > -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12
> > core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz
> >
> >
> >  Can you please let me know how to generate the jffs2 image in my
> community
> > bsp ? Please let me know what i am missing here .
>
> Add IMAGE_FSTYPES += "jffs2" in your local.conf
>
> >
> >
> > Thanks in advance for your help.
> >
> > Thanks and Regards,
> > Sarayu K S
> > Tech Lead
> > Zaikenn Technologies
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e013a06bc658d0605291ff00e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">That worked . Thanks !!=C2=A0</div></div><div class=3D"gm=
ail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><font face=3D"comic sans ms, sans-serif">Tha=
nks and Regards,</font><div><font face=3D"comic sans ms, sans-serif">Sarayu=
 K S=C2=A0</font></div><div><font face=3D"comic sans ms, sans-serif">Tech L=
ead=C2=A0</font></div><div><font face=3D"comic sans ms, sans-serif">Zaikenn=
 Technologies</font></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Jan 12, 2016 at 2:12 PM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Tue, Jan 12, 2016 at 12:32 AM, Sarayu Krishna Sivanand=
am<br>
&lt;<a href=3D"mailto:sarayu@zaikenn.com">sarayu@zaikenn.com</a>&gt; wrote:=
<br>
&gt; Hi all ,<br>
&gt;<br>
&gt; I was initially using the QorIQ-SDK-V1.8 SDK and was using the command=
<br>
&gt; &quot;bitbake corre-image-full &quot; to generate the full images incl=
uding the uboot<br>
&gt; , the jffs2 filesystem etc as shown below ,<br>
&gt;<br>
&gt; -rw-r--r--. 1 sarayu sarayu 30670848 Oct 14 13:46<br>
&gt; fsl-image-core-ls1021atwr-20151014203509.rootfs.jffs2<br>
&gt;<br>
&gt;<br>
&gt; Hoe ever now i have moved to the fsl-community-bsp and want to generat=
e the<br>
&gt; full images . I am uisng the command &quot;bitbake core-image-full-cmd=
line&quot;=C2=A0 as<br>
&gt; the &quot;core-image-full &quot; command was not available . But it st=
ill did not<br>
&gt; generate the individual filesystem types . It generated a filesystem f=
ile<br>
&gt; like the below .<br>
&gt;<br>
&gt; -rw-r--r--. 1 sarayu sarayu 24353214 Jan 11 23:12<br>
&gt; core-image-full-cmdline-ls1021atwr-20160112065953.rootfs.tar.gz<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 Can you please let me know how to generate the jffs2 image in my=
 community<br>
&gt; bsp ? Please let me know what i am missing here .<br>
<br>
</span>Add IMAGE_FSTYPES +=3D &quot;jffs2&quot; in your local.conf<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance for your help.<br>
&gt;<br>
&gt; Thanks and Regards,<br>
&gt; Sarayu K S<br>
&gt; Tech Lead<br>
&gt; Zaikenn Technologies<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--089e013a06bc658d0605291ff00e--
