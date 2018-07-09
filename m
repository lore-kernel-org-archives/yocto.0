Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 008BBE00CFD; Mon,  9 Jul 2018 07:31:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B70E006B3
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 07:31:10 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id s198-v6so36230815oih.11
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 07:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=auRmntCefU/7ghNgtbOdiibL/eIw5YNEiVV9XW4AgSA=;
	b=FR4L3GLTK1alpzV2YZKL5WUk6kCf6AOuNbsxcDssl+qQPfEUZdC4uehlc2HCQZWwBo
	UxUlq2io9DxN5yyCcsKx8NN3N837Mx0E91fRP5WpK41XdSbaPYxnlvOCy7yyQoHczJdR
	qQLT206RXC/xiCYpkDv138KgV9T5ZVKmM/2dIQC20jYXCHO//gOl8sL92/XXRlSo8YOS
	9asqkGGLmuOfMzDaWGdXm1+bcTf5O+4cLtAKDK0Wp9jOLHak+Lp4uF+jsmHz51SNt72S
	gOUYXiWA62yF85ob/qu7IyF2dk2oEw8DHHTXLYkpN7kabZ5RuF8wH0Wp2FK1rzRIJgyz
	GgbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=auRmntCefU/7ghNgtbOdiibL/eIw5YNEiVV9XW4AgSA=;
	b=N3pVSFqekdmkpI8XBhkPBHqbDL2EWKs48X9yqhXwRcQh+MKdZxjcG8OrENdLwu8RxY
	eNTk4nKD5CTYoUubij/J5LYrDDY+n3tqtnRQ3PFBtBGYli3i9kYK1gBtbDrhZIYJ4x+h
	jKux/1NG62qZdyWE7biWrogaD7Tlw4LsRiSNelTZYUvQLIqwRNJwOBCLBWeXykLtJRVv
	Rl5cLNhmHScPI7k7XXPOEourzNOVJi/+Lf/ztTgGM+cSV2HYGSZXUWriEgpUwrZOSW9X
	XsnYwWofLN5aBNK6pP+s8YUj0O9GhXOrYwlttM2FMvVrxWjYzJVAhJf1073Im4XPM6SO
	fR2A==
X-Gm-Message-State: APt69E1xY3hj6vxTL7AnS6m2ekZ1Vq8JXpCBIGBl4AccG3s3H2oIeaIU
	Nr0yuTWu2g03UdPtStNWlikiyG2sFvdNO6M9dVo=
X-Google-Smtp-Source: AAOMgpdLHCNt1vp9vanvQstUEP0eod63Od6rTfACu4U6HOlwT8FuqIJJ6pguR3sFSzCEZZyrFJVSQkcRk2VrAVFUFzY=
X-Received: by 2002:aca:b7c3:: with SMTP id
	h186-v6mr21401168oif.54.1531146669815; 
	Mon, 09 Jul 2018 07:31:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 07:31:09 -0700 (PDT)
In-Reply-To: <MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
	<MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZsUwJYTyC5dtk_aO0S3nEVhdcHboxnGTfYmi7JMenfZA@mail.gmail.com>
	<MWHPR19MB118360BDB9585099B356D139C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jul 2018 16:31:09 +0200
Message-ID: <CANNYZj-_YFCV7D+aY8kswVzs1Z0-Wjej7LDQiL0qvEiF9mnnSQ@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Mon, 09 Jul 2018 14:31:12 -0000
Content-Type: multipart/alternative; boundary="0000000000005a7a95057091dd4e"

--0000000000005a7a95057091dd4e
Content-Type: text/plain; charset="UTF-8"

Just fix the build issue. Look into how opensslconf.h gets created and
where the -32 suffix comes from and why the included file is absent.

Seriously - that is less effort than trying to make Yocto do what it really
was not designed for, and certainly takes less than one week to resolve.

Also, you do not have to use core-image-minimal or -sato, or any of the
standard images, if they pull in things that you do not want. Write your
own image recipe, and specify there precisely what you want.

Alex

