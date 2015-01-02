Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E675AE008EA; Fri,  2 Jan 2015 08:26:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 381A4E0082F
	for <yocto@yoctoproject.org>; Fri,  2 Jan 2015 08:26:47 -0800 (PST)
Received: by mail-la0-f46.google.com with SMTP id q1so15505654lam.5
	for <yocto@yoctoproject.org>; Fri, 02 Jan 2015 08:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7c4WYdh/5iaH3gQSH6YyYK2CHEqd7ObH5DngI9B3OWs=;
	b=LoUVAC6fVjP2Yp+LIfRn1R/Cbi+Vc3Y+pB1JkXJR2uz35h2LWx2EI0Td8TqWvi81KF
	XasSdKpptQyHgrz/izTcdmD7dJKhjiQ+Z/y4XKhlnKJAenRhE7qYHYMwzArcwj2iLrtR
	6ELJQNZR/HUw2dkn65KjLqI+v7JrC/oHC0kf9wTbi7TddUygsS4Ldxc/wE2wC+Y3sDJy
	P4Dy/LS+aJkBfu/gZqjk21WUJWGDOIHV/TBDLMbmuNnujWKX2DVxywJwAXyjP1XI5rpJ
	WI7hsBylmP7zWbtPcDYDziRbwcW2K4psjdRdTweAfAlXQbaSJHwkvRgiOS8AgpNh2lnR
	qbfQ==
MIME-Version: 1.0
X-Received: by 10.152.20.7 with SMTP id j7mr74974960lae.37.1420216005650; Fri,
	02 Jan 2015 08:26:45 -0800 (PST)
Received: by 10.25.155.18 with HTTP; Fri, 2 Jan 2015 08:26:45 -0800 (PST)
In-Reply-To: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
References: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
Date: Fri, 2 Jan 2015 17:26:45 +0100
Message-ID: <CAPbeDCn2hDGC0rum6qU2kZGT_LBG8V_9iB--yAT=S69m6aPocA@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel configuration
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
X-List-Received-Date: Fri, 02 Jan 2015 16:26:48 -0000
Content-Type: multipart/alternative; boundary=089e013d170485713d050badcee0

--089e013d170485713d050badcee0
Content-Type: text/plain; charset=UTF-8

Hi Chris,

On Fri, Jan 2, 2015 at 3:52 PM, Chris Tapp <opensource@keylevel.com> wrote:

> I thought I knew how to do this, but... ;-)
>
> I'm trying to add configuration items to the valleyisland BSP. I've got
> the following bbappend:
>
> File: linux-yocto_3.10.bbappend
> -------
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> SRC_URI += " file://enable-hid-apple.cfg"
> SRC_URI += " file://enable-R8169.cfg"
>
> However, these .cfg fragments aren't even getting pulled into the build
> area.
>
> Adding a reference to a non-existent file is ignored when I would have
> expected to see a fetch error
>
> SRC_URI += "file://fsdfsdfdsfsd"
>
> What else do I need to do to get my .cfg files pulled in?
>
>
How does your layer.conf look like ? Especially, do you have the *.bbappend
files added to BBFILES ?

Jacob

--089e013d170485713d050badcee0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Chris,<br><br>On Fri, Jan 2, 2015 at 3:52 PM, Chris Tap=
p <span dir=3D"ltr">&lt;<a href=3D"mailto:opensource@keylevel.com" target=
=3D"_blank">opensource@keylevel.com</a>&gt;</span> wrote:<br><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">I thought I knew how to do this, but... ;-)<br>
<br>
I&#39;m trying to add configuration items to the valleyisland BSP. I&#39;ve=
 got the following bbappend:<br>
<br>
File: linux-yocto_3.10.bbappend<br>
-------<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
SRC_URI +=3D &quot; file://enable-hid-apple.cfg&quot;<br>
SRC_URI +=3D &quot; file://enable-R8169.cfg&quot;<br>
<br>
However, these .cfg fragments aren&#39;t even getting pulled into the build=
 area.<br>
<br>
Adding a reference to a non-existent file is ignored when I would have expe=
cted to see a fetch error<br>
<br>
SRC_URI +=3D &quot;file://fsdfsdfdsfsd&quot;<br>
<br>
What else do I need to do to get my .cfg files pulled in?<br>
<br></blockquote><div>=C2=A0</div><div>How does your layer.conf look like ?=
 Especially, do you have the *.bbappend files added to BBFILES ? <br></div>=
<br></div>Jacob<br></div></div>

--089e013d170485713d050badcee0--
