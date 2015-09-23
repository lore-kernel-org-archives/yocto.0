Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98749E00E81; Wed, 23 Sep 2015 12:28:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54E8AE00B52
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:28:53 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so52151769ykd.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 12:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EhTGY2M9scozc2h+/zfjQowNM5mgAQbbha9avrPdb4c=;
	b=O9vBR2I0aPFMYXMFo4BO5fjPi5PHSDvQABq2ySgWHzgZIDG4q2c+XhDpA/0C7M4Y3I
	QTExcNKgLo/N6Pger0vL5KzRVxGOHUMWDaes6w4Ny9lqPRbZgBL0HR/i9mvWUXxAEZOv
	CPnfrybaSq2DhIqdEzlm0IiXCx45ebEV/8f1/70UMNPQ/D8F05lvLRsLhkmUILgfPd0A
	dLzC+rxpY3w3JNTWKM+eBxKr3SuoCOr/DWonG4Izw3qaZxlMJW/nolRbdz+dLnDdeG4x
	7qcbfrrshjR6B93jOOV3MywH/YrQhCeJQomlDh6bDo0trmXYQltavDRmZ6rfSaFjo2B8
	vWEg==
MIME-Version: 1.0
X-Received: by 10.129.51.88 with SMTP id z85mr28390328ywz.148.1443036533285;
	Wed, 23 Sep 2015 12:28:53 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Wed, 23 Sep 2015 12:28:53 -0700 (PDT)
In-Reply-To: <EE2F64E589A041A1ABA43104A5BD278A@PAULD>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com> <560252C3.80207@topic.nl>
	<54D97D1C25A94C8987390AB26D5EBF79@PAULD>
	<CAF3SDA6D2-SNdU0bbCH0+5vk7XbYgdx-O1Wm+Z_5xQfjbv===Q@mail.gmail.com>
	<EE2F64E589A041A1ABA43104A5BD278A@PAULD>
Date: Wed, 23 Sep 2015 16:28:53 -0300
Message-ID: <CAF3SDA601=pC3n1ANwbnqa48NSzk1VnCtVRR3+rbZftkRQzHpg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Wed, 23 Sep 2015 19:28:58 -0000
Content-Type: multipart/alternative; boundary=001a11421c9af6ea3a05206f1f16

--001a11421c9af6ea3a05206f1f16
Content-Type: text/plain; charset=UTF-8

I agree with you that is intrinsically unworkable, if there is no physical
media, how can it be umounted!? If anyone make this possible, maybe some
day, in that day, umounting will be obsolete.

Cheers,
- dhs

2015-09-23 15:31 GMT-03:00 Paul D. DeRocco <pderocco@ix.netcom.com>:

> > From: Daniel. [mailto:danielhilst@gmail.com]
> >
> > I think that sync just flushes data to disk and umount clears
> > the dirty bit. There is no sync.vfat that I know.
>
> That would seem to make auto-unmount (triggered by removal) an
> intrinsically unworkable concept. Or is that only the case for FAT file
> systems?
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11421c9af6ea3a05206f1f16
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I agree with you that is intrinsically unworkabl=
e, if there is no physical media, how can it be umounted!? If anyone make t=
his possible, maybe some day, in that day, umounting will be obsolete.<br><=
/div><div><br></div>Cheers,<br></div>- dhs<br></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">2015-09-23 15:31 GMT-03:00 Paul D. DeRoc=
co <span dir=3D"ltr">&lt;<a href=3D"mailto:pderocco@ix.netcom.com" target=
=3D"_blank">pderocco@ix.netcom.com</a>&gt;</span>:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">&gt; From: Daniel. [mailto:<a href=3D"mailto:danielhilst@gmail.co=
m">danielhilst@gmail.com</a>]<br>
<span class=3D"">&gt;<br>
&gt; I think that sync just flushes data to disk and umount clears<br>
&gt; the dirty bit. There is no sync.vfat that I know.<br>
<br>
</span>That would seem to make auto-unmount (triggered by removal) an<br>
intrinsically unworkable concept. Or is that only the case for FAT file<br>
systems?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a><br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not.=
 There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></=
div></div>
</div>

--001a11421c9af6ea3a05206f1f16--