2018-07-09 2:32 GMT+02:00 Raymond Yeung <rksyeung@hotmail.com>:

>
> + yocto mailing list.
>
> ------------------------------
> *From:* Raymond Yeung <rksyeung@hotmail.com>
> *Sent:* Sunday, July 8, 2018 5:31 PM
> *To:* Burton, Ross
> *Subject:* Re: [yocto] How to remove openssl from sysroots
>
>
> We're not going to integrate everything into one homogeneous package.
> Poky and BSP would be together.  Then, we've application codes that we'd
> build in the same old way with SCONs the way we do before.  The two parts
> would link together.
>
>
> And we do have a number of 3rd party vendor packages beside openssl.
> Currently, the issue with openssl is that, we run into build issue with the
> version we got in 2016 release.  See this:
>
>
>
>
> In file included from /volume/tools/x86_64_linux.
> x86_64/2.1.3/sysroots/corei7-64-poky-linux/usr/include/openssl/evp.h:66:0,
>
>                  from src/infra/utils/obf/cv_obfuscate.c:20:
>
> /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7-
> 64-poky-linux/usr/include/openssl/opensslconf.h:41:36: fatal error:
> openssl/opensslconf-32.h: No such file or directory
>
> We plan to use 64-bit kernel, and 32-bit applications.  Perhaps that
> explains the issue above.  We don't want to spend a lot of effort doing
> porting simply because we adopt Yocto.  So ideally, if we could remove
> what's in Yocto, we could integrate our apps with our own openssl; no
> changes, including upgrade, would be needed.  We'd upgrade when we're
> ready.
>
> Another question from my team is why the "minimal" package includes
> connectivity, which includes openssl?
>
> Raymond
>
> ------------------------------
> *From:* Burton, Ross <ross.burton@intel.com>
> *Sent:* Sunday, July 8, 2018 1:06 AM
>
> *To:* Raymond Yeung
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] How to remove openssl from sysroots
>
> I strongly recommend you just write a recipe that builds openssl as you
> wish, instead of building it out of the build system and somehow getting it
> into the images.  The problem is that how do you intend to build software
> against openssl if it can't link to the one in oe-core (as you don't want
> it) or your custom one (because it doesn't exist yet).
>
> The workaround - which is horrible - would be to use a rootfs postprocess
> hook to forcibly remove the openssl packages from the rootfs, and then drop
> in your own files.
>
> Ross
>
> On 8 July 2018 at 07:14, Raymond Yeung <rksyeung@hotmail.com> wrote:
>
> We have a shell script that builds openssl.  It uses the native makefiles
> from the open source project.  There's no  recipe.  I suppose we define a
> recipe for this out-of-tree sources.
>
>
> Still, if we could yank out embedded openssl easily, that would be the
> best.
>
>
> Raymond
>
>
> ------------------------------
> *From:* Burton, Ross <ross.burton@intel.com>
> *Sent:* Saturday, July 7, 2018 3:41 PM
> *To:* Raymond Yeung
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] How to remove openssl from sysroots
>
> Presumably you've a recipe for the vendor openssl.  If it has the same
> name but is a different version then just set PREFERRED_VERSION.  If
> it has a different name too, it should PROVIDE openssl and you can
> just set PREFERRED_PROVIDER.
>
> If it doesn't do either of those things, then it is broken.
>
> Ross
>
> On 6 July 2018 at 23:06, Raymond Yeung <rksyeung@hotmail.com> wrote:
> > I've changed the subject heading to make it more specific to our problem.
> > Hopefully this generates some responses.
> >
> >
> > It has been blocking us for close to one week now.  We want to use our
> 3rd
> > party vendor openssl, not the one that comes with the source.
> Apparently,
> > even with "minimal" instead of "base" or "sato" cannot exclude it.
> >
> >
> > Any idea [e.g. how do we systematically find out how it's included now,
> and
> > possibly what other packages/recipes we may also need to remove due to
> > dependency]?
> >
> >
> > Thanks,
> >
> > Raymond
> >
> >
> >
> > ________________________________
> > From: Raymond Yeung <rksyeung@hotmail.com>
> > Sent: Monday, July 2, 2018 11:05 PM
> > To: yocto@yoctoproject.org
> > Subject: How to remove a package from a build
> >
> >
> > We've our own non-yocto openssl that we want to use.  At the moment,
> we're
> > using "sato" image, rather than "minimal" and includes its openssl that
> is
> > out-of-date.  What is the best way to exclude it from our image (and from
> > sysroots)?
> >
> >
> > We have thought about two ideas -
> >
> >
> > Use smaller image like core-image-base, or core-image-full-cmdline (but
> not
> > -minimal that may remove too much functionality).
> > Use INSTALL_IMAGE_remove += " openssl"
> >
> >
> > Would either one work?  Also, how do I follow the .bb files etc (e.g.
> > starting from the one for sato) to trace down which sub-package includes
> > openssl?
> >
> >
> > Thanks,
> >
> > Raymond
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> yocto Info Page <https://lists.yoctoproject.org/listinfo/yocto>
> lists.yoctoproject.org
> Discussion of all things about the Yocto Project. Read our Community
> Guidelines or learn more about how to participate in other community
> discussions. Subscribe before posting to bypass moderation.
>
>
> >
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--0000000000005a7a95057091dd4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just fix the build issue. Look into how opensslconf.h=
 gets created and where the -32 suffix comes from and why the included file=
 is absent.<br></div><div><br></div><div> Seriously - that is less effort t=
