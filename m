Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48567E009F8; Fri,  4 May 2018 12:19:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BD23E009DC
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 12:19:31 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id a67so5523755wmf.3
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 12:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Sax+sluvAx8qhwYJ6lfpyCh+In/kS6eE2ta29EP6+m8=;
	b=btXJq6+O8AnIgO4JI8lMH6QnqjxLBFQ1T6sw0XZJSYIHCFncmR+FsWMJz8QJB3Cx4s
	exIbcfx1ZyhLWSdT7pgZp0sl4JipC0lUUOTIo8VF8VD0qNWC2uhKGiuEaDyLXE4bWIYq
	Bs/M96BijngntpNV76bC347tSSUI5AwfXIH1pefwz4qdmhhuMobrH2zH85UzpexywMSd
	heOO6e2nVilK2LiZOH/46YCmq8n9ByYEX7QeR4mMC1+M0Ou4cZynpU3UgOuqAZjQotsC
	JXiR/yAi6OULwyIDrRQvQ5LW+X62ZsPWlyB8uyTK9gTa9PuoUQnxGBwMeDlLaSyr0Qeh
	yIrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Sax+sluvAx8qhwYJ6lfpyCh+In/kS6eE2ta29EP6+m8=;
	b=ryOn+q8/jVXl+Nxf+hHBclnHDSTgzeNHdMXEaLmLjnjFBSlrLuEmMTpR37d0LHzyk+
	QS1rQQn551gvw/cEiLfLRmltWKkC4ecNFKsAjiLl7ZBfXPT+aXKSlgvJYECZJhoSYW/5
	FGBh4UDF/XtnaBKUFK4z7+6qjRwKMUty8q9GcVh7m+lJts3oMoIOR0KOXkNwiBBJNG57
	H0/doPb0c/pg53hK0LxJuXp/u7lJ4/NK5i/zau7jUpcAsHvqEhFaTz2h2MrbdRYINbkV
	nkVObbJhJZsE87Yv22pb/8xvkEjpIa7+1LbW865fDWNQDqMTOyeUh4AsUIBBjg4Qa7X+
	m/og==
X-Gm-Message-State: ALQs6tAD40yVqa6nazxDCh29r86TLKbx2zOJBXIILPFPjFtJUFLwivs/
	OZ9KoeH+RMF1zeC++Vs36/U1FluMegfYFl1qhqo=
X-Google-Smtp-Source: AB8JxZoAIxSJXOhLjH5/gim/zxey82UDf8OaZ6iAkPgsgRo0IW1NHIwJe7fB2l5/NqXc/suFPhXasiBrv3lEvRxJf8Q=
X-Received: by 10.28.191.206 with SMTP id o75mr16884133wmi.122.1525461570838; 
	Fri, 04 May 2018 12:19:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.133.207 with HTTP; Fri, 4 May 2018 12:19:30 -0700 (PDT)
In-Reply-To: <CAEhQi8m2_8QKxH3aLmjc7ZWCGVeCbQR=kbdocuBBJrhsOPFcng@mail.gmail.com>
References: <CAEhQi8=Y7ofTEoTYgdQYkTS31j8W=aL3Hm_QSfuz8qom5r9Xfw@mail.gmail.com>
	<CAJTo0LajNnRO0zQ581LcM0uMMby-=KPiPo7p_fcJzAGNYpM=9Q@mail.gmail.com>
	<CAEhQi8kGya0qqB8Pj=dSgLaVFR_g2FRK1cuVYrPOBXrogUf8dw@mail.gmail.com>
	<CAJTo0LY664+aNeyXWPGLdvfqaD0+3O3HxzOyOWuiX+feNf3MRw@mail.gmail.com>
	<CAEhQi8m2_8QKxH3aLmjc7ZWCGVeCbQR=kbdocuBBJrhsOPFcng@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 4 May 2018 21:19:30 +0200
Message-ID: <CA+chaQeYHE1LhRjbdrfOMSdrFjFce2tO=JUs0zKMKmt8_xmexQ@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Is the a reason for adding the + to SRCPV?
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
X-List-Received-Date: Fri, 04 May 2018 19:19:33 -0000
Content-Type: multipart/alternative; boundary="001a114d6a040c6752056b663375"