han trying to make Yocto do what it really was not designed for, and certai=
nly takes less than one week to resolve.</div><div><br></div><div>Also, you=
 do not have to use core-image-minimal or -sato, or any of the standard ima=
ges, if they pull in things that you do not want. Write your own image reci=
pe, and specify there precisely what you want.</div><div><br></div><div>Ale=
x<br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2018-07-09 2:32 GMT+02:00 Raymond Yeung <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:rksyeung@hotmail.com" target=3D"_blank">rksyeung@hotmail.com</a>&gt;</=
span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-4509669163777372016divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
+ yocto mailing list.<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4509669163777372016divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b>=
 Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank=
">rksyeung@hotmail.com</a>&gt;<br>
<b>Sent:</b> Sunday, July 8, 2018 5:31 PM<br>
<b>To:</b> Burton, Ross<span class=3D""><br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</span></fon=
t>
<div>=C2=A0</div>
</div>

<div dir=3D"ltr">
<div id=3D"m_-4509669163777372016x_divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0;margin-bottom:0">We&#39;re not going to integrate =
everything into one homogeneous package.=C2=A0 Poky and BSP would be togeth=
er.=C2=A0 Then, we&#39;ve application codes that we&#39;d build in the same=
 old way with SCONs the way we do before.=C2=A0 The two parts
 would link together.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">And we do have a number of 3rd pa=
rty vendor packages beside openssl.=C2=A0 Currently, the issue with openssl=
 is that, we run into build issue with the version we got in 2016 release.=
=C2=A0 See this:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.00=
01pt 0.5in;font-size:11pt;font-family:Calibri,sans-serif">
=C2=A0</p>
</div>
</div>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.00=
01pt 0.5in;font-size:11pt;font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier"><span style=3D"margin:0px!important;pad=
ding:0px!important;float:inherit!important;font-family:inherit!important;fo=
nt-size:inherit!important;font-style:inherit!important;line-height:inherit!=
important">In
 file included from /volume/tools/x86_64_linux.<wbr>x86_64/2.1.3/sysroots/c=
orei7-<wbr>64-poky-linux/usr/include/<span style=3D"background-color:rgb(25=
5,238,148)!important;margin:0px!important;padding:0px!important;float:inher=
it!important;font-family:inherit!important;font-size:inherit!important;font=
-style:inherit!important;line-height:inherit!important">open<wbr>ssl</span>=
/evp.h:66:0,</span></span></p>
</div>
</div>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.00=
01pt 0.5in;font-size:11pt;font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0from src/infra/utils/obf/cv_<wbr>obfuscate.c:20:</s=
pan></p>
</div>
</div>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.00=
01pt 0.5in;font-size:11pt;font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier"><span style=3D"margin:0px!important;pad=
ding:0px!important;float:inherit!important;font-family:inherit!important;fo=
nt-size:inherit!important;font-style:inherit!important;line-height:inherit!=
important">/volume/tools/x86_64_linux.<wbr>x86_64/2.1.3/sysroots/corei7-<wb=
r>64-poky-linux/usr/include/<span style=3D"background-color:rgb(255,238,148=
)!important;margin:0px!important;padding:0px!important;float:inherit!import=
ant;font-family:inherit!important;font-size:inherit!important;font-style:in=
herit!important;line-height:inherit!important">open<wbr>ssl</span>/<span st=
yle=3D"background-color:rgb(255,238,148)!important;margin:0px!important;pad=
ding:0px!important;float:inherit!important;font-family:inherit!important;fo=
nt-size:inherit!important;font-style:inherit!important;line-height:inherit!=
important">openssl</span>conf.h:41:36:
 fatal error:=C2=A0<span style=3D"background-color:rgb(255,238,148)!importa=
nt;margin:0px!important;padding:0px!important;float:inherit!important;font-=
family:inherit!important;font-size:inherit!important;font-style:inherit!imp=
ortant;line-height:inherit!important">openssl</span>/<span style=3D"backgro=
und-color:rgb(255,238,148)!important;margin:0px!important;padding:0px!impor=
tant;float:inherit!important;font-family:inherit!important;font-size:inheri=
t!important;font-style:inherit!important;line-height:inherit!important">ope=
nssl</span>conf-32.<wbr>h:
 No such file or directory</span></span></p>
</div>
</div>
<div><br>
</div>
We plan to use 64-bit kernel, and 32-bit applications.=C2=A0 Perhaps that e=
xplains the issue above.=C2=A0 We don&#39;t want to spend a lot of effort d=
oing porting simply because we adopt Yocto.=C2=A0 So ideally, if we could r=
emove what&#39;s in Yocto, we could integrate our apps
 with our own openssl; no changes, including upgrade, would be needed.=C2=
=A0 We&#39;d upgrade when we&#39;re ready.
<div><br>
</div>
<div>Another question from my team is why the &quot;minimal&quot; package i=
ncludes connectivity, which includes openssl?<br>
<div><br>
</div>
<div>Raymond<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4509669163777372016x_divRplyFwdMsg" dir=3D"ltr"><font style=
=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=3D"#000000"><b>From:=
</b> Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_b=
lank">ross.burton@intel.com</a>&gt;<br>
<b>Sent:</b> Sunday, July 8, 2018 1:06 AM<div><div class=3D"h5"><br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</div></div>=
</font>
<div>=C2=A0</div>
</div><div><div class=3D"h5">

<div>
<div dir=3D"ltr">I strongly recommend you just write a recipe that builds o=
penssl as you wish, instead of building it out of the build system and some=
how getting it into the images.=C2=A0 The problem is that how do you intend=
 to build software against openssl if it
 can&#39;t link to the one in oe-core (as you don&#39;t want it) or your cu=