--001a114d6a040c6752056b663375
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This might help you:
https://github.com/webosose/meta-webosose/blob/master/meta-webos/recipes-co=
re/glib-2.0/glib-2.0/0002-gdbus-codegen-also-replace-character-with-undersc=
ore.patch

On Wed, Apr 11, 2018 at 5:59 PM, M=C3=A5ns Zigher <mans.zigher@gmail.com> w=
rote:

> Hi,
>
> Thanks for your help. It is a cmake project in which they have specified =
a
> custom command calling gdbus-codegen. It definitely looks like they are
> passing the absolute path to it thanks for the help I think I can solve
> that.
>
> Br
> Mans Zigher
>
> On Apr 11, 2018 15:50, "Burton, Ross" <ross.burton@intel.com> wrote:
>
> There is no "dbus codegen".  dbus-glib has a code generator but that
> doesn't write include guards like that, so it must be something else.
> gdbus-codegen appears to be doing the right thing to unless it breaks
> if you pass it an absolute path?
>
>
> Ross
>
>
> On 11 April 2018 at 10:12, M=C3=A5ns Zigher <mans.zigher@gmail.com> wrote=
:
> > I believe dbus codegen is the tools generating the code.
> >
> > Br
> > Mans Zigher
> >
> > On Tue, Apr 10, 2018, 14:44 Burton, Ross <ross.burton@intel.com> wrote:
> >>
> >> What tool is generating the code?  It probably shouldn't be using the
> >> full path of the header...
> >>
> >> Ross
> >>
> >> On 10 April 2018 at 09:29, M=C3=A5ns Zigher <mans.zigher@gmail.com> wr=
ote:
> >> > Hi,
> >> >
> >> > I am having some problems with one of my recipes when using the SRCP=
V
> >> > the
> >> > get_srcrev is returning "AUTOINC+" + rev. This will cause problem in
> my
> >> > compile because I am using dbus codegen and it looks like the
> >> > auto-generated
> >> > code cannot handle the + sign in the paths. Is there a reason for
> this +
> >> > sign. The generated code that causes my build to fail looks like thi=
s
> >> >
> >> > #ifndef
> >> >
> >> > ___HOME_EXTZIG_WORKSPACE_MOZART_MOZART_WORKSPACE_
> BUILDS_MOZART_RASPBERRYPI_BUILD_TMP_WORK_CORTEXA7HF_
> NEON_VFPV4_MOZART_LINUX_GNUEABI_MOZART_DAEMON_1_0_
> GITAUTOINC+8FD4C803AE_R3_GIT_SRC_LIBS_MOZART_BLE_SETUP_
> CODEGEN_ORG_BLUEZ_LE_ADVERTISEMENT_INTERFACE_H__
> >> >
> >> > Currently the only way for me to get the build to work is not use th=
e
> >> > SRCPV.
> >> > Could it actually be a better way then using the + sign or is there =
a
> >> > logical requirement for it?
> >> >
> >> > BR
> >> > Mans Zigher
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
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