stom one (because it doesn&#39;t exist yet).
<div><br>
</div>
<div>The workaround - which is horrible - would be to use a rootfs postproc=
ess hook to forcibly remove the openssl packages from the rootfs, and then =
drop in your own files.</div>
<div><br>
</div>
<div>Ross</div>
</div>
<div class=3D"m_-4509669163777372016x_x_gmail_extra"><br>
<div class=3D"m_-4509669163777372016x_x_gmail_quote">On 8 July 2018 at 07:1=
4, Raymond Yeung <span dir=3D"ltr">
&lt;<a href=3D"mailto:rksyeung@hotmail.com" id=3D"m_-4509669163777372016LPl=
nk486800" class=3D"m_-4509669163777372016x_OWAAutoLink" target=3D"_blank">r=
ksyeung@hotmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"m_-4509669163777372016x_x_gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_-4509669163777372016x_x_m_3410379150917000727divtagdefaultwrap=
per" dir=3D"ltr" style=3D"font-size:12pt;color:#000000;font-family:Calibri,=
Helvetica,sans-serif">
<p style=3D"margin-top:0;margin-bottom:0">We have a shell script that build=
s openssl.=C2=A0 It uses the native makefiles from the open source project.=
=C2=A0 There&#39;s no =C2=A0recipe.=C2=A0 I suppose we define a recipe for =
this out-of-tree sources.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Still, if we could yank out embed=
ded openssl easily, that would be the best.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4509669163777372016x_x_m_3410379150917000727divRplyFwdMsg" di=
r=3D"ltr"><font style=3D"font-size:11pt" face=3D"Calibri, sans-serif" color=
=3D"#000000"><b>From:</b> Burton, Ross &lt;<a href=3D"mailto:ross.burton@in=
tel.com" id=3D"m_-4509669163777372016LPlnk914068" class=3D"m_-4509669163777=
372016x_OWAAutoLink" target=3D"_blank">ross.burton@intel.com</a>&gt;<br>
<b>Sent:</b> Saturday, July 7, 2018 3:41 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" id=3D"m_-4509669163777=
372016LPlnk409823" class=3D"m_-4509669163777372016x_OWAAutoLink" target=3D"=
_blank">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</font>
<div>=C2=A0</div>
</div>
<div class=3D"m_-4509669163777372016x_x_m_3410379150917000727BodyFragment">=
<font size=3D"2"><span style=3D"font-size:11pt">
<div class=3D"m_-4509669163777372016x_x_m_3410379150917000727PlainText">
<div>
<div class=3D"m_-4509669163777372016x_x_h5">Presumably you&#39;ve a recipe =
for the vendor openssl.=C2=A0 If it has the same<br>
name but is a different version then just set PREFERRED_VERSION.=C2=A0 If<b=
r>
it has a different name too, it should PROVIDE openssl and you can<br>
just set PREFERRED_PROVIDER.<br>
<br>
If it doesn&#39;t do either of those things, then it is broken.<br>
<br>
Ross<br>
<br>
On 6 July 2018 at 23:06, Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotma=
il.com" id=3D"m_-4509669163777372016LPlnk779667" class=3D"m_-45096691637773=
72016x_OWAAutoLink" target=3D"_blank">rksyeung@hotmail.com</a>&gt; wrote:<b=
r>
&gt; I&#39;ve changed the subject heading to make it more specific to our p=
roblem.<br>
&gt; Hopefully this generates some responses.<br>
&gt;<br>
&gt;<br>
&gt; It has been blocking us for close to one week now.=C2=A0 We want to us=
e our 3rd<br>
&gt; party vendor openssl, not the one that comes with the source.=C2=A0 Ap=
parently,<br>
&gt; even with &quot;minimal&quot; instead of &quot;base&quot; or &quot;sat=
o&quot; cannot exclude it.<br>
&gt;<br>
&gt;<br>
&gt; Any idea [e.g. how do we systematically find out how it&#39;s included=
 now, and<br>
&gt; possibly what other packages/recipes we may also need to remove due to=
<br>
&gt; dependency]?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ______________________________<wbr>__<br>
&gt; From: Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotmail.com" id=3D"=
m_-4509669163777372016LPlnk66430" class=3D"m_-4509669163777372016x_OWAAutoL=
ink" target=3D"_blank">rksyeung@hotmail.com</a>&gt;<br>
&gt; Sent: Monday, July 2, 2018 11:05 PM<br>
&gt; To: <a href=3D"mailto:yocto@yoctoproject.org" id=3D"m_-450966916377737=
2016LPlnk594647" class=3D"m_-4509669163777372016x_OWAAutoLink" target=3D"_b=
lank">
yocto@yoctoproject.org</a><br>
&gt; Subject: How to remove a package from a build<br>
&gt;<br>
&gt;<br>
&gt; We&#39;ve our own non-yocto openssl that we want to use.=C2=A0 At the =
moment, we&#39;re<br>
&gt; using &quot;sato&quot; image, rather than &quot;minimal&quot; and incl=
udes its openssl that is<br>
&gt; out-of-date.=C2=A0 What is the best way to exclude it from our image (=
and from<br>
&gt; sysroots)?<br>
&gt;<br>
&gt;<br>
&gt; We have thought about two ideas -<br>
&gt;<br>
&gt;<br>
&gt; Use smaller image like core-image-base, or core-image-full-cmdline (bu=
t not<br>
&gt; -minimal that may remove too much functionality).<br>
&gt; Use INSTALL_IMAGE_remove +=3D &quot; openssl&quot;<br>
&gt;<br>
&gt;<br>
&gt; Would either one work?=C2=A0 Also, how do I follow the .bb files etc (=
e.g.<br>
&gt; starting from the one for sato) to trace down which sub-package includ=
es<br>
&gt; openssl?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" id=3D"m_-4509669163777372016=
LPlnk589502" class=3D"m_-4509669163777372016x_OWAAutoLink" target=3D"_blank=
">
yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_-450=
9669163777372016LPlnk806228" class=3D"m_-4509669163777372016x_x_m_341037915=
0917000727OWAAutoLink m_-4509669163777372016x_OWAAutoLink" target=3D"_blank=
">
https://lists.yoctoproject.org<wbr>/listinfo/yocto</a> </div>
</div>
<div id=3D"m_-4509669163777372016x_x_m_3410379150917000727LPBorder_GT_15310=
303524610.3933807486307961" style=3D"margin-bottom:20px;overflow:auto;width=
:100%;text-indent:0px">
<table id=3D"m_-4509669163777372016x_x_m_3410379150917000727LPContainer_153=
10303524580.18065774736671225" style=3D"width:90%;background-color:rgb(255,=
255,255);overflow:auto;padding-top:20px;padding-bottom:20px;margin-top:20px=
;border-top-width:1px;border-top-style:dotted;border-top-color:rgb(200,200,=
200);border-bottom-width:1px;border-bottom-style:dotted;border-bottom-color=
:rgb(200,200,200)" cellspacing=3D"0">
<tbody>
<tr style=3D"border-spacing:0px" valign=3D"top">
<td id=3D"m_-4509669163777372016x_x_m_3410379150917000727TextCell_153103035=
24590.8211319156256691" colspan=3D"2" style=3D"vertical-align:top;padding:0=
px;display:table-cell">
<div id=3D"m_-4509669163777372016x_x_m_3410379150917000727LPRemovePreviewCo=
ntainer_15310303524590.6726902240970273">
</div>
<div id=3D"m_-4509669163777372016x_x_m_3410379150917000727LPTitle_153103035=
24590.5921623636573192" style=3D"color:rgb(0,120,215);font-weight:normal;fo=
nt-size:21px;font-family:wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot=
;Segoe WP Light&quot;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Aria=
l,sans-serif;line-height:21px">
<a id=3D"m_-4509669163777372016LPlnk875784" href=3D"https://lists.yoctoproj=
ect.org/listinfo/yocto" class=3D"m_-4509669163777372016x_OWAAutoLink" style=
=3D"text-decoration:none" target=3D"_blank">yocto Info Page</a></div>
<div id=3D"m_-4509669163777372016x_x_m_3410379150917000727LPMetadata_153103=
03524600.8558606096493264" style=3D"margin:10px 0px 16px;color:rgb(102,102,=
102);font-weight:normal;font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;=
,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:14px;line-height:14=
px">
<a href=3D"http://lists.yoctoproject.org" id=3D"m_-4509669163777372016LPlnk=
776550" class=3D"m_-4509669163777372016x_OWAAutoLink" target=3D"_blank">lis=
ts.yoctoproject.org</a></div>
<div id=3D"m_-4509669163777372016x_x_m_3410379150917000727LPDescription_153=
10303524600.4046822785049662" style=3D"display:block;color:rgb(102,102,102)=
;font-weight:normal;font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&qu=
ot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:14px;line-height:20px;m=
ax-height:100px;overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div></div></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--0000000000005a7a95057091dd4e--