--001a114d6a040c6752056b663375
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This might help you:<div><a href=3D"https://github.com/web=
osose/meta-webosose/blob/master/meta-webos/recipes-core/glib-2.0/glib-2.0/0=
002-gdbus-codegen-also-replace-character-with-underscore.patch">https://git=
hub.com/webosose/meta-webosose/blob/master/meta-webos/recipes-core/glib-2.0=
/glib-2.0/0002-gdbus-codegen-also-replace-character-with-underscore.patch</=
a><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Wed, Apr 11, 2018 at 5:59 PM, M=C3=A5ns Zigher <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"aut=
o"><div dir=3D"auto"></div><div class=3D"gmail_extra">Hi,</div><div class=
=3D"gmail_extra" dir=3D"auto"><br></div><div class=3D"gmail_extra" dir=3D"a=
uto">Thanks for your help. It is a cmake project in which they have specifi=
ed a custom command calling gdbus-codegen. It definitely looks like they ar=
e passing the absolute path to it thanks for the help I think I can solve t=
hat.</div><div class=3D"gmail_extra" dir=3D"auto"><br></div><div class=3D"g=
mail_extra" dir=3D"auto">Br</div><div class=3D"gmail_extra" dir=3D"auto">Ma=
ns Zigher</div><div><div class=3D"h5"><div class=3D"gmail_extra" dir=3D"aut=
o"><br><div class=3D"gmail_quote" dir=3D"auto">On Apr 11, 2018 15:50, &quot=
;Burton, Ross&quot; &lt;<a href=3D"mailto:ross.burton@intel.com" rel=3D"nor=
eferrer" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br type=3D"=
attribution"><blockquote class=3D"m_5468181519171221772m_-26318589736537781=
30quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">There is no &quot;dbus codegen&quot;.=C2=A0 dbus-glib has a code gene=
rator but that<br>
doesn&#39;t write include guards like that, so it must be something else.<b=
r>
gdbus-codegen appears to be doing the right thing to unless it breaks<br>
if you pass it an absolute path?<div class=3D"m_5468181519171221772m_-26318=
58973653778130signature-text"><br>
<br>
Ross</div><div class=3D"m_5468181519171221772m_-2631858973653778130elided-t=
ext"><br>
<br>
On 11 April 2018 at 10:12, M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.zigh=
er@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">mans.zigher@g=
mail.com</a>&gt; wrote:<br>
&gt; I believe dbus codegen is the tools generating the code.<br>
&gt;<br>
&gt; Br<br>
&gt; Mans Zigher<br>
&gt;<br>
&gt; On Tue, Apr 10, 2018, 14:44 Burton, Ross &lt;<a href=3D"mailto:ross.bu=
rton@intel.com" rel=3D"noreferrer noreferrer" target=3D"_blank">ross.burton=
@intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; What tool is generating the code?=C2=A0 It probably shouldn&#39;t =
be using the<br>
&gt;&gt; full path of the header...<br>
&gt;&gt;<br>
&gt;&gt; Ross<br>
&gt;&gt;<br>
&gt;&gt; On 10 April 2018 at 09:29, M=C3=A5ns Zigher &lt;<a href=3D"mailto:=
mans.zigher@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">mans=
.zigher@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; Hi,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I am having some problems with one of my recipes when using t=
he SRCPV<br>
&gt;&gt; &gt; the<br>
&gt;&gt; &gt; get_srcrev is returning &quot;AUTOINC+&quot; + rev. This will=
 cause problem in my<br>
&gt;&gt; &gt; compile because I am using dbus codegen and it looks like the=
<br>
&gt;&gt; &gt; auto-generated<br>
&gt;&gt; &gt; code cannot handle the + sign in the paths. Is there a reason=
 for this +<br>
&gt;&gt; &gt; sign. The generated code that causes my build to fail looks l=
ike this<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; #ifndef<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; ___HOME_EXTZIG_WORKSPACE_<wbr>MOZART_MOZART_WORKSPACE_<wbr>BU=
ILDS_MOZART_RASPBERRYPI_<wbr>BUILD_TMP_WORK_CORTEXA7HF_<wbr>NEON_VFPV4_MOZA=
RT_LINUX_<wbr>GNUEABI_MOZART_DAEMON_1_0_<wbr>GITAUTOINC+8FD4C803AE_R3_GIT_<=
wbr>SRC_LIBS_MOZART_BLE_SETUP_<wbr>CODEGEN_ORG_BLUEZ_LE_<wbr>ADVERTISEMENT_=
INTERFACE_H__<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Currently the only way for me to get the build to work is not=
 use the<br>
&gt;&gt; &gt; SRCPV.<br>
&gt;&gt; &gt; Could it actually be a better way then using the + sign or is=
 there a<br>
&gt;&gt; &gt; logical requirement for it?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; BR<br>
&gt;&gt; &gt; Mans Zigher<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer n=
oreferrer" target=3D"_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lists.yocto=
project.<wbr>org/listinfo/yocto</a><br>
&gt;&gt; &gt;<br>
</div></blockquote></div><br></div></div></div></div>
<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114d6a040c6752056b663375--
